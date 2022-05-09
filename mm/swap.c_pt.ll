; ModuleID = '/llk/IR_all_yes/mm/swap.c_pt.bc'
source_filename = "../mm/swap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__put_page\22, \22a\22\09"
module asm "\09.weak\09__crc___put_page\09\09\09\09"
module asm "\09.long\09__crc___put_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_page:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_page\22\09\09\09\09\09"
module asm "__kstrtabns___put_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+put_pages_list\22, \22a\22\09"
module asm "\09.weak\09__crc_put_pages_list\09\09\09\09"
module asm "\09.long\09__crc_put_pages_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_pages_list:\09\09\09\09\09"
module asm "\09.asciz \09\22put_pages_list\22\09\09\09\09\09"
module asm "__kstrtabns_put_pages_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_kernel_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_get_kernel_pages\09\09\09\09"
module asm "\09.long\09__crc_get_kernel_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_kernel_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22get_kernel_pages\22\09\09\09\09\09"
module asm "__kstrtabns_get_kernel_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_mark_accessed\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_mark_accessed\09\09\09\09"
module asm "\09.long\09__crc_folio_mark_accessed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mark_accessed:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mark_accessed\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mark_accessed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_add_lru\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_add_lru\09\09\09\09"
module asm "\09.long\09__crc_folio_add_lru\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_add_lru:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_add_lru\22\09\09\09\09\09"
module asm "__kstrtabns_folio_add_lru:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+release_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_release_pages\09\09\09\09"
module asm "\09.long\09__crc_release_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_release_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22release_pages\22\09\09\09\09\09"
module asm "__kstrtabns_release_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__pagevec_release\22, \22a\22\09"
module asm "\09.weak\09__crc___pagevec_release\09\09\09\09"
module asm "\09.long\09__crc___pagevec_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pagevec_release:\09\09\09\09\09"
module asm "\09.asciz \09\22__pagevec_release\22\09\09\09\09\09"
module asm "__kstrtabns___pagevec_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pagevec_lookup_range\22, \22a\22\09"
module asm "\09.weak\09__crc_pagevec_lookup_range\09\09\09\09"
module asm "\09.long\09__crc_pagevec_lookup_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pagevec_lookup_range:\09\09\09\09\09"
module asm "\09.asciz \09\22pagevec_lookup_range\22\09\09\09\09\09"
module asm "__kstrtabns_pagevec_lookup_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pagevec_lookup_range_tag\22, \22a\22\09"
module asm "\09.weak\09__crc_pagevec_lookup_range_tag\09\09\09\09"
module asm "\09.long\09__crc_pagevec_lookup_range_tag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pagevec_lookup_range_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22pagevec_lookup_range_tag\22\09\09\09\09\09"
module asm "__kstrtabns_pagevec_lookup_range_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.106, %struct.trace_event, ptr, ptr, %union.anon.107, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.106 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%struct.lru_rotate = type { %struct.local_lock_t, %struct.pagevec }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.lru_pvecs = type { %struct.local_lock_t, %struct.pagevec, %struct.pagevec, %struct.pagevec, %struct.pagevec, %struct.pagevec }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_event_state = type { [76 x i32] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mm_lru_insertion = type { %struct.trace_entry, ptr, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.79, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.79 = type { %struct.atomic_t }
%struct.anon = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mm_lru_activate = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.mem_cgroup_per_node = type { %struct.lruvec, ptr, %struct.lruvec_stats, [4 x [5 x i32]], %struct.mem_cgroup_reclaim_iter, ptr, %struct.rb_node, i32, i8, ptr }
%struct.lruvec_stats = type { [40 x i32], [40 x i32] }
%struct.mem_cgroup_reclaim_iter = type { ptr, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mem_cgroup = type { %struct.cgroup_subsys_state, %struct.mem_cgroup_id, %struct.page_counter, %union.anon.68, %struct.page_counter, %struct.page_counter, %struct.work_struct, i32, %struct.vmpressure, i8, i8, i32, i32, i32, %struct.cgroup_file, %struct.cgroup_file, %struct.cgroup_file, %struct.mutex, %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds, %struct.list_head, i32, %struct.spinlock, i32, [20 x i8], %struct.memcg_padding, %struct.memcg_vmstats, [9 x %struct.atomic_t], [9 x %struct.atomic_t], i32, i8, i32, i32, ptr, %struct.list_head, [92 x i8], %struct.memcg_padding, %struct.atomic_t, ptr, ptr, %struct.list_head, %struct.wb_domain, [4 x %struct.memcg_cgwb_frn], %struct.list_head, %struct.spinlock, [0 x ptr], [84 x i8] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.mem_cgroup_id = type { i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.68 = type { %struct.page_counter }
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
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.memcg_cgwb_frn = type { i64, i32, i64, %struct.wb_completion }
%struct.wb_completion = type { %struct.atomic_t, ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.14, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.folio_batch = type { i8, i8, [15 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.obj_cgroup = type { %struct.percpu_ref, ptr, %struct.atomic_t, %union.anon.69 }
%union.anon.69 = type { %struct.list_head }

@__tpstrtab_mm_lru_insertion = internal constant [17 x i8] c"mm_lru_insertion\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_lru_insertion = dso_local global %struct.static_call_key { ptr @__traceiter_mm_lru_insertion }, align 4
@__tracepoint_mm_lru_insertion = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_lru_insertion, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_lru_insertion, ptr null, ptr @__traceiter_mm_lru_insertion, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_lru_insertion = internal constant ptr @__tracepoint_mm_lru_insertion, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_lru_activate = internal constant [16 x i8] c"mm_lru_activate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_lru_activate = dso_local global %struct.static_call_key { ptr @__traceiter_mm_lru_activate }, align 4
@__tracepoint_mm_lru_activate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_lru_activate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_lru_activate, ptr null, ptr @__traceiter_mm_lru_activate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_lru_activate = internal constant ptr @__tracepoint_mm_lru_activate, section "__tracepoints_ptrs", align 4
@str__pagemap__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pagemap\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_mm_lru_insertion = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.104 { %struct.anon.105 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.104 { %struct.anon.105 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.104 { %struct.anon.105 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.104 { %struct.anon.105 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mm_lru_insertion = internal global %struct.trace_event_class { ptr @str__pagemap__trace_system_name, ptr @trace_event_raw_event_mm_lru_insertion, ptr @perf_trace_mm_lru_insertion, ptr @trace_event_reg, ptr @trace_event_fields_mm_lru_insertion, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_lru_insertion, i64 24), ptr getelementptr (i8, ptr @event_class_mm_lru_insertion, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_lru_insertion = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mm_lru_insertion, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mm_lru_insertion = internal global { [283 x i8], [69 x i8] } { [283 x i8] c"\22folio=%p pfn=0x%lx lru=%d flags=%s%s%s%s%s%s\22, REC->folio, REC->pfn, REC->lru, REC->flags & 0x0001u ? \22M\22 : \22 \22, REC->flags & 0x0002u ? \22a\22 : \22f\22, REC->flags & 0x0008u ? \22s\22 : \22 \22, REC->flags & 0x0010u ? \22b\22 : \22 \22, REC->flags & 0x0020u ? \22d\22 : \22 \22, REC->flags & 0x0040u ? \22B\22 : \22 \22\00", [69 x i8] zeroinitializer }, align 32
@event_mm_lru_insertion = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_lru_insertion, %union.anon.106 { ptr @__tracepoint_mm_lru_insertion }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_lru_insertion }, ptr @print_fmt_mm_lru_insertion, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mm_lru_insertion = internal global ptr @event_mm_lru_insertion, section "_ftrace_events", align 4
@trace_event_fields_mm_lru_activate = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.104 { %struct.anon.105 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.104 { %struct.anon.105 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mm_lru_activate = internal global %struct.trace_event_class { ptr @str__pagemap__trace_system_name, ptr @trace_event_raw_event_mm_lru_activate, ptr @perf_trace_mm_lru_activate, ptr @trace_event_reg, ptr @trace_event_fields_mm_lru_activate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_lru_activate, i64 24), ptr getelementptr (i8, ptr @event_class_mm_lru_activate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_lru_activate = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mm_lru_activate, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mm_lru_activate = internal global { [43 x i8], [53 x i8] } { [43 x i8] c"\22folio=%p pfn=0x%lx\22, REC->folio, REC->pfn\00", [53 x i8] zeroinitializer }, align 32
@event_mm_lru_activate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_lru_activate, %union.anon.106 { ptr @__tracepoint_mm_lru_activate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_lru_activate }, ptr @print_fmt_mm_lru_activate, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mm_lru_activate = internal global ptr @event_mm_lru_activate, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mm_lru_insertion = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_lru_insertion, ptr @__bpf_trace_mm_lru_insertion, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mm_lru_activate = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_lru_activate, ptr @__bpf_trace_mm_lru_activate, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@lru_rotate = weak dso_local global %struct.lru_rotate { %struct.local_lock_t { %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 1, i32 0, i32 0 }, ptr null }, %struct.pagevec zeroinitializer }, section ".data..percpu", align 4
@lru_pvecs = weak dso_local global %struct.lru_pvecs { %struct.local_lock_t { %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 1, i32 0, i32 0 }, ptr null }, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer, %struct.pagevec zeroinitializer }, section ".data..percpu", align 4
@__kstrtab___put_page = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_page = external dso_local constant [0 x i8], align 1
@__ksymtab___put_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_page to i32), ptr @__kstrtab___put_page, ptr @__kstrtabns___put_page }, section "___ksymtab+__put_page", align 4
@__kstrtab_put_pages_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_pages_list = external dso_local constant [0 x i8], align 1
@__ksymtab_put_pages_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_pages_list to i32), ptr @__kstrtab_put_pages_list, ptr @__kstrtabns_put_pages_list }, section "___ksymtab+put_pages_list", align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mm/swap.c\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_get_kernel_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_kernel_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_get_kernel_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_kernel_pages to i32), ptr @__kstrtab_get_kernel_pages, ptr @__kstrtabns_get_kernel_pages }, section "___ksymtab_gpl+get_kernel_pages", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_folio_mark_accessed = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mark_accessed = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mark_accessed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mark_accessed to i32), ptr @__kstrtab_folio_mark_accessed, ptr @__kstrtabns_folio_mark_accessed }, section "___ksymtab+folio_mark_accessed", align 4
@.str.2 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"VM_BUG_ON_FOLIO(folio_test_active(folio) && folio_test_unevictable(folio))\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VM_BUG_ON_FOLIO(folio_test_lru(folio))\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_folio_add_lru = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_add_lru = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_add_lru = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_add_lru to i32), ptr @__kstrtab_folio_add_lru, ptr @__kstrtabns_folio_add_lru }, section "___ksymtab+folio_add_lru", align 4
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VM_BUG_ON_PAGE(PageLRU(page))\00", [34 x i8] zeroinitializer }, align 32
@__lru_add_drain_all.lru_drain_gen = internal global i32 0, align 4
@__lru_add_drain_all.has_work = internal global %struct.cpumask zeroinitializer, align 4
@__lru_add_drain_all.lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @__lru_add_drain_all.lock, i64 52), ptr getelementptr (i8, ptr @__lru_add_drain_all.lock, i64 52) }, ptr @__lru_add_drain_all.lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 4, i8 0, i32 0, i32 0 } }, align 4
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lock.wait_lock\00", [17 x i8] zeroinitializer }, align 32
@mm_percpu_wq = external dso_local local_unnamed_addr global ptr, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@lru_add_drain_work = weak dso_local global %struct.work_struct zeroinitializer, section ".data..percpu", align 4
@__lru_add_drain_all.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(work_completion)(work)\00", [40 x i8] zeroinitializer }, align 32
@lru_disable_count = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_release_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_release_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_release_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @release_pages to i32), ptr @__kstrtab_release_pages, ptr @__kstrtabns_release_pages }, section "___ksymtab+release_pages", align 4
@__kstrtab___pagevec_release = external dso_local constant [0 x i8], align 1
@__kstrtabns___pagevec_release = external dso_local constant [0 x i8], align 1
@__ksymtab___pagevec_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pagevec_release to i32), ptr @__kstrtab___pagevec_release, ptr @__kstrtabns___pagevec_release }, section "___ksymtab+__pagevec_release", align 4
@__kstrtab_pagevec_lookup_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_pagevec_lookup_range = external dso_local constant [0 x i8], align 1
@__ksymtab_pagevec_lookup_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pagevec_lookup_range to i32), ptr @__kstrtab_pagevec_lookup_range, ptr @__kstrtabns_pagevec_lookup_range }, section "___ksymtab+pagevec_lookup_range", align 4
@__kstrtab_pagevec_lookup_range_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_pagevec_lookup_range_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_pagevec_lookup_range_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pagevec_lookup_range_tag to i32), ptr @__kstrtab_pagevec_lookup_range_tag, ptr @__kstrtabns_pagevec_lookup_range_tag }, section "___ksymtab+pagevec_lookup_range_tag", align 4
@page_cluster = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__pcpu_unique_lru_rotate = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_lru_pvecs = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_lru_add_drain_work = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"struct folio *\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"folio\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pfn\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enum lru_list\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lru\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"folio=%p pfn=0x%lx lru=%d flags=%s%s%s%s%s%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"f\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"folio=%p pfn=0x%lx\0A\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"VM_BUG_ON_PAGE(page[1].compound_dtor >= NR_COMPOUND_DTORS)\00", [37 x i8] zeroinitializer }, align 32
@compound_page_dtors = external dso_local local_unnamed_addr constant [2 x ptr], align 4
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l->owner\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@root_mem_cgroup = external dso_local local_unnamed_addr global ptr, align 4
@folio_lruvec.__warned = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"VM_WARN_ON_ONCE_FOLIO(!memcg && !mem_cgroup_disabled())\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/memcontrol.h\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VM_BUG_ON_PAGE(PageTail(&folio->page))\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VM_BUG_ON_FOLIO(folio->memcg_data & MEMCG_DATA_OBJCGS)\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_FOLIO(folio_test_slab(folio))\00", [56 x i8] zeroinitializer }, align 32
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/pagemap.h\00", [33 x i8] zeroinitializer }, align 32
@trace_mm_lru_activate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_unless = external dso_local global %struct.tracepoint, align 4
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_FOLIO(!folio_test_lru(folio))\00", [56 x i8] zeroinitializer }, align 32
@trace_mm_lru_insertion.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.53 = private unnamed_addr constant [32 x i8] c"str__pagemap__trace_system_name\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 36, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [36 x i8] c"trace_event_fields_mm_lru_insertion\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_mm_lru_insertion\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"print_fmt_mm_lru_insertion\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"event_mm_lru_insertion\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [35 x i8] c"trace_event_fields_mm_lru_activate\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_mm_lru_activate\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"print_fmt_mm_lru_activate\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"event_mm_lru_activate\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 55, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 182, i32 7 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 462, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 463, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 487, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 773, i32 9 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 842, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"lru_disable_count\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 866, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"page_cluster\00", align 1
@___asan_gen_.105 = private constant [13 x i8] c"../mm/swap.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 47, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 260, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 28, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 695, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 723, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 888, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 717, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 698, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1160, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 30, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 423, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 36, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 746, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 537, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 538, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 417, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1368, i32 10 }
@___asan_gen_.219 = private unnamed_addr constant [34 x i8] c"../include/trace/events/pagemap.h\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 61, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 108, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 506, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [29 x i8] c"../include/linux/mm_inline.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 55, i32 2 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__bpf_trace_tp_map_mm_lru_activate, ptr @__bpf_trace_tp_map_mm_lru_insertion, ptr @__event_mm_lru_activate, ptr @__event_mm_lru_insertion, ptr @__ksymtab___pagevec_release, ptr @__ksymtab___put_page, ptr @__ksymtab_folio_add_lru, ptr @__ksymtab_folio_mark_accessed, ptr @__ksymtab_get_kernel_pages, ptr @__ksymtab_pagevec_lookup_range, ptr @__ksymtab_pagevec_lookup_range_tag, ptr @__ksymtab_put_pages_list, ptr @__ksymtab_release_pages, ptr @__tracepoint_mm_lru_activate, ptr @__tracepoint_mm_lru_insertion, ptr @__tracepoint_ptr_mm_lru_activate, ptr @__tracepoint_ptr_mm_lru_insertion, ptr @event_class_mm_lru_activate, ptr @event_class_mm_lru_insertion, ptr @event_mm_lru_activate, ptr @event_mm_lru_insertion, ptr @str__pagemap__trace_system_name, ptr @trace_event_fields_mm_lru_insertion, ptr @trace_event_type_funcs_mm_lru_insertion, ptr @print_fmt_mm_lru_insertion, ptr @trace_event_fields_mm_lru_activate, ptr @trace_event_type_funcs_mm_lru_activate, ptr @print_fmt_mm_lru_activate, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lru_disable_count, ptr @page_cluster, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__pagemap__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mm_lru_insertion to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mm_lru_insertion to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mm_lru_insertion to i32), i32 283, i32 352, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mm_lru_insertion to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mm_lru_activate to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mm_lru_activate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mm_lru_activate to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mm_lru_activate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lru_disable_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_cluster to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_lru_insertion(ptr nocapture readnone %__data, ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_lru_insertion, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %folio) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_lru_activate(ptr nocapture readnone %__data, ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_lru_activate, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %folio) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_lru_insertion(ptr noundef %__data, ptr noundef %folio) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !165

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !166

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %folio6 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %folio6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %folio, ptr %folio6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %folio to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %5
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %pfn, align 4
  %7 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_active.exit.i, label %if.then.i.i.i, !prof !165

if.then.i.i.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i:                         ; preds = %if.end5
  %10 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %folio, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %folio_test_active.exit.i.do.end8.i_crit_edge, label %land.rhs.i

folio_test_active.exit.i.do.end8.i_crit_edge:     ; preds = %folio_test_active.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

land.rhs.i:                                       ; preds = %folio_test_active.exit.i
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %7, align 4
  %and.i.i.i23.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i)
  %tobool.not.i.i24.i = icmp eq i32 %and.i.i.i23.i, 0
  br i1 %tobool.not.i.i24.i, label %folio_test_unevictable.exit.i, label %if.then.i.i25.i, !prof !165

if.then.i.i25.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i:                    ; preds = %land.rhs.i
  %15 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %folio, align 4
  %17 = and i32 %16, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i26.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i26.not.i, label %folio_test_unevictable.exit.i.do.end8.i_crit_edge, label %if.then.i, !prof !165

folio_test_unevictable.exit.i.do.end8.i_crit_edge: ; preds = %folio_test_unevictable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

if.then.i:                                        ; preds = %folio_test_unevictable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.2) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i:                                        ; preds = %folio_test_unevictable.exit.i.do.end8.i_crit_edge, %folio_test_active.exit.i.do.end8.i_crit_edge
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %7, align 4
  %and.i.i.i27.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i)
  %tobool.not.i.i28.i = icmp eq i32 %and.i.i.i27.i, 0
  br i1 %tobool.not.i.i28.i, label %folio_test_unevictable.exit31.i, label %if.then.i.i29.i, !prof !165

if.then.i.i29.i:                                  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i:                  ; preds = %do.end8.i
  %20 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %folio, align 4
  %22 = and i32 %21, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i30.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i30.not.i, label %if.end11.i, label %folio_test_unevictable.exit31.i.folio_lru_list.exit_crit_edge

folio_test_unevictable.exit31.i.folio_lru_list.exit_crit_edge: ; preds = %folio_test_unevictable.exit31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit

if.end11.i:                                       ; preds = %folio_test_unevictable.exit31.i
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_is_file_lru.exit.i, label %if.then.i.i.i.i, !prof !165

if.then.i.i.i.i:                                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i:                         ; preds = %if.end11.i
  %25 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %folio, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %7, align 4
  %and.i.i.i32.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i)
  %tobool.not.i.i33.i = icmp eq i32 %and.i.i.i32.i, 0
  br i1 %tobool.not.i.i33.i, label %folio_test_active.exit36.i, label %if.then.i.i34.i, !prof !165

if.then.i.i34.i:                                  ; preds = %folio_is_file_lru.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i:                       ; preds = %folio_is_file_lru.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = lshr i32 %26, 18
  %30 = and i32 %29, 2
  %31 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %folio, align 4
  %33 = lshr i32 %32, 5
  %34 = and i32 %33, 1
  %35 = or i32 %34, %30
  %36 = xor i32 %35, 2
  br label %folio_lru_list.exit

folio_lru_list.exit:                              ; preds = %folio_test_active.exit36.i, %folio_test_unevictable.exit31.i.folio_lru_list.exit_crit_edge
  %retval.0.i42 = phi i32 [ %36, %folio_test_active.exit36.i ], [ 4, %folio_test_unevictable.exit31.i.folio_lru_list.exit_crit_edge ]
  %lru = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %call3, i32 0, i32 3
  %37 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i42, ptr %lru, align 4
  %mapping.i = getelementptr inbounds %struct.anon, ptr %folio, i32 0, i32 2
  %38 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mapping.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i43 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %cmp.i.not = icmp eq i32 %and.i43, 0
  %cond = select i1 %cmp.i.not, i32 4, i32 2
  %call10 = call zeroext i1 @folio_mapped(ptr noundef %folio) #11
  %cond11 = zext i1 %call10 to i32
  %or = or i32 %cond, %cond11
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i44 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i44)
  %tobool.not.i.i.i45 = icmp eq i32 %and.i.i.i.i44, 0
  br i1 %tobool.not.i.i.i45, label %folio_test_swapbacked.exit.i, label %if.then.i.i.i46, !prof !165

if.then.i.i.i46:                                  ; preds = %folio_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_swapbacked.exit.i:                     ; preds = %folio_lru_list.exit
  %43 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %folio, align 4
  %45 = and i32 %44, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i47 = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i47, label %folio_test_swapbacked.exit.i.folio_test_swapcache.exit.thread_crit_edge, label %land.rhs.i48

folio_test_swapbacked.exit.i.folio_test_swapcache.exit.thread_crit_edge: ; preds = %folio_test_swapbacked.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_test_swapcache.exit.thread

land.rhs.i48:                                     ; preds = %folio_test_swapbacked.exit.i
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %7, align 4
  %and.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_swapcache.exit, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %land.rhs.i48
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_swapcache.exit:                        ; preds = %land.rhs.i48
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %folio, align 4
  %50 = lshr i32 %49, 7
  %51 = and i32 %50, 8
  br label %folio_test_swapcache.exit.thread

folio_test_swapcache.exit.thread:                 ; preds = %folio_test_swapcache.exit, %folio_test_swapbacked.exit.i.folio_test_swapcache.exit.thread_crit_edge
  %52 = phi i32 [ 0, %folio_test_swapbacked.exit.i.folio_test_swapcache.exit.thread_crit_edge ], [ %51, %folio_test_swapcache.exit ]
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %7, align 4
  %and.i.i.i49 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %and.i.i.i49, 0
  br i1 %tobool.not.i.i50, label %folio_test_swapbacked.exit, label %if.then.i.i51, !prof !165

if.then.i.i51:                                    ; preds = %folio_test_swapcache.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_swapbacked.exit:                       ; preds = %folio_test_swapcache.exit.thread
  %55 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %folio, align 4
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %7, align 4
  %and.i.i.i54 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i54)
  %tobool.not.i.i55 = icmp eq i32 %and.i.i.i54, 0
  br i1 %tobool.not.i.i55, label %folio_test_mappedtodisk.exit, label %if.then.i.i56, !prof !165

if.then.i.i56:                                    ; preds = %folio_test_swapbacked.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_mappedtodisk.exit:                     ; preds = %folio_test_swapbacked.exit
  %59 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %folio, align 4
  %61 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %7, align 4
  %and.i.i.i59 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %and.i.i.i59, 0
  br i1 %tobool.not.i.i60, label %folio_test_private.exit, label %if.then.i.i61, !prof !165

if.then.i.i61:                                    ; preds = %folio_test_mappedtodisk.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_private.exit:                          ; preds = %folio_test_mappedtodisk.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or14 = or i32 %or, %52
  %63 = lshr i32 %56, 15
  %64 = and i32 %63, 16
  %or17 = or i32 %or14, %64
  %65 = lshr i32 %60, 12
  %66 = and i32 %65, 32
  %or20 = or i32 %or17, %66
  %67 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %folio, align 4
  %69 = lshr i32 %68, 7
  %70 = and i32 %69, 64
  %or23 = or i32 %or20, %70
  %flags = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %call3, i32 0, i32 4
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or23, ptr %flags, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %folio_test_private.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mm_lru_insertion(ptr noundef %__data, ptr noundef %folio) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i85 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i85 to ptr
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
  %tobool.i86.not = icmp eq ptr %13, null
  br i1 %tobool.i86.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !155) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %folio17 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %folio17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %folio, ptr %folio17, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %folio to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %29 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %29
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %pfn, align 4
  %31 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_active.exit.i, label %if.then.i.i.i, !prof !165

if.then.i.i.i:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i:                         ; preds = %if.end16
  %34 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %folio, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i, label %folio_test_active.exit.i.do.end8.i_crit_edge, label %land.rhs.i

folio_test_active.exit.i.do.end8.i_crit_edge:     ; preds = %folio_test_active.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

land.rhs.i:                                       ; preds = %folio_test_active.exit.i
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %31, align 4
  %and.i.i.i23.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i)
  %tobool.not.i.i24.i = icmp eq i32 %and.i.i.i23.i, 0
  br i1 %tobool.not.i.i24.i, label %folio_test_unevictable.exit.i, label %if.then.i.i25.i, !prof !165

if.then.i.i25.i:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i:                    ; preds = %land.rhs.i
  %39 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %folio, align 4
  %41 = and i32 %40, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i26.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i26.not.i, label %folio_test_unevictable.exit.i.do.end8.i_crit_edge, label %if.then.i, !prof !165

folio_test_unevictable.exit.i.do.end8.i_crit_edge: ; preds = %folio_test_unevictable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

if.then.i:                                        ; preds = %folio_test_unevictable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.2) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i:                                        ; preds = %folio_test_unevictable.exit.i.do.end8.i_crit_edge, %folio_test_active.exit.i.do.end8.i_crit_edge
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %31, align 4
  %and.i.i.i27.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i)
  %tobool.not.i.i28.i = icmp eq i32 %and.i.i.i27.i, 0
  br i1 %tobool.not.i.i28.i, label %folio_test_unevictable.exit31.i, label %if.then.i.i29.i, !prof !165

if.then.i.i29.i:                                  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i:                  ; preds = %do.end8.i
  %44 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %folio, align 4
  %46 = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i30.not.i = icmp eq i32 %46, 0
  br i1 %tobool.i30.not.i, label %if.end11.i, label %folio_test_unevictable.exit31.i.folio_lru_list.exit_crit_edge

folio_test_unevictable.exit31.i.folio_lru_list.exit_crit_edge: ; preds = %folio_test_unevictable.exit31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit

if.end11.i:                                       ; preds = %folio_test_unevictable.exit31.i
  %47 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %31, align 4
  %and.i.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_is_file_lru.exit.i, label %if.then.i.i.i.i, !prof !165

if.then.i.i.i.i:                                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i:                         ; preds = %if.end11.i
  %49 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %folio, align 4
  %51 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %31, align 4
  %and.i.i.i32.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i)
  %tobool.not.i.i33.i = icmp eq i32 %and.i.i.i32.i, 0
  br i1 %tobool.not.i.i33.i, label %folio_test_active.exit36.i, label %if.then.i.i34.i, !prof !165

if.then.i.i34.i:                                  ; preds = %folio_is_file_lru.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i:                       ; preds = %folio_is_file_lru.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = lshr i32 %50, 18
  %54 = and i32 %53, 2
  %55 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %folio, align 4
  %57 = lshr i32 %56, 5
  %58 = and i32 %57, 1
  %59 = or i32 %58, %54
  %60 = xor i32 %59, 2
  br label %folio_lru_list.exit

folio_lru_list.exit:                              ; preds = %folio_test_active.exit36.i, %folio_test_unevictable.exit31.i.folio_lru_list.exit_crit_edge
  %retval.0.i = phi i32 [ %60, %folio_test_active.exit36.i ], [ 4, %folio_test_unevictable.exit31.i.folio_lru_list.exit_crit_edge ]
  %lru = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %call13, i32 0, i32 3
  %61 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i, ptr %lru, align 4
  %mapping.i = getelementptr inbounds %struct.anon, ptr %folio, i32 0, i32 2
  %62 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mapping.i, align 4
  %64 = ptrtoint ptr %63 to i32
  %and.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  %cond = select i1 %cmp.i.not, i32 4, i32 2
  %call21 = call zeroext i1 @folio_mapped(ptr noundef %folio) #11
  %cond22 = zext i1 %call21 to i32
  %or = or i32 %cond, %cond22
  %65 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %31, align 4
  %and.i.i.i.i65 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i65)
  %tobool.not.i.i.i66 = icmp eq i32 %and.i.i.i.i65, 0
  br i1 %tobool.not.i.i.i66, label %folio_test_swapbacked.exit.i, label %if.then.i.i.i67, !prof !165

if.then.i.i.i67:                                  ; preds = %folio_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_swapbacked.exit.i:                     ; preds = %folio_lru_list.exit
  %67 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %folio, align 4
  %69 = and i32 %68, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.not.i68 = icmp eq i32 %69, 0
  br i1 %tobool.i.not.i68, label %folio_test_swapbacked.exit.i.folio_test_swapcache.exit.thread_crit_edge, label %land.rhs.i69

folio_test_swapbacked.exit.i.folio_test_swapcache.exit.thread_crit_edge: ; preds = %folio_test_swapbacked.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_test_swapcache.exit.thread

land.rhs.i69:                                     ; preds = %folio_test_swapbacked.exit.i
  %70 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %31, align 4
  %and.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_swapcache.exit, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %land.rhs.i69
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_swapcache.exit:                        ; preds = %land.rhs.i69
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %folio, align 4
  %74 = lshr i32 %73, 7
  %75 = and i32 %74, 8
  br label %folio_test_swapcache.exit.thread

folio_test_swapcache.exit.thread:                 ; preds = %folio_test_swapcache.exit, %folio_test_swapbacked.exit.i.folio_test_swapcache.exit.thread_crit_edge
  %76 = phi i32 [ 0, %folio_test_swapbacked.exit.i.folio_test_swapcache.exit.thread_crit_edge ], [ %75, %folio_test_swapcache.exit ]
  %77 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %31, align 4
  %and.i.i.i70 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i70)
  %tobool.not.i.i71 = icmp eq i32 %and.i.i.i70, 0
  br i1 %tobool.not.i.i71, label %folio_test_swapbacked.exit, label %if.then.i.i72, !prof !165

if.then.i.i72:                                    ; preds = %folio_test_swapcache.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_swapbacked.exit:                       ; preds = %folio_test_swapcache.exit.thread
  %79 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %folio, align 4
  %81 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %31, align 4
  %and.i.i.i75 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i75)
  %tobool.not.i.i76 = icmp eq i32 %and.i.i.i75, 0
  br i1 %tobool.not.i.i76, label %folio_test_mappedtodisk.exit, label %if.then.i.i77, !prof !165

if.then.i.i77:                                    ; preds = %folio_test_swapbacked.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_mappedtodisk.exit:                     ; preds = %folio_test_swapbacked.exit
  %83 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %folio, align 4
  %85 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %31, align 4
  %and.i.i.i80 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i80)
  %tobool.not.i.i81 = icmp eq i32 %and.i.i.i80, 0
  br i1 %tobool.not.i.i81, label %folio_test_private.exit, label %if.then.i.i82, !prof !165

if.then.i.i82:                                    ; preds = %folio_test_mappedtodisk.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_private.exit:                          ; preds = %folio_test_mappedtodisk.exit
  call void @__sanitizer_cov_trace_pc() #13
  %or25 = or i32 %or, %76
  %87 = lshr i32 %80, 15
  %88 = and i32 %87, 16
  %or28 = or i32 %or25, %88
  %89 = lshr i32 %84, 12
  %90 = and i32 %89, 32
  %or31 = or i32 %or28, %90
  %91 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %folio, align 4
  %93 = lshr i32 %92, 7
  %94 = and i32 %93, 64
  %or34 = or i32 %or31, %94
  %flags = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %call13, i32 0, i32 4
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or34, ptr %flags, align 4
  %96 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rctx, align 4
  %98 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %97, ptr noundef %__data, i64 noundef 1, ptr noundef %99, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %folio_test_private.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_lru_activate(ptr noundef %__data, ptr noundef %folio) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !165

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !166

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %folio6 = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %folio6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %folio, ptr %folio6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %folio to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %5
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %pfn, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mm_lru_activate(ptr noundef %__data, ptr noundef %folio) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !169
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !155) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !155) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %folio17 = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %folio17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %folio, ptr %folio17, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %folio to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %29 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %29
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %pfn to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %pfn, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_lru_insertion(ptr noundef %__data, ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %folio to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_lru_activate(ptr noundef %__data, ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %folio to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__put_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %entry.if.then4_crit_edge

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

PageCompound.exit:                                ; preds = %entry
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.else, label %PageCompound.exit.if.then4_crit_edge, !prof !165

PageCompound.exit.if.then4_crit_edge:             ; preds = %PageCompound.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %PageCompound.exit.if.then4_crit_edge, %entry.if.then4_crit_edge
  tail call fastcc void @__put_compound_page(ptr noundef %page)
  br label %if.end5

if.else:                                          ; preds = %PageCompound.exit
  tail call fastcc void @__page_cache_release(ptr noundef %page) #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %3, align 4
  %and.i.i10 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10)
  %tobool.not.i.i = icmp eq i32 %and.i.i10, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@__put_page, %__put_single_page.exit)) #11
          to label %if.end.i3.i [label %__put_single_page.exit], !srcloc !170

if.end.i3.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @__mem_cgroup_uncharge(ptr noundef %9) #11
  br label %__put_single_page.exit

__put_single_page.exit:                           ; preds = %if.end.i3.i, %_compound_head.exit.i
  tail call void @free_unref_page(ptr noundef %page, i32 noundef 0) #11
  br label %if.end5

if.end5:                                          ; preds = %__put_single_page.exit, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__put_compound_page(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__page_cache_release(ptr noundef %page)
  %compound_dtor.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %compound_dtor.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %compound_dtor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp ugt i8 %1, 1
  br i1 %cmp.i, label %if.then.i, label %destroy_compound_page.exit, !prof !166

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.29) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 888, 0\0A.popsection", ""() #11, !srcloc !171
  unreachable

destroy_compound_page.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %1 to i32
  %arrayidx9.i = getelementptr [2 x ptr], ptr @compound_page_dtors, i32 0, i32 %conv.i
  %2 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx9.i, align 4
  tail call void %3(ptr noundef %page) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_pages_list(ptr noundef %pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %cmp.not49 = icmp eq ptr %1, %pages
  br i1 %cmp.not49, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in50 = phi ptr [ %.pn53, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %page.052 = getelementptr i8, ptr %.pn.in50, i32 -4
  %2 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn53 = load ptr, ptr %.pn.in50, align 4
  %_refcount.i.i = getelementptr i8, ptr %.pn.in50, i32 24
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i, i32 noundef 4) #11
  %3 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %_refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %if.then.i32, label %do.end5.i, !prof !166

if.then.i32:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page.052, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

do.end5.i:                                        ; preds = %for.body
  %call.i.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i) #11, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_pages_list, %if.then.i.i)) #11
          to label %put_page_testzero.exit [label %if.then.i.i], !srcloc !170

if.then.i.i:                                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i1 %cmp.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %page.052, i32 noundef -1, i32 noundef %conv.i.i) #11
  br label %put_page_testzero.exit

put_page_testzero.exit:                           ; preds = %if.then.i.i, %do.end5.i
  br i1 %cmp.i.i.i.i, label %if.end, label %if.then

if.then:                                          ; preds = %put_page_testzero.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in50) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in50, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in50, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.inc

if.end:                                           ; preds = %put_page_testzero.exit
  %14 = ptrtoint ptr %page.052 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %page.052, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageHead.exit, !prof !166

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page.052, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit:                                    ; preds = %if.end
  %16 = ptrtoint ptr %page.052 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %page.052, align 4
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp eq i32 %18, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %PageHead.exit
  %call.i.i33 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in50) #11
  br i1 %call.i.i33, label %if.end.i.i36, label %if.then10.list_del.exit38_crit_edge

if.then10.list_del.exit38_crit_edge:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit38

if.end.i.i36:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i34 = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i34, align 4
  %21 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in50, align 4
  %prev1.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i35, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit38

list_del.exit38:                                  ; preds = %if.end.i.i36, %if.then10.list_del.exit38_crit_edge
  %25 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in50, align 4
  %prev.i37 = getelementptr inbounds %struct.list_head, ptr %.pn.in50, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i37, align 4
  tail call fastcc void @__page_cache_release(ptr noundef %page.052) #11
  %compound_dtor.i.i = getelementptr i8, ptr %.pn.in50, i32 40
  %27 = ptrtoint ptr %compound_dtor.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %compound_dtor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp.i.i = icmp ugt i8 %28, 1
  br i1 %cmp.i.i, label %if.then.i.i39, label %__put_compound_page.exit, !prof !166

if.then.i.i39:                                    ; preds = %list_del.exit38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page.052, ptr noundef nonnull @.str.29) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 888, 0\0A.popsection", ""() #11, !srcloc !171
  unreachable

__put_compound_page.exit:                         ; preds = %list_del.exit38
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i40 = zext i8 %28 to i32
  %arrayidx9.i.i = getelementptr [2 x ptr], ptr @compound_page_dtors, i32 0, i32 %conv.i.i40
  %29 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx9.i.i, align 4
  tail call void %30(ptr noundef %page.052) #11
  br label %for.inc

if.end12:                                         ; preds = %PageHead.exit
  %31 = ptrtoint ptr %.pn.in50 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %.pn.in50, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i30, !prof !165

if.then.i30:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page.052, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #11, !srcloc !177
  unreachable

do.body7.i:                                       ; preds = %if.end12
  %33 = ptrtoint ptr %page.052 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %page.052, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.not.i31 = icmp eq i32 %34, -1
  br i1 %cmp.i.not.i31, label %if.then16.i, label %__ClearPageWaiters.exit, !prof !166

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page.052, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #11, !srcloc !178
  unreachable

__ClearPageWaiters.exit:                          ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i28.i = and i32 %34, -129
  %35 = ptrtoint ptr %page.052 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i28.i, ptr %page.052, align 4
  br label %for.inc

for.inc:                                          ; preds = %__ClearPageWaiters.exit, %__put_compound_page.exit, %list_del.exit
  %cmp.not = icmp eq ptr %.pn53, %pages
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @free_unref_page_list(ptr noundef %pages) #11
  %36 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %pages, ptr %pages, align 4
  %prev.i41 = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pages, ptr %prev.i41, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_unref_page_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_kernel_pages(ptr nocapture noundef readonly %kiov, i32 noundef %nr_segs, i32 %write, ptr nocapture noundef writeonly %pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_segs)
  %cmp39 = icmp sgt i32 %nr_segs, 0
  br i1 %cmp39, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %get_page.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %seg.040 = phi i32 [ %inc, %get_page.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %iov_len = getelementptr %struct.kvec, ptr %kiov, i32 %seg.040, i32 1
  %0 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp1.not = icmp eq i32 %1, 4096
  br i1 %cmp1.not, label %if.end22, label %do.end, !prof !165

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 182, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end22:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.kvec, ptr %kiov, i32 %seg.040
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call ptr @__kmap_to_page(ptr noundef %3) #11
  %arrayidx24 = getelementptr ptr, ptr %pages, i32 %seg.040
  %4 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %arrayidx24, align 4
  %5 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %11, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !166

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.32) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !179
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@get_kernel_pages, %if.then.i.i.i.i)) #11
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !170

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %9, i32 noundef 1) #11
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %inc = add nuw nsw i32 %seg.040, 1
  %exitcond.not = icmp eq i32 %inc, %nr_segs
  br i1 %exitcond.not, label %get_page.exit.cleanup_crit_edge, label %get_page.exit.for.body_crit_edge

get_page.exit.for.body_crit_edge:                 ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

get_page.exit.cleanup_crit_edge:                  ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %seg.038 = phi i32 [ %seg.040, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %nr_segs, %get_page.exit.cleanup_crit_edge ]
  ret i32 %seg.038
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_rotate_reclaimable(ptr noundef %folio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_locked.exit, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_locked.exit:                           ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %folio_test_locked.exit.if.end86_crit_edge

folio_test_locked.exit.if.end86_crit_edge:        ; preds = %folio_test_locked.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

land.lhs.true:                                    ; preds = %folio_test_locked.exit
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %0, align 4
  %and.i.i.i95 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i95)
  %tobool.not.i.i96 = icmp eq i32 %and.i.i.i95, 0
  br i1 %tobool.not.i.i96, label %folio_test_dirty.exit, label %if.then.i.i97, !prof !165

if.then.i.i97:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_dirty.exit:                            ; preds = %land.lhs.true
  %7 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %folio, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i98.not = icmp eq i32 %9, 0
  br i1 %tobool.i98.not, label %land.lhs.true2, label %folio_test_dirty.exit.if.end86_crit_edge

folio_test_dirty.exit.if.end86_crit_edge:         ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

land.lhs.true2:                                   ; preds = %folio_test_dirty.exit
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %0, align 4
  %and.i.i.i99 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i99)
  %tobool.not.i.i100 = icmp eq i32 %and.i.i.i99, 0
  br i1 %tobool.not.i.i100, label %folio_test_unevictable.exit, label %if.then.i.i101, !prof !165

if.then.i.i101:                                   ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit:                      ; preds = %land.lhs.true2
  %12 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %folio, align 4
  %14 = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i102.not = icmp eq i32 %14, 0
  br i1 %tobool.i102.not, label %land.lhs.true4, label %folio_test_unevictable.exit.if.end86_crit_edge

folio_test_unevictable.exit.if.end86_crit_edge:   ; preds = %folio_test_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

land.lhs.true4:                                   ; preds = %folio_test_unevictable.exit
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i.i.i103 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i103)
  %tobool.not.i.i104 = icmp eq i32 %and.i.i.i103, 0
  br i1 %tobool.not.i.i104, label %folio_test_lru.exit, label %if.then.i.i105, !prof !165

if.then.i.i105:                                   ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_lru.exit:                              ; preds = %land.lhs.true4
  %17 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %folio, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i106.not = icmp eq i32 %19, 0
  br i1 %tobool.i106.not, label %folio_test_lru.exit.if.end86_crit_edge, label %if.then

folio_test_lru.exit.if.end86_crit_edge:           ; preds = %folio_test_lru.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then:                                          ; preds = %folio_test_lru.exit
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i = add i32 %21, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 128
  br i1 %cmp.i, label %if.then.i, label %do.end5.i, !prof !166

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.32) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !179
  unreachable

do.end5.i:                                        ; preds = %if.then
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #11, !srcloc !180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@folio_rotate_reclaimable, %if.then.i.i.i)) #11
          to label %folio_get.exit [label %if.then.i.i.i], !srcloc !170

if.then.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %folio, i32 noundef 1) #11
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i, %do.end5.i
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !181
  %and.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then16, label %folio_get.exit.do.body19_crit_edge

folio_get.exit.do.body19_crit_edge:               ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

if.then16:                                        ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %do.body19

do.body19:                                        ; preds = %if.then16, %folio_get.exit.do.body19_crit_edge
  %24 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i107 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i107 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %add = add i32 %29, ptrtoint (ptr @lru_rotate to i32)
  %30 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %30)
  %31 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %34, ptrtoint (ptr getelementptr inbounds (%struct.lru_rotate, ptr @lru_rotate, i32 0, i32 1) to i32)
  %35 = inttoptr i32 %add37 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  %inc.i.i = add i8 %37, 1
  store i8 %inc.i.i, ptr %35, align 4
  %idxprom.i.i = zext i8 %37 to i32
  %arrayidx.i.i = getelementptr %struct.pagevec, ptr %35, i32 0, i32 2, i32 %idxprom.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %folio, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc.i.i)
  %tobool.not.i = icmp eq i8 %inc.i.i, 15
  br i1 %tobool.not.i, label %do.body19.if.then39_crit_edge, label %lor.lhs.false.i

do.body19.if.then39_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

lor.lhs.false.i:                                  ; preds = %do.body19
  %39 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %folio, align 4
  %41 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i108 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i108, label %PageCompound.exit.i, label %lor.lhs.false.i.if.then39_crit_edge

lor.lhs.false.i.if.then39_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

PageCompound.exit.i:                              ; preds = %lor.lhs.false.i
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %0, align 4
  %and.i.i.i109 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i109)
  %tobool2.not.i = icmp eq i32 %and.i.i.i109, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %PageCompound.exit.i.if.then39_crit_edge

PageCompound.exit.i.if.then39_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

lor.lhs.false3.i:                                 ; preds = %PageCompound.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lru_disable_count, i32 noundef 4) #11
  %44 = load volatile i32, ptr @lru_disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false3.i.do.body42_crit_edge, label %lor.lhs.false3.i.if.then39_crit_edge

lor.lhs.false3.i.if.then39_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

lor.lhs.false3.i.do.body42_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body42

if.then39:                                        ; preds = %lor.lhs.false3.i.if.then39_crit_edge, %PageCompound.exit.i.if.then39_crit_edge, %lor.lhs.false.i.if.then39_crit_edge, %do.body19.if.then39_crit_edge
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %35, ptr noundef nonnull @pagevec_move_tail_fn)
  br label %do.body42

do.body42:                                        ; preds = %if.then39, %lor.lhs.false3.i.do.body42_crit_edge
  %45 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu, align 4
  %arrayidx51 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %48, ptrtoint (ptr @lru_rotate to i32)
  %49 = inttoptr i32 %add52 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %49)
  br i1 %tobool.not, label %if.then62, label %do.body42.do.body64_crit_edge

do.body42.do.body64_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body64

if.then62:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body64

do.body64:                                        ; preds = %if.then62, %do.body42.do.body64_crit_edge
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !182
  %and.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool72.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool72.not, label %if.then76, label %do.body64.do.end79_crit_edge, !prof !166

do.body64.do.end79_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %do.body64.do.end79_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #11, !srcloc !183
  br label %if.end86

if.end86:                                         ; preds = %do.end79, %folio_test_lru.exit.if.end86_crit_edge, %folio_test_unevictable.exit.if.end86_crit_edge, %folio_test_dirty.exit.if.end86_crit_edge, %folio_test_locked.exit.if.end86_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_acquire(ptr noundef %l) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %l, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@local_lock_acquire, %__here) to i32)) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !165

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 30, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %owner39 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %owner39, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pagevec_lru_move_fn(ptr nocapture noundef %pvec, ptr nocapture noundef readonly %move_fn) unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  %1 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp50.not = icmp eq i8 %2, 0
  br i1 %cmp50.not, label %entry.if.end7_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %lruvec.052 = phi ptr [ %lruvec.1, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %i.051 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.051
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i31, !prof !165

if.then.i31:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %7, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %4 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i31
  %retval.0.i = phi i32 [ %sub.i, %if.then.i31 ], [ %8, %if.end.i ]
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %4 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %5, align 4
  %and.i13.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !165

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %16, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %4 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %17, %if.end.i17.i ]
  %18 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.36) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #11, !srcloc !184
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !165

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %16, -1
  br label %TestClearPageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %4 to i32
  br label %TestClearPageLRU.exit

TestClearPageLRU.exit:                            ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %19, %if.end.i24.i ]
  %20 = inttoptr i32 %retval.0.i25.i to ptr
  %call10.i = call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not = icmp eq i32 %call10.i, 0
  br i1 %tobool.not, label %TestClearPageLRU.exit.cleanup_crit_edge, label %if.end

TestClearPageLRU.exit.cleanup_crit_edge:          ; preds = %TestClearPageLRU.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %TestClearPageLRU.exit
  %21 = inttoptr i32 %retval.0.i to ptr
  %tobool.not.i32 = icmp eq ptr %lruvec.052, null
  br i1 %tobool.not.i32, label %if.end.if.end2.i_crit_edge, label %if.then.i33

if.end.if.end2.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i33:                                      ; preds = %if.end
  %pgdat.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.052, i32 0, i32 7
  %22 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pgdat.i.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %folio_pgdat.exit.i.i, !prof !166

if.then.i.i.i.i.i:                                ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #13
  %26 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.47) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !185
  unreachable

folio_pgdat.exit.i.i:                             ; preds = %if.then.i33
  %cmp.i.i = icmp eq ptr %23, @contig_page_data
  br i1 %cmp.i.i, label %land.rhs.i.i, label %folio_pgdat.exit.i.i.if.end.i34_crit_edge

folio_pgdat.exit.i.i.if.end.i34_crit_edge:        ; preds = %folio_pgdat.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i34

land.rhs.i.i:                                     ; preds = %folio_pgdat.exit.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@pagevec_lru_move_fn, %folio_matches_lruvec.exit.i)) #11
          to label %if.end.i.i.i [label %folio_matches_lruvec.exit.i], !srcloc !170

if.end.i.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %memcg.i.i.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.052, i32 0, i32 9
  %27 = ptrtoint ptr %memcg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %memcg.i.i.i, align 4
  br label %folio_matches_lruvec.exit.i

folio_matches_lruvec.exit.i:                      ; preds = %if.end.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %28, %if.end.i.i.i ], [ null, %land.rhs.i.i ]
  %call3.i.i = call fastcc ptr @folio_memcg(ptr noundef %21) #11
  %cmp4.i.i = icmp eq ptr %retval.0.i.i.i, %call3.i.i
  br i1 %cmp4.i.i, label %folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge, label %folio_matches_lruvec.exit.i.if.end.i34_crit_edge

folio_matches_lruvec.exit.i.if.end.i34_crit_edge: ; preds = %folio_matches_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i34

folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge: ; preds = %folio_matches_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lruvec_relock_irqsave.exit

if.end.i34:                                       ; preds = %folio_matches_lruvec.exit.i.if.end.i34_crit_edge, %folio_pgdat.exit.i.i.if.end.i34_crit_edge
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %lru_lock.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.052, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lru_lock.i.i, i32 noundef %30) #11
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i34, %if.end.if.end2.i_crit_edge
  %call3.i = call ptr @folio_lruvec_lock_irqsave(ptr noundef %21, ptr noundef nonnull %flags) #11
  br label %folio_lruvec_relock_irqsave.exit

folio_lruvec_relock_irqsave.exit:                 ; preds = %if.end2.i, %folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge
  %retval.0.i35 = phi ptr [ %call3.i, %if.end2.i ], [ %lruvec.052, %folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge ]
  call void %move_fn(ptr noundef %4, ptr noundef %retval.0.i35) #11
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %5, align 4
  %and.i.i21 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i.i22 = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i.i22, label %if.end.i.i25, label %if.then.i.i24, !prof !165

if.then.i.i24:                                    ; preds = %folio_lruvec_relock_irqsave.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i23 = add i32 %32, -1
  br label %_compound_head.exit.i28

if.end.i.i25:                                     ; preds = %folio_lruvec_relock_irqsave.exit
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %4 to i32
  br label %_compound_head.exit.i28

_compound_head.exit.i28:                          ; preds = %if.end.i.i25, %if.then.i.i24
  %retval.0.i.i26 = phi i32 [ %sub.i.i23, %if.then.i.i24 ], [ %33, %if.end.i.i25 ]
  %34 = inttoptr i32 %retval.0.i.i26 to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i27 = icmp eq i32 %36, -1
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %5, align 4
  %and.i12.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i27, label %if.then.i29, label %do.end8.i30, !prof !166

if.then.i29:                                      ; preds = %_compound_head.exit.i28
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !165

if.then.i15.i:                                    ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i14.i = add i32 %38, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %4 to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %39, %if.end.i16.i ]
  %40 = inttoptr i32 %retval.0.i17.i to ptr
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.36) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #11, !srcloc !186
  unreachable

do.end8.i30:                                      ; preds = %_compound_head.exit.i28
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !165

if.then.i22.i:                                    ; preds = %do.end8.i30
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i21.i = add i32 %38, -1
  br label %SetPageLRU.exit

if.end.i23.i:                                     ; preds = %do.end8.i30
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %4 to i32
  br label %SetPageLRU.exit

SetPageLRU.exit:                                  ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %41, %if.end.i23.i ]
  %42 = inttoptr i32 %retval.0.i24.i to ptr
  call void @_set_bit(i32 noundef 4, ptr noundef %42) #11
  br label %cleanup

cleanup:                                          ; preds = %SetPageLRU.exit, %TestClearPageLRU.exit.cleanup_crit_edge
  %lruvec.1 = phi ptr [ %retval.0.i35, %SetPageLRU.exit ], [ %lruvec.052, %TestClearPageLRU.exit.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.051, 1
  %43 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %44 to i32
  %cmp = icmp ult i32 %inc, %conv.i
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  %tobool5.not = icmp eq ptr %lruvec.1, null
  br i1 %tobool5.not, label %for.end.if.end7_crit_edge, label %if.then6

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %lru_lock.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.1, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lru_lock.i, i32 noundef %46) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %pages8 = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 2
  %47 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pvec, align 4
  %conv = zext i8 %48 to i32
  call void @release_pages(ptr noundef %pages8, i32 noundef %conv)
  %49 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %pvec, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pagevec_move_tail_fn(ptr noundef %page, ptr noundef %lruvec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !165

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i53 = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i53, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_unevictable.exit, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit:                      ; preds = %_compound_head.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.then, label %folio_test_unevictable.exit.if.end_crit_edge

folio_test_unevictable.exit.if.end_crit_edge:     ; preds = %folio_test_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %folio_test_unevictable.exit
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %19 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_active.exit.i.i, label %if.then.i.i.i.i, !prof !165

if.then.i.i.i.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i:                       ; preds = %list_del.exit.i
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %4, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i, label %folio_test_active.exit.i.i.do.end8.i.i_crit_edge, label %land.rhs.i.i

folio_test_active.exit.i.i.do.end8.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.rhs.i.i:                                     ; preds = %folio_test_active.exit.i.i
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %5, align 4
  %and.i.i.i23.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i)
  %tobool.not.i.i24.i.i = icmp eq i32 %and.i.i.i23.i.i, 0
  br i1 %tobool.not.i.i24.i.i, label %folio_test_unevictable.exit.i.i, label %if.then.i.i25.i.i, !prof !165

if.then.i.i25.i.i:                                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i:                  ; preds = %land.rhs.i.i
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %4, align 4
  %27 = and i32 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i26.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.i26.not.i.i, label %folio_test_unevictable.exit.i.i.do.end8.i.i_crit_edge, label %if.then.i.i8, !prof !165

folio_test_unevictable.exit.i.i.do.end8.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

if.then.i.i8:                                     ; preds = %folio_test_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i:                                      ; preds = %folio_test_unevictable.exit.i.i.do.end8.i.i_crit_edge, %folio_test_active.exit.i.i.do.end8.i.i_crit_edge
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %5, align 4
  %and.i.i.i27.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i)
  %tobool.not.i.i28.i.i = icmp eq i32 %and.i.i.i27.i.i, 0
  br i1 %tobool.not.i.i28.i.i, label %folio_test_unevictable.exit31.i.i, label %if.then.i.i29.i.i, !prof !165

if.then.i.i29.i.i:                                ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i:                ; preds = %do.end8.i.i
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %4, align 4
  %32 = and i32 %31, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i30.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.i30.not.i.i, label %if.end11.i.i, label %folio_test_unevictable.exit31.i.i.folio_lru_list.exit.i_crit_edge

folio_test_unevictable.exit31.i.i.folio_lru_list.exit.i_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i

if.end11.i.i:                                     ; preds = %folio_test_unevictable.exit31.i.i
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_is_file_lru.exit.i.i, label %if.then.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i:                                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i:                       ; preds = %if.end11.i.i
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %4, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %5, align 4
  %and.i.i.i32.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i)
  %tobool.not.i.i33.i.i = icmp eq i32 %and.i.i.i32.i.i, 0
  br i1 %tobool.not.i.i33.i.i, label %folio_test_active.exit36.i.i, label %if.then.i.i34.i.i, !prof !165

if.then.i.i34.i.i:                                ; preds = %folio_is_file_lru.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i:                     ; preds = %folio_is_file_lru.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = lshr i32 %36, 18
  %40 = and i32 %39, 2
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %4, align 4
  %43 = lshr i32 %42, 5
  %44 = and i32 %43, 1
  %45 = or i32 %44, %40
  %46 = xor i32 %45, 2
  br label %folio_lru_list.exit.i

folio_lru_list.exit.i:                            ; preds = %folio_test_active.exit36.i.i, %folio_test_unevictable.exit31.i.i.folio_lru_list.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %46, %folio_test_active.exit36.i.i ], [ 4, %folio_test_unevictable.exit31.i.i.folio_lru_list.exit.i_crit_edge ]
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i.not.i.i.i.i = icmp eq i32 %48, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i6.i, label %PageHead.exit.i.i.i, !prof !166

if.then.i.i.i6.i:                                 ; preds = %folio_lru_list.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i:                              ; preds = %folio_lru_list.exit.i
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %4, align 4
  %51 = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.lruvec_del_folio.exit_crit_edge, label %if.end.i.i7.i

PageHead.exit.i.i.i.lruvec_del_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lruvec_del_folio.exit

if.end.i.i7.i:                                    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %4, i32 1, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %compound_nr.i.i.i, align 4
  br label %lruvec_del_folio.exit

lruvec_del_folio.exit:                            ; preds = %if.end.i.i7.i, %PageHead.exit.i.i.i.lruvec_del_folio.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %53, %if.end.i.i7.i ], [ 1, %PageHead.exit.i.i.i.lruvec_del_folio.exit_crit_edge ]
  %shr.i.i.i = lshr i32 %31, 30
  %sub.i = sub i32 0, %retval.0.i.i.i
  %pgdat.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec, i32 0, i32 7
  %54 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pgdat.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef %sub.i) #11
  %arrayidx.i.i = getelementptr [4 x %struct.zone], ptr %55, i32 0, i32 %shr.i.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i, i32 noundef %add1.i.i, i32 noundef %sub.i) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef %shr.i.i.i, i32 noundef %sub.i) #11
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %5, align 4
  %and.i.i.i9 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i.i9, 0
  br i1 %tobool.not.i.i10, label %folio_clear_active.exit, label %if.then.i.i11, !prof !165

if.then.i.i11:                                    ; preds = %lruvec_del_folio.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_clear_active.exit:                          ; preds = %lruvec_del_folio.exit
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %4) #11
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i12 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i12)
  %tobool.not.i.i.i.i13 = icmp eq i32 %and.i.i.i.i.i12, 0
  br i1 %tobool.not.i.i.i.i13, label %folio_test_active.exit.i.i16, label %if.then.i.i.i.i14, !prof !165

if.then.i.i.i.i14:                                ; preds = %folio_clear_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i16:                     ; preds = %folio_clear_active.exit
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %4, align 4
  %62 = and i32 %61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not.i.i15 = icmp eq i32 %62, 0
  br i1 %tobool.i.not.i.i15, label %folio_test_active.exit.i.i16.do.end8.i.i26_crit_edge, label %land.rhs.i.i19

folio_test_active.exit.i.i16.do.end8.i.i26_crit_edge: ; preds = %folio_test_active.exit.i.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i26

land.rhs.i.i19:                                   ; preds = %folio_test_active.exit.i.i16
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %5, align 4
  %and.i.i.i23.i.i17 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i17)
  %tobool.not.i.i24.i.i18 = icmp eq i32 %and.i.i.i23.i.i17, 0
  br i1 %tobool.not.i.i24.i.i18, label %folio_test_unevictable.exit.i.i22, label %if.then.i.i25.i.i20, !prof !165

if.then.i.i25.i.i20:                              ; preds = %land.rhs.i.i19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i22:                ; preds = %land.rhs.i.i19
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %4, align 4
  %67 = and i32 %66, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.i26.not.i.i21 = icmp eq i32 %67, 0
  br i1 %tobool.i26.not.i.i21, label %folio_test_unevictable.exit.i.i22.do.end8.i.i26_crit_edge, label %if.then.i.i23, !prof !165

folio_test_unevictable.exit.i.i22.do.end8.i.i26_crit_edge: ; preds = %folio_test_unevictable.exit.i.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i26

if.then.i.i23:                                    ; preds = %folio_test_unevictable.exit.i.i22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i26:                                    ; preds = %folio_test_unevictable.exit.i.i22.do.end8.i.i26_crit_edge, %folio_test_active.exit.i.i16.do.end8.i.i26_crit_edge
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %5, align 4
  %and.i.i.i27.i.i24 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i24)
  %tobool.not.i.i28.i.i25 = icmp eq i32 %and.i.i.i27.i.i24, 0
  br i1 %tobool.not.i.i28.i.i25, label %folio_test_unevictable.exit31.i.i29, label %if.then.i.i29.i.i27, !prof !165

if.then.i.i29.i.i27:                              ; preds = %do.end8.i.i26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i29:              ; preds = %do.end8.i.i26
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %4, align 4
  %72 = and i32 %71, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i30.not.i.i28 = icmp eq i32 %72, 0
  br i1 %tobool.i30.not.i.i28, label %if.end11.i.i32, label %folio_test_unevictable.exit31.i.i29.folio_lru_list.exit.i42_crit_edge

folio_test_unevictable.exit31.i.i29.folio_lru_list.exit.i42_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i42

if.end11.i.i32:                                   ; preds = %folio_test_unevictable.exit31.i.i29
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i.i30 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i30)
  %tobool.not.i.i.i.i.i31 = icmp eq i32 %and.i.i.i.i.i.i30, 0
  br i1 %tobool.not.i.i.i.i.i31, label %folio_is_file_lru.exit.i.i36, label %if.then.i.i.i.i.i33, !prof !165

if.then.i.i.i.i.i33:                              ; preds = %if.end11.i.i32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i36:                     ; preds = %if.end11.i.i32
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %4, align 4
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %5, align 4
  %and.i.i.i32.i.i34 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i34)
  %tobool.not.i.i33.i.i35 = icmp eq i32 %and.i.i.i32.i.i34, 0
  br i1 %tobool.not.i.i33.i.i35, label %folio_test_active.exit36.i.i38, label %if.then.i.i34.i.i37, !prof !165

if.then.i.i34.i.i37:                              ; preds = %folio_is_file_lru.exit.i.i36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i38:                   ; preds = %folio_is_file_lru.exit.i.i36
  call void @__sanitizer_cov_trace_pc() #13
  %79 = lshr i32 %76, 18
  %80 = and i32 %79, 2
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %4, align 4
  %83 = lshr i32 %82, 5
  %84 = and i32 %83, 1
  %85 = or i32 %84, %80
  %86 = xor i32 %85, 2
  br label %folio_lru_list.exit.i42

folio_lru_list.exit.i42:                          ; preds = %folio_test_active.exit36.i.i38, %folio_test_unevictable.exit31.i.i29.folio_lru_list.exit.i42_crit_edge
  %retval.0.i.i39 = phi i32 [ %86, %folio_test_active.exit36.i.i38 ], [ 4, %folio_test_unevictable.exit31.i.i29.folio_lru_list.exit.i42_crit_edge ]
  %shr.i.i.i40 = lshr i32 %71, 30
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp.i.not.i.i.i.i41 = icmp eq i32 %88, -1
  br i1 %cmp.i.not.i.i.i.i41, label %if.then.i.i.i9.i, label %PageHead.exit.i.i.i44, !prof !166

if.then.i.i.i9.i:                                 ; preds = %folio_lru_list.exit.i42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i44:                            ; preds = %folio_lru_list.exit.i42
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %4, align 4
  %91 = and i32 %90, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i.i.i43 = icmp eq i32 %91, 0
  br i1 %tobool.not.i.i.i43, label %PageHead.exit.i.i.i44.folio_nr_pages.exit.i_crit_edge, label %if.end.i.i.i46

PageHead.exit.i.i.i44.folio_nr_pages.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit.i

if.end.i.i.i46:                                   ; preds = %PageHead.exit.i.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i45 = getelementptr %struct.page, ptr %4, i32 1, i32 1, i32 0, i32 2
  %92 = ptrtoint ptr %compound_nr.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %compound_nr.i.i.i45, align 4
  br label %folio_nr_pages.exit.i

folio_nr_pages.exit.i:                            ; preds = %if.end.i.i.i46, %PageHead.exit.i.i.i44.folio_nr_pages.exit.i_crit_edge
  %retval.0.i.i.i47 = phi i32 [ %93, %if.end.i.i.i46 ], [ 1, %PageHead.exit.i.i.i44.folio_nr_pages.exit.i_crit_edge ]
  %94 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pgdat.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i39, i32 noundef %retval.0.i.i.i47) #11
  %arrayidx.i.i49 = getelementptr [4 x %struct.zone], ptr %95, i32 0, i32 %shr.i.i.i40
  %add1.i.i50 = add nsw i32 %retval.0.i.i39, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i49, i32 noundef %add1.i.i50, i32 noundef %retval.0.i.i.i47) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i39, i32 noundef %shr.i.i.i40, i32 noundef %retval.0.i.i.i47) #11
  %arrayidx.i = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 %retval.0.i.i39
  %prev.i.i51 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 %retval.0.i.i39, i32 1
  %96 = ptrtoint ptr %prev.i.i51 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i51, align 4
  %call.i.i.i52 = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %97, ptr noundef %arrayidx.i) #11
  br i1 %call.i.i.i52, label %if.end.i.i10.i, label %folio_nr_pages.exit.i.lruvec_add_folio_tail.exit_crit_edge

folio_nr_pages.exit.i.lruvec_add_folio_tail.exit_crit_edge: ; preds = %folio_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lruvec_add_folio_tail.exit

if.end.i.i10.i:                                   ; preds = %folio_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %prev.i.i51 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %5, ptr %prev.i.i51, align 4
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %arrayidx.i, ptr %5, align 4
  %100 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %5, ptr %97, align 4
  br label %lruvec_add_folio_tail.exit

lruvec_add_folio_tail.exit:                       ; preds = %if.end.i.i10.i, %folio_nr_pages.exit.i.lruvec_add_folio_tail.exit_crit_edge
  %102 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %cmp.i.not.i.i.i = icmp eq i32 %103, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !166

if.then.i.i.i:                                    ; preds = %lruvec_add_folio_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i:                                ; preds = %lruvec_add_folio_tail.exit
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %4, align 4
  %106 = and i32 %105, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i.i54 = icmp eq i32 %106, 0
  br i1 %tobool.not.i.i54, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i = getelementptr %struct.page, ptr %4, i32 1, i32 1, i32 0, i32 2
  %107 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i55 = phi i32 [ %108, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %109 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %112
  %113 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %114, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 42) to i32)
  %115 = inttoptr i32 %add.i to ptr
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %add8.i = add i32 %117, %retval.0.i.i55
  store i32 %add8.i, ptr %115, align 4
  br label %if.end

if.end:                                           ; preds = %folio_nr_pages.exit, %folio_test_unevictable.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !165

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.37) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lru_note_cost(ptr noundef %lruvec, i1 noundef zeroext %file, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %parent_lruvec.exit.do.body_crit_edge, %entry
  %lruvec.addr.0 = phi ptr [ %lruvec, %entry ], [ %lruvec.0.i.i, %parent_lruvec.exit.do.body_crit_edge ]
  %lru_lock = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lru_lock) #11
  %anon_cost = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0, i32 0, i32 2
  %file_cost = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0, i32 0, i32 3
  %anon_cost.sink60 = select i1 %file, ptr %file_cost, ptr %anon_cost
  %0 = ptrtoint ptr %anon_cost.sink60 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %anon_cost.sink60, align 4
  %add1 = add i32 %1, %nr_pages
  store i32 %add1, ptr %anon_cost.sink60, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_note_cost, %if.then.i)) #11
          to label %if.end.i [label %if.then.i], !srcloc !170

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_node_stat, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_node_stat to i32))
  %2 = load volatile i32, ptr @vm_node_stat, align 4
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 0) #11
  br label %lruvec_page_state.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %lruvec_stats.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.addr.0, i32 0, i32 2
  %4 = ptrtoint ptr %lruvec_stats.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %lruvec_stats.i, align 4
  br label %lruvec_page_state.exit

lruvec_page_state.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %5, %if.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_note_cost, %if.then.i37)) #11
          to label %if.end.i39 [label %if.then.i37], !srcloc !170

if.then.i37:                                      ; preds = %lruvec_page_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1) to i32))
  %6 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #11
  br label %lruvec_page_state.exit41

if.end.i39:                                       ; preds = %lruvec_page_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.mem_cgroup_per_node, ptr %lruvec.addr.0, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  br label %lruvec_page_state.exit41

lruvec_page_state.exit41:                         ; preds = %if.end.i39, %if.then.i37
  %retval.0.i40 = phi i32 [ %7, %if.then.i37 ], [ %9, %if.end.i39 ]
  %add3 = add i32 %retval.0.i40, %retval.0.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_note_cost, %if.then.i43)) #11
          to label %if.end.i46 [label %if.then.i43], !srcloc !170

if.then.i43:                                      ; preds = %lruvec_page_state.exit41
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i42 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2) to i32))
  %10 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0) #11
  br label %lruvec_page_state.exit48

if.end.i46:                                       ; preds = %lruvec_page_state.exit41
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i45 = getelementptr %struct.mem_cgroup_per_node, ptr %lruvec.addr.0, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i45, align 4
  br label %lruvec_page_state.exit48

lruvec_page_state.exit48:                         ; preds = %if.end.i46, %if.then.i43
  %retval.0.i47 = phi i32 [ %11, %if.then.i43 ], [ %13, %if.end.i46 ]
  %add5 = add i32 %add3, %retval.0.i47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_note_cost, %if.then.i50)) #11
          to label %if.end.i53 [label %if.then.i50], !srcloc !170

if.then.i50:                                      ; preds = %lruvec_page_state.exit48
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3) to i32))
  %14 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 0) #11
  br label %lruvec_page_state.exit55

if.end.i53:                                       ; preds = %lruvec_page_state.exit48
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i52 = getelementptr %struct.mem_cgroup_per_node, ptr %lruvec.addr.0, i32 0, i32 2, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i52, align 4
  br label %lruvec_page_state.exit55

lruvec_page_state.exit55:                         ; preds = %if.end.i53, %if.then.i50
  %retval.0.i54 = phi i32 [ %15, %if.then.i50 ], [ %17, %if.end.i53 ]
  %add7 = add i32 %add5, %retval.0.i54
  %file_cost8 = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0, i32 0, i32 3
  %18 = ptrtoint ptr %file_cost8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %file_cost8, align 4
  %anon_cost9 = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0, i32 0, i32 2
  %20 = ptrtoint ptr %anon_cost9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %anon_cost9, align 4
  %add10 = add i32 %21, %19
  %div33 = lshr i32 %add7, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %div33)
  %cmp = icmp ugt i32 %add10, %div33
  br i1 %cmp, label %if.then11, label %lruvec_page_state.exit55.if.end16_crit_edge

lruvec_page_state.exit55.if.end16_crit_edge:      ; preds = %lruvec_page_state.exit55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %lruvec_page_state.exit55
  call void @__sanitizer_cov_trace_pc() #13
  %div1334 = lshr i32 %19, 1
  %22 = ptrtoint ptr %file_cost8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div1334, ptr %file_cost8, align 4
  %div1535 = lshr i32 %21, 1
  %23 = ptrtoint ptr %anon_cost9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div1535, ptr %anon_cost9, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %lruvec_page_state.exit55.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lru_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_note_cost, %lruvec_memcg.exit.i)) #11
          to label %if.end.i.i [label %lruvec_memcg.exit.i], !srcloc !170

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %memcg.i.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.addr.0, i32 0, i32 9
  %24 = ptrtoint ptr %memcg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memcg.i.i, align 4
  br label %lruvec_memcg.exit.i

lruvec_memcg.exit.i:                              ; preds = %if.end.i.i, %if.end16
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ null, %if.end16 ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %lruvec_memcg.exit.i.do.end_crit_edge, label %if.end.i56

lruvec_memcg.exit.i.do.end_crit_edge:             ; preds = %lruvec_memcg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i56:                                       ; preds = %lruvec_memcg.exit.i
  %parent.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %retval.0.i.i, i32 0, i32 2, i32 13
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 -176
  %tobool2.not14.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not.i = or i1 %tobool.not.i.i, %tobool2.not14.i
  br i1 %tobool2.not.i, label %if.end.i56.do.end_crit_edge, label %if.end4.i

if.end.i56.do.end_crit_edge:                      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i56
  %pgdat.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.addr.0, i32 0, i32 7
  %28 = ptrtoint ptr %pgdat.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pgdat.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_note_cost, %if.then.i.i)) #11
          to label %if.end2.i.i [label %if.then.i.i], !srcloc !170

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %__lruvec.i.i = getelementptr inbounds %struct.pglist_data, ptr %29, i32 0, i32 26
  br label %out.i.i

if.end2.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %node_id.i.i = getelementptr inbounds %struct.pglist_data, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %node_id.i.i, align 64
  %arrayidx.i.i = getelementptr %struct.mem_cgroup, ptr %add.ptr.i.i, i32 0, i32 45, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  br label %out.i.i

out.i.i:                                          ; preds = %if.end2.i.i, %if.then.i.i
  %lruvec.0.i.i = phi ptr [ %__lruvec.i.i, %if.then.i.i ], [ %33, %if.end2.i.i ]
  %pgdat4.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %pgdat4.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pgdat4.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %35, %29
  br i1 %cmp.not.i.i, label %out.i.i.parent_lruvec.exit_crit_edge, label %if.then7.i.i, !prof !165

out.i.i.parent_lruvec.exit_crit_edge:             ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %parent_lruvec.exit

if.then7.i.i:                                     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %pgdat4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %29, ptr %pgdat4.i.i, align 4
  br label %parent_lruvec.exit

parent_lruvec.exit:                               ; preds = %if.then7.i.i, %out.i.i.parent_lruvec.exit_crit_edge
  %tobool19.not = icmp eq ptr %lruvec.0.i.i, null
  br i1 %tobool19.not, label %parent_lruvec.exit.do.end_crit_edge, label %parent_lruvec.exit.do.body_crit_edge

parent_lruvec.exit.do.body_crit_edge:             ; preds = %parent_lruvec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

parent_lruvec.exit.do.end_crit_edge:              ; preds = %parent_lruvec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %parent_lruvec.exit.do.end_crit_edge, %if.end.i56.do.end_crit_edge, %lruvec_memcg.exit.i.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lru_note_cost_folio(ptr noundef %folio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @folio_memcg(ptr noundef %folio) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end35.i_crit_edge

entry.if.end35.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_note_cost_folio, %if.end35.i)) #11
          to label %land.rhs5.i [label %if.end35.i], !srcloc !170

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @folio_lruvec.__warned, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end35.i_crit_edge, label %if.then.i, !prof !165

land.rhs5.i.if.end35.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.39) #11
  store i1 true, ptr @folio_lruvec.__warned, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 746, i32 noundef 9, ptr noundef null) #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end35.i_crit_edge, %land.rhs.i, %entry.if.end35.i_crit_edge
  %0 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %folio_pgdat.exit.i, !prof !166

if.then.i.i.i.i:                                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.47) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !185
  unreachable

folio_pgdat.exit.i:                               ; preds = %if.end35.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_note_cost_folio, %out.i.i)) #11
          to label %if.end.i.i [label %out.i.i], !srcloc !170

if.end.i.i:                                       ; preds = %folio_pgdat.exit.i
  br i1 %tobool.not.i, label %if.then1.i.i, label %if.end.i.i.if.end2.i.i_crit_edge

if.end.i.i.if.end2.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %2 = load ptr, ptr @root_mem_cgroup, align 4
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end2.i.i_crit_edge
  %memcg.addr.0.i.i = phi ptr [ %call.i, %if.end.i.i.if.end2.i.i_crit_edge ], [ %2, %if.then1.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8), align 64
  %arrayidx.i.i = getelementptr %struct.mem_cgroup, ptr %memcg.addr.0.i.i, i32 0, i32 45, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  br label %out.i.i

out.i.i:                                          ; preds = %if.end2.i.i, %folio_pgdat.exit.i
  %lruvec.0.i.i = phi ptr [ %5, %if.end2.i.i ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 26), %folio_pgdat.exit.i ]
  %pgdat4.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %pgdat4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgdat4.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %7, @contig_page_data
  br i1 %cmp.not.i.i, label %out.i.i.folio_lruvec.exit_crit_edge, label %if.then7.i.i, !prof !165

out.i.i.folio_lruvec.exit_crit_edge:              ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lruvec.exit

if.then7.i.i:                                     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pgdat4.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @contig_page_data, ptr %pgdat4.i.i, align 4
  br label %folio_lruvec.exit

folio_lruvec.exit:                                ; preds = %if.then7.i.i, %out.i.i.folio_lruvec.exit_crit_edge
  %9 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_is_file_lru.exit, label %if.then.i.i.i, !prof !165

if.then.i.i.i:                                    ; preds = %folio_lruvec.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit:                           ; preds = %folio_lruvec.exit
  %12 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %folio, align 4
  %14 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i.i.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i5, label %PageHead.exit.i.i, !prof !166

if.then.i.i.i5:                                   ; preds = %folio_is_file_lru.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i:                                ; preds = %folio_is_file_lru.exit
  %15 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %folio, align 4
  %17 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i6

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit

if.end.i.i6:                                      ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i6, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %19, %if.end.i.i6 ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %20 = and i32 %13, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool = icmp eq i32 %20, 0
  tail call void @lru_note_cost(ptr noundef %lruvec.0.i.i, i1 noundef zeroext %tobool, i32 noundef %retval.0.i.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_mark_accessed(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_referenced.exit, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_referenced.exit:                       ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i25 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i25)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i.i25, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %folio_test_referenced.exit
  br i1 %tobool.not.i.i26, label %folio_set_referenced.exit, label %if.then.i.i27, !prof !165

if.then.i.i27:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_set_referenced.exit:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %folio) #11
  br label %if.end11

if.else:                                          ; preds = %folio_test_referenced.exit
  br i1 %tobool.not.i.i26, label %folio_test_unevictable.exit, label %if.then.i.i30, !prof !165

if.then.i.i30:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit:                      ; preds = %if.else
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i31.not = icmp eq i32 %10, 0
  br i1 %tobool.i31.not, label %if.else3, label %folio_test_unevictable.exit.if.end11_crit_edge

folio_test_unevictable.exit.if.end11_crit_edge:   ; preds = %folio_test_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.else3:                                         ; preds = %folio_test_unevictable.exit
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %0, align 4
  %and.i.i.i32 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %and.i.i.i32, 0
  br i1 %tobool.not.i.i33, label %folio_test_active.exit, label %if.then.i.i34, !prof !165

if.then.i.i34:                                    ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit:                           ; preds = %if.else3
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i35.not = icmp eq i32 %15, 0
  br i1 %tobool.i35.not, label %if.then5, label %folio_test_active.exit.if.end11_crit_edge

folio_test_active.exit.if.end11_crit_edge:        ; preds = %folio_test_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then5:                                         ; preds = %folio_test_active.exit
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i.i.i36 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i.i36, 0
  br i1 %tobool.not.i.i37, label %folio_test_lru.exit, label %if.then.i.i38, !prof !165

if.then.i.i38:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_lru.exit:                              ; preds = %if.then5
  %18 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %folio, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i39.not = icmp eq i32 %20, 0
  br i1 %tobool.i39.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %folio_test_lru.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @folio_activate(ptr noundef %folio)
  br label %if.end

if.else8:                                         ; preds = %folio_test_lru.exit
  %21 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %24, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !187
  %25 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %30, ptrtoint (ptr @lru_pvecs to i32)
  %31 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %31) #11
  %32 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17.i, align 4
  %add18.i = add i32 %35, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 1) to i32)
  %36 = inttoptr i32 %add18.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  %conv.i.i = zext i8 %38 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else8
  %i.0.in.i = phi i32 [ %conv.i.i, %if.else8 ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i)
  %cmp.i = icmp sgt i32 %i.0.in.i, 0
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.__lru_cache_activate_folio.exit_crit_edge

for.cond.i.__lru_cache_activate_folio.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lru_cache_activate_folio.exit

for.body.i:                                       ; preds = %for.cond.i
  %i.0.i = add nsw i32 %i.0.in.i, -1
  %arrayidx20.i = getelementptr %struct.pagevec, ptr %36, i32 0, i32 2, i32 %i.0.i
  %39 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx20.i, align 4
  %cmp21.i = icmp eq ptr %40, %folio
  br i1 %cmp21.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %0, align 4
  %and.i.i.i43.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i43.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i43.i, 0
  br i1 %tobool.not.i.i.i, label %cleanup.thread.i, label %if.then.i.i.i, !prof !165

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 5, ptr noundef %folio) #11
  br label %__lru_cache_activate_folio.exit

__lru_cache_activate_folio.exit:                  ; preds = %cleanup.thread.i, %for.cond.i.__lru_cache_activate_folio.exit_crit_edge
  %43 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i, align 4
  %arrayidx32.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %46, ptrtoint (ptr @lru_pvecs to i32)
  %47 = inttoptr i32 %add33.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %47) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !188
  %48 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i44.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i44.i to ptr
  %preempt_count.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i45.i, align 4
  %sub.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i45.i, align 4
  br label %if.end

if.end:                                           ; preds = %__lru_cache_activate_folio.exit, %if.then7
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %0, align 4
  %and.i.i.i40 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %and.i.i.i40, 0
  br i1 %tobool.not.i.i41, label %folio_clear_referenced.exit, label %if.then.i.i42, !prof !165

if.then.i.i42:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_clear_referenced.exit:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %folio) #11
  tail call void @workingset_activation(ptr noundef %folio) #11
  br label %if.end11

if.end11:                                         ; preds = %folio_clear_referenced.exit, %folio_test_active.exit.if.end11_crit_edge, %folio_test_unevictable.exit.if.end11_crit_edge, %folio_set_referenced.exit
  %call.i = tail call ptr @lookup_page_ext(ptr noundef %folio) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end11.if.end14_crit_edge, label %folio_test_idle.exit, !prof !166

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

folio_test_idle.exit:                             ; preds = %if.end11
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %call.i, align 4
  %56 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool5.i.not = icmp eq i32 %56, 0
  br i1 %tobool5.i.not, label %folio_test_idle.exit.if.end14_crit_edge, label %if.then13

folio_test_idle.exit.if.end14_crit_edge:          ; preds = %folio_test_idle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %folio_test_idle.exit
  %call.i43 = tail call ptr @lookup_page_ext(ptr noundef %folio) #11
  %tobool.not.i44 = icmp eq ptr %call.i43, null
  br i1 %tobool.not.i44, label %if.then13.if.end14_crit_edge, label %if.end.i45, !prof !166

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end.i45:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef nonnull %call.i43) #11
  br label %if.end14

if.end14:                                         ; preds = %if.end.i45, %if.then13.if.end14_crit_edge, %folio_test_idle.exit.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_activate(ptr noundef %folio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_lru.exit, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_lru.exit:                              ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %folio_test_lru.exit.if.end42_crit_edge, label %land.lhs.true

folio_test_lru.exit.if.end42_crit_edge:           ; preds = %folio_test_lru.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true:                                    ; preds = %folio_test_lru.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i48 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %and.i.i.i48, 0
  br i1 %tobool.not.i.i49, label %folio_test_active.exit, label %if.then.i.i50, !prof !165

if.then.i.i50:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit:                           ; preds = %land.lhs.true
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i51.not = icmp eq i32 %10, 0
  br i1 %tobool.i51.not, label %land.lhs.true2, label %folio_test_active.exit.if.end42_crit_edge

folio_test_active.exit.if.end42_crit_edge:        ; preds = %folio_test_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true2:                                   ; preds = %folio_test_active.exit
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %0, align 4
  %and.i.i.i52 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %and.i.i.i52, 0
  br i1 %tobool.not.i.i53, label %folio_test_unevictable.exit, label %if.then.i.i54, !prof !165

if.then.i.i54:                                    ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit:                      ; preds = %land.lhs.true2
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i55.not = icmp eq i32 %15, 0
  br i1 %tobool.i55.not, label %if.then, label %folio_test_unevictable.exit.if.end42_crit_edge

folio_test_unevictable.exit.if.end42_crit_edge:   ; preds = %folio_test_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then:                                          ; preds = %folio_test_unevictable.exit
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #11
  %16 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i59 = add i32 %17, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i59)
  %cmp.i = icmp ult i32 %add.i59, 128
  br i1 %cmp.i, label %if.then.i, label %do.end5.i, !prof !166

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.32) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !179
  unreachable

do.end5.i:                                        ; preds = %if.then
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #11, !srcloc !180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@folio_activate, %if.then.i.i.i)) #11
          to label %folio_get.exit [label %if.then.i.i.i], !srcloc !170

if.then.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %folio, i32 noundef 1) #11
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i, %do.end5.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i56 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i56 to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %22, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !189
  %23 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, ptrtoint (ptr @lru_pvecs to i32)
  %29 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %29)
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %arrayidx21 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx21, align 4
  %add22 = add i32 %33, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 5) to i32)
  %34 = inttoptr i32 %add22 to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %inc.i.i = add i8 %36, 1
  store i8 %inc.i.i, ptr %34, align 4
  %idxprom.i.i = zext i8 %36 to i32
  %arrayidx.i.i = getelementptr %struct.pagevec, ptr %34, i32 0, i32 2, i32 %idxprom.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %folio, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc.i.i)
  %tobool.not.i = icmp eq i8 %inc.i.i, 15
  br i1 %tobool.not.i, label %folio_get.exit.if.then24_crit_edge, label %lor.lhs.false.i

folio_get.exit.if.then24_crit_edge:               ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

lor.lhs.false.i:                                  ; preds = %folio_get.exit
  %38 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %folio, align 4
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i60 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i60, label %PageCompound.exit.i, label %lor.lhs.false.i.if.then24_crit_edge

lor.lhs.false.i.if.then24_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

PageCompound.exit.i:                              ; preds = %lor.lhs.false.i
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %0, align 4
  %and.i.i.i61 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i61)
  %tobool2.not.i = icmp eq i32 %and.i.i.i61, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %PageCompound.exit.i.if.then24_crit_edge

PageCompound.exit.i.if.then24_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

lor.lhs.false3.i:                                 ; preds = %PageCompound.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lru_disable_count, i32 noundef 4) #11
  %43 = load volatile i32, ptr @lru_disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false3.i.do.body26_crit_edge, label %lor.lhs.false3.i.if.then24_crit_edge

lor.lhs.false3.i.if.then24_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

lor.lhs.false3.i.do.body26_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body26

if.then24:                                        ; preds = %lor.lhs.false3.i.if.then24_crit_edge, %PageCompound.exit.i.if.then24_crit_edge, %lor.lhs.false.i.if.then24_crit_edge, %folio_get.exit.if.then24_crit_edge
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %34, ptr noundef nonnull @__activate_page)
  br label %do.body26

do.body26:                                        ; preds = %if.then24, %lor.lhs.false3.i.do.body26_crit_edge
  %44 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu, align 4
  %arrayidx35 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %47, ptrtoint (ptr @lru_pvecs to i32)
  %48 = inttoptr i32 %add36 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %48)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !190
  %49 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i57 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %52, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end42

if.end42:                                         ; preds = %do.body26, %folio_test_unevictable.exit.if.end42_crit_edge, %folio_test_active.exit.if.end42_crit_edge, %folio_test_lru.exit.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_activation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_add_lru(ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_active.exit, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit:                           ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %folio_test_active.exit.do.body9_crit_edge, label %land.rhs

folio_test_active.exit.do.body9_crit_edge:        ; preds = %folio_test_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

land.rhs:                                         ; preds = %folio_test_active.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i76 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %and.i.i.i76, 0
  br i1 %tobool.not.i.i77, label %folio_test_unevictable.exit, label %if.then.i.i78, !prof !165

if.then.i.i78:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit:                      ; preds = %land.rhs
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i79.not = icmp eq i32 %10, 0
  br i1 %tobool.i79.not, label %folio_test_unevictable.exit.do.body9_crit_edge, label %if.then, !prof !165

folio_test_unevictable.exit.do.body9_crit_edge:   ; preds = %folio_test_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

if.then:                                          ; preds = %folio_test_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #11, !srcloc !191
  unreachable

do.body9:                                         ; preds = %folio_test_unevictable.exit.do.body9_crit_edge, %folio_test_active.exit.do.body9_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %0, align 4
  %and.i.i.i80 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i80)
  %tobool.not.i.i81 = icmp eq i32 %and.i.i.i80, 0
  br i1 %tobool.not.i.i81, label %folio_test_lru.exit, label %if.then.i.i82, !prof !165

if.then.i.i82:                                    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_lru.exit:                              ; preds = %do.body9
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i83.not = icmp eq i32 %15, 0
  br i1 %tobool.i83.not, label %do.end26, label %if.then17, !prof !165

if.then17:                                        ; preds = %folio_test_lru.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #11, !srcloc !192
  unreachable

do.end26:                                         ; preds = %folio_test_lru.exit
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #11
  %16 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i87 = add i32 %17, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i87)
  %cmp.i = icmp ult i32 %add.i87, 128
  br i1 %cmp.i, label %if.then.i, label %do.end5.i, !prof !166

if.then.i:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.32) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !179
  unreachable

do.end5.i:                                        ; preds = %do.end26
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #11, !srcloc !180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@folio_add_lru, %if.then.i.i.i)) #11
          to label %folio_get.exit [label %if.then.i.i.i], !srcloc !170

if.then.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %folio, i32 noundef 1) #11
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i, %do.end5.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i84 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i84 to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %22, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !193
  %23 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, ptrtoint (ptr @lru_pvecs to i32)
  %29 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %29)
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %arrayidx47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx47, align 4
  %add48 = add i32 %33, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 1) to i32)
  %34 = inttoptr i32 %add48 to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %inc.i.i = add i8 %36, 1
  store i8 %inc.i.i, ptr %34, align 4
  %idxprom.i.i = zext i8 %36 to i32
  %arrayidx.i.i = getelementptr %struct.pagevec, ptr %34, i32 0, i32 2, i32 %idxprom.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %folio, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc.i.i)
  %tobool.not.i = icmp eq i8 %inc.i.i, 15
  br i1 %tobool.not.i, label %folio_get.exit.if.then50_crit_edge, label %lor.lhs.false.i

folio_get.exit.if.then50_crit_edge:               ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

lor.lhs.false.i:                                  ; preds = %folio_get.exit
  %38 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %folio, align 4
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i88 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i88, label %PageCompound.exit.i, label %lor.lhs.false.i.if.then50_crit_edge

lor.lhs.false.i.if.then50_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

PageCompound.exit.i:                              ; preds = %lor.lhs.false.i
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %0, align 4
  %and.i.i.i89 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i89)
  %tobool2.not.i = icmp eq i32 %and.i.i.i89, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %PageCompound.exit.i.if.then50_crit_edge

PageCompound.exit.i.if.then50_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

lor.lhs.false3.i:                                 ; preds = %PageCompound.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lru_disable_count, i32 noundef 4) #11
  %43 = load volatile i32, ptr @lru_disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false3.i.do.body53_crit_edge, label %lor.lhs.false3.i.if.then50_crit_edge

lor.lhs.false3.i.if.then50_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

lor.lhs.false3.i.do.body53_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body53

if.then50:                                        ; preds = %lor.lhs.false3.i.if.then50_crit_edge, %PageCompound.exit.i.if.then50_crit_edge, %lor.lhs.false.i.if.then50_crit_edge, %folio_get.exit.if.then50_crit_edge
  tail call void @__pagevec_lru_add(ptr noundef %34)
  br label %do.body53

do.body53:                                        ; preds = %if.then50, %lor.lhs.false3.i.do.body53_crit_edge
  %44 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu, align 4
  %arrayidx62 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %47, ptrtoint (ptr @lru_pvecs to i32)
  %48 = inttoptr i32 %add63 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %48)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !194
  %49 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i85 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i85 to ptr
  %preempt_count.i.i86 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i86, align 4
  %sub.i = add i32 %52, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i86, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pagevec_lru_add(ptr nocapture noundef %pvec) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %flags, align 4
  %1 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp71.not = icmp eq i8 %2, 0
  br i1 %cmp71.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body:                                         ; preds = %__pagevec_lru_add_fn.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %__pagevec_lru_add_fn.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %lruvec.072 = phi ptr [ %retval.0.i17, %__pagevec_lru_add_fn.exit.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.074
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !165

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %7, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %4 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %8, %if.end.i ]
  %9 = inttoptr i32 %retval.0.i to ptr
  %tobool.not.i14 = icmp eq ptr %lruvec.072, null
  br i1 %tobool.not.i14, label %_compound_head.exit.if.end2.i_crit_edge, label %if.then.i15

_compound_head.exit.if.end2.i_crit_edge:          ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i15:                                      ; preds = %_compound_head.exit
  %pgdat.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.072, i32 0, i32 7
  %10 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pgdat.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %folio_pgdat.exit.i.i, !prof !166

if.then.i.i.i.i.i:                                ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #13
  %14 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.47) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !185
  unreachable

folio_pgdat.exit.i.i:                             ; preds = %if.then.i15
  %cmp.i.i = icmp eq ptr %11, @contig_page_data
  br i1 %cmp.i.i, label %land.rhs.i.i, label %folio_pgdat.exit.i.i.if.end.i16_crit_edge

folio_pgdat.exit.i.i.if.end.i16_crit_edge:        ; preds = %folio_pgdat.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i16

land.rhs.i.i:                                     ; preds = %folio_pgdat.exit.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@__pagevec_lru_add, %folio_matches_lruvec.exit.i)) #11
          to label %if.end.i.i.i [label %folio_matches_lruvec.exit.i], !srcloc !170

if.end.i.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %memcg.i.i.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.072, i32 0, i32 9
  %15 = ptrtoint ptr %memcg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %memcg.i.i.i, align 4
  br label %folio_matches_lruvec.exit.i

folio_matches_lruvec.exit.i:                      ; preds = %if.end.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %16, %if.end.i.i.i ], [ null, %land.rhs.i.i ]
  %call3.i.i = call fastcc ptr @folio_memcg(ptr noundef %9) #11
  %cmp4.i.i = icmp eq ptr %retval.0.i.i.i, %call3.i.i
  br i1 %cmp4.i.i, label %folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge, label %folio_matches_lruvec.exit.i.if.end.i16_crit_edge

folio_matches_lruvec.exit.i.if.end.i16_crit_edge: ; preds = %folio_matches_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i16

folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge: ; preds = %folio_matches_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lruvec_relock_irqsave.exit

if.end.i16:                                       ; preds = %folio_matches_lruvec.exit.i.if.end.i16_crit_edge, %folio_pgdat.exit.i.i.if.end.i16_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %lru_lock.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.072, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lru_lock.i.i, i32 noundef %18) #11
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i16, %_compound_head.exit.if.end2.i_crit_edge
  %call3.i = call ptr @folio_lruvec_lock_irqsave(ptr noundef %9, ptr noundef nonnull %flags) #11
  br label %folio_lruvec_relock_irqsave.exit

folio_lruvec_relock_irqsave.exit:                 ; preds = %if.end2.i, %folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge
  %retval.0.i17 = phi ptr [ %call3.i, %if.end2.i ], [ %lruvec.072, %folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge ]
  %19 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_clear_unevictable.exit.i, label %if.then.i.i.i, !prof !165

if.then.i.i.i:                                    ; preds = %folio_lruvec_relock_irqsave.exit
  call void @__sanitizer_cov_trace_pc() #13
  %22 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_clear_unevictable.exit.i:              ; preds = %folio_lruvec_relock_irqsave.exit
  %call1.i.i = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.i.not.i = icmp eq i32 %call1.i.i, 0
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i.i.i.i = icmp eq i32 %24, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !166

if.then.i.i.i.i:                                  ; preds = %folio_test_clear_unevictable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.31) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i:                              ; preds = %folio_test_clear_unevictable.exit.i
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %9, align 4
  %28 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i50.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i50.i, label %PageHead.exit.i.i.i.folio_nr_pages.exit.i_crit_edge, label %if.end.i.i.i18

PageHead.exit.i.i.i.folio_nr_pages.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit.i

if.end.i.i.i18:                                   ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %9, i32 1, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %compound_nr.i.i.i, align 4
  br label %folio_nr_pages.exit.i

folio_nr_pages.exit.i:                            ; preds = %if.end.i.i.i18, %PageHead.exit.i.i.i.folio_nr_pages.exit.i_crit_edge
  %retval.0.i.i51.i = phi i32 [ %30, %if.end.i.i.i18 ], [ 1, %PageHead.exit.i.i.i.folio_nr_pages.exit.i_crit_edge ]
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %19, align 4
  %and.i.i.i36.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i36.i)
  %tobool.not.i.i37.i = icmp eq i32 %and.i.i.i36.i, 0
  br i1 %tobool.not.i.i37.i, label %folio_test_lru.exit.i, label %if.then.i.i38.i, !prof !165

if.then.i.i38.i:                                  ; preds = %folio_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_lru.exit.i:                            ; preds = %folio_nr_pages.exit.i
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %9, align 4
  %36 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i39.not.i = icmp eq i32 %36, 0
  br i1 %tobool.i39.not.i, label %do.end9.i, label %if.then.i19, !prof !165

if.then.i19:                                      ; preds = %folio_test_lru.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.3) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1010, 0\0A.popsection", ""() #11, !srcloc !195
  unreachable

do.end9.i:                                        ; preds = %folio_test_lru.exit.i
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %19, align 4
  %and.i.i.i40.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i40.i)
  %tobool.not.i.i41.i = icmp eq i32 %and.i.i.i40.i, 0
  br i1 %tobool.not.i.i41.i, label %folio_set_lru.exit.i, label %if.then.i.i42.i, !prof !165

if.then.i.i42.i:                                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_set_lru.exit.i:                             ; preds = %do.end9.i
  call void @_set_bit(i32 noundef 4, ptr noundef %9) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !196
  %41 = call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i.i.i52.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i52.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %folio_set_lru.exit.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

folio_set_lru.exit.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %folio_set_lru.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %folio_set_lru.exit.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i53.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i53.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i54.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i54.i:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i54.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %folio_set_lru.exit.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i.i = call ptr @folio_mapping(ptr noundef %9) #11
  %tobool.not.i4.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i4.i.i, label %rcu_read_lock.exit.i.i.land.rhs.i.i20_crit_edge, label %mapping_unevictable.exit.i.i

rcu_read_lock.exit.i.i.land.rhs.i.i20_crit_edge:  ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i20

mapping_unevictable.exit.i.i:                     ; preds = %rcu_read_lock.exit.i.i
  %flags.i.i.i = getelementptr inbounds %struct.address_space, ptr %call.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i.i.i, align 4
  %47 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool1.i.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool1.i.not.i.i, label %mapping_unevictable.exit.i.i.land.rhs.i.i20_crit_edge, label %mapping_unevictable.exit.i.i.land.end.i.i_crit_edge

mapping_unevictable.exit.i.i.land.end.i.i_crit_edge: ; preds = %mapping_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.i.i

mapping_unevictable.exit.i.i.land.rhs.i.i20_crit_edge: ; preds = %mapping_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i20

land.rhs.i.i20:                                   ; preds = %mapping_unevictable.exit.i.i.land.rhs.i.i20_crit_edge, %rcu_read_lock.exit.i.i.land.rhs.i.i20_crit_edge
  %48 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i55.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i55.i, label %folio_test_mlocked.exit.i.i, label %if.then.i.i.i56.i, !prof !165

if.then.i.i.i56.i:                                ; preds = %land.rhs.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  %50 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_mlocked.exit.i.i:                      ; preds = %land.rhs.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %9, align 4
  %53 = and i32 %52, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.i.i = icmp eq i32 %53, 0
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %folio_test_mlocked.exit.i.i, %mapping_unevictable.exit.i.i.land.end.i.i_crit_edge
  %54 = phi i1 [ false, %mapping_unevictable.exit.i.i.land.end.i.i_crit_edge ], [ %tobool.i.not.i.i, %folio_test_mlocked.exit.i.i ]
  %call.i5.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i5.i.i, label %land.end.i.i.folio_evictable.exit.i_crit_edge, label %land.lhs.true.i8.i.i

land.end.i.i.folio_evictable.exit.i_crit_edge:    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_evictable.exit.i

land.lhs.true.i8.i.i:                             ; preds = %land.end.i.i
  %call1.i6.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i.i)
  %tobool.not.i7.i.i = icmp eq i32 %call1.i6.i.i, 0
  br i1 %tobool.not.i7.i.i, label %land.lhs.true.i8.i.i.folio_evictable.exit.i_crit_edge, label %land.lhs.true2.i10.i.i

land.lhs.true.i8.i.i.folio_evictable.exit.i_crit_edge: ; preds = %land.lhs.true.i8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_evictable.exit.i

land.lhs.true2.i10.i.i:                           ; preds = %land.lhs.true.i8.i.i
  %.b4.i9.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9.i.i, label %land.lhs.true2.i10.i.i.folio_evictable.exit.i_crit_edge, label %if.then.i11.i.i

land.lhs.true2.i10.i.i.folio_evictable.exit.i_crit_edge: ; preds = %land.lhs.true2.i10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_evictable.exit.i

if.then.i11.i.i:                                  ; preds = %land.lhs.true2.i10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #11
  br label %folio_evictable.exit.i

folio_evictable.exit.i:                           ; preds = %if.then.i11.i.i, %land.lhs.true2.i10.i.i.folio_evictable.exit.i_crit_edge, %land.lhs.true.i8.i.i.folio_evictable.exit.i_crit_edge, %land.end.i.i.folio_evictable.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !198
  %55 = call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i.i12.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i12.i.i to ptr
  %preempt_count.i.i.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i13.i.i, align 4
  %sub.i.i.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i13.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %54, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %folio_evictable.exit.i
  br i1 %tobool.i.not.i, label %if.then17.i.if.end24.i_crit_edge, label %if.then17.i.if.end24.sink.split.i_crit_edge

if.then17.i.if.end24.sink.split.i_crit_edge:      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.sink.split.i

if.then17.i.if.end24.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.else.i:                                        ; preds = %folio_evictable.exit.i
  %59 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %19, align 4
  %and.i.i.i43.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i43.i)
  %tobool.not.i.i44.i = icmp eq i32 %and.i.i.i43.i, 0
  br i1 %tobool.not.i.i44.i, label %folio_clear_active.exit.i, label %if.then.i.i45.i, !prof !165

if.then.i.i45.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_clear_active.exit.i:                        ; preds = %if.else.i
  call void @_clear_bit(i32 noundef 5, ptr noundef %9) #11
  %62 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %19, align 4
  %and.i.i.i46.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i46.i)
  %tobool.not.i.i47.i = icmp eq i32 %and.i.i.i46.i, 0
  br i1 %tobool.not.i.i47.i, label %folio_set_unevictable.exit.i, label %if.then.i.i48.i, !prof !165

if.then.i.i48.i:                                  ; preds = %folio_clear_active.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %64, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_set_unevictable.exit.i:                     ; preds = %folio_clear_active.exit.i
  call void @_set_bit(i32 noundef 20, ptr noundef %9) #11
  br i1 %tobool.i.not.i, label %folio_set_unevictable.exit.i.if.end24.sink.split.i_crit_edge, label %folio_set_unevictable.exit.i.if.end24.i_crit_edge

folio_set_unevictable.exit.i.if.end24.i_crit_edge: ; preds = %folio_set_unevictable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

folio_set_unevictable.exit.i.if.end24.sink.split.i_crit_edge: ; preds = %folio_set_unevictable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.sink.split.i

if.end24.sink.split.i:                            ; preds = %folio_set_unevictable.exit.i.if.end24.sink.split.i_crit_edge, %if.then17.i.if.end24.sink.split.i_crit_edge
  %.sink64.i = phi i32 [ ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 64) to i32), %if.then17.i.if.end24.sink.split.i_crit_edge ], [ ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 62) to i32), %folio_set_unevictable.exit.i.if.end24.sink.split.i_crit_edge ]
  %65 = call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu.i.i, align 4
  %arrayidx7.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx7.i.i, align 4
  %add.i.i = add i32 %70, %.sink64.i
  %71 = inttoptr i32 %add.i.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add8.i61.i = add i32 %73, %retval.0.i.i51.i
  store i32 %add8.i61.i, ptr %71, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.sink.split.i, %folio_set_unevictable.exit.i.if.end24.i_crit_edge, %if.then17.i.if.end24.i_crit_edge
  %74 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_active.exit.i.i.i, label %if.then.i.i.i.i.i21, !prof !165

if.then.i.i.i.i.i21:                              ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i:                     ; preds = %if.end24.i
  %77 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %9, align 4
  %79 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i.i.i = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge, label %land.rhs.i.i.i

folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

land.rhs.i.i.i:                                   ; preds = %folio_test_active.exit.i.i.i
  %80 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %19, align 4
  %and.i.i.i23.i.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i)
  %tobool.not.i.i24.i.i.i = icmp eq i32 %and.i.i.i23.i.i.i, 0
  br i1 %tobool.not.i.i24.i.i.i, label %folio_test_unevictable.exit.i.i.i, label %if.then.i.i25.i.i.i, !prof !165

if.then.i.i25.i.i.i:                              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %82, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i:                ; preds = %land.rhs.i.i.i
  %83 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %9, align 4
  %85 = and i32 %84, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.i26.not.i.i.i = icmp eq i32 %85, 0
  br i1 %tobool.i26.not.i.i.i, label %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i49.i, !prof !165

folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

if.then.i.i49.i:                                  ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %86 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %86, ptr noundef nonnull @.str.2) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge
  %87 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %19, align 4
  %and.i.i.i27.i.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i)
  %tobool.not.i.i28.i.i.i = icmp eq i32 %and.i.i.i27.i.i.i, 0
  br i1 %tobool.not.i.i28.i.i.i, label %folio_test_unevictable.exit31.i.i.i, label %if.then.i.i29.i.i.i, !prof !165

if.then.i.i29.i.i.i:                              ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %89, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i:              ; preds = %do.end8.i.i.i
  %90 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %9, align 4
  %92 = and i32 %91, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i30.not.i.i.i = icmp eq i32 %92, 0
  br i1 %tobool.i30.not.i.i.i, label %if.end11.i.i.i, label %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge

folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i

if.end11.i.i.i:                                   ; preds = %folio_test_unevictable.exit31.i.i.i
  %93 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_is_file_lru.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i.i:                              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %95 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %95, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i:                     ; preds = %if.end11.i.i.i
  %96 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %9, align 4
  %98 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %19, align 4
  %and.i.i.i32.i.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i)
  %tobool.not.i.i33.i.i.i = icmp eq i32 %and.i.i.i32.i.i.i, 0
  br i1 %tobool.not.i.i33.i.i.i, label %folio_test_active.exit36.i.i.i, label %if.then.i.i34.i.i.i, !prof !165

if.then.i.i34.i.i.i:                              ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %100, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i:                   ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = lshr i32 %97, 18
  %102 = and i32 %101, 2
  %103 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %9, align 4
  %105 = lshr i32 %104, 5
  %106 = and i32 %105, 1
  %107 = or i32 %106, %102
  %108 = xor i32 %107, 2
  br label %folio_lru_list.exit.i.i

folio_lru_list.exit.i.i:                          ; preds = %folio_test_active.exit36.i.i.i, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge
  %retval.0.i.i.i22 = phi i32 [ %108, %folio_test_active.exit36.i.i.i ], [ 4, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge ]
  %shr.i.i.i.i = lshr i32 %91, 30
  %109 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp.i.not.i.i.i.i.i23 = icmp eq i32 %110, -1
  br i1 %cmp.i.not.i.i.i.i.i23, label %if.then.i.i.i9.i.i, label %PageHead.exit.i.i.i.i, !prof !166

if.then.i.i.i9.i.i:                               ; preds = %folio_lru_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %111 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %111, ptr noundef nonnull @.str.31) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %folio_lru_list.exit.i.i
  %112 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %9, align 4
  %114 = and i32 %113, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.folio_nr_pages.exit.i.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_nr_pages.exit.i.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit.i.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %9, i32 1, i32 1, i32 0, i32 2
  %115 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %folio_nr_pages.exit.i.i

folio_nr_pages.exit.i.i:                          ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_nr_pages.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %116, %if.end.i.i.i.i ], [ 1, %PageHead.exit.i.i.i.i.folio_nr_pages.exit.i.i_crit_edge ]
  %pgdat.i.i.i.i = getelementptr inbounds %struct.lruvec, ptr %retval.0.i17, i32 0, i32 7
  %117 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pgdat.i.i.i.i, align 4
  call void @__mod_lruvec_state(ptr noundef %retval.0.i17, i32 noundef %retval.0.i.i.i22, i32 noundef %retval.0.i.i.i.i) #11
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr %118, i32 0, i32 %shr.i.i.i.i
  %add1.i.i.i = add nsw i32 %retval.0.i.i.i22, 1
  call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef %add1.i.i.i, i32 noundef %retval.0.i.i.i.i) #11
  call void @mem_cgroup_update_lru_size(ptr noundef %retval.0.i17, i32 noundef %retval.0.i.i.i22, i32 noundef %shr.i.i.i.i, i32 noundef %retval.0.i.i.i.i) #11
  %arrayidx.i.i = getelementptr [5 x %struct.list_head], ptr %retval.0.i17, i32 0, i32 %retval.0.i.i.i22
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %arrayidx.i.i, ptr noundef %120) #11
  br i1 %call.i.i.i.i, label %if.end.i.i10.i.i, label %folio_nr_pages.exit.i.i.__pagevec_lru_add_fn.exit_crit_edge

folio_nr_pages.exit.i.i.__pagevec_lru_add_fn.exit_crit_edge: ; preds = %folio_nr_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__pagevec_lru_add_fn.exit

if.end.i.i10.i.i:                                 ; preds = %folio_nr_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %122 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %120, ptr %19, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1, i32 1
  %123 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %arrayidx.i.i, ptr %prev3.i.i.i.i, align 4
  %124 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %19, ptr %arrayidx.i.i, align 4
  br label %__pagevec_lru_add_fn.exit

__pagevec_lru_add_fn.exit:                        ; preds = %if.end.i.i10.i.i, %folio_nr_pages.exit.i.i.__pagevec_lru_add_fn.exit_crit_edge
  call fastcc void @trace_mm_lru_insertion(ptr noundef %9) #11
  %inc = add nuw nsw i32 %i.074, 1
  %125 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %126 to i32
  %cmp = icmp ult i32 %inc, %conv.i
  br i1 %cmp, label %__pagevec_lru_add_fn.exit.for.body_crit_edge, label %for.end

__pagevec_lru_add_fn.exit.for.body_crit_edge:     ; preds = %__pagevec_lru_add_fn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %__pagevec_lru_add_fn.exit
  %tobool.not = icmp eq ptr %retval.0.i17, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags, align 4
  %lru_lock.i = getelementptr inbounds %struct.lruvec, ptr %retval.0.i17, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lru_lock.i, i32 noundef %128) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %pages3 = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 2
  %129 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %pvec, align 4
  %conv = zext i8 %130 to i32
  call void @release_pages(ptr noundef %pages3, i32 noundef %conv)
  %131 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %pvec, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lru_cache_add_inactive_or_unevictable(ptr noundef %page, ptr nocapture noundef readonly %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %and.i13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !165

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %8, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %9, %if.end.i17.i ]
  %10 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !165

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %8, -1
  br label %PageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %page to i32
  br label %PageLRU.exit

PageLRU.exit:                                     ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %11, %if.end.i24.i ]
  %12 = inttoptr i32 %retval.0.i25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.end8, label %if.then, !prof !165

if.then:                                          ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 487, 0\0A.popsection", ""() #11, !srcloc !200
  unreachable

do.end8:                                          ; preds = %PageLRU.exit
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %16 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_flags, align 4
  %and = and i32 %17, 268723200
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and)
  %cmp = icmp eq i32 %and, 8192
  br i1 %cmp, label %land.lhs.true, label %do.end8.if.end21_crit_edge, !prof !166

do.end8.if.end21_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %do.end8
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %0, align 4
  %and.i.i28 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i28)
  %tobool.not.i = icmp eq i32 %and.i.i28, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i29, !prof !165

if.then.i29:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.51) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #11, !srcloc !201
  unreachable

do.body7.i:                                       ; preds = %land.lhs.true
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %0, align 4
  %and.i32.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i.i30 = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.not.i.i30, label %if.end.i.i33, label %if.then.i.i32, !prof !165

if.then.i.i32:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i31 = add i32 %21, -1
  br label %_compound_head.exit.i36

if.end.i.i33:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i36

_compound_head.exit.i36:                          ; preds = %if.end.i.i33, %if.then.i.i32
  %retval.0.i.i34 = phi i32 [ %sub.i.i31, %if.then.i.i32 ], [ %22, %if.end.i.i33 ]
  %23 = inttoptr i32 %retval.0.i.i34 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i35 = icmp eq i32 %25, -1
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %0, align 4
  %and.i33.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool.not.i34.i = icmp eq i32 %and.i33.i, 0
  br i1 %cmp.i.not.i35, label %if.then17.i, label %do.end24.i, !prof !166

if.then17.i:                                      ; preds = %_compound_head.exit.i36
  br i1 %tobool.not.i34.i, label %if.end.i37.i, label %if.then.i36.i, !prof !165

if.then.i36.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i35.i = add i32 %27, -1
  br label %_compound_head.exit39.i

if.end.i37.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %page to i32
  br label %_compound_head.exit39.i

_compound_head.exit39.i:                          ; preds = %if.end.i37.i, %if.then.i36.i
  %retval.0.i38.i = phi i32 [ %sub.i35.i, %if.then.i36.i ], [ %28, %if.end.i37.i ]
  %29 = inttoptr i32 %retval.0.i38.i to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #11, !srcloc !202
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i36
  br i1 %tobool.not.i34.i, label %if.end.i44.i, label %if.then.i43.i, !prof !165

if.then.i43.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i42.i = add i32 %27, -1
  br label %TestSetPageMlocked.exit

if.end.i44.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %page to i32
  br label %TestSetPageMlocked.exit

TestSetPageMlocked.exit:                          ; preds = %if.end.i44.i, %if.then.i43.i
  %retval.0.i45.i = phi i32 [ %sub.i42.i, %if.then.i43.i ], [ %30, %if.end.i44.i ]
  %31 = inttoptr i32 %retval.0.i45.i to ptr
  %call27.i = tail call i32 @_test_and_set_bit(i32 noundef 21, ptr noundef %31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool17.not = icmp eq i32 %call27.i, 0
  br i1 %tobool17.not, label %if.then18, label %TestSetPageMlocked.exit.if.end21_crit_edge

TestSetPageMlocked.exit.if.end21_crit_edge:       ; preds = %TestSetPageMlocked.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %TestSetPageMlocked.exit
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %0, align 4
  %and.i.i37 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.not.i38 = icmp eq i32 %and.i.i37, 0
  br i1 %tobool.not.i38, label %thp_nr_pages.exit, label %if.then.i39, !prof !165

if.then.i39:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #11, !srcloc !203
  unreachable

thp_nr_pages.exit:                                ; preds = %if.then18
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i.i = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i40, label %page_zone.exit, !prof !166

if.then.i.i40:                                    ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.47) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !185
  unreachable

page_zone.exit:                                   ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.i41 = lshr i32 %35, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i41
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i, i32 noundef 7, i32 noundef 1) #11
  tail call fastcc void @count_vm_events()
  br label %if.end21

if.end21:                                         ; preds = %page_zone.exit, %TestSetPageMlocked.exit.if.end21_crit_edge, %do.end8.if.end21_crit_edge
  tail call void @lru_cache_add(ptr noundef %page) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @count_vm_events() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !181
  %1 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx13 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx13, align 4
  %add = add i32 %6, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 65) to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add14 = add i32 %9, 1
  store i32 %add14, ptr %7, align 4
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !182
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end29_crit_edge, !prof !166

entry.do.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end29

do.end29:                                         ; preds = %if.then, %entry.do.end29_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !183
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lru_add_drain_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 1) to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.do.body2_crit_edge, label %if.then

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__pagevec_lru_add(ptr noundef %2)
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add10 = add i32 %6, ptrtoint (ptr getelementptr inbounds (%struct.lru_rotate, ptr @lru_rotate, i32 0, i32 1) to i32)
  %7 = inttoptr i32 %add10 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %do.body2.do.body94_crit_edge, label %if.then15

do.body2.do.body94_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body94

if.then15:                                        ; preds = %do.body2
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !181
  %and.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not = icmp eq i32 %and.i, 0
  br i1 %tobool30.not, label %if.then31, label %if.then15.do.body35_crit_edge

if.then15.do.body35_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35

if.then31:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %do.body35

do.body35:                                        ; preds = %if.then31, %if.then15.do.body35_crit_edge
  %11 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i150 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i150 to ptr
  %cpu43 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu43, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %16, ptrtoint (ptr @lru_rotate to i32)
  %17 = inttoptr i32 %add45 to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %17)
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %7, ptr noundef nonnull @pagevec_move_tail_fn)
  %18 = ptrtoint ptr %cpu43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu43, align 4
  %arrayidx58 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx58, align 4
  %add59 = add i32 %21, ptrtoint (ptr @lru_rotate to i32)
  %22 = inttoptr i32 %add59 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %22)
  br i1 %tobool30.not, label %if.then69, label %do.body35.do.body71_crit_edge

do.body35.do.body71_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body71

if.then69:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body71

do.body71:                                        ; preds = %if.then69, %do.body35.do.body71_crit_edge
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !182
  %and.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool79.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool79.not, label %if.then83, label %do.body71.do.end86_crit_edge, !prof !166

do.body71.do.end86_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %do.body71.do.end86_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #11, !srcloc !183
  br label %do.body94

do.body94:                                        ; preds = %do.end86, %do.body2.do.body94_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %add102 = add i32 %25, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 2) to i32)
  %26 = inttoptr i32 %add102 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool104.not = icmp eq i8 %28, 0
  br i1 %tobool104.not, label %do.body94.do.body107_crit_edge, label %if.then105

do.body94.do.body107_crit_edge:                   ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body107

if.then105:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %26, ptr noundef nonnull @lru_deactivate_file_fn)
  br label %do.body107

do.body107:                                       ; preds = %if.then105, %do.body94.do.body107_crit_edge
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %add115 = add i32 %30, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 3) to i32)
  %31 = inttoptr i32 %add115 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool117.not = icmp eq i8 %33, 0
  br i1 %tobool117.not, label %do.body107.do.body120_crit_edge, label %if.then118

do.body107.do.body120_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body120

if.then118:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %31, ptr noundef nonnull @lru_deactivate_fn)
  br label %do.body120

do.body120:                                       ; preds = %if.then118, %do.body107.do.body120_crit_edge
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %add128 = add i32 %35, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 4) to i32)
  %36 = inttoptr i32 %add128 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool130.not = icmp eq i8 %38, 0
  br i1 %tobool130.not, label %do.body120.if.end132_crit_edge, label %if.then131

do.body120.if.end132_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

if.then131:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %36, ptr noundef nonnull @lru_lazyfree_fn)
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %do.body120.if.end132_crit_edge
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %40, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 5) to i32)
  %41 = inttoptr i32 %add.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.end132.activate_page_drain.exit_crit_edge, label %if.then.i

if.end132.activate_page_drain.exit_crit_edge:     ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %activate_page_drain.exit

if.then.i:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %41, ptr noundef nonnull @__activate_page) #11
  br label %activate_page_drain.exit

activate_page_drain.exit:                         ; preds = %if.then.i, %if.end132.activate_page_drain.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lru_deactivate_file_fn(ptr noundef %page, ptr noundef %lruvec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %and.i13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !165

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %8, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %9, %if.end.i17.i ]
  %10 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #11, !srcloc !204
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !165

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %8, -1
  br label %PageActive.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %page to i32
  br label %PageActive.exit

PageActive.exit:                                  ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %11, %if.end.i24.i ]
  %12 = inttoptr i32 %retval.0.i25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i.i238 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i238)
  %tobool.not.i239 = icmp eq i32 %and.i.i238, 0
  br i1 %tobool.not.i239, label %thp_nr_pages.exit, label %if.then.i240, !prof !165

if.then.i240:                                     ; preds = %PageActive.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #11, !srcloc !203
  unreachable

thp_nr_pages.exit:                                ; preds = %PageActive.exit
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %0, align 4
  %and.i.i34 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %and.i.i34, 0
  br i1 %tobool.not.i.i35, label %if.end.i.i38, label %if.then.i.i37, !prof !165

if.then.i.i37:                                    ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i36 = add i32 %19, -1
  br label %_compound_head.exit.i43

if.end.i.i38:                                     ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i43

_compound_head.exit.i43:                          ; preds = %if.end.i.i38, %if.then.i.i37
  %retval.0.i.i39 = phi i32 [ %sub.i.i36, %if.then.i.i37 ], [ %20, %if.end.i.i38 ]
  %21 = inttoptr i32 %retval.0.i.i39 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i40 = icmp eq i32 %23, -1
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %0, align 4
  %and.i13.i41 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i41)
  %tobool.not.i14.i42 = icmp eq i32 %and.i13.i41, 0
  br i1 %cmp.i.not.i40, label %if.then.i44, label %do.end8.i50, !prof !166

if.then.i44:                                      ; preds = %_compound_head.exit.i43
  br i1 %tobool.not.i14.i42, label %if.end.i17.i47, label %if.then.i16.i46, !prof !165

if.then.i16.i46:                                  ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i45 = add i32 %25, -1
  br label %_compound_head.exit19.i49

if.end.i17.i47:                                   ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i49

_compound_head.exit19.i49:                        ; preds = %if.end.i17.i47, %if.then.i16.i46
  %retval.0.i18.i48 = phi i32 [ %sub.i15.i45, %if.then.i16.i46 ], [ %26, %if.end.i17.i47 ]
  %27 = inttoptr i32 %retval.0.i18.i48 to ptr
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #11, !srcloc !205
  unreachable

do.end8.i50:                                      ; preds = %_compound_head.exit.i43
  br i1 %tobool.not.i14.i42, label %if.end.i24.i53, label %if.then.i23.i52, !prof !165

if.then.i23.i52:                                  ; preds = %do.end8.i50
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i51 = add i32 %25, -1
  br label %PageUnevictable.exit

if.end.i24.i53:                                   ; preds = %do.end8.i50
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %page to i32
  br label %PageUnevictable.exit

PageUnevictable.exit:                             ; preds = %if.end.i24.i53, %if.then.i23.i52
  %retval.0.i25.i54 = phi i32 [ %sub.i22.i51, %if.then.i23.i52 ], [ %28, %if.end.i24.i53 ]
  %29 = inttoptr i32 %retval.0.i25.i54 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool3.not = icmp eq i32 %32, 0
  br i1 %tobool3.not, label %if.end, label %PageUnevictable.exit.cleanup_crit_edge

PageUnevictable.exit.cleanup_crit_edge:           ; preds = %PageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %PageUnevictable.exit
  %call4 = tail call zeroext i1 @page_mapped(ptr noundef %page) #11
  br i1 %call4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %0, align 4
  %and.i.i57 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i57)
  %tobool.not.i.i58 = icmp eq i32 %and.i.i57, 0
  br i1 %tobool.not.i.i58, label %if.end.i.i60, label %if.then.i.i59, !prof !165

if.then.i.i59:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i1.i = add i32 %34, -1
  br label %_compound_head.exit.i62

if.end.i.i60:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i62

_compound_head.exit.i62:                          ; preds = %if.end.i.i60, %if.then.i.i59
  %retval.0.i.i61 = phi i32 [ %sub.i1.i, %if.then.i.i59 ], [ %35, %if.end.i.i60 ]
  %36 = inttoptr i32 %retval.0.i.i61 to ptr
  %lru.i.i = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %_compound_head.exit.i62.list_del.exit.i.i_crit_edge

_compound_head.exit.i62.list_del.exit.i.i_crit_edge: ; preds = %_compound_head.exit.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %_compound_head.exit.i62
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i, align 4
  %39 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lru.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %_compound_head.exit.i62.list_del.exit.i.i_crit_edge
  %43 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %45 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_active.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i:                                ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i:                     ; preds = %list_del.exit.i.i
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %36, align 4
  %48 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge, label %land.rhs.i.i.i

folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

land.rhs.i.i.i:                                   ; preds = %folio_test_active.exit.i.i.i
  %49 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i23.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i)
  %tobool.not.i.i24.i.i.i = icmp eq i32 %and.i.i.i23.i.i.i, 0
  br i1 %tobool.not.i.i24.i.i.i, label %folio_test_unevictable.exit.i.i.i, label %if.then.i.i25.i.i.i, !prof !165

if.then.i.i25.i.i.i:                              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i:                ; preds = %land.rhs.i.i.i
  %51 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %36, align 4
  %53 = and i32 %52, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i26.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.i26.not.i.i.i, label %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i, !prof !165

folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge
  %54 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i27.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i)
  %tobool.not.i.i28.i.i.i = icmp eq i32 %and.i.i.i27.i.i.i, 0
  br i1 %tobool.not.i.i28.i.i.i, label %folio_test_unevictable.exit31.i.i.i, label %if.then.i.i29.i.i.i, !prof !165

if.then.i.i29.i.i.i:                              ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i:              ; preds = %do.end8.i.i.i
  %56 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %36, align 4
  %58 = and i32 %57, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i30.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool.i30.not.i.i.i, label %if.end11.i.i.i, label %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge

folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i

if.end11.i.i.i:                                   ; preds = %folio_test_unevictable.exit31.i.i.i
  %59 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_is_file_lru.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i.i:                              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i:                     ; preds = %if.end11.i.i.i
  %61 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %36, align 4
  %63 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i32.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i)
  %tobool.not.i.i33.i.i.i = icmp eq i32 %and.i.i.i32.i.i.i, 0
  br i1 %tobool.not.i.i33.i.i.i, label %folio_test_active.exit36.i.i.i, label %if.then.i.i34.i.i.i, !prof !165

if.then.i.i34.i.i.i:                              ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i:                   ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = lshr i32 %62, 18
  %66 = and i32 %65, 2
  %67 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %36, align 4
  %69 = lshr i32 %68, 5
  %70 = and i32 %69, 1
  %71 = or i32 %70, %66
  %72 = xor i32 %71, 2
  br label %folio_lru_list.exit.i.i

folio_lru_list.exit.i.i:                          ; preds = %folio_test_active.exit36.i.i.i, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %72, %folio_test_active.exit36.i.i.i ], [ 4, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge ]
  %73 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %74, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i6.i.i, label %PageHead.exit.i.i.i.i, !prof !166

if.then.i.i.i6.i.i:                               ; preds = %folio_lru_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %folio_lru_list.exit.i.i
  %75 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %36, align 4
  %77 = and i32 %76, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i.i.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge, label %if.end.i.i7.i.i

PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %del_page_from_lru_list.exit

if.end.i.i7.i.i:                                  ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %36, i32 1, i32 1, i32 0, i32 2
  %78 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.end.i.i7.i.i, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %79, %if.end.i.i7.i.i ], [ 1, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge ]
  %shr.i.i.i.i = lshr i32 %57, 30
  %sub.i.i63 = sub i32 0, %retval.0.i.i.i.i
  %pgdat.i.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec, i32 0, i32 7
  %80 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pgdat.i.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i, i32 noundef %sub.i.i63) #11
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr %81, i32 0, i32 %shr.i.i.i.i
  %add1.i.i.i = add nsw i32 %retval.0.i.i.i, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef %add1.i.i.i, i32 noundef %sub.i.i63) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i, i32 noundef %shr.i.i.i.i, i32 noundef %sub.i.i63) #11
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %0, align 4
  %and.i.i64 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %tobool.not.i.i65, label %if.end.i.i68, label %if.then.i.i67, !prof !165

if.then.i.i67:                                    ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i66 = add i32 %83, -1
  br label %_compound_head.exit.i71

if.end.i.i68:                                     ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i71

_compound_head.exit.i71:                          ; preds = %if.end.i.i68, %if.then.i.i67
  %retval.0.i.i69 = phi i32 [ %sub.i.i66, %if.then.i.i67 ], [ %84, %if.end.i.i68 ]
  %85 = inttoptr i32 %retval.0.i.i69 to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp.i.not.i70 = icmp eq i32 %87, -1
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %0, align 4
  %and.i12.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i70, label %if.then.i72, label %do.end8.i73, !prof !166

if.then.i72:                                      ; preds = %_compound_head.exit.i71
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !165

if.then.i15.i:                                    ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i14.i = add i32 %89, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %90, %if.end.i16.i ]
  %91 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %91, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #11, !srcloc !206
  unreachable

do.end8.i73:                                      ; preds = %_compound_head.exit.i71
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !165

if.then.i22.i:                                    ; preds = %do.end8.i73
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i21.i = add i32 %89, -1
  br label %ClearPageActive.exit

if.end.i23.i:                                     ; preds = %do.end8.i73
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %page to i32
  br label %ClearPageActive.exit

ClearPageActive.exit:                             ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %92, %if.end.i23.i ]
  %93 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %93) #11
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %0, align 4
  %and.i.i74 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74)
  %tobool.not.i.i75 = icmp eq i32 %and.i.i74, 0
  br i1 %tobool.not.i.i75, label %if.end.i.i78, label %if.then.i.i77, !prof !165

if.then.i.i77:                                    ; preds = %ClearPageActive.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i76 = add i32 %95, -1
  br label %_compound_head.exit.i83

if.end.i.i78:                                     ; preds = %ClearPageActive.exit
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i83

_compound_head.exit.i83:                          ; preds = %if.end.i.i78, %if.then.i.i77
  %retval.0.i.i79 = phi i32 [ %sub.i.i76, %if.then.i.i77 ], [ %96, %if.end.i.i78 ]
  %97 = inttoptr i32 %retval.0.i.i79 to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp.i.not.i80 = icmp eq i32 %99, -1
  %100 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %0, align 4
  %and.i12.i81 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i81)
  %tobool.not.i13.i82 = icmp eq i32 %and.i12.i81, 0
  br i1 %cmp.i.not.i80, label %if.then.i84, label %do.end8.i90, !prof !166

if.then.i84:                                      ; preds = %_compound_head.exit.i83
  br i1 %tobool.not.i13.i82, label %if.end.i16.i87, label %if.then.i15.i86, !prof !165

if.then.i15.i86:                                  ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i14.i85 = add i32 %101, -1
  br label %_compound_head.exit18.i89

if.end.i16.i87:                                   ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i89

_compound_head.exit18.i89:                        ; preds = %if.end.i16.i87, %if.then.i15.i86
  %retval.0.i17.i88 = phi i32 [ %sub.i14.i85, %if.then.i15.i86 ], [ %102, %if.end.i16.i87 ]
  %103 = inttoptr i32 %retval.0.i17.i88 to ptr
  tail call void @dump_page(ptr noundef %103, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #11, !srcloc !207
  unreachable

do.end8.i90:                                      ; preds = %_compound_head.exit.i83
  br i1 %tobool.not.i13.i82, label %if.end.i23.i93, label %if.then.i22.i92, !prof !165

if.then.i22.i92:                                  ; preds = %do.end8.i90
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i21.i91 = add i32 %101, -1
  br label %ClearPageReferenced.exit

if.end.i23.i93:                                   ; preds = %do.end8.i90
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %page to i32
  br label %ClearPageReferenced.exit

ClearPageReferenced.exit:                         ; preds = %if.end.i23.i93, %if.then.i22.i92
  %retval.0.i24.i94 = phi i32 [ %sub.i21.i91, %if.then.i22.i92 ], [ %104, %if.end.i23.i93 ]
  %105 = inttoptr i32 %retval.0.i24.i94 to ptr
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %105) #11
  %106 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %0, align 4
  %and.i.i95 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95)
  %tobool.not.i.i96 = icmp eq i32 %and.i.i95, 0
  br i1 %tobool.not.i.i96, label %if.end.i.i99, label %if.then.i.i98, !prof !165

if.then.i.i98:                                    ; preds = %ClearPageReferenced.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i97 = add i32 %107, -1
  br label %_compound_head.exit.i102

if.end.i.i99:                                     ; preds = %ClearPageReferenced.exit
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i102

_compound_head.exit.i102:                         ; preds = %if.end.i.i99, %if.then.i.i98
  %retval.0.i.i100 = phi i32 [ %sub.i.i97, %if.then.i.i98 ], [ %108, %if.end.i.i99 ]
  %109 = inttoptr i32 %retval.0.i.i100 to ptr
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %cmp.i.not.i101 = icmp eq i32 %111, -1
  %112 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i101, label %if.then.i103, label %do.end10.i, !prof !166

if.then.i103:                                     ; preds = %_compound_head.exit.i102
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !165

if.then.i19.i:                                    ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %113, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %114, %if.end.i20.i ]
  %115 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %115, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #11, !srcloc !208
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i102
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !165

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %113, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %116, %if.end.i27.i ]
  %117 = inttoptr i32 %retval.0.i28.i to ptr
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %117, align 4
  %120 = and i32 %119, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool8.not = icmp eq i32 %120, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %PageWriteback.exit.if.then11_crit_edge

PageWriteback.exit.if.then11_crit_edge:           ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

lor.lhs.false:                                    ; preds = %PageWriteback.exit
  %121 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %0, align 4
  %and.i.i106 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i106)
  %tobool.not.i.i107 = icmp eq i32 %and.i.i106, 0
  br i1 %tobool.not.i.i107, label %if.end.i.i110, label %if.then.i.i109, !prof !165

if.then.i.i109:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i108 = add i32 %122, -1
  br label %_compound_head.exit.i115

if.end.i.i110:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i115

_compound_head.exit.i115:                         ; preds = %if.end.i.i110, %if.then.i.i109
  %retval.0.i.i111 = phi i32 [ %sub.i.i108, %if.then.i.i109 ], [ %123, %if.end.i.i110 ]
  %124 = inttoptr i32 %retval.0.i.i111 to ptr
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %cmp.i.not.i112 = icmp eq i32 %126, -1
  %127 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %0, align 4
  %and.i13.i113 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i113)
  %tobool.not.i14.i114 = icmp eq i32 %and.i13.i113, 0
  br i1 %cmp.i.not.i112, label %if.then.i116, label %do.end8.i122, !prof !166

if.then.i116:                                     ; preds = %_compound_head.exit.i115
  br i1 %tobool.not.i14.i114, label %if.end.i17.i119, label %if.then.i16.i118, !prof !165

if.then.i16.i118:                                 ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i117 = add i32 %128, -1
  br label %_compound_head.exit19.i121

if.end.i17.i119:                                  ; preds = %if.then.i116
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i121

_compound_head.exit19.i121:                       ; preds = %if.end.i17.i119, %if.then.i16.i118
  %retval.0.i18.i120 = phi i32 [ %sub.i15.i117, %if.then.i16.i118 ], [ %129, %if.end.i17.i119 ]
  %130 = inttoptr i32 %retval.0.i18.i120 to ptr
  tail call void @dump_page(ptr noundef %130, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #11, !srcloc !209
  unreachable

do.end8.i122:                                     ; preds = %_compound_head.exit.i115
  br i1 %tobool.not.i14.i114, label %if.end.i24.i125, label %if.then.i23.i124, !prof !165

if.then.i23.i124:                                 ; preds = %do.end8.i122
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i123 = add i32 %128, -1
  br label %PageDirty.exit

if.end.i24.i125:                                  ; preds = %do.end8.i122
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i125, %if.then.i23.i124
  %retval.0.i25.i126 = phi i32 [ %sub.i22.i123, %if.then.i23.i124 ], [ %131, %if.end.i24.i125 ]
  %132 = inttoptr i32 %retval.0.i25.i126 to ptr
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %132, align 4
  %135 = and i32 %134, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool10.not = icmp eq i32 %135, 0
  br i1 %tobool10.not, label %if.else, label %PageDirty.exit.if.then11_crit_edge

PageDirty.exit.if.then11_crit_edge:               ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.then11:                                        ; preds = %PageDirty.exit.if.then11_crit_edge, %PageWriteback.exit.if.then11_crit_edge
  %136 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %0, align 4
  %and.i.i129 = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i129)
  %tobool.not.i.i130 = icmp eq i32 %and.i.i129, 0
  br i1 %tobool.not.i.i130, label %if.end.i.i133, label %if.then.i.i132, !prof !165

if.then.i.i132:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i131 = add i32 %137, -1
  br label %_compound_head.exit.i137

if.end.i.i133:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i137

_compound_head.exit.i137:                         ; preds = %if.end.i.i133, %if.then.i.i132
  %retval.0.i.i134 = phi i32 [ %sub.i.i131, %if.then.i.i132 ], [ %138, %if.end.i.i133 ]
  %139 = inttoptr i32 %retval.0.i.i134 to ptr
  %140 = getelementptr inbounds %struct.page, ptr %139, i32 0, i32 1
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %140, align 4
  %and.i.i.i.i.i.i135 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i135)
  %tobool.not.i.i.i.i.i136 = icmp eq i32 %and.i.i.i.i.i.i135, 0
  br i1 %tobool.not.i.i.i.i.i136, label %folio_test_active.exit.i.i.i140, label %if.then.i.i.i.i.i138, !prof !165

if.then.i.i.i.i.i138:                             ; preds = %_compound_head.exit.i137
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %139, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i140:                  ; preds = %_compound_head.exit.i137
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %139, align 4
  %145 = and i32 %144, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.i.not.i.i.i139 = icmp eq i32 %145, 0
  br i1 %tobool.i.not.i.i.i139, label %folio_test_active.exit.i.i.i140.do.end8.i.i.i150_crit_edge, label %land.rhs.i.i.i143

folio_test_active.exit.i.i.i140.do.end8.i.i.i150_crit_edge: ; preds = %folio_test_active.exit.i.i.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i150

land.rhs.i.i.i143:                                ; preds = %folio_test_active.exit.i.i.i140
  %146 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %140, align 4
  %and.i.i.i23.i.i.i141 = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i141)
  %tobool.not.i.i24.i.i.i142 = icmp eq i32 %and.i.i.i23.i.i.i141, 0
  br i1 %tobool.not.i.i24.i.i.i142, label %folio_test_unevictable.exit.i.i.i146, label %if.then.i.i25.i.i.i144, !prof !165

if.then.i.i25.i.i.i144:                           ; preds = %land.rhs.i.i.i143
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %139, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i146:             ; preds = %land.rhs.i.i.i143
  %148 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %139, align 4
  %150 = and i32 %149, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.i26.not.i.i.i145 = icmp eq i32 %150, 0
  br i1 %tobool.i26.not.i.i.i145, label %folio_test_unevictable.exit.i.i.i146.do.end8.i.i.i150_crit_edge, label %if.then.i.i.i147, !prof !165

folio_test_unevictable.exit.i.i.i146.do.end8.i.i.i150_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i150

if.then.i.i.i147:                                 ; preds = %folio_test_unevictable.exit.i.i.i146
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %139, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i150:                                 ; preds = %folio_test_unevictable.exit.i.i.i146.do.end8.i.i.i150_crit_edge, %folio_test_active.exit.i.i.i140.do.end8.i.i.i150_crit_edge
  %151 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %140, align 4
  %and.i.i.i27.i.i.i148 = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i148)
  %tobool.not.i.i28.i.i.i149 = icmp eq i32 %and.i.i.i27.i.i.i148, 0
  br i1 %tobool.not.i.i28.i.i.i149, label %folio_test_unevictable.exit31.i.i.i153, label %if.then.i.i29.i.i.i151, !prof !165

if.then.i.i29.i.i.i151:                           ; preds = %do.end8.i.i.i150
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %139, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i153:           ; preds = %do.end8.i.i.i150
  %153 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %139, align 4
  %155 = and i32 %154, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.i30.not.i.i.i152 = icmp eq i32 %155, 0
  br i1 %tobool.i30.not.i.i.i152, label %if.end11.i.i.i156, label %folio_test_unevictable.exit31.i.i.i153.folio_lru_list.exit.i.i166_crit_edge

folio_test_unevictable.exit31.i.i.i153.folio_lru_list.exit.i.i166_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i166

if.end11.i.i.i156:                                ; preds = %folio_test_unevictable.exit31.i.i.i153
  %156 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %140, align 4
  %and.i.i.i.i.i.i.i154 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i154)
  %tobool.not.i.i.i.i.i.i155 = icmp eq i32 %and.i.i.i.i.i.i.i154, 0
  br i1 %tobool.not.i.i.i.i.i.i155, label %folio_is_file_lru.exit.i.i.i160, label %if.then.i.i.i.i.i.i157, !prof !165

if.then.i.i.i.i.i.i157:                           ; preds = %if.end11.i.i.i156
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %139, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i160:                  ; preds = %if.end11.i.i.i156
  %158 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %139, align 4
  %160 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %140, align 4
  %and.i.i.i32.i.i.i158 = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i158)
  %tobool.not.i.i33.i.i.i159 = icmp eq i32 %and.i.i.i32.i.i.i158, 0
  br i1 %tobool.not.i.i33.i.i.i159, label %folio_test_active.exit36.i.i.i162, label %if.then.i.i34.i.i.i161, !prof !165

if.then.i.i34.i.i.i161:                           ; preds = %folio_is_file_lru.exit.i.i.i160
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %139, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i162:                ; preds = %folio_is_file_lru.exit.i.i.i160
  call void @__sanitizer_cov_trace_pc() #13
  %162 = lshr i32 %159, 18
  %163 = and i32 %162, 2
  %164 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %139, align 4
  %166 = lshr i32 %165, 5
  %167 = and i32 %166, 1
  %168 = or i32 %167, %163
  %169 = xor i32 %168, 2
  br label %folio_lru_list.exit.i.i166

folio_lru_list.exit.i.i166:                       ; preds = %folio_test_active.exit36.i.i.i162, %folio_test_unevictable.exit31.i.i.i153.folio_lru_list.exit.i.i166_crit_edge
  %retval.0.i.i.i163 = phi i32 [ %169, %folio_test_active.exit36.i.i.i162 ], [ 4, %folio_test_unevictable.exit31.i.i.i153.folio_lru_list.exit.i.i166_crit_edge ]
  %shr.i.i.i.i164 = lshr i32 %154, 30
  %170 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %171)
  %cmp.i.not.i.i.i.i.i165 = icmp eq i32 %171, -1
  br i1 %cmp.i.not.i.i.i.i.i165, label %if.then.i.i.i9.i.i, label %PageHead.exit.i.i.i.i168, !prof !166

if.then.i.i.i9.i.i:                               ; preds = %folio_lru_list.exit.i.i166
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %139, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i168:                         ; preds = %folio_lru_list.exit.i.i166
  %172 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %139, align 4
  %174 = and i32 %173, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool.not.i.i.i.i167 = icmp eq i32 %174, 0
  br i1 %tobool.not.i.i.i.i167, label %PageHead.exit.i.i.i.i168.folio_nr_pages.exit.i.i_crit_edge, label %if.end.i.i.i.i170

PageHead.exit.i.i.i.i168.folio_nr_pages.exit.i.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit.i.i

if.end.i.i.i.i170:                                ; preds = %PageHead.exit.i.i.i.i168
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i169 = getelementptr %struct.page, ptr %139, i32 1, i32 1, i32 0, i32 2
  %175 = ptrtoint ptr %compound_nr.i.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %compound_nr.i.i.i.i169, align 4
  br label %folio_nr_pages.exit.i.i

folio_nr_pages.exit.i.i:                          ; preds = %if.end.i.i.i.i170, %PageHead.exit.i.i.i.i168.folio_nr_pages.exit.i.i_crit_edge
  %retval.0.i.i.i.i171 = phi i32 [ %176, %if.end.i.i.i.i170 ], [ 1, %PageHead.exit.i.i.i.i168.folio_nr_pages.exit.i.i_crit_edge ]
  %177 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pgdat.i.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i163, i32 noundef %retval.0.i.i.i.i171) #11
  %arrayidx.i.i.i173 = getelementptr [4 x %struct.zone], ptr %178, i32 0, i32 %shr.i.i.i.i164
  %add1.i.i.i174 = add nsw i32 %retval.0.i.i.i163, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i173, i32 noundef %add1.i.i.i174, i32 noundef %retval.0.i.i.i.i171) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i163, i32 noundef %shr.i.i.i.i164, i32 noundef %retval.0.i.i.i.i171) #11
  %arrayidx.i.i = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 %retval.0.i.i.i163
  %179 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i175 = tail call zeroext i1 @__list_add_valid(ptr noundef %140, ptr noundef %arrayidx.i.i, ptr noundef %180) #11
  br i1 %call.i.i.i.i175, label %if.end.i.i10.i.i, label %folio_nr_pages.exit.i.i.add_page_to_lru_list.exit_crit_edge

folio_nr_pages.exit.i.i.add_page_to_lru_list.exit_crit_edge: ; preds = %folio_nr_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_page_to_lru_list.exit

if.end.i.i10.i.i:                                 ; preds = %folio_nr_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %140, ptr %prev1.i.i.i.i, align 4
  %182 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %180, ptr %140, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.anon, ptr %139, i32 0, i32 1, i32 1
  %183 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %arrayidx.i.i, ptr %prev3.i.i.i.i, align 4
  %184 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile ptr %140, ptr %arrayidx.i.i, align 4
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %if.end.i.i10.i.i, %folio_nr_pages.exit.i.i.add_page_to_lru_list.exit_crit_edge
  %185 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %0, align 4
  %and.i.i176 = and i32 %186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i176)
  %tobool.not.i = icmp eq i32 %and.i.i176, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i177, !prof !165

if.then.i177:                                     ; preds = %add_page_to_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.51) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 466, 0\0A.popsection", ""() #11, !srcloc !210
  unreachable

do.body7.i:                                       ; preds = %add_page_to_lru_list.exit
  %187 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %0, align 4
  %and.i31.i = and i32 %188, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i178 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i178, label %if.end.i.i181, label %if.then.i.i180, !prof !165

if.then.i.i180:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i179 = add i32 %188, -1
  br label %_compound_head.exit.i184

if.end.i.i181:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %189 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i184

_compound_head.exit.i184:                         ; preds = %if.end.i.i181, %if.then.i.i180
  %retval.0.i.i182 = phi i32 [ %sub.i.i179, %if.then.i.i180 ], [ %189, %if.end.i.i181 ]
  %190 = inttoptr i32 %retval.0.i.i182 to ptr
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %192)
  %cmp.i.not.i183 = icmp eq i32 %192, -1
  %193 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %0, align 4
  %and.i32.i = and i32 %194, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i183, label %if.then17.i, label %do.end24.i, !prof !166

if.then17.i:                                      ; preds = %_compound_head.exit.i184
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !165

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i34.i = add i32 %194, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %195 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %195, %if.end.i36.i ]
  %196 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %196, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 466, 0\0A.popsection", ""() #11, !srcloc !211
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i184
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !165

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i41.i = add i32 %194, -1
  br label %SetPageReclaim.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %page to i32
  br label %SetPageReclaim.exit

SetPageReclaim.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %197, %if.end.i43.i ]
  %198 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 18, ptr noundef %198) #11
  br label %if.end12

if.else:                                          ; preds = %PageDirty.exit
  %199 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %0, align 4
  %and.i.i185 = and i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i185)
  %tobool.not.i.i186 = icmp eq i32 %and.i.i185, 0
  br i1 %tobool.not.i.i186, label %if.end.i.i189, label %if.then.i.i188, !prof !165

if.then.i.i188:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i187 = add i32 %200, -1
  br label %_compound_head.exit.i193

if.end.i.i189:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %201 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i193

_compound_head.exit.i193:                         ; preds = %if.end.i.i189, %if.then.i.i188
  %retval.0.i.i190 = phi i32 [ %sub.i.i187, %if.then.i.i188 ], [ %201, %if.end.i.i189 ]
  %202 = inttoptr i32 %retval.0.i.i190 to ptr
  %203 = getelementptr inbounds %struct.page, ptr %202, i32 0, i32 1
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %203, align 4
  %and.i.i.i.i.i.i191 = and i32 %205, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i191)
  %tobool.not.i.i.i.i.i192 = icmp eq i32 %and.i.i.i.i.i.i191, 0
  br i1 %tobool.not.i.i.i.i.i192, label %folio_test_active.exit.i.i.i196, label %if.then.i.i.i.i.i194, !prof !165

if.then.i.i.i.i.i194:                             ; preds = %_compound_head.exit.i193
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %202, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i196:                  ; preds = %_compound_head.exit.i193
  %206 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %202, align 4
  %208 = and i32 %207, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.i.not.i.i.i195 = icmp eq i32 %208, 0
  br i1 %tobool.i.not.i.i.i195, label %folio_test_active.exit.i.i.i196.do.end8.i.i.i206_crit_edge, label %land.rhs.i.i.i199

folio_test_active.exit.i.i.i196.do.end8.i.i.i206_crit_edge: ; preds = %folio_test_active.exit.i.i.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i206

land.rhs.i.i.i199:                                ; preds = %folio_test_active.exit.i.i.i196
  %209 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %203, align 4
  %and.i.i.i23.i.i.i197 = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i197)
  %tobool.not.i.i24.i.i.i198 = icmp eq i32 %and.i.i.i23.i.i.i197, 0
  br i1 %tobool.not.i.i24.i.i.i198, label %folio_test_unevictable.exit.i.i.i202, label %if.then.i.i25.i.i.i200, !prof !165

if.then.i.i25.i.i.i200:                           ; preds = %land.rhs.i.i.i199
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %202, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i202:             ; preds = %land.rhs.i.i.i199
  %211 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %202, align 4
  %213 = and i32 %212, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.i26.not.i.i.i201 = icmp eq i32 %213, 0
  br i1 %tobool.i26.not.i.i.i201, label %folio_test_unevictable.exit.i.i.i202.do.end8.i.i.i206_crit_edge, label %if.then.i.i.i203, !prof !165

folio_test_unevictable.exit.i.i.i202.do.end8.i.i.i206_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i202
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i206

if.then.i.i.i203:                                 ; preds = %folio_test_unevictable.exit.i.i.i202
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %202, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i206:                                 ; preds = %folio_test_unevictable.exit.i.i.i202.do.end8.i.i.i206_crit_edge, %folio_test_active.exit.i.i.i196.do.end8.i.i.i206_crit_edge
  %214 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile i32, ptr %203, align 4
  %and.i.i.i27.i.i.i204 = and i32 %215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i204)
  %tobool.not.i.i28.i.i.i205 = icmp eq i32 %and.i.i.i27.i.i.i204, 0
  br i1 %tobool.not.i.i28.i.i.i205, label %folio_test_unevictable.exit31.i.i.i209, label %if.then.i.i29.i.i.i207, !prof !165

if.then.i.i29.i.i.i207:                           ; preds = %do.end8.i.i.i206
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %202, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i209:           ; preds = %do.end8.i.i.i206
  %216 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %202, align 4
  %218 = and i32 %217, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool.i30.not.i.i.i208 = icmp eq i32 %218, 0
  br i1 %tobool.i30.not.i.i.i208, label %if.end11.i.i.i212, label %folio_test_unevictable.exit31.i.i.i209.folio_lru_list.exit.i.i222_crit_edge

folio_test_unevictable.exit31.i.i.i209.folio_lru_list.exit.i.i222_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i209
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i222

if.end11.i.i.i212:                                ; preds = %folio_test_unevictable.exit31.i.i.i209
  %219 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %203, align 4
  %and.i.i.i.i.i.i.i210 = and i32 %220, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i210)
  %tobool.not.i.i.i.i.i.i211 = icmp eq i32 %and.i.i.i.i.i.i.i210, 0
  br i1 %tobool.not.i.i.i.i.i.i211, label %folio_is_file_lru.exit.i.i.i216, label %if.then.i.i.i.i.i.i213, !prof !165

if.then.i.i.i.i.i.i213:                           ; preds = %if.end11.i.i.i212
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %202, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i216:                  ; preds = %if.end11.i.i.i212
  %221 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile i32, ptr %202, align 4
  %223 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %203, align 4
  %and.i.i.i32.i.i.i214 = and i32 %224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i214)
  %tobool.not.i.i33.i.i.i215 = icmp eq i32 %and.i.i.i32.i.i.i214, 0
  br i1 %tobool.not.i.i33.i.i.i215, label %folio_test_active.exit36.i.i.i218, label %if.then.i.i34.i.i.i217, !prof !165

if.then.i.i34.i.i.i217:                           ; preds = %folio_is_file_lru.exit.i.i.i216
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %202, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i218:                ; preds = %folio_is_file_lru.exit.i.i.i216
  call void @__sanitizer_cov_trace_pc() #13
  %225 = lshr i32 %222, 18
  %226 = and i32 %225, 2
  %227 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %202, align 4
  %229 = lshr i32 %228, 5
  %230 = and i32 %229, 1
  %231 = or i32 %230, %226
  %232 = xor i32 %231, 2
  br label %folio_lru_list.exit.i.i222

folio_lru_list.exit.i.i222:                       ; preds = %folio_test_active.exit36.i.i.i218, %folio_test_unevictable.exit31.i.i.i209.folio_lru_list.exit.i.i222_crit_edge
  %retval.0.i.i.i219 = phi i32 [ %232, %folio_test_active.exit36.i.i.i218 ], [ 4, %folio_test_unevictable.exit31.i.i.i209.folio_lru_list.exit.i.i222_crit_edge ]
  %shr.i.i.i.i220 = lshr i32 %217, 30
  %233 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile i32, ptr %202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %234)
  %cmp.i.not.i.i.i.i.i221 = icmp eq i32 %234, -1
  br i1 %cmp.i.not.i.i.i.i.i221, label %if.then.i.i.i9.i.i223, label %PageHead.exit.i.i.i.i225, !prof !166

if.then.i.i.i9.i.i223:                            ; preds = %folio_lru_list.exit.i.i222
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %202, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i225:                         ; preds = %folio_lru_list.exit.i.i222
  %235 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %202, align 4
  %237 = and i32 %236, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool.not.i.i.i.i224 = icmp eq i32 %237, 0
  br i1 %tobool.not.i.i.i.i224, label %PageHead.exit.i.i.i.i225.folio_nr_pages.exit.i.i235_crit_edge, label %if.end.i.i.i.i227

PageHead.exit.i.i.i.i225.folio_nr_pages.exit.i.i235_crit_edge: ; preds = %PageHead.exit.i.i.i.i225
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit.i.i235

if.end.i.i.i.i227:                                ; preds = %PageHead.exit.i.i.i.i225
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i226 = getelementptr %struct.page, ptr %202, i32 1, i32 1, i32 0, i32 2
  %238 = ptrtoint ptr %compound_nr.i.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %compound_nr.i.i.i.i226, align 4
  br label %folio_nr_pages.exit.i.i235

folio_nr_pages.exit.i.i235:                       ; preds = %if.end.i.i.i.i227, %PageHead.exit.i.i.i.i225.folio_nr_pages.exit.i.i235_crit_edge
  %retval.0.i.i.i.i228 = phi i32 [ %239, %if.end.i.i.i.i227 ], [ 1, %PageHead.exit.i.i.i.i225.folio_nr_pages.exit.i.i235_crit_edge ]
  %240 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %pgdat.i.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i219, i32 noundef %retval.0.i.i.i.i228) #11
  %arrayidx.i.i.i230 = getelementptr [4 x %struct.zone], ptr %241, i32 0, i32 %shr.i.i.i.i220
  %add1.i.i.i231 = add nsw i32 %retval.0.i.i.i219, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i230, i32 noundef %add1.i.i.i231, i32 noundef %retval.0.i.i.i.i228) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i219, i32 noundef %shr.i.i.i.i220, i32 noundef %retval.0.i.i.i.i228) #11
  %arrayidx.i.i232 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 %retval.0.i.i.i219
  %prev.i.i.i233 = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 %retval.0.i.i.i219, i32 1
  %242 = ptrtoint ptr %prev.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %prev.i.i.i233, align 4
  %call.i.i.i.i234 = tail call zeroext i1 @__list_add_valid(ptr noundef %203, ptr noundef %243, ptr noundef %arrayidx.i.i232) #11
  br i1 %call.i.i.i.i234, label %if.end.i.i10.i.i237, label %folio_nr_pages.exit.i.i235.add_page_to_lru_list_tail.exit_crit_edge

folio_nr_pages.exit.i.i235.add_page_to_lru_list_tail.exit_crit_edge: ; preds = %folio_nr_pages.exit.i.i235
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_page_to_lru_list_tail.exit

if.end.i.i10.i.i237:                              ; preds = %folio_nr_pages.exit.i.i235
  call void @__sanitizer_cov_trace_pc() #13
  %244 = ptrtoint ptr %prev.i.i.i233 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %203, ptr %prev.i.i.i233, align 4
  %245 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %arrayidx.i.i232, ptr %203, align 4
  %prev3.i.i.i.i236 = getelementptr inbounds %struct.anon, ptr %202, i32 0, i32 1, i32 1
  %246 = ptrtoint ptr %prev3.i.i.i.i236 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %243, ptr %prev3.i.i.i.i236, align 4
  %247 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %247)
  store volatile ptr %203, ptr %243, align 4
  br label %add_page_to_lru_list_tail.exit

add_page_to_lru_list_tail.exit:                   ; preds = %if.end.i.i10.i.i237, %folio_nr_pages.exit.i.i235.add_page_to_lru_list_tail.exit_crit_edge
  %248 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i241 = and i32 %248, -16384
  %249 = inttoptr i32 %and.i.i241 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %249, i32 0, i32 3
  %250 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %251
  %252 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %253, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 42) to i32)
  %254 = inttoptr i32 %add.i to ptr
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %254, align 4
  %add8.i = add i32 %256, 1
  store i32 %add8.i, ptr %254, align 4
  br label %if.end12

if.end12:                                         ; preds = %add_page_to_lru_list_tail.exit, %SetPageReclaim.exit
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  %257 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i242 = and i32 %257, -16384
  %258 = inttoptr i32 %and.i.i242 to ptr
  %cpu.i243 = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 3
  %259 = ptrtoint ptr %cpu.i243 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %cpu.i243, align 4
  %arrayidx7.i244 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %260
  %261 = ptrtoint ptr %arrayidx7.i244 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx7.i244, align 4
  %add.i245 = add i32 %262, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 18) to i32)
  %263 = inttoptr i32 %add.i245 to ptr
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %263, align 4
  %add8.i246 = add i32 %265, 1
  store i32 %add8.i246, ptr %263, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_deactivate_file_fn, %lruvec_memcg.exit)) #11
          to label %if.end.i [label %lruvec_memcg.exit], !srcloc !170

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %memcg.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec, i32 0, i32 9
  %266 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %memcg.i, align 4
  br label %lruvec_memcg.exit

lruvec_memcg.exit:                                ; preds = %if.end.i, %if.then14
  %retval.0.i = phi ptr [ %267, %if.end.i ], [ null, %if.then14 ]
  tail call void @__count_memcg_events(ptr noundef %retval.0.i, i32 noundef 18, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %lruvec_memcg.exit, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %PageUnevictable.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lru_deactivate_fn(ptr noundef %page, ptr noundef %lruvec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %and.i13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !165

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %8, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %9, %if.end.i17.i ]
  %10 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #11, !srcloc !204
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !165

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %8, -1
  br label %PageActive.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %page to i32
  br label %PageActive.exit

PageActive.exit:                                  ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %11, %if.end.i24.i ]
  %12 = inttoptr i32 %retval.0.i25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %PageActive.exit.if.end_crit_edge, label %land.lhs.true

PageActive.exit.if.end_crit_edge:                 ; preds = %PageActive.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %PageActive.exit
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i.i14 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %and.i.i14, 0
  br i1 %tobool.not.i.i15, label %if.end.i.i18, label %if.then.i.i17, !prof !165

if.then.i.i17:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i16 = add i32 %17, -1
  br label %_compound_head.exit.i23

if.end.i.i18:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i23

_compound_head.exit.i23:                          ; preds = %if.end.i.i18, %if.then.i.i17
  %retval.0.i.i19 = phi i32 [ %sub.i.i16, %if.then.i.i17 ], [ %18, %if.end.i.i18 ]
  %19 = inttoptr i32 %retval.0.i.i19 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i20 = icmp eq i32 %21, -1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %0, align 4
  %and.i13.i21 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i21)
  %tobool.not.i14.i22 = icmp eq i32 %and.i13.i21, 0
  br i1 %cmp.i.not.i20, label %if.then.i24, label %do.end8.i30, !prof !166

if.then.i24:                                      ; preds = %_compound_head.exit.i23
  br i1 %tobool.not.i14.i22, label %if.end.i17.i27, label %if.then.i16.i26, !prof !165

if.then.i16.i26:                                  ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i25 = add i32 %23, -1
  br label %_compound_head.exit19.i29

if.end.i17.i27:                                   ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i29

_compound_head.exit19.i29:                        ; preds = %if.end.i17.i27, %if.then.i16.i26
  %retval.0.i18.i28 = phi i32 [ %sub.i15.i25, %if.then.i16.i26 ], [ %24, %if.end.i17.i27 ]
  %25 = inttoptr i32 %retval.0.i18.i28 to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #11, !srcloc !205
  unreachable

do.end8.i30:                                      ; preds = %_compound_head.exit.i23
  br i1 %tobool.not.i14.i22, label %if.end.i24.i33, label %if.then.i23.i32, !prof !165

if.then.i23.i32:                                  ; preds = %do.end8.i30
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i31 = add i32 %23, -1
  br label %PageUnevictable.exit

if.end.i24.i33:                                   ; preds = %do.end8.i30
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %page to i32
  br label %PageUnevictable.exit

PageUnevictable.exit:                             ; preds = %if.end.i24.i33, %if.then.i23.i32
  %retval.0.i25.i34 = phi i32 [ %sub.i22.i31, %if.then.i23.i32 ], [ %26, %if.end.i24.i33 ]
  %27 = inttoptr i32 %retval.0.i25.i34 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool2.not = icmp eq i32 %30, 0
  br i1 %tobool2.not, label %if.then, label %PageUnevictable.exit.if.end_crit_edge

PageUnevictable.exit.if.end_crit_edge:            ; preds = %PageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %PageUnevictable.exit
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %0, align 4
  %and.i.i122 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i122)
  %tobool.not.i = icmp eq i32 %and.i.i122, 0
  br i1 %tobool.not.i, label %thp_nr_pages.exit, label %if.then.i123, !prof !165

if.then.i123:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #11, !srcloc !203
  unreachable

thp_nr_pages.exit:                                ; preds = %if.then
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %0, align 4
  %and.i.i37 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.not.i.i38 = icmp eq i32 %and.i.i37, 0
  br i1 %tobool.not.i.i38, label %if.end.i.i40, label %if.then.i.i39, !prof !165

if.then.i.i39:                                    ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i1.i = add i32 %34, -1
  br label %_compound_head.exit.i42

if.end.i.i40:                                     ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i42

_compound_head.exit.i42:                          ; preds = %if.end.i.i40, %if.then.i.i39
  %retval.0.i.i41 = phi i32 [ %sub.i1.i, %if.then.i.i39 ], [ %35, %if.end.i.i40 ]
  %36 = inttoptr i32 %retval.0.i.i41 to ptr
  %lru.i.i = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %_compound_head.exit.i42.list_del.exit.i.i_crit_edge

_compound_head.exit.i42.list_del.exit.i.i_crit_edge: ; preds = %_compound_head.exit.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %_compound_head.exit.i42
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i, align 4
  %39 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lru.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %_compound_head.exit.i42.list_del.exit.i.i_crit_edge
  %43 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %45 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_active.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i:                                ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i:                     ; preds = %list_del.exit.i.i
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %36, align 4
  %48 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i.i.i = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge, label %land.rhs.i.i.i

folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

land.rhs.i.i.i:                                   ; preds = %folio_test_active.exit.i.i.i
  %49 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i23.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i)
  %tobool.not.i.i24.i.i.i = icmp eq i32 %and.i.i.i23.i.i.i, 0
  br i1 %tobool.not.i.i24.i.i.i, label %folio_test_unevictable.exit.i.i.i, label %if.then.i.i25.i.i.i, !prof !165

if.then.i.i25.i.i.i:                              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i:                ; preds = %land.rhs.i.i.i
  %51 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %36, align 4
  %53 = and i32 %52, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i26.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.i26.not.i.i.i, label %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i, !prof !165

folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge
  %54 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i27.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i)
  %tobool.not.i.i28.i.i.i = icmp eq i32 %and.i.i.i27.i.i.i, 0
  br i1 %tobool.not.i.i28.i.i.i, label %folio_test_unevictable.exit31.i.i.i, label %if.then.i.i29.i.i.i, !prof !165

if.then.i.i29.i.i.i:                              ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i:              ; preds = %do.end8.i.i.i
  %56 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %36, align 4
  %58 = and i32 %57, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i30.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool.i30.not.i.i.i, label %if.end11.i.i.i, label %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge

folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i

if.end11.i.i.i:                                   ; preds = %folio_test_unevictable.exit31.i.i.i
  %59 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_is_file_lru.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i.i:                              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i:                     ; preds = %if.end11.i.i.i
  %61 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %36, align 4
  %63 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i32.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i)
  %tobool.not.i.i33.i.i.i = icmp eq i32 %and.i.i.i32.i.i.i, 0
  br i1 %tobool.not.i.i33.i.i.i, label %folio_test_active.exit36.i.i.i, label %if.then.i.i34.i.i.i, !prof !165

if.then.i.i34.i.i.i:                              ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i:                   ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = lshr i32 %62, 18
  %66 = and i32 %65, 2
  %67 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %36, align 4
  %69 = lshr i32 %68, 5
  %70 = and i32 %69, 1
  %71 = or i32 %70, %66
  %72 = xor i32 %71, 2
  br label %folio_lru_list.exit.i.i

folio_lru_list.exit.i.i:                          ; preds = %folio_test_active.exit36.i.i.i, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %72, %folio_test_active.exit36.i.i.i ], [ 4, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge ]
  %73 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %74, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i6.i.i, label %PageHead.exit.i.i.i.i, !prof !166

if.then.i.i.i6.i.i:                               ; preds = %folio_lru_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %folio_lru_list.exit.i.i
  %75 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %36, align 4
  %77 = and i32 %76, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i.i.i.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge, label %if.end.i.i7.i.i

PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %del_page_from_lru_list.exit

if.end.i.i7.i.i:                                  ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %36, i32 1, i32 1, i32 0, i32 2
  %78 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.end.i.i7.i.i, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %79, %if.end.i.i7.i.i ], [ 1, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge ]
  %shr.i.i.i.i = lshr i32 %57, 30
  %sub.i.i43 = sub i32 0, %retval.0.i.i.i.i
  %pgdat.i.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec, i32 0, i32 7
  %80 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pgdat.i.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i, i32 noundef %sub.i.i43) #11
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr %81, i32 0, i32 %shr.i.i.i.i
  %add1.i.i.i = add nsw i32 %retval.0.i.i.i, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef %add1.i.i.i, i32 noundef %sub.i.i43) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i, i32 noundef %shr.i.i.i.i, i32 noundef %sub.i.i43) #11
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %0, align 4
  %and.i.i44 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool.not.i.i45 = icmp eq i32 %and.i.i44, 0
  br i1 %tobool.not.i.i45, label %if.end.i.i48, label %if.then.i.i47, !prof !165

if.then.i.i47:                                    ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i46 = add i32 %83, -1
  br label %_compound_head.exit.i51

if.end.i.i48:                                     ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i51

_compound_head.exit.i51:                          ; preds = %if.end.i.i48, %if.then.i.i47
  %retval.0.i.i49 = phi i32 [ %sub.i.i46, %if.then.i.i47 ], [ %84, %if.end.i.i48 ]
  %85 = inttoptr i32 %retval.0.i.i49 to ptr
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp.i.not.i50 = icmp eq i32 %87, -1
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %0, align 4
  %and.i12.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i50, label %if.then.i52, label %do.end8.i53, !prof !166

if.then.i52:                                      ; preds = %_compound_head.exit.i51
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !165

if.then.i15.i:                                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i14.i = add i32 %89, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %90, %if.end.i16.i ]
  %91 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %91, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #11, !srcloc !206
  unreachable

do.end8.i53:                                      ; preds = %_compound_head.exit.i51
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !165

if.then.i22.i:                                    ; preds = %do.end8.i53
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i21.i = add i32 %89, -1
  br label %ClearPageActive.exit

if.end.i23.i:                                     ; preds = %do.end8.i53
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %page to i32
  br label %ClearPageActive.exit

ClearPageActive.exit:                             ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %92, %if.end.i23.i ]
  %93 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %93) #11
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %0, align 4
  %and.i.i54 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool.not.i.i55 = icmp eq i32 %and.i.i54, 0
  br i1 %tobool.not.i.i55, label %if.end.i.i58, label %if.then.i.i57, !prof !165

if.then.i.i57:                                    ; preds = %ClearPageActive.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i56 = add i32 %95, -1
  br label %_compound_head.exit.i63

if.end.i.i58:                                     ; preds = %ClearPageActive.exit
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i63

_compound_head.exit.i63:                          ; preds = %if.end.i.i58, %if.then.i.i57
  %retval.0.i.i59 = phi i32 [ %sub.i.i56, %if.then.i.i57 ], [ %96, %if.end.i.i58 ]
  %97 = inttoptr i32 %retval.0.i.i59 to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp.i.not.i60 = icmp eq i32 %99, -1
  %100 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %0, align 4
  %and.i12.i61 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i61)
  %tobool.not.i13.i62 = icmp eq i32 %and.i12.i61, 0
  br i1 %cmp.i.not.i60, label %if.then.i64, label %do.end8.i70, !prof !166

if.then.i64:                                      ; preds = %_compound_head.exit.i63
  br i1 %tobool.not.i13.i62, label %if.end.i16.i67, label %if.then.i15.i66, !prof !165

if.then.i15.i66:                                  ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i14.i65 = add i32 %101, -1
  br label %_compound_head.exit18.i69

if.end.i16.i67:                                   ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i69

_compound_head.exit18.i69:                        ; preds = %if.end.i16.i67, %if.then.i15.i66
  %retval.0.i17.i68 = phi i32 [ %sub.i14.i65, %if.then.i15.i66 ], [ %102, %if.end.i16.i67 ]
  %103 = inttoptr i32 %retval.0.i17.i68 to ptr
  tail call void @dump_page(ptr noundef %103, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #11, !srcloc !207
  unreachable

do.end8.i70:                                      ; preds = %_compound_head.exit.i63
  br i1 %tobool.not.i13.i62, label %if.end.i23.i73, label %if.then.i22.i72, !prof !165

if.then.i22.i72:                                  ; preds = %do.end8.i70
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i21.i71 = add i32 %101, -1
  br label %ClearPageReferenced.exit

if.end.i23.i73:                                   ; preds = %do.end8.i70
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %page to i32
  br label %ClearPageReferenced.exit

ClearPageReferenced.exit:                         ; preds = %if.end.i23.i73, %if.then.i22.i72
  %retval.0.i24.i74 = phi i32 [ %sub.i21.i71, %if.then.i22.i72 ], [ %104, %if.end.i23.i73 ]
  %105 = inttoptr i32 %retval.0.i24.i74 to ptr
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %105) #11
  %106 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %0, align 4
  %and.i.i75 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i75)
  %tobool.not.i.i76 = icmp eq i32 %and.i.i75, 0
  br i1 %tobool.not.i.i76, label %if.end.i.i79, label %if.then.i.i78, !prof !165

if.then.i.i78:                                    ; preds = %ClearPageReferenced.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i77 = add i32 %107, -1
  br label %_compound_head.exit.i83

if.end.i.i79:                                     ; preds = %ClearPageReferenced.exit
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i83

_compound_head.exit.i83:                          ; preds = %if.end.i.i79, %if.then.i.i78
  %retval.0.i.i80 = phi i32 [ %sub.i.i77, %if.then.i.i78 ], [ %108, %if.end.i.i79 ]
  %109 = inttoptr i32 %retval.0.i.i80 to ptr
  %110 = getelementptr inbounds %struct.page, ptr %109, i32 0, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %110, align 4
  %and.i.i.i.i.i.i81 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i81)
  %tobool.not.i.i.i.i.i82 = icmp eq i32 %and.i.i.i.i.i.i81, 0
  br i1 %tobool.not.i.i.i.i.i82, label %folio_test_active.exit.i.i.i86, label %if.then.i.i.i.i.i84, !prof !165

if.then.i.i.i.i.i84:                              ; preds = %_compound_head.exit.i83
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %109, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i86:                   ; preds = %_compound_head.exit.i83
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %109, align 4
  %115 = and i32 %114, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.i.not.i.i.i85 = icmp eq i32 %115, 0
  br i1 %tobool.i.not.i.i.i85, label %folio_test_active.exit.i.i.i86.do.end8.i.i.i96_crit_edge, label %land.rhs.i.i.i89

folio_test_active.exit.i.i.i86.do.end8.i.i.i96_crit_edge: ; preds = %folio_test_active.exit.i.i.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i96

land.rhs.i.i.i89:                                 ; preds = %folio_test_active.exit.i.i.i86
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %110, align 4
  %and.i.i.i23.i.i.i87 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i87)
  %tobool.not.i.i24.i.i.i88 = icmp eq i32 %and.i.i.i23.i.i.i87, 0
  br i1 %tobool.not.i.i24.i.i.i88, label %folio_test_unevictable.exit.i.i.i92, label %if.then.i.i25.i.i.i90, !prof !165

if.then.i.i25.i.i.i90:                            ; preds = %land.rhs.i.i.i89
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %109, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i92:              ; preds = %land.rhs.i.i.i89
  %118 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %109, align 4
  %120 = and i32 %119, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i26.not.i.i.i91 = icmp eq i32 %120, 0
  br i1 %tobool.i26.not.i.i.i91, label %folio_test_unevictable.exit.i.i.i92.do.end8.i.i.i96_crit_edge, label %if.then.i.i.i93, !prof !165

folio_test_unevictable.exit.i.i.i92.do.end8.i.i.i96_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i96

if.then.i.i.i93:                                  ; preds = %folio_test_unevictable.exit.i.i.i92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %109, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i96:                                  ; preds = %folio_test_unevictable.exit.i.i.i92.do.end8.i.i.i96_crit_edge, %folio_test_active.exit.i.i.i86.do.end8.i.i.i96_crit_edge
  %121 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %110, align 4
  %and.i.i.i27.i.i.i94 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i94)
  %tobool.not.i.i28.i.i.i95 = icmp eq i32 %and.i.i.i27.i.i.i94, 0
  br i1 %tobool.not.i.i28.i.i.i95, label %folio_test_unevictable.exit31.i.i.i99, label %if.then.i.i29.i.i.i97, !prof !165

if.then.i.i29.i.i.i97:                            ; preds = %do.end8.i.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %109, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i99:            ; preds = %do.end8.i.i.i96
  %123 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %109, align 4
  %125 = and i32 %124, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.i30.not.i.i.i98 = icmp eq i32 %125, 0
  br i1 %tobool.i30.not.i.i.i98, label %if.end11.i.i.i102, label %folio_test_unevictable.exit31.i.i.i99.folio_lru_list.exit.i.i112_crit_edge

folio_test_unevictable.exit31.i.i.i99.folio_lru_list.exit.i.i112_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i112

if.end11.i.i.i102:                                ; preds = %folio_test_unevictable.exit31.i.i.i99
  %126 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %110, align 4
  %and.i.i.i.i.i.i.i100 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i100)
  %tobool.not.i.i.i.i.i.i101 = icmp eq i32 %and.i.i.i.i.i.i.i100, 0
  br i1 %tobool.not.i.i.i.i.i.i101, label %folio_is_file_lru.exit.i.i.i106, label %if.then.i.i.i.i.i.i103, !prof !165

if.then.i.i.i.i.i.i103:                           ; preds = %if.end11.i.i.i102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %109, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i106:                  ; preds = %if.end11.i.i.i102
  %128 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %109, align 4
  %130 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %110, align 4
  %and.i.i.i32.i.i.i104 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i104)
  %tobool.not.i.i33.i.i.i105 = icmp eq i32 %and.i.i.i32.i.i.i104, 0
  br i1 %tobool.not.i.i33.i.i.i105, label %folio_test_active.exit36.i.i.i108, label %if.then.i.i34.i.i.i107, !prof !165

if.then.i.i34.i.i.i107:                           ; preds = %folio_is_file_lru.exit.i.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %109, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i108:                ; preds = %folio_is_file_lru.exit.i.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  %132 = lshr i32 %129, 18
  %133 = and i32 %132, 2
  %134 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %109, align 4
  %136 = lshr i32 %135, 5
  %137 = and i32 %136, 1
  %138 = or i32 %137, %133
  %139 = xor i32 %138, 2
  br label %folio_lru_list.exit.i.i112

folio_lru_list.exit.i.i112:                       ; preds = %folio_test_active.exit36.i.i.i108, %folio_test_unevictable.exit31.i.i.i99.folio_lru_list.exit.i.i112_crit_edge
  %retval.0.i.i.i109 = phi i32 [ %139, %folio_test_active.exit36.i.i.i108 ], [ 4, %folio_test_unevictable.exit31.i.i.i99.folio_lru_list.exit.i.i112_crit_edge ]
  %shr.i.i.i.i110 = lshr i32 %124, 30
  %140 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %141)
  %cmp.i.not.i.i.i.i.i111 = icmp eq i32 %141, -1
  br i1 %cmp.i.not.i.i.i.i.i111, label %if.then.i.i.i9.i.i, label %PageHead.exit.i.i.i.i114, !prof !166

if.then.i.i.i9.i.i:                               ; preds = %folio_lru_list.exit.i.i112
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %109, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i114:                         ; preds = %folio_lru_list.exit.i.i112
  %142 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %109, align 4
  %144 = and i32 %143, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i.i.i.i113 = icmp eq i32 %144, 0
  br i1 %tobool.not.i.i.i.i113, label %PageHead.exit.i.i.i.i114.folio_nr_pages.exit.i.i_crit_edge, label %if.end.i.i.i.i116

PageHead.exit.i.i.i.i114.folio_nr_pages.exit.i.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit.i.i

if.end.i.i.i.i116:                                ; preds = %PageHead.exit.i.i.i.i114
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i115 = getelementptr %struct.page, ptr %109, i32 1, i32 1, i32 0, i32 2
  %145 = ptrtoint ptr %compound_nr.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %compound_nr.i.i.i.i115, align 4
  br label %folio_nr_pages.exit.i.i

folio_nr_pages.exit.i.i:                          ; preds = %if.end.i.i.i.i116, %PageHead.exit.i.i.i.i114.folio_nr_pages.exit.i.i_crit_edge
  %retval.0.i.i.i.i117 = phi i32 [ %146, %if.end.i.i.i.i116 ], [ 1, %PageHead.exit.i.i.i.i114.folio_nr_pages.exit.i.i_crit_edge ]
  %147 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pgdat.i.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i109, i32 noundef %retval.0.i.i.i.i117) #11
  %arrayidx.i.i.i119 = getelementptr [4 x %struct.zone], ptr %148, i32 0, i32 %shr.i.i.i.i110
  %add1.i.i.i120 = add nsw i32 %retval.0.i.i.i109, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i119, i32 noundef %add1.i.i.i120, i32 noundef %retval.0.i.i.i.i117) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i109, i32 noundef %shr.i.i.i.i110, i32 noundef %retval.0.i.i.i.i117) #11
  %arrayidx.i.i = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 %retval.0.i.i.i109
  %149 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i121 = tail call zeroext i1 @__list_add_valid(ptr noundef %110, ptr noundef %arrayidx.i.i, ptr noundef %150) #11
  br i1 %call.i.i.i.i121, label %if.end.i.i10.i.i, label %folio_nr_pages.exit.i.i.add_page_to_lru_list.exit_crit_edge

folio_nr_pages.exit.i.i.add_page_to_lru_list.exit_crit_edge: ; preds = %folio_nr_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_page_to_lru_list.exit

if.end.i.i10.i.i:                                 ; preds = %folio_nr_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %110, ptr %prev1.i.i.i.i, align 4
  %152 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %150, ptr %110, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.anon, ptr %109, i32 0, i32 1, i32 1
  %153 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %arrayidx.i.i, ptr %prev3.i.i.i.i, align 4
  %154 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %110, ptr %arrayidx.i.i, align 4
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %if.end.i.i10.i.i, %folio_nr_pages.exit.i.i.add_page_to_lru_list.exit_crit_edge
  %155 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i124 = and i32 %155, -16384
  %156 = inttoptr i32 %and.i.i124 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %158
  %159 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %160, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 18) to i32)
  %161 = inttoptr i32 %add.i to ptr
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  %add8.i = add i32 %163, 1
  store i32 %add8.i, ptr %161, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_deactivate_fn, %lruvec_memcg.exit)) #11
          to label %if.end.i [label %lruvec_memcg.exit], !srcloc !170

if.end.i:                                         ; preds = %add_page_to_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %memcg.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec, i32 0, i32 9
  %164 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %memcg.i, align 4
  br label %lruvec_memcg.exit

lruvec_memcg.exit:                                ; preds = %if.end.i, %add_page_to_lru_list.exit
  %retval.0.i = phi ptr [ %165, %if.end.i ], [ null, %add_page_to_lru_list.exit ]
  tail call void @__count_memcg_events(ptr noundef %retval.0.i, i32 noundef 18, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %lruvec_memcg.exit, %PageUnevictable.exit.if.end_crit_edge, %PageActive.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lru_lazyfree_fn(ptr noundef %page, ptr noundef %lruvec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %PageAnon.exit.if.end_crit_edge, label %land.lhs.true

PageAnon.exit.if.end_crit_edge:                   ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %PageAnon.exit
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i.i21 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i.i22 = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i.i22, label %if.end.i.i25, label %if.then.i.i24, !prof !165

if.then.i.i24:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i23 = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i25:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i25, %if.then.i.i24
  %retval.0.i.i26 = phi i32 [ %sub.i.i23, %if.then.i.i24 ], [ %10, %if.end.i.i25 ]
  %11 = inttoptr i32 %retval.0.i.i26 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, -1
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !165

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %15, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %16, %if.end.i20.i ]
  %17 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #11, !srcloc !212
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !165

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %15, -1
  br label %PageSwapBacked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %page to i32
  br label %PageSwapBacked.exit

PageSwapBacked.exit:                              ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %18, %if.end.i27.i ]
  %19 = inttoptr i32 %retval.0.i28.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %PageSwapBacked.exit.if.end_crit_edge, label %land.lhs.true2

PageSwapBacked.exit.if.end_crit_edge:             ; preds = %PageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %PageSwapBacked.exit
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %0, align 4
  %and.i.i27 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i.i28, label %if.end.i.i31, label %if.then.i.i30, !prof !165

if.then.i.i30:                                    ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i29 = add i32 %24, -1
  br label %_compound_head.exit.i33

if.end.i.i31:                                     ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i33

_compound_head.exit.i33:                          ; preds = %if.end.i.i31, %if.then.i.i30
  %retval.0.i.i32 = phi i32 [ %sub.i.i29, %if.then.i.i30 ], [ %25, %if.end.i.i31 ]
  %26 = inttoptr i32 %retval.0.i.i32 to ptr
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !165

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i33
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %32 = and i32 %31, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.land.lhs.true4_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.land.lhs.true4_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true4

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %27, align 4
  %and.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !165

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %26, align 4
  %37 = and i32 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.i.not = icmp eq i32 %37, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.land.lhs.true4_crit_edge, label %PageSwapCache.exit.if.end_crit_edge

PageSwapCache.exit.if.end_crit_edge:              ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

PageSwapCache.exit.land.lhs.true4_crit_edge:      ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true4

land.lhs.true4:                                   ; preds = %PageSwapCache.exit.land.lhs.true4_crit_edge, %folio_test_swapbacked.exit.i.i.land.lhs.true4_crit_edge
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %0, align 4
  %and.i.i34 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %and.i.i34, 0
  br i1 %tobool.not.i.i35, label %if.end.i.i38, label %if.then.i.i37, !prof !165

if.then.i.i37:                                    ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i36 = add i32 %39, -1
  br label %_compound_head.exit.i41

if.end.i.i38:                                     ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i41

_compound_head.exit.i41:                          ; preds = %if.end.i.i38, %if.then.i.i37
  %retval.0.i.i39 = phi i32 [ %sub.i.i36, %if.then.i.i37 ], [ %40, %if.end.i.i38 ]
  %41 = inttoptr i32 %retval.0.i.i39 to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.not.i40 = icmp eq i32 %43, -1
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %0, align 4
  %and.i13.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i40, label %if.then.i42, label %do.end8.i, !prof !166

if.then.i42:                                      ; preds = %_compound_head.exit.i41
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !165

if.then.i16.i:                                    ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %45, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %46, %if.end.i17.i ]
  %47 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %47, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #11, !srcloc !205
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i41
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !165

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %45, -1
  br label %PageUnevictable.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %page to i32
  br label %PageUnevictable.exit

PageUnevictable.exit:                             ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %48, %if.end.i24.i ]
  %49 = inttoptr i32 %retval.0.i25.i to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %52 = and i32 %51, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool6.not = icmp eq i32 %52, 0
  br i1 %tobool6.not, label %if.then, label %PageUnevictable.exit.if.end_crit_edge

PageUnevictable.exit.if.end_crit_edge:            ; preds = %PageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %PageUnevictable.exit
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %0, align 4
  %and.i.i141 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i141)
  %tobool.not.i142 = icmp eq i32 %and.i.i141, 0
  br i1 %tobool.not.i142, label %thp_nr_pages.exit, label %if.then.i143, !prof !165

if.then.i143:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #11, !srcloc !203
  unreachable

thp_nr_pages.exit:                                ; preds = %if.then
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %0, align 4
  %and.i.i45 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.not.i.i46, label %if.end.i.i48, label %if.then.i.i47, !prof !165

if.then.i.i47:                                    ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i1.i = add i32 %56, -1
  br label %_compound_head.exit.i50

if.end.i.i48:                                     ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i50

_compound_head.exit.i50:                          ; preds = %if.end.i.i48, %if.then.i.i47
  %retval.0.i.i49 = phi i32 [ %sub.i1.i, %if.then.i.i47 ], [ %57, %if.end.i.i48 ]
  %58 = inttoptr i32 %retval.0.i.i49 to ptr
  %lru.i.i = getelementptr inbounds %struct.anon, ptr %58, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %_compound_head.exit.i50.list_del.exit.i.i_crit_edge

_compound_head.exit.i50.list_del.exit.i.i_crit_edge: ; preds = %_compound_head.exit.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %_compound_head.exit.i50
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.anon, ptr %58, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i.i, align 4
  %61 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lru.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %_compound_head.exit.i50.list_del.exit.i.i_crit_edge
  %65 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon, ptr %58, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %67 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_active.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i:                                ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i:                     ; preds = %list_del.exit.i.i
  %68 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %58, align 4
  %70 = and i32 %69, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.not.i.i.i = icmp eq i32 %70, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge, label %land.rhs.i.i.i

folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

land.rhs.i.i.i:                                   ; preds = %folio_test_active.exit.i.i.i
  %71 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i23.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i)
  %tobool.not.i.i24.i.i.i = icmp eq i32 %and.i.i.i23.i.i.i, 0
  br i1 %tobool.not.i.i24.i.i.i, label %folio_test_unevictable.exit.i.i.i, label %if.then.i.i25.i.i.i, !prof !165

if.then.i.i25.i.i.i:                              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i:                ; preds = %land.rhs.i.i.i
  %73 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %58, align 4
  %75 = and i32 %74, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.i26.not.i.i.i = icmp eq i32 %75, 0
  br i1 %tobool.i26.not.i.i.i, label %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i51, !prof !165

folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

if.then.i.i.i51:                                  ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge
  %76 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i27.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i)
  %tobool.not.i.i28.i.i.i = icmp eq i32 %and.i.i.i27.i.i.i, 0
  br i1 %tobool.not.i.i28.i.i.i, label %folio_test_unevictable.exit31.i.i.i, label %if.then.i.i29.i.i.i, !prof !165

if.then.i.i29.i.i.i:                              ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i:              ; preds = %do.end8.i.i.i
  %78 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %58, align 4
  %80 = and i32 %79, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.i30.not.i.i.i = icmp eq i32 %80, 0
  br i1 %tobool.i30.not.i.i.i, label %if.end11.i.i.i, label %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge

folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i

if.end11.i.i.i:                                   ; preds = %folio_test_unevictable.exit31.i.i.i
  %81 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_is_file_lru.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i.i:                              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i:                     ; preds = %if.end11.i.i.i
  %83 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %58, align 4
  %85 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i32.i.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i)
  %tobool.not.i.i33.i.i.i = icmp eq i32 %and.i.i.i32.i.i.i, 0
  br i1 %tobool.not.i.i33.i.i.i, label %folio_test_active.exit36.i.i.i, label %if.then.i.i34.i.i.i, !prof !165

if.then.i.i34.i.i.i:                              ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i:                   ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = lshr i32 %84, 18
  %88 = and i32 %87, 2
  %89 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %58, align 4
  %91 = lshr i32 %90, 5
  %92 = and i32 %91, 1
  %93 = or i32 %92, %88
  %94 = xor i32 %93, 2
  br label %folio_lru_list.exit.i.i

folio_lru_list.exit.i.i:                          ; preds = %folio_test_active.exit36.i.i.i, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %94, %folio_test_active.exit36.i.i.i ], [ 4, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge ]
  %95 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %96, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i6.i.i, label %PageHead.exit.i.i.i.i, !prof !166

if.then.i.i.i6.i.i:                               ; preds = %folio_lru_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %folio_lru_list.exit.i.i
  %97 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %58, align 4
  %99 = and i32 %98, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i.i.i.i52 = icmp eq i32 %99, 0
  br i1 %tobool.not.i.i.i.i52, label %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge, label %if.end.i.i7.i.i

PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %del_page_from_lru_list.exit

if.end.i.i7.i.i:                                  ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %58, i32 1, i32 1, i32 0, i32 2
  %100 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.end.i.i7.i.i, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %101, %if.end.i.i7.i.i ], [ 1, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge ]
  %shr.i.i.i.i = lshr i32 %79, 30
  %sub.i.i53 = sub i32 0, %retval.0.i.i.i.i
  %pgdat.i.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec, i32 0, i32 7
  %102 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pgdat.i.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i, i32 noundef %sub.i.i53) #11
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr %103, i32 0, i32 %shr.i.i.i.i
  %add1.i.i.i = add nsw i32 %retval.0.i.i.i, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef %add1.i.i.i, i32 noundef %sub.i.i53) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i, i32 noundef %shr.i.i.i.i, i32 noundef %sub.i.i53) #11
  %104 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %0, align 4
  %and.i.i54 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool.not.i.i55 = icmp eq i32 %and.i.i54, 0
  br i1 %tobool.not.i.i55, label %if.end.i.i58, label %if.then.i.i57, !prof !165

if.then.i.i57:                                    ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i56 = add i32 %105, -1
  br label %_compound_head.exit.i61

if.end.i.i58:                                     ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i61

_compound_head.exit.i61:                          ; preds = %if.end.i.i58, %if.then.i.i57
  %retval.0.i.i59 = phi i32 [ %sub.i.i56, %if.then.i.i57 ], [ %106, %if.end.i.i58 ]
  %107 = inttoptr i32 %retval.0.i.i59 to ptr
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp.i.not.i60 = icmp eq i32 %109, -1
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %0, align 4
  %and.i12.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i60, label %if.then.i62, label %do.end8.i63, !prof !166

if.then.i62:                                      ; preds = %_compound_head.exit.i61
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !165

if.then.i15.i:                                    ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i14.i = add i32 %111, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %112, %if.end.i16.i ]
  %113 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %113, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #11, !srcloc !206
  unreachable

do.end8.i63:                                      ; preds = %_compound_head.exit.i61
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !165

if.then.i22.i:                                    ; preds = %do.end8.i63
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i21.i = add i32 %111, -1
  br label %ClearPageActive.exit

if.end.i23.i:                                     ; preds = %do.end8.i63
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %page to i32
  br label %ClearPageActive.exit

ClearPageActive.exit:                             ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %114, %if.end.i23.i ]
  %115 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %115) #11
  %116 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %0, align 4
  %and.i.i64 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %tobool.not.i.i65, label %if.end.i.i68, label %if.then.i.i67, !prof !165

if.then.i.i67:                                    ; preds = %ClearPageActive.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i66 = add i32 %117, -1
  br label %_compound_head.exit.i73

if.end.i.i68:                                     ; preds = %ClearPageActive.exit
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i73

_compound_head.exit.i73:                          ; preds = %if.end.i.i68, %if.then.i.i67
  %retval.0.i.i69 = phi i32 [ %sub.i.i66, %if.then.i.i67 ], [ %118, %if.end.i.i68 ]
  %119 = inttoptr i32 %retval.0.i.i69 to ptr
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %121)
  %cmp.i.not.i70 = icmp eq i32 %121, -1
  %122 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %0, align 4
  %and.i12.i71 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i71)
  %tobool.not.i13.i72 = icmp eq i32 %and.i12.i71, 0
  br i1 %cmp.i.not.i70, label %if.then.i74, label %do.end8.i80, !prof !166

if.then.i74:                                      ; preds = %_compound_head.exit.i73
  br i1 %tobool.not.i13.i72, label %if.end.i16.i77, label %if.then.i15.i76, !prof !165

if.then.i15.i76:                                  ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i14.i75 = add i32 %123, -1
  br label %_compound_head.exit18.i79

if.end.i16.i77:                                   ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i79

_compound_head.exit18.i79:                        ; preds = %if.end.i16.i77, %if.then.i15.i76
  %retval.0.i17.i78 = phi i32 [ %sub.i14.i75, %if.then.i15.i76 ], [ %124, %if.end.i16.i77 ]
  %125 = inttoptr i32 %retval.0.i17.i78 to ptr
  tail call void @dump_page(ptr noundef %125, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #11, !srcloc !207
  unreachable

do.end8.i80:                                      ; preds = %_compound_head.exit.i73
  br i1 %tobool.not.i13.i72, label %if.end.i23.i83, label %if.then.i22.i82, !prof !165

if.then.i22.i82:                                  ; preds = %do.end8.i80
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i21.i81 = add i32 %123, -1
  br label %ClearPageReferenced.exit

if.end.i23.i83:                                   ; preds = %do.end8.i80
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %page to i32
  br label %ClearPageReferenced.exit

ClearPageReferenced.exit:                         ; preds = %if.end.i23.i83, %if.then.i22.i82
  %retval.0.i24.i84 = phi i32 [ %sub.i21.i81, %if.then.i22.i82 ], [ %126, %if.end.i23.i83 ]
  %127 = inttoptr i32 %retval.0.i24.i84 to ptr
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %127) #11
  %128 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %0, align 4
  %and.i.i85 = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i85)
  %tobool.not.i = icmp eq i32 %and.i.i85, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i86, !prof !165

if.then.i86:                                      ; preds = %ClearPageReferenced.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.51) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #11, !srcloc !213
  unreachable

do.body7.i:                                       ; preds = %ClearPageReferenced.exit
  %130 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %0, align 4
  %and.i31.i = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i87 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i87, label %if.end.i.i90, label %if.then.i.i89, !prof !165

if.then.i.i89:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i88 = add i32 %131, -1
  br label %_compound_head.exit.i93

if.end.i.i90:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i93

_compound_head.exit.i93:                          ; preds = %if.end.i.i90, %if.then.i.i89
  %retval.0.i.i91 = phi i32 [ %sub.i.i88, %if.then.i.i89 ], [ %132, %if.end.i.i90 ]
  %133 = inttoptr i32 %retval.0.i.i91 to ptr
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %cmp.i.not.i92 = icmp eq i32 %135, -1
  %136 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %0, align 4
  %and.i32.i = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i92, label %if.then17.i, label %do.end24.i, !prof !166

if.then17.i:                                      ; preds = %_compound_head.exit.i93
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !165

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i34.i = add i32 %137, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %138, %if.end.i36.i ]
  %139 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %139, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #11, !srcloc !214
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i93
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !165

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i41.i = add i32 %137, -1
  br label %ClearPageSwapBacked.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %page to i32
  br label %ClearPageSwapBacked.exit

ClearPageSwapBacked.exit:                         ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %140, %if.end.i43.i ]
  %141 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %141) #11
  %142 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %0, align 4
  %and.i.i94 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94)
  %tobool.not.i.i95 = icmp eq i32 %and.i.i94, 0
  br i1 %tobool.not.i.i95, label %if.end.i.i98, label %if.then.i.i97, !prof !165

if.then.i.i97:                                    ; preds = %ClearPageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i96 = add i32 %143, -1
  br label %_compound_head.exit.i102

if.end.i.i98:                                     ; preds = %ClearPageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i102

_compound_head.exit.i102:                         ; preds = %if.end.i.i98, %if.then.i.i97
  %retval.0.i.i99 = phi i32 [ %sub.i.i96, %if.then.i.i97 ], [ %144, %if.end.i.i98 ]
  %145 = inttoptr i32 %retval.0.i.i99 to ptr
  %146 = getelementptr inbounds %struct.page, ptr %145, i32 0, i32 1
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %146, align 4
  %and.i.i.i.i.i.i100 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i100)
  %tobool.not.i.i.i.i.i101 = icmp eq i32 %and.i.i.i.i.i.i100, 0
  br i1 %tobool.not.i.i.i.i.i101, label %folio_test_active.exit.i.i.i105, label %if.then.i.i.i.i.i103, !prof !165

if.then.i.i.i.i.i103:                             ; preds = %_compound_head.exit.i102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %145, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i105:                  ; preds = %_compound_head.exit.i102
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %145, align 4
  %151 = and i32 %150, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.i.not.i.i.i104 = icmp eq i32 %151, 0
  br i1 %tobool.i.not.i.i.i104, label %folio_test_active.exit.i.i.i105.do.end8.i.i.i115_crit_edge, label %land.rhs.i.i.i108

folio_test_active.exit.i.i.i105.do.end8.i.i.i115_crit_edge: ; preds = %folio_test_active.exit.i.i.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i115

land.rhs.i.i.i108:                                ; preds = %folio_test_active.exit.i.i.i105
  %152 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %146, align 4
  %and.i.i.i23.i.i.i106 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i106)
  %tobool.not.i.i24.i.i.i107 = icmp eq i32 %and.i.i.i23.i.i.i106, 0
  br i1 %tobool.not.i.i24.i.i.i107, label %folio_test_unevictable.exit.i.i.i111, label %if.then.i.i25.i.i.i109, !prof !165

if.then.i.i25.i.i.i109:                           ; preds = %land.rhs.i.i.i108
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %145, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i111:             ; preds = %land.rhs.i.i.i108
  %154 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %145, align 4
  %156 = and i32 %155, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.i26.not.i.i.i110 = icmp eq i32 %156, 0
  br i1 %tobool.i26.not.i.i.i110, label %folio_test_unevictable.exit.i.i.i111.do.end8.i.i.i115_crit_edge, label %if.then.i.i.i112, !prof !165

folio_test_unevictable.exit.i.i.i111.do.end8.i.i.i115_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i115

if.then.i.i.i112:                                 ; preds = %folio_test_unevictable.exit.i.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %145, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i115:                                 ; preds = %folio_test_unevictable.exit.i.i.i111.do.end8.i.i.i115_crit_edge, %folio_test_active.exit.i.i.i105.do.end8.i.i.i115_crit_edge
  %157 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %146, align 4
  %and.i.i.i27.i.i.i113 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i113)
  %tobool.not.i.i28.i.i.i114 = icmp eq i32 %and.i.i.i27.i.i.i113, 0
  br i1 %tobool.not.i.i28.i.i.i114, label %folio_test_unevictable.exit31.i.i.i118, label %if.then.i.i29.i.i.i116, !prof !165

if.then.i.i29.i.i.i116:                           ; preds = %do.end8.i.i.i115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %145, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i118:           ; preds = %do.end8.i.i.i115
  %159 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %145, align 4
  %161 = and i32 %160, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.i30.not.i.i.i117 = icmp eq i32 %161, 0
  br i1 %tobool.i30.not.i.i.i117, label %if.end11.i.i.i121, label %folio_test_unevictable.exit31.i.i.i118.folio_lru_list.exit.i.i131_crit_edge

folio_test_unevictable.exit31.i.i.i118.folio_lru_list.exit.i.i131_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i131

if.end11.i.i.i121:                                ; preds = %folio_test_unevictable.exit31.i.i.i118
  %162 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %146, align 4
  %and.i.i.i.i.i.i.i119 = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i119)
  %tobool.not.i.i.i.i.i.i120 = icmp eq i32 %and.i.i.i.i.i.i.i119, 0
  br i1 %tobool.not.i.i.i.i.i.i120, label %folio_is_file_lru.exit.i.i.i125, label %if.then.i.i.i.i.i.i122, !prof !165

if.then.i.i.i.i.i.i122:                           ; preds = %if.end11.i.i.i121
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %145, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i125:                  ; preds = %if.end11.i.i.i121
  %164 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %145, align 4
  %166 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %146, align 4
  %and.i.i.i32.i.i.i123 = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i123)
  %tobool.not.i.i33.i.i.i124 = icmp eq i32 %and.i.i.i32.i.i.i123, 0
  br i1 %tobool.not.i.i33.i.i.i124, label %folio_test_active.exit36.i.i.i127, label %if.then.i.i34.i.i.i126, !prof !165

if.then.i.i34.i.i.i126:                           ; preds = %folio_is_file_lru.exit.i.i.i125
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %145, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i127:                ; preds = %folio_is_file_lru.exit.i.i.i125
  call void @__sanitizer_cov_trace_pc() #13
  %168 = lshr i32 %165, 18
  %169 = and i32 %168, 2
  %170 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %145, align 4
  %172 = lshr i32 %171, 5
  %173 = and i32 %172, 1
  %174 = or i32 %173, %169
  %175 = xor i32 %174, 2
  br label %folio_lru_list.exit.i.i131

folio_lru_list.exit.i.i131:                       ; preds = %folio_test_active.exit36.i.i.i127, %folio_test_unevictable.exit31.i.i.i118.folio_lru_list.exit.i.i131_crit_edge
  %retval.0.i.i.i128 = phi i32 [ %175, %folio_test_active.exit36.i.i.i127 ], [ 4, %folio_test_unevictable.exit31.i.i.i118.folio_lru_list.exit.i.i131_crit_edge ]
  %shr.i.i.i.i129 = lshr i32 %160, 30
  %176 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %177)
  %cmp.i.not.i.i.i.i.i130 = icmp eq i32 %177, -1
  br i1 %cmp.i.not.i.i.i.i.i130, label %if.then.i.i.i9.i.i, label %PageHead.exit.i.i.i.i133, !prof !166

if.then.i.i.i9.i.i:                               ; preds = %folio_lru_list.exit.i.i131
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %145, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i133:                         ; preds = %folio_lru_list.exit.i.i131
  %178 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %145, align 4
  %180 = and i32 %179, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.i.i.i.i132 = icmp eq i32 %180, 0
  br i1 %tobool.not.i.i.i.i132, label %PageHead.exit.i.i.i.i133.folio_nr_pages.exit.i.i_crit_edge, label %if.end.i.i.i.i135

PageHead.exit.i.i.i.i133.folio_nr_pages.exit.i.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit.i.i

if.end.i.i.i.i135:                                ; preds = %PageHead.exit.i.i.i.i133
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i134 = getelementptr %struct.page, ptr %145, i32 1, i32 1, i32 0, i32 2
  %181 = ptrtoint ptr %compound_nr.i.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %compound_nr.i.i.i.i134, align 4
  br label %folio_nr_pages.exit.i.i

folio_nr_pages.exit.i.i:                          ; preds = %if.end.i.i.i.i135, %PageHead.exit.i.i.i.i133.folio_nr_pages.exit.i.i_crit_edge
  %retval.0.i.i.i.i136 = phi i32 [ %182, %if.end.i.i.i.i135 ], [ 1, %PageHead.exit.i.i.i.i133.folio_nr_pages.exit.i.i_crit_edge ]
  %183 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pgdat.i.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i128, i32 noundef %retval.0.i.i.i.i136) #11
  %arrayidx.i.i.i138 = getelementptr [4 x %struct.zone], ptr %184, i32 0, i32 %shr.i.i.i.i129
  %add1.i.i.i139 = add nsw i32 %retval.0.i.i.i128, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i138, i32 noundef %add1.i.i.i139, i32 noundef %retval.0.i.i.i.i136) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i.i128, i32 noundef %shr.i.i.i.i129, i32 noundef %retval.0.i.i.i.i136) #11
  %arrayidx.i.i = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 %retval.0.i.i.i128
  %185 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i.i140 = tail call zeroext i1 @__list_add_valid(ptr noundef %146, ptr noundef %arrayidx.i.i, ptr noundef %186) #11
  br i1 %call.i.i.i.i140, label %if.end.i.i10.i.i, label %folio_nr_pages.exit.i.i.add_page_to_lru_list.exit_crit_edge

folio_nr_pages.exit.i.i.add_page_to_lru_list.exit_crit_edge: ; preds = %folio_nr_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_page_to_lru_list.exit

if.end.i.i10.i.i:                                 ; preds = %folio_nr_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %146, ptr %prev1.i.i.i.i, align 4
  %188 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %186, ptr %146, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.anon, ptr %145, i32 0, i32 1, i32 1
  %189 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %arrayidx.i.i, ptr %prev3.i.i.i.i, align 4
  %190 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %146, ptr %arrayidx.i.i, align 4
  br label %add_page_to_lru_list.exit

add_page_to_lru_list.exit:                        ; preds = %if.end.i.i10.i.i, %folio_nr_pages.exit.i.i.add_page_to_lru_list.exit_crit_edge
  %191 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i144 = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i144 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %194
  %195 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %196, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 19) to i32)
  %197 = inttoptr i32 %add.i to ptr
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %197, align 4
  %add8.i = add i32 %199, 1
  store i32 %add8.i, ptr %197, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@lru_lazyfree_fn, %lruvec_memcg.exit)) #11
          to label %if.end.i [label %lruvec_memcg.exit], !srcloc !170

if.end.i:                                         ; preds = %add_page_to_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %memcg.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec, i32 0, i32 9
  %200 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %memcg.i, align 4
  br label %lruvec_memcg.exit

lruvec_memcg.exit:                                ; preds = %if.end.i, %add_page_to_lru_list.exit
  %retval.0.i = phi ptr [ %201, %if.end.i ], [ null, %add_page_to_lru_list.exit ]
  tail call void @__count_memcg_events(ptr noundef %retval.0.i, i32 noundef 19, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %lruvec_memcg.exit, %PageUnevictable.exit.if.end_crit_edge, %PageSwapCache.exit.if.end_crit_edge, %PageSwapBacked.exit.if.end_crit_edge, %PageAnon.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @deactivate_file_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %and.i13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !165

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %8, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %9, %if.end.i17.i ]
  %10 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #11, !srcloc !205
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !165

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %8, -1
  br label %PageUnevictable.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %page to i32
  br label %PageUnevictable.exit

PageUnevictable.exit:                             ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %11, %if.end.i24.i ]
  %12 = inttoptr i32 %retval.0.i25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end, label %PageUnevictable.exit.if.end44_crit_edge

PageUnevictable.exit.if.end44_crit_edge:          ; preds = %PageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end:                                           ; preds = %PageUnevictable.exit
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !215
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %_refcount.i.i) #11, !srcloc !216
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end.atomic_add_unless.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i

if.end.atomic_add_unless.exit.i.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %atomic_add_unless.exit.i.i

do.end11.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !217
  br label %atomic_add_unless.exit.i.i

atomic_add_unless.exit.i.i:                       ; preds = %do.end11.i.i.i.i.i, %if.end.atomic_add_unless.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_unless, i32 0, i32 1), ptr blockaddress(@deactivate_file_page, %if.then.i.i50)) #11
          to label %get_page_unless_zero.exit [label %if.then.i.i50], !srcloc !170

if.then.i.i50:                                    ; preds = %atomic_add_unless.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i1 %cmp.i.i.i.i to i32
  tail call void @__page_ref_mod_unless(ptr noundef %page, i32 noundef 1, i32 noundef %conv.i.i) #11
  br label %get_page_unless_zero.exit

get_page_unless_zero.exit:                        ; preds = %if.then.i.i50, %atomic_add_unless.exit.i.i
  br i1 %cmp.i.i.i.i, label %if.then4, label %get_page_unless_zero.exit.if.end44_crit_edge, !prof !165

get_page_unless_zero.exit.if.end44_crit_edge:     ; preds = %get_page_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then4:                                         ; preds = %get_page_unless_zero.exit
  %17 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %20, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !218
  %21 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %add = add i32 %26, ptrtoint (ptr @lru_pvecs to i32)
  %27 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %27)
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %arrayidx22 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %31, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 2) to i32)
  %32 = inttoptr i32 %add23 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %inc.i.i = add i8 %34, 1
  store i8 %inc.i.i, ptr %32, align 4
  %idxprom.i.i = zext i8 %34 to i32
  %arrayidx.i.i = getelementptr %struct.pagevec, ptr %32, i32 0, i32 2, i32 %idxprom.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %page, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc.i.i)
  %tobool.not.i = icmp eq i8 %inc.i.i, 15
  br i1 %tobool.not.i, label %if.then4.if.then25_crit_edge, label %lor.lhs.false.i

if.then4.if.then25_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false.i:                                  ; preds = %if.then4
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page, align 4
  %38 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i51 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i51, label %PageCompound.exit.i, label %lor.lhs.false.i.if.then25_crit_edge

lor.lhs.false.i.if.then25_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

PageCompound.exit.i:                              ; preds = %lor.lhs.false.i
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %0, align 4
  %and.i.i.i52 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i52)
  %tobool2.not.i = icmp eq i32 %and.i.i.i52, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %PageCompound.exit.i.if.then25_crit_edge

PageCompound.exit.i.if.then25_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false3.i:                                 ; preds = %PageCompound.exit.i
  %call.i.i.i.i53 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lru_disable_count, i32 noundef 4) #11
  %41 = load volatile i32, ptr @lru_disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false3.i.do.body28_crit_edge, label %lor.lhs.false3.i.if.then25_crit_edge

lor.lhs.false3.i.if.then25_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false3.i.do.body28_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

if.then25:                                        ; preds = %lor.lhs.false3.i.if.then25_crit_edge, %PageCompound.exit.i.if.then25_crit_edge, %lor.lhs.false.i.if.then25_crit_edge, %if.then4.if.then25_crit_edge
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %32, ptr noundef nonnull @lru_deactivate_file_fn)
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %lor.lhs.false3.i.do.body28_crit_edge
  %42 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu, align 4
  %arrayidx37 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %45, ptrtoint (ptr @lru_pvecs to i32)
  %46 = inttoptr i32 %add38 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %46)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !219
  %47 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i48 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i48 to ptr
  %preempt_count.i.i49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i49, align 4
  %sub.i = add i32 %50, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i49, align 4
  br label %if.end44

if.end44:                                         ; preds = %do.body28, %get_page_unless_zero.exit.if.end44_crit_edge, %PageUnevictable.exit.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @deactivate_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %and.i13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !165

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %8, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %9, %if.end.i17.i ]
  %10 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !165

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %8, -1
  br label %PageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %page to i32
  br label %PageLRU.exit

PageLRU.exit:                                     ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %11, %if.end.i24.i ]
  %12 = inttoptr i32 %retval.0.i25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %PageLRU.exit.if.end44_crit_edge, label %land.lhs.true

PageLRU.exit.if.end44_crit_edge:                  ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

land.lhs.true:                                    ; preds = %PageLRU.exit
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i.i50 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %and.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i54, label %if.then.i.i53, !prof !165

if.then.i.i53:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i52 = add i32 %17, -1
  br label %_compound_head.exit.i59

if.end.i.i54:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i59

_compound_head.exit.i59:                          ; preds = %if.end.i.i54, %if.then.i.i53
  %retval.0.i.i55 = phi i32 [ %sub.i.i52, %if.then.i.i53 ], [ %18, %if.end.i.i54 ]
  %19 = inttoptr i32 %retval.0.i.i55 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i56 = icmp eq i32 %21, -1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %0, align 4
  %and.i13.i57 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i57)
  %tobool.not.i14.i58 = icmp eq i32 %and.i13.i57, 0
  br i1 %cmp.i.not.i56, label %if.then.i60, label %do.end8.i66, !prof !166

if.then.i60:                                      ; preds = %_compound_head.exit.i59
  br i1 %tobool.not.i14.i58, label %if.end.i17.i63, label %if.then.i16.i62, !prof !165

if.then.i16.i62:                                  ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i61 = add i32 %23, -1
  br label %_compound_head.exit19.i65

if.end.i17.i63:                                   ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i65

_compound_head.exit19.i65:                        ; preds = %if.end.i17.i63, %if.then.i16.i62
  %retval.0.i18.i64 = phi i32 [ %sub.i15.i61, %if.then.i16.i62 ], [ %24, %if.end.i17.i63 ]
  %25 = inttoptr i32 %retval.0.i18.i64 to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #11, !srcloc !204
  unreachable

do.end8.i66:                                      ; preds = %_compound_head.exit.i59
  br i1 %tobool.not.i14.i58, label %if.end.i24.i69, label %if.then.i23.i68, !prof !165

if.then.i23.i68:                                  ; preds = %do.end8.i66
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i67 = add i32 %23, -1
  br label %PageActive.exit

if.end.i24.i69:                                   ; preds = %do.end8.i66
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %page to i32
  br label %PageActive.exit

PageActive.exit:                                  ; preds = %if.end.i24.i69, %if.then.i23.i68
  %retval.0.i25.i70 = phi i32 [ %sub.i22.i67, %if.then.i23.i68 ], [ %26, %if.end.i24.i69 ]
  %27 = inttoptr i32 %retval.0.i25.i70 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool2.not = icmp eq i32 %30, 0
  br i1 %tobool2.not, label %PageActive.exit.if.end44_crit_edge, label %land.lhs.true3

PageActive.exit.if.end44_crit_edge:               ; preds = %PageActive.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

land.lhs.true3:                                   ; preds = %PageActive.exit
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %0, align 4
  %and.i.i73 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i73)
  %tobool.not.i.i74 = icmp eq i32 %and.i.i73, 0
  br i1 %tobool.not.i.i74, label %if.end.i.i77, label %if.then.i.i76, !prof !165

if.then.i.i76:                                    ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i75 = add i32 %32, -1
  br label %_compound_head.exit.i82

if.end.i.i77:                                     ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i82

_compound_head.exit.i82:                          ; preds = %if.end.i.i77, %if.then.i.i76
  %retval.0.i.i78 = phi i32 [ %sub.i.i75, %if.then.i.i76 ], [ %33, %if.end.i.i77 ]
  %34 = inttoptr i32 %retval.0.i.i78 to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i79 = icmp eq i32 %36, -1
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %0, align 4
  %and.i13.i80 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i80)
  %tobool.not.i14.i81 = icmp eq i32 %and.i13.i80, 0
  br i1 %cmp.i.not.i79, label %if.then.i83, label %do.end8.i89, !prof !166

if.then.i83:                                      ; preds = %_compound_head.exit.i82
  br i1 %tobool.not.i14.i81, label %if.end.i17.i86, label %if.then.i16.i85, !prof !165

if.then.i16.i85:                                  ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i84 = add i32 %38, -1
  br label %_compound_head.exit19.i88

if.end.i17.i86:                                   ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i88

_compound_head.exit19.i88:                        ; preds = %if.end.i17.i86, %if.then.i16.i85
  %retval.0.i18.i87 = phi i32 [ %sub.i15.i84, %if.then.i16.i85 ], [ %39, %if.end.i17.i86 ]
  %40 = inttoptr i32 %retval.0.i18.i87 to ptr
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #11, !srcloc !205
  unreachable

do.end8.i89:                                      ; preds = %_compound_head.exit.i82
  br i1 %tobool.not.i14.i81, label %if.end.i24.i92, label %if.then.i23.i91, !prof !165

if.then.i23.i91:                                  ; preds = %do.end8.i89
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i90 = add i32 %38, -1
  br label %PageUnevictable.exit

if.end.i24.i92:                                   ; preds = %do.end8.i89
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %page to i32
  br label %PageUnevictable.exit

PageUnevictable.exit:                             ; preds = %if.end.i24.i92, %if.then.i23.i91
  %retval.0.i25.i93 = phi i32 [ %sub.i22.i90, %if.then.i23.i91 ], [ %41, %if.end.i24.i92 ]
  %42 = inttoptr i32 %retval.0.i25.i93 to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool5.not = icmp eq i32 %45, 0
  br i1 %tobool5.not, label %if.then, label %PageUnevictable.exit.if.end44_crit_edge

PageUnevictable.exit.if.end44_crit_edge:          ; preds = %PageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then:                                          ; preds = %PageUnevictable.exit
  %46 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %49, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !220
  %50 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %add = add i32 %55, ptrtoint (ptr @lru_pvecs to i32)
  %56 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %56)
  %57 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu, align 4
  %arrayidx23 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %60, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 3) to i32)
  %61 = inttoptr i32 %add24 to ptr
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %0, align 4
  %and.i.i98 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %and.i.i98, 0
  br i1 %tobool.not.i.i99, label %if.end.i.i102, label %if.then.i.i101, !prof !165

if.then.i.i101:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i100 = add i32 %63, -1
  br label %_compound_head.exit.i104

if.end.i.i102:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i104

_compound_head.exit.i104:                         ; preds = %if.end.i.i102, %if.then.i.i101
  %retval.0.i.i103 = phi i32 [ %sub.i.i100, %if.then.i.i101 ], [ %64, %if.end.i.i102 ]
  %65 = inttoptr i32 %retval.0.i.i103 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %66 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %67, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !166

if.then.i1.i:                                     ; preds = %_compound_head.exit.i104
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %65, ptr noundef nonnull @.str.32) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !179
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i104
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@deactivate_page, %if.then.i.i.i.i)) #11
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !170

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %65, i32 noundef 1) #11
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %69 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %61, align 4
  %inc.i.i = add i8 %70, 1
  store i8 %inc.i.i, ptr %61, align 4
  %idxprom.i.i = zext i8 %70 to i32
  %arrayidx.i.i = getelementptr %struct.pagevec, ptr %61, i32 0, i32 2, i32 %idxprom.i.i
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %page, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc.i.i)
  %tobool.not.i = icmp eq i8 %inc.i.i, 15
  br i1 %tobool.not.i, label %get_page.exit.if.then26_crit_edge, label %lor.lhs.false.i

get_page.exit.if.then26_crit_edge:                ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false.i:                                  ; preds = %get_page.exit
  %72 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %page, align 4
  %74 = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i105 = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i105, label %PageCompound.exit.i, label %lor.lhs.false.i.if.then26_crit_edge

lor.lhs.false.i.if.then26_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

PageCompound.exit.i:                              ; preds = %lor.lhs.false.i
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %0, align 4
  %and.i.i.i106 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i106)
  %tobool2.not.i = icmp eq i32 %and.i.i.i106, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %PageCompound.exit.i.if.then26_crit_edge

PageCompound.exit.i.if.then26_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false3.i:                                 ; preds = %PageCompound.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lru_disable_count, i32 noundef 4) #11
  %77 = load volatile i32, ptr @lru_disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not.i = icmp eq i32 %77, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false3.i.do.body28_crit_edge, label %lor.lhs.false3.i.if.then26_crit_edge

lor.lhs.false3.i.if.then26_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false3.i.do.body28_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

if.then26:                                        ; preds = %lor.lhs.false3.i.if.then26_crit_edge, %PageCompound.exit.i.if.then26_crit_edge, %lor.lhs.false.i.if.then26_crit_edge, %get_page.exit.if.then26_crit_edge
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %61, ptr noundef nonnull @lru_deactivate_fn)
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %lor.lhs.false3.i.do.body28_crit_edge
  %78 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu, align 4
  %arrayidx37 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx37, align 4
  %add38 = add i32 %81, ptrtoint (ptr @lru_pvecs to i32)
  %82 = inttoptr i32 %add38 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %82)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !221
  %83 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i96 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i96 to ptr
  %preempt_count.i.i97 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i97 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i97, align 4
  %sub.i = add i32 %86, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i97, align 4
  br label %if.end44

if.end44:                                         ; preds = %do.body28, %PageUnevictable.exit.if.end44_crit_edge, %PageActive.exit.if.end44_crit_edge, %PageLRU.exit.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mark_page_lazyfree(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %and.i13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !165

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %8, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %9, %if.end.i17.i ]
  %10 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !165

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %8, -1
  br label %PageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %page to i32
  br label %PageLRU.exit

PageLRU.exit:                                     ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %11, %if.end.i24.i ]
  %12 = inttoptr i32 %retval.0.i25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %PageLRU.exit.if.end48_crit_edge, label %land.lhs.true

PageLRU.exit.if.end48_crit_edge:                  ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true:                                    ; preds = %PageLRU.exit
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i56 = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i56, label %if.end.i.i59, label %if.then.i.i58, !prof !165

if.then.i.i58:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i57 = add i32 %17, -1
  br label %PageAnon.exit

if.end.i.i59:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i59, %if.then.i.i58
  %retval.0.i.i60 = phi i32 [ %sub.i.i57, %if.then.i.i58 ], [ %18, %if.end.i.i59 ]
  %19 = inttoptr i32 %retval.0.i.i60 to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mapping.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %and.i.i61 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %cmp.i.i.not = icmp eq i32 %and.i.i61, 0
  br i1 %cmp.i.i.not, label %PageAnon.exit.if.end48_crit_edge, label %land.lhs.true2

PageAnon.exit.if.end48_crit_edge:                 ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true2:                                   ; preds = %PageAnon.exit
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %0, align 4
  %and.i.i63 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i63)
  %tobool.not.i.i64 = icmp eq i32 %and.i.i63, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i67, label %if.then.i.i66, !prof !165

if.then.i.i66:                                    ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i65 = add i32 %24, -1
  br label %_compound_head.exit.i70

if.end.i.i67:                                     ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i70

_compound_head.exit.i70:                          ; preds = %if.end.i.i67, %if.then.i.i66
  %retval.0.i.i68 = phi i32 [ %sub.i.i65, %if.then.i.i66 ], [ %25, %if.end.i.i67 ]
  %26 = inttoptr i32 %retval.0.i.i68 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.not.i69 = icmp eq i32 %28, -1
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i69, label %if.then.i71, label %do.end10.i, !prof !166

if.then.i71:                                      ; preds = %_compound_head.exit.i70
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !165

if.then.i19.i:                                    ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %30, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %31, %if.end.i20.i ]
  %32 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #11, !srcloc !212
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i70
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !165

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %30, -1
  br label %PageSwapBacked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %page to i32
  br label %PageSwapBacked.exit

PageSwapBacked.exit:                              ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %33, %if.end.i27.i ]
  %34 = inttoptr i32 %retval.0.i28.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not = icmp eq i32 %37, 0
  br i1 %tobool4.not, label %PageSwapBacked.exit.if.end48_crit_edge, label %land.lhs.true5

PageSwapBacked.exit.if.end48_crit_edge:           ; preds = %PageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

land.lhs.true5:                                   ; preds = %PageSwapBacked.exit
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %0, align 4
  %and.i.i74 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74)
  %tobool.not.i.i75 = icmp eq i32 %and.i.i74, 0
  br i1 %tobool.not.i.i75, label %if.end.i.i78, label %if.then.i.i77, !prof !165

if.then.i.i77:                                    ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i76 = add i32 %39, -1
  br label %_compound_head.exit.i80

if.end.i.i78:                                     ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i80

_compound_head.exit.i80:                          ; preds = %if.end.i.i78, %if.then.i.i77
  %retval.0.i.i79 = phi i32 [ %sub.i.i76, %if.then.i.i77 ], [ %40, %if.end.i.i78 ]
  %41 = inttoptr i32 %retval.0.i.i79 to ptr
  %42 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !165

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i80
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %41, align 4
  %47 = and i32 %46, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.land.lhs.true7_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.land.lhs.true7_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true7

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %42, align 4
  %and.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !165

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %41, align 4
  %52 = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.i.i.not = icmp eq i32 %52, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.land.lhs.true7_crit_edge, label %PageSwapCache.exit.if.end48_crit_edge

PageSwapCache.exit.if.end48_crit_edge:            ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

PageSwapCache.exit.land.lhs.true7_crit_edge:      ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true7

land.lhs.true7:                                   ; preds = %PageSwapCache.exit.land.lhs.true7_crit_edge, %folio_test_swapbacked.exit.i.i.land.lhs.true7_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %0, align 4
  %and.i.i81 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i82, label %if.end.i.i85, label %if.then.i.i84, !prof !165

if.then.i.i84:                                    ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i83 = add i32 %54, -1
  br label %_compound_head.exit.i90

if.end.i.i85:                                     ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i90

_compound_head.exit.i90:                          ; preds = %if.end.i.i85, %if.then.i.i84
  %retval.0.i.i86 = phi i32 [ %sub.i.i83, %if.then.i.i84 ], [ %55, %if.end.i.i85 ]
  %56 = inttoptr i32 %retval.0.i.i86 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i.not.i87 = icmp eq i32 %58, -1
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %0, align 4
  %and.i13.i88 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i88)
  %tobool.not.i14.i89 = icmp eq i32 %and.i13.i88, 0
  br i1 %cmp.i.not.i87, label %if.then.i91, label %do.end8.i97, !prof !166

if.then.i91:                                      ; preds = %_compound_head.exit.i90
  br i1 %tobool.not.i14.i89, label %if.end.i17.i94, label %if.then.i16.i93, !prof !165

if.then.i16.i93:                                  ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i92 = add i32 %60, -1
  br label %_compound_head.exit19.i96

if.end.i17.i94:                                   ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i96

_compound_head.exit19.i96:                        ; preds = %if.end.i17.i94, %if.then.i16.i93
  %retval.0.i18.i95 = phi i32 [ %sub.i15.i92, %if.then.i16.i93 ], [ %61, %if.end.i17.i94 ]
  %62 = inttoptr i32 %retval.0.i18.i95 to ptr
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #11, !srcloc !205
  unreachable

do.end8.i97:                                      ; preds = %_compound_head.exit.i90
  br i1 %tobool.not.i14.i89, label %if.end.i24.i100, label %if.then.i23.i99, !prof !165

if.then.i23.i99:                                  ; preds = %do.end8.i97
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i98 = add i32 %60, -1
  br label %PageUnevictable.exit

if.end.i24.i100:                                  ; preds = %do.end8.i97
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %page to i32
  br label %PageUnevictable.exit

PageUnevictable.exit:                             ; preds = %if.end.i24.i100, %if.then.i23.i99
  %retval.0.i25.i101 = phi i32 [ %sub.i22.i98, %if.then.i23.i99 ], [ %63, %if.end.i24.i100 ]
  %64 = inttoptr i32 %retval.0.i25.i101 to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %67 = and i32 %66, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool9.not = icmp eq i32 %67, 0
  br i1 %tobool9.not, label %if.then, label %PageUnevictable.exit.if.end48_crit_edge

PageUnevictable.exit.if.end48_crit_edge:          ; preds = %PageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then:                                          ; preds = %PageUnevictable.exit
  %68 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %71, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !222
  %72 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx, align 4
  %add = add i32 %77, ptrtoint (ptr @lru_pvecs to i32)
  %78 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %78)
  %79 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %82, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 4) to i32)
  %83 = inttoptr i32 %add28 to ptr
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %0, align 4
  %and.i.i106 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i106)
  %tobool.not.i.i107 = icmp eq i32 %and.i.i106, 0
  br i1 %tobool.not.i.i107, label %if.end.i.i110, label %if.then.i.i109, !prof !165

if.then.i.i109:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i108 = add i32 %85, -1
  br label %_compound_head.exit.i113

if.end.i.i110:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i113

_compound_head.exit.i113:                         ; preds = %if.end.i.i110, %if.then.i.i109
  %retval.0.i.i111 = phi i32 [ %sub.i.i108, %if.then.i.i109 ], [ %86, %if.end.i.i110 ]
  %87 = inttoptr i32 %retval.0.i.i111 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %88 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %89, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i112 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i112, label %if.then.i1.i, label %do.end5.i.i, !prof !166

if.then.i1.i:                                     ; preds = %_compound_head.exit.i113
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.32) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !179
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i113
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mark_page_lazyfree, %if.then.i.i.i.i114)) #11
          to label %get_page.exit [label %if.then.i.i.i.i114], !srcloc !170

if.then.i.i.i.i114:                               ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %87, i32 noundef 1) #11
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i114, %do.end5.i.i
  %91 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %83, align 4
  %inc.i.i = add i8 %92, 1
  store i8 %inc.i.i, ptr %83, align 4
  %idxprom.i.i = zext i8 %92 to i32
  %arrayidx.i.i = getelementptr %struct.pagevec, ptr %83, i32 0, i32 2, i32 %idxprom.i.i
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %page, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc.i.i)
  %tobool.not.i = icmp eq i8 %inc.i.i, 15
  br i1 %tobool.not.i, label %get_page.exit.if.then30_crit_edge, label %lor.lhs.false.i

get_page.exit.if.then30_crit_edge:                ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false.i:                                  ; preds = %get_page.exit
  %94 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %page, align 4
  %96 = and i32 %95, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i.i115 = icmp eq i32 %96, 0
  br i1 %tobool.not.i.i115, label %PageCompound.exit.i, label %lor.lhs.false.i.if.then30_crit_edge

lor.lhs.false.i.if.then30_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

PageCompound.exit.i:                              ; preds = %lor.lhs.false.i
  %97 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %0, align 4
  %and.i.i.i116 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i116)
  %tobool2.not.i = icmp eq i32 %and.i.i.i116, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %PageCompound.exit.i.if.then30_crit_edge

PageCompound.exit.i.if.then30_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false3.i:                                 ; preds = %PageCompound.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @lru_disable_count, i32 noundef 4) #11
  %99 = load volatile i32, ptr @lru_disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.i.not.i = icmp eq i32 %99, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false3.i.do.body32_crit_edge, label %lor.lhs.false3.i.if.then30_crit_edge

lor.lhs.false3.i.if.then30_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

lor.lhs.false3.i.do.body32_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

if.then30:                                        ; preds = %lor.lhs.false3.i.if.then30_crit_edge, %PageCompound.exit.i.if.then30_crit_edge, %lor.lhs.false.i.if.then30_crit_edge, %get_page.exit.if.then30_crit_edge
  tail call fastcc void @pagevec_lru_move_fn(ptr noundef %83, ptr noundef nonnull @lru_lazyfree_fn)
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %lor.lhs.false3.i.do.body32_crit_edge
  %100 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu, align 4
  %arrayidx41 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx41, align 4
  %add42 = add i32 %103, ptrtoint (ptr @lru_pvecs to i32)
  %104 = inttoptr i32 %add42 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %104)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !223
  %105 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i104 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i104 to ptr
  %preempt_count.i.i105 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i105 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i105, align 4
  %sub.i = add i32 %108, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i105, align 4
  br label %if.end48

if.end48:                                         ; preds = %do.body32, %PageUnevictable.exit.if.end48_crit_edge, %PageSwapCache.exit.if.end48_crit_edge, %PageSwapBacked.exit.if.end48_crit_edge, %PageAnon.exit.if.end48_crit_edge, %PageLRU.exit.if.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lru_add_drain() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !224
  %4 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @lru_pvecs to i32)
  %10 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %10)
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  tail call void @lru_add_drain_cpu(i32 noundef %12)
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %16, ptrtoint (ptr @lru_pvecs to i32)
  %17 = inttoptr i32 %add18 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %17)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !225
  %18 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i22 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i22 to ptr
  %preempt_count.i.i23 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i23, align 4
  %sub.i = add i32 %21, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lru_add_drain_cpu_zone(ptr noundef %zone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !226
  %4 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @lru_pvecs to i32)
  %10 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %10)
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  tail call void @lru_add_drain_cpu(i32 noundef %12)
  tail call void @drain_local_pages(ptr noundef %zone) #11
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %16, ptrtoint (ptr @lru_pvecs to i32)
  %17 = inttoptr i32 %add18 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %17)
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !227
  %18 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i22 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i22 to ptr
  %preempt_count.i.i23 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i23, align 4
  %sub.i = add i32 %21, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i23, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_local_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__lru_add_drain_all(i1 noundef zeroext %force_all_cpus) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mm_percpu_wq to i32))
  %0 = load ptr, ptr @mm_percpu_wq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %do.end27, !prof !166

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 780, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.end27:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !228
  %1 = load volatile i32, ptr @__lru_add_drain_all.lru_drain_gen, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !229
  tail call void @mutex_lock_nested(ptr noundef nonnull @__lru_add_drain_all.lock, i32 noundef 0) #11
  %2 = load i32, ptr @__lru_add_drain_all.lru_drain_gen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp eq i32 %1, %2
  %3 = or i1 %cmp.not, %force_all_cpus
  br i1 %3, label %do.body53, label %do.end27.done_crit_edge, !prof !165

do.end27.done_crit_edge:                          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body53:                                        ; preds = %do.end27
  %add = add i32 %2, 1
  store volatile i32 %add, ptr @__lru_add_drain_all.lru_drain_gen, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !230
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %4, 31
  %5 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %5, 536870908
  %6 = call ptr @memset(ptr @__lru_add_drain_all.has_work, i32 0, i32 %mul.i.i)
  %call185 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call185, i32 %4)
  %cmp64186 = icmp ult i32 %call185, %4
  br i1 %cmp64186, label %do.body53.for.body_crit_edge, label %do.body53.for.cond144.preheader_crit_edge

do.body53.for.cond144.preheader_crit_edge:        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond144.preheader

do.body53.for.body_crit_edge:                     ; preds = %do.body53
  br label %for.body

for.cond144.preheader:                            ; preds = %if.end143.for.cond144.preheader_crit_edge, %do.body53.for.cond144.preheader_crit_edge
  %call145188 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__lru_add_drain_all.has_work) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call145188, i32 %7)
  %cmp146189 = icmp ult i32 %call145188, %7
  br i1 %cmp146189, label %for.cond144.preheader.do.body148_crit_edge, label %for.cond144.preheader.done_crit_edge

for.cond144.preheader.done_crit_edge:             ; preds = %for.cond144.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

for.cond144.preheader.do.body148_crit_edge:       ; preds = %for.cond144.preheader
  br label %do.body148

for.body:                                         ; preds = %if.end143.for.body_crit_edge, %do.body53.for.body_crit_edge
  %call187 = phi i32 [ %call, %if.end143.for.body_crit_edge ], [ %call185, %do.body53.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call187
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add70 = add i32 %9, ptrtoint (ptr @lru_add_drain_work to i32)
  %10 = inttoptr i32 %add70 to ptr
  br i1 %force_all_cpus, label %for.body.do.body138_crit_edge, label %do.body72

for.body.do.body138_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

do.body72:                                        ; preds = %for.body
  %add80 = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 1) to i32)
  %11 = inttoptr i32 %add80 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool82.not = icmp eq i8 %13, 0
  br i1 %tobool82.not, label %lor.lhs.false83, label %do.body72.do.body138_crit_edge

do.body72.do.body138_crit_edge:                   ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

lor.lhs.false83:                                  ; preds = %do.body72
  %add93 = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.lru_rotate, ptr @lru_rotate, i32 0, i32 1) to i32)
  %14 = inttoptr i32 %add93 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool96.not = icmp eq i8 %16, 0
  br i1 %tobool96.not, label %do.body98, label %lor.lhs.false83.do.body138_crit_edge

lor.lhs.false83.do.body138_crit_edge:             ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

do.body98:                                        ; preds = %lor.lhs.false83
  %add106 = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 2) to i32)
  %17 = inttoptr i32 %add106 to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool108.not = icmp eq i8 %19, 0
  br i1 %tobool108.not, label %do.body110, label %do.body98.do.body138_crit_edge

do.body98.do.body138_crit_edge:                   ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

do.body110:                                       ; preds = %do.body98
  %add118 = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 3) to i32)
  %20 = inttoptr i32 %add118 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool120.not = icmp eq i8 %22, 0
  br i1 %tobool120.not, label %do.body122, label %do.body110.do.body138_crit_edge

do.body110.do.body138_crit_edge:                  ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

do.body122:                                       ; preds = %do.body110
  %add130 = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 4) to i32)
  %23 = inttoptr i32 %add130 to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool132.not = icmp eq i8 %25, 0
  br i1 %tobool132.not, label %lor.lhs.false133, label %do.body122.do.body138_crit_edge

do.body122.do.body138_crit_edge:                  ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

lor.lhs.false133:                                 ; preds = %do.body122
  %add.i = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.lru_pvecs, ptr @lru_pvecs, i32 0, i32 5) to i32)
  %26 = inttoptr i32 %add.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp.i.not = icmp eq i8 %28, 0
  br i1 %cmp.i.not, label %lor.lhs.false135, label %lor.lhs.false133.do.body138_crit_edge

lor.lhs.false133.do.body138_crit_edge:            ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

lor.lhs.false135:                                 ; preds = %lor.lhs.false133
  %call136 = tail call zeroext i1 @has_bh_in_lru(i32 noundef %call187, ptr noundef null) #11
  br i1 %call136, label %lor.lhs.false135.do.body138_crit_edge, label %lor.lhs.false135.if.end143_crit_edge

lor.lhs.false135.if.end143_crit_edge:             ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

lor.lhs.false135.do.body138_crit_edge:            ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body138

do.body138:                                       ; preds = %lor.lhs.false135.do.body138_crit_edge, %lor.lhs.false133.do.body138_crit_edge, %do.body122.do.body138_crit_edge, %do.body110.do.body138_crit_edge, %do.body98.do.body138_crit_edge, %lor.lhs.false83.do.body138_crit_edge, %do.body72.do.body138_crit_edge, %for.body.do.body138_crit_edge
  tail call void @__init_work(ptr noundef %10, i32 noundef 0) #11
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %10, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @__lru_add_drain_all.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry139 = getelementptr inbounds %struct.work_struct, ptr %10, i32 0, i32 1
  %30 = ptrtoint ptr %entry139 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry139, ptr %entry139, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %10, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry139, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %10, i32 0, i32 2
  %32 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @lru_add_drain_per_cpu, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mm_percpu_wq to i32))
  %33 = load ptr, ptr @mm_percpu_wq, align 4
  %call142 = tail call zeroext i1 @queue_work_on(i32 noundef %call187, ptr noundef %33, ptr noundef %10) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %call187)
  %cmp.not.i.i.i = icmp ugt i32 %34, %call187
  br i1 %cmp.not.i.i.i, label %do.body138.__cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

do.body138.__cpumask_set_cpu.exit_crit_edge:      ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %do.body138
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.__cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !165

land.rhs.i.i.i.__cpumask_set_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %__cpumask_set_cpu.exit

__cpumask_set_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.__cpumask_set_cpu.exit_crit_edge, %do.body138.__cpumask_set_cpu.exit_crit_edge
  %rem.i.i = and i32 %call187, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div1.i.i = lshr i32 %call187, 5
  %add.ptr.i.i = getelementptr i32, ptr @__lru_add_drain_all.has_work, i32 %div1.i.i
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %36, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end143

if.end143:                                        ; preds = %__cpumask_set_cpu.exit, %lor.lhs.false135.if.end143_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call187, ptr noundef nonnull @__cpu_online_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %cmp64 = icmp ult i32 %call, %37
  br i1 %cmp64, label %if.end143.for.body_crit_edge, label %if.end143.for.cond144.preheader_crit_edge

if.end143.for.cond144.preheader_crit_edge:        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond144.preheader

if.end143.for.body_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body148:                                       ; preds = %do.body148.do.body148_crit_edge, %for.cond144.preheader.do.body148_crit_edge
  %call145190 = phi i32 [ %call145, %do.body148.do.body148_crit_edge ], [ %call145188, %for.cond144.preheader.do.body148_crit_edge ]
  %arrayidx155 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call145190
  %38 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx155, align 4
  %add156 = add i32 %39, ptrtoint (ptr @lru_add_drain_work to i32)
  %40 = inttoptr i32 %add156 to ptr
  %call157 = tail call zeroext i1 @flush_work(ptr noundef %40) #11
  %call145 = tail call i32 @cpumask_next(i32 noundef %call145190, ptr noundef nonnull @__lru_add_drain_all.has_work) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %cmp146 = icmp ult i32 %call145, %41
  br i1 %cmp146, label %do.body148.do.body148_crit_edge, label %do.body148.done_crit_edge

do.body148.done_crit_edge:                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body148.do.body148_crit_edge:                  ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body148

done:                                             ; preds = %do.body148.done_crit_edge, %for.cond144.preheader.done_crit_edge, %do.end27.done_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @__lru_add_drain_all.lock) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_bh_in_lru(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lru_add_drain_per_cpu(ptr nocapture noundef readnone %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !231
  %4 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @lru_pvecs to i32)
  %10 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %10) #11
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  tail call void @lru_add_drain_cpu(i32 noundef %12) #11
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17.i, align 4
  %add18.i = add i32 %16, ptrtoint (ptr @lru_pvecs to i32)
  %17 = inttoptr i32 %add18.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %17) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !232
  %18 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i22.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i22.i to ptr
  %preempt_count.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i23.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i23.i, align 4
  tail call void @invalidate_bh_lrus_cpu() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lru_add_drain_all() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__lru_add_drain_all(i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lru_cache_disable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @lru_disable_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @lru_disable_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @lru_disable_count, ptr nonnull @lru_disable_count, i32 1, ptr nonnull elementtype(i32) @lru_disable_count) #11, !srcloc !180
  tail call void @__lru_add_drain_all(i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @release_pages(ptr nocapture noundef readonly %pages, i32 noundef %nr) #0 align 64 {
entry:
  %pages_to_free = alloca %struct.list_head, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pages_to_free) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %pages_to_free, i32 0, i32 1
  %1 = ptrtoint ptr %pages_to_free to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pages_to_free, ptr %pages_to_free, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pages_to_free, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp240 = icmp sgt i32 %nr, 0
  br i1 %cmp240, label %entry.for.body_crit_edge, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0243 = phi i32 [ %inc38, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %lock_batch.0242 = phi i32 [ %lock_batch.4, %cleanup.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %lruvec.0241 = phi ptr [ %lruvec.5, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.0243
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i90 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i90, label %if.end.i, label %if.then.i91, !prof !165

if.then.i91:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %8, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i91
  %retval.0.i = phi i32 [ %sub.i, %if.then.i91 ], [ %9, %if.end.i ]
  %10 = inttoptr i32 %retval.0.i to ptr
  %tobool.not = icmp eq ptr %lruvec.0241, null
  br i1 %tobool.not, label %_compound_head.exit.if.end_crit_edge, label %land.lhs.true

_compound_head.exit.if.end_crit_edge:             ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %_compound_head.exit
  %inc = add i32 %lock_batch.0242, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc)
  %cmp1 = icmp eq i32 %inc, 32
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %lru_lock.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0241, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lru_lock.i, i32 noundef %12) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %_compound_head.exit.if.end_crit_edge
  %lruvec.1 = phi ptr [ null, %if.then ], [ %lruvec.0241, %land.lhs.true.if.end_crit_edge ], [ null, %_compound_head.exit.if.end_crit_edge ]
  %lock_batch.1 = phi i32 [ 32, %if.then ], [ %inc, %land.lhs.true.if.end_crit_edge ], [ %lock_batch.0242, %_compound_head.exit.if.end_crit_edge ]
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i92 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i, i32 noundef 4) #11
  %13 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i93, label %do.end5.i, !prof !166

if.then.i93:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.30) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !172
  unreachable

do.end5.i:                                        ; preds = %if.end
  %call.i.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !173
  call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #11
  %16 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i) #11, !srcloc !174
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@release_pages, %if.then.i.i94)) #11
          to label %put_page_testzero.exit [label %if.then.i.i94], !srcloc !170

if.then.i.i94:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i1 %cmp.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i) #11
  br label %put_page_testzero.exit

put_page_testzero.exit:                           ; preds = %if.then.i.i94, %do.end5.i
  br i1 %cmp.i.i.i.i, label %if.end21, label %put_page_testzero.exit.cleanup_crit_edge

put_page_testzero.exit.cleanup_crit_edge:         ; preds = %put_page_testzero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %put_page_testzero.exit
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %10, align 4
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %if.end21.if.then24_crit_edge

if.end21.if.then24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

PageCompound.exit:                                ; preds = %if.end21
  %20 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool23.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool23.not, label %if.end28, label %PageCompound.exit.if.then24_crit_edge

PageCompound.exit.if.then24_crit_edge:            ; preds = %PageCompound.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %PageCompound.exit.if.then24_crit_edge, %if.end21.if.then24_crit_edge
  %tobool25.not = icmp eq ptr %lruvec.1, null
  br i1 %tobool25.not, label %if.then24.if.end27_crit_edge, label %if.then26

if.then24.if.end27_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %lru_lock.i95 = getelementptr inbounds %struct.lruvec, ptr %lruvec.1, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lru_lock.i95, i32 noundef %24) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then24.if.end27_crit_edge
  call fastcc void @__page_cache_release(ptr noundef %10) #11
  %compound_dtor.i.i = getelementptr %struct.page, ptr %10, i32 1, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %compound_dtor.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %compound_dtor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i.i = icmp ugt i8 %26, 1
  br i1 %cmp.i.i, label %if.then.i.i96, label %__put_compound_page.exit, !prof !166

if.then.i.i96:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %27 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.29) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 888, 0\0A.popsection", ""() #11, !srcloc !171
  unreachable

__put_compound_page.exit:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i97 = zext i8 %26 to i32
  %arrayidx9.i.i = getelementptr [2 x ptr], ptr @compound_page_dtors, i32 0, i32 %conv.i.i97
  %28 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx9.i.i, align 4
  call void %29(ptr noundef %10) #11
  br label %cleanup

if.end28:                                         ; preds = %PageCompound.exit
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %20, align 4
  %and.i.i70 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70)
  %tobool.not.i.i = icmp eq i32 %and.i.i70, 0
  br i1 %tobool.not.i.i, label %if.end28._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !165

if.end28._compound_head.exit.i_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %31, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end28._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %10, %if.end28._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %32 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %.pre-phi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i = icmp eq i32 %33, -1
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %20, align 4
  %and.i13.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.then.i._compound_head.exit19.i_crit_edge, label %if.then.i16.i, !prof !165

if.then.i._compound_head.exit19.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit19.i

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %35, -1
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.then.i16.i, %if.then.i._compound_head.exit19.i_crit_edge
  %.pre-phi318.in = phi i32 [ %retval.0.i, %if.then.i._compound_head.exit19.i_crit_edge ], [ %sub.i15.i, %if.then.i16.i ]
  %.pre-phi318 = inttoptr i32 %.pre-phi318.in to ptr
  call void @dump_page(ptr noundef %.pre-phi318, ptr noundef nonnull @.str.36) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %do.end8.i.PageLRU.exit_crit_edge, label %if.then.i23.i, !prof !165

do.end8.i.PageLRU.exit_crit_edge:                 ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %PageLRU.exit

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %35, -1
  %.pre319 = inttoptr i32 %sub.i22.i to ptr
  br label %PageLRU.exit

PageLRU.exit:                                     ; preds = %if.then.i23.i, %do.end8.i.PageLRU.exit_crit_edge
  %.pre-phi320 = phi ptr [ %10, %do.end8.i.PageLRU.exit_crit_edge ], [ %.pre319, %if.then.i23.i ]
  %36 = ptrtoint ptr %.pre-phi320 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %.pre-phi320, align 4
  %38 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool30.not = icmp eq i32 %38, 0
  br i1 %tobool30.not, label %PageLRU.exit.if.end36_crit_edge, label %if.then31

PageLRU.exit.if.end36_crit_edge:                  ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then31:                                        ; preds = %PageLRU.exit
  %tobool.not.i98 = icmp eq ptr %lruvec.1, null
  br i1 %tobool.not.i98, label %if.then31.if.end2.i_crit_edge, label %if.then.i100

if.then31.if.end2.i_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then.i100:                                     ; preds = %if.then31
  %pgdat.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.1, i32 0, i32 7
  %39 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pgdat.i.i.i, align 4
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i.not.i.i.i.i.i99 = icmp eq i32 %42, -1
  br i1 %cmp.i.not.i.i.i.i.i99, label %if.then.i.i.i.i.i101, label %folio_pgdat.exit.i.i, !prof !166

if.then.i.i.i.i.i101:                             ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #13
  %43 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.47) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !185
  unreachable

folio_pgdat.exit.i.i:                             ; preds = %if.then.i100
  %cmp.i.i102 = icmp eq ptr %40, @contig_page_data
  br i1 %cmp.i.i102, label %land.rhs.i.i, label %folio_pgdat.exit.i.i.if.end.i104_crit_edge

folio_pgdat.exit.i.i.if.end.i104_crit_edge:       ; preds = %folio_pgdat.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i104

land.rhs.i.i:                                     ; preds = %folio_pgdat.exit.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@release_pages, %folio_matches_lruvec.exit.i)) #11
          to label %if.end.i.i.i [label %folio_matches_lruvec.exit.i], !srcloc !170

if.end.i.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %memcg.i.i.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec.1, i32 0, i32 9
  %44 = ptrtoint ptr %memcg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %memcg.i.i.i, align 4
  br label %folio_matches_lruvec.exit.i

folio_matches_lruvec.exit.i:                      ; preds = %if.end.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i103 = phi ptr [ %45, %if.end.i.i.i ], [ null, %land.rhs.i.i ]
  %call3.i.i = call fastcc ptr @folio_memcg(ptr noundef %10) #11
  %cmp4.i.i = icmp eq ptr %retval.0.i.i.i103, %call3.i.i
  br i1 %cmp4.i.i, label %folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge, label %folio_matches_lruvec.exit.i.if.end.i104_crit_edge

folio_matches_lruvec.exit.i.if.end.i104_crit_edge: ; preds = %folio_matches_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i104

folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge: ; preds = %folio_matches_lruvec.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lruvec_relock_irqsave.exit

if.end.i104:                                      ; preds = %folio_matches_lruvec.exit.i.if.end.i104_crit_edge, %folio_pgdat.exit.i.i.if.end.i104_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %lru_lock.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.1, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lru_lock.i.i, i32 noundef %47) #11
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i104, %if.then31.if.end2.i_crit_edge
  %call3.i = call ptr @folio_lruvec_lock_irqsave(ptr noundef %10, ptr noundef nonnull %flags) #11
  br label %folio_lruvec_relock_irqsave.exit

folio_lruvec_relock_irqsave.exit:                 ; preds = %if.end2.i, %folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge
  %retval.0.i105 = phi ptr [ %call3.i, %if.end2.i ], [ %lruvec.1, %folio_matches_lruvec.exit.i.folio_lruvec_relock_irqsave.exit_crit_edge ]
  %cmp33.not = icmp eq ptr %lruvec.1, %retval.0.i105
  %spec.select = select i1 %cmp33.not, i32 %lock_batch.1, i32 0
  %48 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %20, align 4
  %and.i.i71 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %tobool.not.i.i72 = icmp eq i32 %and.i.i71, 0
  br i1 %tobool.not.i.i72, label %folio_lruvec_relock_irqsave.exit._compound_head.exit.i76_crit_edge, label %if.then.i.i73, !prof !165

folio_lruvec_relock_irqsave.exit._compound_head.exit.i76_crit_edge: ; preds = %folio_lruvec_relock_irqsave.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i76

if.then.i.i73:                                    ; preds = %folio_lruvec_relock_irqsave.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i1.i = add i32 %49, -1
  %.pre321 = inttoptr i32 %sub.i1.i to ptr
  br label %_compound_head.exit.i76

_compound_head.exit.i76:                          ; preds = %if.then.i.i73, %folio_lruvec_relock_irqsave.exit._compound_head.exit.i76_crit_edge
  %.pre-phi322 = phi ptr [ %10, %folio_lruvec_relock_irqsave.exit._compound_head.exit.i76_crit_edge ], [ %.pre321, %if.then.i.i73 ]
  %lru.i.i = getelementptr inbounds %struct.anon, ptr %.pre-phi322, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %_compound_head.exit.i76.list_del.exit.i.i_crit_edge

_compound_head.exit.i76.list_del.exit.i.i_crit_edge: ; preds = %_compound_head.exit.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %_compound_head.exit.i76
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.anon, ptr %.pre-phi322, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i.i, align 4
  %52 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lru.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %_compound_head.exit.i76.list_del.exit.i.i_crit_edge
  %56 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon, ptr %.pre-phi322, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %58 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_active.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i:                                ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi322, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i:                     ; preds = %list_del.exit.i.i
  %59 = ptrtoint ptr %.pre-phi322 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %.pre-phi322, align 4
  %61 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.not.i.i.i = icmp eq i32 %61, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge, label %land.rhs.i.i.i

folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

land.rhs.i.i.i:                                   ; preds = %folio_test_active.exit.i.i.i
  %62 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i23.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i)
  %tobool.not.i.i24.i.i.i = icmp eq i32 %and.i.i.i23.i.i.i, 0
  br i1 %tobool.not.i.i24.i.i.i, label %folio_test_unevictable.exit.i.i.i, label %if.then.i.i25.i.i.i, !prof !165

if.then.i.i25.i.i.i:                              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi322, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i:                ; preds = %land.rhs.i.i.i
  %64 = ptrtoint ptr %.pre-phi322 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %.pre-phi322, align 4
  %66 = and i32 %65, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.i26.not.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool.i26.not.i.i.i, label %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i, !prof !165

folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi322, ptr noundef nonnull @.str.2) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge
  %67 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i27.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i)
  %tobool.not.i.i28.i.i.i = icmp eq i32 %and.i.i.i27.i.i.i, 0
  br i1 %tobool.not.i.i28.i.i.i, label %folio_test_unevictable.exit31.i.i.i, label %if.then.i.i29.i.i.i, !prof !165

if.then.i.i29.i.i.i:                              ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi322, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i:              ; preds = %do.end8.i.i.i
  %69 = ptrtoint ptr %.pre-phi322 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %.pre-phi322, align 4
  %71 = and i32 %70, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i30.not.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool.i30.not.i.i.i, label %if.end11.i.i.i, label %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge

folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i

if.end11.i.i.i:                                   ; preds = %folio_test_unevictable.exit31.i.i.i
  %72 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_is_file_lru.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i.i:                              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi322, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i:                     ; preds = %if.end11.i.i.i
  %74 = ptrtoint ptr %.pre-phi322 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %.pre-phi322, align 4
  %76 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i32.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i)
  %tobool.not.i.i33.i.i.i = icmp eq i32 %and.i.i.i32.i.i.i, 0
  br i1 %tobool.not.i.i33.i.i.i, label %folio_test_active.exit36.i.i.i, label %if.then.i.i34.i.i.i, !prof !165

if.then.i.i34.i.i.i:                              ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi322, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i:                   ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = lshr i32 %75, 18
  %79 = and i32 %78, 2
  %80 = ptrtoint ptr %.pre-phi322 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %.pre-phi322, align 4
  %82 = lshr i32 %81, 5
  %83 = and i32 %82, 1
  %84 = or i32 %83, %79
  %85 = xor i32 %84, 2
  br label %folio_lru_list.exit.i.i

folio_lru_list.exit.i.i:                          ; preds = %folio_test_active.exit36.i.i.i, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %85, %folio_test_active.exit36.i.i.i ], [ 4, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge ]
  %86 = ptrtoint ptr %.pre-phi322 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %.pre-phi322, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %87, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i6.i.i, label %PageHead.exit.i.i.i.i, !prof !166

if.then.i.i.i6.i.i:                               ; preds = %folio_lru_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi322, ptr noundef nonnull @.str.31) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %folio_lru_list.exit.i.i
  %88 = ptrtoint ptr %.pre-phi322 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %.pre-phi322, align 4
  %90 = and i32 %89, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i.i.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge, label %if.end.i.i7.i.i

PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %del_page_from_lru_list.exit

if.end.i.i7.i.i:                                  ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %.pre-phi322, i32 1, i32 1, i32 0, i32 2
  %91 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.end.i.i7.i.i, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %92, %if.end.i.i7.i.i ], [ 1, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge ]
  %shr.i.i.i.i = lshr i32 %70, 30
  %sub.i.i77 = sub i32 0, %retval.0.i.i.i.i
  %pgdat.i.i.i.i = getelementptr inbounds %struct.lruvec, ptr %retval.0.i105, i32 0, i32 7
  %93 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pgdat.i.i.i.i, align 4
  call void @__mod_lruvec_state(ptr noundef %retval.0.i105, i32 noundef %retval.0.i.i.i, i32 noundef %sub.i.i77) #11
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr %94, i32 0, i32 %shr.i.i.i.i
  %add1.i.i.i = add nsw i32 %retval.0.i.i.i, 1
  call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef %add1.i.i.i, i32 noundef %sub.i.i77) #11
  call void @mem_cgroup_update_lru_size(ptr noundef %retval.0.i105, i32 noundef %retval.0.i.i.i, i32 noundef %shr.i.i.i.i, i32 noundef %sub.i.i77) #11
  %95 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %20, align 4
  %and.i.i78 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i78)
  %tobool.not.i.i79 = icmp eq i32 %and.i.i78, 0
  br i1 %tobool.not.i.i79, label %del_page_from_lru_list.exit._compound_head.exit.i84_crit_edge, label %if.then.i1.i, !prof !165

del_page_from_lru_list.exit._compound_head.exit.i84_crit_edge: ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i84

if.then.i1.i:                                     ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i80 = add i32 %96, -1
  %.pre323 = inttoptr i32 %sub.i.i80 to ptr
  br label %_compound_head.exit.i84

_compound_head.exit.i84:                          ; preds = %if.then.i1.i, %del_page_from_lru_list.exit._compound_head.exit.i84_crit_edge
  %.pre-phi324 = phi ptr [ %10, %del_page_from_lru_list.exit._compound_head.exit.i84_crit_edge ], [ %.pre323, %if.then.i1.i ]
  %97 = getelementptr inbounds %struct.page, ptr %.pre-phi324, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %97, align 4
  %and.i.i.i.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i83 = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i83, label %folio_test_lru.exit.i.i, label %if.then.i.i.i.i, !prof !165

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i84
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi324, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_lru.exit.i.i:                          ; preds = %_compound_head.exit.i84
  %100 = ptrtoint ptr %.pre-phi324 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %.pre-phi324, align 4
  %102 = and i32 %101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.i.not.i.i = icmp eq i32 %102, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.i85, label %do.end6.i.i, !prof !166

if.then.i.i85:                                    ; preds = %folio_test_lru.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi324, ptr noundef nonnull @.str.52) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 55, 0\0A.popsection", ""() #11, !srcloc !233
  unreachable

do.end6.i.i:                                      ; preds = %folio_test_lru.exit.i.i
  %103 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %97, align 4
  %and.i.i.i17.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i17.i.i)
  %tobool.not.i.i18.i.i = icmp eq i32 %and.i.i.i17.i.i, 0
  br i1 %tobool.not.i.i18.i.i, label %__folio_clear_lru.exit.i.i, label %if.then.i.i19.i.i, !prof !165

if.then.i.i19.i.i:                                ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi324, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

__folio_clear_lru.exit.i.i:                       ; preds = %do.end6.i.i
  %and.i.i.i.i = and i32 %101, -17
  %105 = ptrtoint ptr %.pre-phi324 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and.i.i.i.i, ptr %.pre-phi324, align 4
  %106 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %97, align 4
  %and.i.i.i20.i.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i20.i.i)
  %tobool.not.i.i21.i.i = icmp eq i32 %and.i.i.i20.i.i, 0
  br i1 %tobool.not.i.i21.i.i, label %folio_test_active.exit.i.i, label %if.then.i.i22.i.i, !prof !165

if.then.i.i22.i.i:                                ; preds = %__folio_clear_lru.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi324, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i:                       ; preds = %__folio_clear_lru.exit.i.i
  %108 = ptrtoint ptr %.pre-phi324 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %.pre-phi324, align 4
  %110 = and i32 %109, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.i23.not.i.i = icmp eq i32 %110, 0
  br i1 %tobool.i23.not.i.i, label %folio_test_active.exit.i.i.if.end10.i.i_crit_edge, label %land.lhs.true.i.i

folio_test_active.exit.i.i.if.end10.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

land.lhs.true.i.i:                                ; preds = %folio_test_active.exit.i.i
  %111 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %97, align 4
  %and.i.i.i24.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i24.i.i)
  %tobool.not.i.i25.i.i = icmp eq i32 %and.i.i.i24.i.i, 0
  br i1 %tobool.not.i.i25.i.i, label %folio_test_unevictable.exit.i.i, label %if.then.i.i26.i.i, !prof !165

if.then.i.i26.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi324, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i:                  ; preds = %land.lhs.true.i.i
  %113 = ptrtoint ptr %.pre-phi324 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %.pre-phi324, align 4
  %115 = and i32 %114, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.i27.not.i.i = icmp eq i32 %115, 0
  br i1 %tobool.i27.not.i.i, label %folio_test_unevictable.exit.i.i.if.end10.i.i_crit_edge, label %folio_test_unevictable.exit.i.i.if.end36_crit_edge

folio_test_unevictable.exit.i.i.if.end36_crit_edge: ; preds = %folio_test_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

folio_test_unevictable.exit.i.i.if.end10.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %folio_test_unevictable.exit.i.i.if.end10.i.i_crit_edge, %folio_test_active.exit.i.i.if.end10.i.i_crit_edge
  %116 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %97, align 4
  %and.i.i.i28.i.i = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i28.i.i)
  %tobool.not.i.i29.i.i = icmp eq i32 %and.i.i.i28.i.i, 0
  br i1 %tobool.not.i.i29.i.i, label %__folio_clear_active.exit.i.i, label %if.then.i.i30.i.i, !prof !165

if.then.i.i30.i.i:                                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi324, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

__folio_clear_active.exit.i.i:                    ; preds = %if.end10.i.i
  %and.i.i31.i.i = and i32 %109, -33
  %118 = ptrtoint ptr %.pre-phi324 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %and.i.i31.i.i, ptr %.pre-phi324, align 4
  %119 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %97, align 4
  %and.i.i.i32.i.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i)
  %tobool.not.i.i33.i.i = icmp eq i32 %and.i.i.i32.i.i, 0
  br i1 %tobool.not.i.i33.i.i, label %__folio_clear_unevictable.exit.i.i, label %if.then.i.i34.i.i, !prof !165

if.then.i.i34.i.i:                                ; preds = %__folio_clear_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi324, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

__folio_clear_unevictable.exit.i.i:               ; preds = %__folio_clear_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i35.i.i = and i32 %109, -1048609
  %121 = ptrtoint ptr %.pre-phi324 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %and.i.i35.i.i, ptr %.pre-phi324, align 4
  br label %if.end36

if.end36:                                         ; preds = %__folio_clear_unevictable.exit.i.i, %folio_test_unevictable.exit.i.i.if.end36_crit_edge, %PageLRU.exit.if.end36_crit_edge
  %lruvec.4 = phi ptr [ %lruvec.1, %PageLRU.exit.if.end36_crit_edge ], [ %retval.0.i105, %folio_test_unevictable.exit.i.i.if.end36_crit_edge ], [ %retval.0.i105, %__folio_clear_unevictable.exit.i.i ]
  %lock_batch.3 = phi i32 [ %lock_batch.1, %PageLRU.exit.if.end36_crit_edge ], [ %spec.select, %folio_test_unevictable.exit.i.i.if.end36_crit_edge ], [ %spec.select, %__folio_clear_unevictable.exit.i.i ]
  %122 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %20, align 4
  %and.i.i86 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i86)
  %tobool.not.i87 = icmp eq i32 %and.i.i86, 0
  br i1 %tobool.not.i87, label %do.body7.i, label %if.then.i88, !prof !165

if.then.i88:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %124 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %124, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #11, !srcloc !177
  unreachable

do.body7.i:                                       ; preds = %if.end36
  %125 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %cmp.i.not.i89 = icmp eq i32 %126, -1
  br i1 %cmp.i.not.i89, label %if.then16.i, label %__ClearPageWaiters.exit, !prof !166

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %127 = inttoptr i32 %retval.0.i to ptr
  call void @dump_page(ptr noundef %127, ptr noundef nonnull @.str.31) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #11, !srcloc !178
  unreachable

__ClearPageWaiters.exit:                          ; preds = %do.body7.i
  %and.i28.i = and i32 %126, -129
  %128 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %and.i28.i, ptr %10, align 4
  %129 = ptrtoint ptr %pages_to_free to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pages_to_free, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %20, ptr noundef nonnull %pages_to_free, ptr noundef %130) #11
  br i1 %call.i.i, label %if.end.i.i106, label %__ClearPageWaiters.exit.cleanup_crit_edge

__ClearPageWaiters.exit.cleanup_crit_edge:        ; preds = %__ClearPageWaiters.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i106:                                    ; preds = %__ClearPageWaiters.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %20, ptr %prev1.i.i, align 4
  %132 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %130, ptr %20, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, i32 0, i32 0, i32 1
  %133 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %pages_to_free, ptr %prev3.i.i, align 4
  %134 = ptrtoint ptr %pages_to_free to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %20, ptr %pages_to_free, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i106, %__ClearPageWaiters.exit.cleanup_crit_edge, %__put_compound_page.exit, %put_page_testzero.exit.cleanup_crit_edge
  %lruvec.5 = phi ptr [ null, %__put_compound_page.exit ], [ %lruvec.1, %put_page_testzero.exit.cleanup_crit_edge ], [ %lruvec.4, %__ClearPageWaiters.exit.cleanup_crit_edge ], [ %lruvec.4, %if.end.i.i106 ]
  %lock_batch.4 = phi i32 [ %lock_batch.1, %__put_compound_page.exit ], [ %lock_batch.1, %put_page_testzero.exit.cleanup_crit_edge ], [ %lock_batch.3, %__ClearPageWaiters.exit.cleanup_crit_edge ], [ %lock_batch.3, %if.end.i.i106 ]
  %inc38 = add nuw nsw i32 %i.0243, 1
  %exitcond.not = icmp eq i32 %inc38, %nr
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  %tobool39.not = icmp eq ptr %lruvec.5, null
  br i1 %tobool39.not, label %for.end.if.end41_crit_edge, label %if.then40

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %135 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags, align 4
  %lru_lock.i107 = getelementptr inbounds %struct.lruvec, ptr %lruvec.5, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lru_lock.i107, i32 noundef %136) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %for.end.if.end41_crit_edge, %entry.if.end41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@release_pages, %mem_cgroup_uncharge_list.exit)) #11
          to label %if.end.i108 [label %mem_cgroup_uncharge_list.exit], !srcloc !170

if.end.i108:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mem_cgroup_uncharge_list(ptr noundef nonnull %pages_to_free) #11
  br label %mem_cgroup_uncharge_list.exit

mem_cgroup_uncharge_list.exit:                    ; preds = %if.end.i108, %if.end41
  call void @free_unref_page_list(ptr noundef nonnull %pages_to_free) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pages_to_free) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pagevec_release(ptr nocapture noundef %pvec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %percpu_pvec_drained = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %0 = ptrtoint ptr %percpu_pvec_drained to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %percpu_pvec_drained, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !224
  %6 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @lru_pvecs to i32)
  %12 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %12) #11
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  tail call void @lru_add_drain_cpu(i32 noundef %14) #11
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx17.i, align 4
  %add18.i = add i32 %18, ptrtoint (ptr @lru_pvecs to i32)
  %19 = inttoptr i32 %add18.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %19) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !225
  %20 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i22.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i22.i to ptr
  %preempt_count.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i23.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i23.i, align 4
  %24 = ptrtoint ptr %percpu_pvec_drained to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %percpu_pvec_drained, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pages = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 2
  %25 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pvec, align 4
  %conv.i = zext i8 %26 to i32
  tail call void @release_pages(ptr noundef %pages, i32 noundef %conv.i)
  %27 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %pvec, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_batch_remove_exceptionals(ptr nocapture noundef %fbatch) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fbatch to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fbatch, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13.not = icmp eq i8 %1, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %j.015 = phi i32 [ %j.1, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.014 = phi i32 [ %inc4, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.folio_batch, ptr %fbatch, i32 0, i32 2, i32 %i.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %j.015, 1
  %arrayidx3 = getelementptr %struct.folio_batch, ptr %fbatch, i32 0, i32 2, i32 %j.015
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %arrayidx3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %j.1 = phi i32 [ %j.015, %for.body.if.end_crit_edge ], [ %inc, %if.then ]
  %inc4 = add nuw nsw i32 %i.014, 1
  %6 = ptrtoint ptr %fbatch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fbatch, align 4
  %conv.i = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc4, %conv.i
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %j.1, %if.end.for.end_crit_edge ]
  %conv = trunc i32 %j.0.lcssa to i8
  %8 = ptrtoint ptr %fbatch to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %fbatch, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pagevec_lookup_range(ptr noundef %pvec, ptr noundef %mapping, ptr noundef %start, i32 noundef %end) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 2
  %call = tail call i32 @find_get_pages_range(ptr noundef %mapping, ptr noundef %start, i32 noundef %end, i32 noundef 15, ptr noundef %pages) #11
  %conv = trunc i32 %call to i8
  %0 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %pvec, align 4
  %conv.i = and i32 %call, 255
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pagevec_lookup_range_tag(ptr noundef %pvec, ptr noundef %mapping, ptr noundef %index, i32 noundef %end, i32 noundef %tag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 2
  %call = tail call i32 @find_get_pages_range_tag(ptr noundef %mapping, ptr noundef %index, i32 noundef %end, i32 noundef %tag, i32 noundef 15, ptr noundef %pages) #11
  %conv = trunc i32 %call to i8
  %0 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %pvec, align 4
  %conv.i = and i32 %call, 255
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_pages_range_tag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @swap_setup() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %0)
  %cmp = icmp ult i32 %0, 4096
  %. = select i1 %cmp, i32 2, i32 3
  store i32 %., ptr @page_cluster, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_lru_insertion(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %folio = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %folio, align 4
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pfn, align 4
  %lru = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lru, align 4
  %flags1 = getelementptr inbounds %struct.trace_event_raw_mm_lru_insertion, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags1, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.18, ptr @.str.17
  %and3 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.20, ptr @.str.19
  %and7 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.18, ptr @.str.21
  %and11 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.18, ptr @.str.22
  %and15 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.18, ptr @.str.23
  %and19 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.18, ptr @.str.24
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, ptr noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %cond, ptr noundef nonnull %cond5, ptr noundef nonnull %cond9, ptr noundef nonnull %cond13, ptr noundef nonnull %cond17, ptr noundef nonnull %cond21) #11
  %call22 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_lru_activate(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %folio = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %folio, align 4
  %pfn = getelementptr inbounds %struct.trace_event_raw_mm_lru_activate, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pfn, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.25, ptr noundef %3, i32 noundef %5) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__page_cache_release(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %and.i13.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !166

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !165

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %8, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %9, %if.end.i17.i ]
  %10 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !165

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %8, -1
  br label %PageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %page to i32
  br label %PageLRU.exit

PageLRU.exit:                                     ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %11, %if.end.i24.i ]
  %12 = inttoptr i32 %retval.0.i25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %PageLRU.exit.if.end_crit_edge, label %if.then

PageLRU.exit.if.end_crit_edge:                    ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %PageLRU.exit
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i26 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i26, label %if.end.i, label %if.then.i27, !prof !165

if.then.i27:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %17, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i27
  %retval.0.i = phi i32 [ %sub.i, %if.then.i27 ], [ %18, %if.end.i ]
  %19 = inttoptr i32 %retval.0.i to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %flags, align 4, !annotation !169
  %call2 = call ptr @folio_lruvec_lock_irqsave(ptr noundef %19, ptr noundef nonnull %flags) #11
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %0, align 4
  %and.i.i8 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i8)
  %tobool.not.i.i9 = icmp eq i32 %and.i.i8, 0
  br i1 %tobool.not.i.i9, label %if.end.i.i11, label %if.then.i.i10, !prof !165

if.then.i.i10:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i1.i = add i32 %22, -1
  br label %_compound_head.exit.i13

if.end.i.i11:                                     ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i13

_compound_head.exit.i13:                          ; preds = %if.end.i.i11, %if.then.i.i10
  %retval.0.i.i12 = phi i32 [ %sub.i1.i, %if.then.i.i10 ], [ %23, %if.end.i.i11 ]
  %24 = inttoptr i32 %retval.0.i.i12 to ptr
  %lru.i.i = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %_compound_head.exit.i13.list_del.exit.i.i_crit_edge

_compound_head.exit.i13.list_del.exit.i.i_crit_edge: ; preds = %_compound_head.exit.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %_compound_head.exit.i13
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lru.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %_compound_head.exit.i13.list_del.exit.i.i_crit_edge
  %31 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %lru.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %33 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_active.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i:                                ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i.i:                     ; preds = %list_del.exit.i.i
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %24, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge, label %land.rhs.i.i.i

folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

land.rhs.i.i.i:                                   ; preds = %folio_test_active.exit.i.i.i
  %37 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i23.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i.i)
  %tobool.not.i.i24.i.i.i = icmp eq i32 %and.i.i.i23.i.i.i, 0
  br i1 %tobool.not.i.i24.i.i.i, label %folio_test_unevictable.exit.i.i.i, label %if.then.i.i25.i.i.i, !prof !165

if.then.i.i25.i.i.i:                              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i.i:                ; preds = %land.rhs.i.i.i
  %39 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %24, align 4
  %41 = and i32 %40, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i26.not.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.i26.not.i.i.i, label %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i, !prof !165

folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.2) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i.i:                                    ; preds = %folio_test_unevictable.exit.i.i.i.do.end8.i.i.i_crit_edge, %folio_test_active.exit.i.i.i.do.end8.i.i.i_crit_edge
  %42 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i27.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i.i)
  %tobool.not.i.i28.i.i.i = icmp eq i32 %and.i.i.i27.i.i.i, 0
  br i1 %tobool.not.i.i28.i.i.i, label %folio_test_unevictable.exit31.i.i.i, label %if.then.i.i29.i.i.i, !prof !165

if.then.i.i29.i.i.i:                              ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i.i:              ; preds = %do.end8.i.i.i
  %44 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %24, align 4
  %46 = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i30.not.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool.i30.not.i.i.i, label %if.end11.i.i.i, label %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge

folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i.i

if.end11.i.i.i:                                   ; preds = %folio_test_unevictable.exit31.i.i.i
  %47 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_is_file_lru.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i.i:                              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i.i:                     ; preds = %if.end11.i.i.i
  %49 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %24, align 4
  %51 = ptrtoint ptr %lru.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %lru.i.i, align 4
  %and.i.i.i32.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i.i)
  %tobool.not.i.i33.i.i.i = icmp eq i32 %and.i.i.i32.i.i.i, 0
  br i1 %tobool.not.i.i33.i.i.i, label %folio_test_active.exit36.i.i.i, label %if.then.i.i34.i.i.i, !prof !165

if.then.i.i34.i.i.i:                              ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i.i:                   ; preds = %folio_is_file_lru.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = lshr i32 %50, 18
  %54 = and i32 %53, 2
  %55 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %24, align 4
  %57 = lshr i32 %56, 5
  %58 = and i32 %57, 1
  %59 = or i32 %58, %54
  %60 = xor i32 %59, 2
  br label %folio_lru_list.exit.i.i

folio_lru_list.exit.i.i:                          ; preds = %folio_test_active.exit36.i.i.i, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %60, %folio_test_active.exit36.i.i.i ], [ 4, %folio_test_unevictable.exit31.i.i.i.folio_lru_list.exit.i.i_crit_edge ]
  %61 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %62, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i6.i.i, label %PageHead.exit.i.i.i.i, !prof !166

if.then.i.i.i6.i.i:                               ; preds = %folio_lru_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.31) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %folio_lru_list.exit.i.i
  %63 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %24, align 4
  %65 = and i32 %64, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge, label %if.end.i.i7.i.i

PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %del_page_from_lru_list.exit

if.end.i.i7.i.i:                                  ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %24, i32 1, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %del_page_from_lru_list.exit

del_page_from_lru_list.exit:                      ; preds = %if.end.i.i7.i.i, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %67, %if.end.i.i7.i.i ], [ 1, %PageHead.exit.i.i.i.i.del_page_from_lru_list.exit_crit_edge ]
  %shr.i.i.i.i = lshr i32 %45, 30
  %sub.i.i14 = sub i32 0, %retval.0.i.i.i.i
  %pgdat.i.i.i.i = getelementptr inbounds %struct.lruvec, ptr %call2, i32 0, i32 7
  %68 = ptrtoint ptr %pgdat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pgdat.i.i.i.i, align 4
  call void @__mod_lruvec_state(ptr noundef %call2, i32 noundef %retval.0.i.i.i, i32 noundef %sub.i.i14) #11
  %arrayidx.i.i.i = getelementptr [4 x %struct.zone], ptr %69, i32 0, i32 %shr.i.i.i.i
  %add1.i.i.i = add nsw i32 %retval.0.i.i.i, 1
  call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i.i, i32 noundef %add1.i.i.i, i32 noundef %sub.i.i14) #11
  call void @mem_cgroup_update_lru_size(ptr noundef %call2, i32 noundef %retval.0.i.i.i, i32 noundef %shr.i.i.i.i, i32 noundef %sub.i.i14) #11
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %0, align 4
  %and.i.i15 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %and.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i18, label %if.then.i1.i, !prof !165

if.then.i1.i:                                     ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i17 = add i32 %71, -1
  br label %_compound_head.exit.i21

if.end.i.i18:                                     ; preds = %del_page_from_lru_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i21

_compound_head.exit.i21:                          ; preds = %if.end.i.i18, %if.then.i1.i
  %retval.0.i.i19 = phi i32 [ %sub.i.i17, %if.then.i1.i ], [ %72, %if.end.i.i18 ]
  %73 = inttoptr i32 %retval.0.i.i19 to ptr
  %74 = getelementptr inbounds %struct.page, ptr %73, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %and.i.i.i.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i20 = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i20, label %folio_test_lru.exit.i.i, label %if.then.i.i.i.i, !prof !165

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i21
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_lru.exit.i.i:                          ; preds = %_compound_head.exit.i21
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %73, align 4
  %79 = and i32 %78, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.i22, label %do.end6.i.i, !prof !166

if.then.i.i22:                                    ; preds = %folio_test_lru.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.52) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 55, 0\0A.popsection", ""() #11, !srcloc !233
  unreachable

do.end6.i.i:                                      ; preds = %folio_test_lru.exit.i.i
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %74, align 4
  %and.i.i.i17.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i17.i.i)
  %tobool.not.i.i18.i.i = icmp eq i32 %and.i.i.i17.i.i, 0
  br i1 %tobool.not.i.i18.i.i, label %__folio_clear_lru.exit.i.i, label %if.then.i.i19.i.i, !prof !165

if.then.i.i19.i.i:                                ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

__folio_clear_lru.exit.i.i:                       ; preds = %do.end6.i.i
  %and.i.i.i.i = and i32 %78, -17
  %82 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and.i.i.i.i, ptr %73, align 4
  %83 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %74, align 4
  %and.i.i.i20.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i20.i.i)
  %tobool.not.i.i21.i.i = icmp eq i32 %and.i.i.i20.i.i, 0
  br i1 %tobool.not.i.i21.i.i, label %folio_test_active.exit.i.i, label %if.then.i.i22.i.i, !prof !165

if.then.i.i22.i.i:                                ; preds = %__folio_clear_lru.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i:                       ; preds = %__folio_clear_lru.exit.i.i
  %85 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %73, align 4
  %87 = and i32 %86, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.i23.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool.i23.not.i.i, label %folio_test_active.exit.i.i.if.end10.i.i_crit_edge, label %land.lhs.true.i.i

folio_test_active.exit.i.i.if.end10.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

land.lhs.true.i.i:                                ; preds = %folio_test_active.exit.i.i
  %88 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %74, align 4
  %and.i.i.i24.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i24.i.i)
  %tobool.not.i.i25.i.i = icmp eq i32 %and.i.i.i24.i.i, 0
  br i1 %tobool.not.i.i25.i.i, label %folio_test_unevictable.exit.i.i, label %if.then.i.i26.i.i, !prof !165

if.then.i.i26.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i:                  ; preds = %land.lhs.true.i.i
  %90 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %73, align 4
  %92 = and i32 %91, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i27.not.i.i = icmp eq i32 %92, 0
  br i1 %tobool.i27.not.i.i, label %folio_test_unevictable.exit.i.i.if.end10.i.i_crit_edge, label %folio_test_unevictable.exit.i.i.__clear_page_lru_flags.exit_crit_edge

folio_test_unevictable.exit.i.i.__clear_page_lru_flags.exit_crit_edge: ; preds = %folio_test_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__clear_page_lru_flags.exit

folio_test_unevictable.exit.i.i.if.end10.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %folio_test_unevictable.exit.i.i.if.end10.i.i_crit_edge, %folio_test_active.exit.i.i.if.end10.i.i_crit_edge
  %93 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %74, align 4
  %and.i.i.i28.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i28.i.i)
  %tobool.not.i.i29.i.i = icmp eq i32 %and.i.i.i28.i.i, 0
  br i1 %tobool.not.i.i29.i.i, label %__folio_clear_active.exit.i.i, label %if.then.i.i30.i.i, !prof !165

if.then.i.i30.i.i:                                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

__folio_clear_active.exit.i.i:                    ; preds = %if.end10.i.i
  %and.i.i31.i.i = and i32 %86, -33
  %95 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and.i.i31.i.i, ptr %73, align 4
  %96 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %74, align 4
  %and.i.i.i32.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i)
  %tobool.not.i.i33.i.i = icmp eq i32 %and.i.i.i32.i.i, 0
  br i1 %tobool.not.i.i33.i.i, label %__folio_clear_unevictable.exit.i.i, label %if.then.i.i34.i.i, !prof !165

if.then.i.i34.i.i:                                ; preds = %__folio_clear_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

__folio_clear_unevictable.exit.i.i:               ; preds = %__folio_clear_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.i35.i.i = and i32 %86, -1048609
  %98 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and.i.i35.i.i, ptr %73, align 4
  br label %__clear_page_lru_flags.exit

__clear_page_lru_flags.exit:                      ; preds = %__folio_clear_unevictable.exit.i.i, %folio_test_unevictable.exit.i.i.__clear_page_lru_flags.exit_crit_edge
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 4
  %lru_lock.i = getelementptr inbounds %struct.lruvec, ptr %call2, i32 0, i32 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lru_lock.i, i32 noundef %100) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  br label %if.end

if.end:                                           ; preds = %__clear_page_lru_flags.exit, %PageLRU.exit.if.end_crit_edge
  %101 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %0, align 4
  %and.i.i23 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i23)
  %tobool.not.i = icmp eq i32 %and.i.i23, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i24, !prof !165

if.then.i24:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #11, !srcloc !177
  unreachable

do.body7.i:                                       ; preds = %if.end
  %103 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %cmp.i.not.i25 = icmp eq i32 %104, -1
  br i1 %cmp.i.not.i25, label %if.then16.i, label %__ClearPageWaiters.exit, !prof !166

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.31) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #11, !srcloc !178
  unreachable

__ClearPageWaiters.exit:                          ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i28.i = and i32 %104, -129
  %105 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and.i28.i, ptr %page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_lruvec_lock_irqsave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_unref_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mem_cgroup_uncharge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_update_lru_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @folio_memcg(ptr noundef %folio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !165

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.41) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 537, 0\0A.popsection", ""() #11, !srcloc !235
  unreachable

do.body7.i:                                       ; preds = %entry
  %memcg_data.i = getelementptr inbounds %struct.anon, ptr %folio, i32 0, i32 7
  %3 = ptrtoint ptr %memcg_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %memcg_data.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %folio_memcg_kmem.exit, label %if.then15.i, !prof !165

if.then15.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.42) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 538, 0\0A.popsection", ""() #11, !srcloc !236
  unreachable

folio_memcg_kmem.exit:                            ; preds = %do.body7.i
  %and23.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.i.not = icmp eq i32 %and23.i, 0
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i9 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i9)
  %tobool.not.i.i.i10 = icmp eq i32 %and.i.i.i.i9, 0
  br i1 %tobool24.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %folio_memcg_kmem.exit
  br i1 %tobool.not.i.i.i10, label %folio_test_slab.exit.i, label %if.then.i.i.i, !prof !165

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_slab.exit.i:                           ; preds = %if.then
  %7 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %folio, align 4
  %9 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %__folio_objcg.exit, label %if.then.i6, !prof !165

if.then.i6:                                       ; preds = %folio_test_slab.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.43) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #11, !srcloc !237
  unreachable

__folio_objcg.exit:                               ; preds = %folio_test_slab.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %and48.i = and i32 %4, -4
  %10 = inttoptr i32 %and48.i to ptr
  %memcg.i = getelementptr inbounds %struct.obj_cgroup, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %memcg.i, align 4
  br label %return

if.end:                                           ; preds = %folio_memcg_kmem.exit
  br i1 %tobool.not.i.i.i10, label %folio_test_slab.exit.i13, label %if.then.i.i.i11, !prof !165

if.then.i.i.i11:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_slab.exit.i13:                         ; preds = %if.end
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i12 = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i12, label %__folio_memcg.exit, label %if.then.i14, !prof !165

if.then.i14:                                      ; preds = %folio_test_slab.exit.i13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.43) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #11, !srcloc !238
  unreachable

__folio_memcg.exit:                               ; preds = %folio_test_slab.exit.i13
  call void @__sanitizer_cov_trace_pc() #13
  %and46.i = and i32 %4, -4
  %16 = inttoptr i32 %and46.i to ptr
  br label %return

return:                                           ; preds = %__folio_memcg.exit, %__folio_objcg.exit
  %retval.0 = phi ptr [ %12, %__folio_objcg.exit ], [ %16, %__folio_memcg.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__activate_page(ptr noundef %page, ptr noundef %lruvec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !165

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  tail call fastcc void @__folio_activate(ptr noundef %4, ptr noundef %lruvec)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__folio_activate(ptr noundef %folio, ptr noundef %lruvec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_active.exit, label %if.then.i.i, !prof !165

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit:                           ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %folio_test_active.exit.if.end_crit_edge

folio_test_active.exit.if.end_crit_edge:          ; preds = %folio_test_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %folio_test_active.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i13 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i.i13, 0
  br i1 %tobool.not.i.i14, label %folio_test_unevictable.exit, label %if.then.i.i15, !prof !165

if.then.i.i15:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit:                      ; preds = %land.lhs.true
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i16.not = icmp eq i32 %10, 0
  br i1 %tobool.i16.not, label %if.then, label %folio_test_unevictable.exit.if.end_crit_edge

folio_test_unevictable.exit.if.end_crit_edge:     ; preds = %folio_test_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %folio_test_unevictable.exit
  %11 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i.i.i = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !166

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i:                                ; preds = %if.then
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i61 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i61, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i62 = phi i32 [ %17, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %folio_nr_pages.exit.list_del.exit.i_crit_edge

folio_nr_pages.exit.list_del.exit.i_crit_edge:    ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.anon, ptr %folio, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %folio_nr_pages.exit.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  %prev.i.i = getelementptr inbounds %struct.anon, ptr %folio, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %26 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_active.exit.i.i, label %if.then.i.i.i.i, !prof !165

if.then.i.i.i.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i:                       ; preds = %list_del.exit.i
  %27 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %folio, align 4
  %29 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i.i, label %folio_test_active.exit.i.i.do.end8.i.i_crit_edge, label %land.rhs.i.i

folio_test_active.exit.i.i.do.end8.i.i_crit_edge: ; preds = %folio_test_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

land.rhs.i.i:                                     ; preds = %folio_test_active.exit.i.i
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %0, align 4
  %and.i.i.i23.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i)
  %tobool.not.i.i24.i.i = icmp eq i32 %and.i.i.i23.i.i, 0
  br i1 %tobool.not.i.i24.i.i, label %folio_test_unevictable.exit.i.i, label %if.then.i.i25.i.i, !prof !165

if.then.i.i25.i.i:                                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i:                  ; preds = %land.rhs.i.i
  %32 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %folio, align 4
  %34 = and i32 %33, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i26.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.i26.not.i.i, label %folio_test_unevictable.exit.i.i.do.end8.i.i_crit_edge, label %if.then.i.i17, !prof !165

folio_test_unevictable.exit.i.i.do.end8.i.i_crit_edge: ; preds = %folio_test_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

if.then.i.i17:                                    ; preds = %folio_test_unevictable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i:                                      ; preds = %folio_test_unevictable.exit.i.i.do.end8.i.i_crit_edge, %folio_test_active.exit.i.i.do.end8.i.i_crit_edge
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %0, align 4
  %and.i.i.i27.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i)
  %tobool.not.i.i28.i.i = icmp eq i32 %and.i.i.i27.i.i, 0
  br i1 %tobool.not.i.i28.i.i, label %folio_test_unevictable.exit31.i.i, label %if.then.i.i29.i.i, !prof !165

if.then.i.i29.i.i:                                ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i:                ; preds = %do.end8.i.i
  %37 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %folio, align 4
  %39 = and i32 %38, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i30.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.i30.not.i.i, label %if.end11.i.i, label %folio_test_unevictable.exit31.i.i.folio_lru_list.exit.i_crit_edge

folio_test_unevictable.exit31.i.i.folio_lru_list.exit.i_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i

if.end11.i.i:                                     ; preds = %folio_test_unevictable.exit31.i.i
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_is_file_lru.exit.i.i, label %if.then.i.i.i.i.i, !prof !165

if.then.i.i.i.i.i:                                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i:                       ; preds = %if.end11.i.i
  %42 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %folio, align 4
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %0, align 4
  %and.i.i.i32.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i)
  %tobool.not.i.i33.i.i = icmp eq i32 %and.i.i.i32.i.i, 0
  br i1 %tobool.not.i.i33.i.i, label %folio_test_active.exit36.i.i, label %if.then.i.i34.i.i, !prof !165

if.then.i.i34.i.i:                                ; preds = %folio_is_file_lru.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i:                     ; preds = %folio_is_file_lru.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = lshr i32 %43, 18
  %47 = and i32 %46, 2
  %48 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %folio, align 4
  %50 = lshr i32 %49, 5
  %51 = and i32 %50, 1
  %52 = or i32 %51, %47
  %53 = xor i32 %52, 2
  br label %folio_lru_list.exit.i

folio_lru_list.exit.i:                            ; preds = %folio_test_active.exit36.i.i, %folio_test_unevictable.exit31.i.i.folio_lru_list.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %53, %folio_test_active.exit36.i.i ], [ 4, %folio_test_unevictable.exit31.i.i.folio_lru_list.exit.i_crit_edge ]
  %54 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp.i.not.i.i.i.i = icmp eq i32 %55, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i6.i, label %PageHead.exit.i.i.i, !prof !166

if.then.i.i.i6.i:                                 ; preds = %folio_lru_list.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i:                              ; preds = %folio_lru_list.exit.i
  %56 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %folio, align 4
  %58 = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.lruvec_del_folio.exit_crit_edge, label %if.end.i.i7.i

PageHead.exit.i.i.i.lruvec_del_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lruvec_del_folio.exit

if.end.i.i7.i:                                    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %compound_nr.i.i.i, align 4
  br label %lruvec_del_folio.exit

lruvec_del_folio.exit:                            ; preds = %if.end.i.i7.i, %PageHead.exit.i.i.i.lruvec_del_folio.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %60, %if.end.i.i7.i ], [ 1, %PageHead.exit.i.i.i.lruvec_del_folio.exit_crit_edge ]
  %shr.i.i.i = lshr i32 %38, 30
  %sub.i = sub i32 0, %retval.0.i.i.i
  %pgdat.i.i.i = getelementptr inbounds %struct.lruvec, ptr %lruvec, i32 0, i32 7
  %61 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pgdat.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef %sub.i) #11
  %arrayidx.i.i = getelementptr [4 x %struct.zone], ptr %62, i32 0, i32 %shr.i.i.i
  %add1.i.i = add nsw i32 %retval.0.i.i, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i, i32 noundef %add1.i.i, i32 noundef %sub.i) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i, i32 noundef %shr.i.i.i, i32 noundef %sub.i) #11
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %0, align 4
  %and.i.i.i18 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i18)
  %tobool.not.i.i19 = icmp eq i32 %and.i.i.i18, 0
  br i1 %tobool.not.i.i19, label %folio_set_active.exit, label %if.then.i.i20, !prof !165

if.then.i.i20:                                    ; preds = %lruvec_del_folio.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_set_active.exit:                            ; preds = %lruvec_del_folio.exit
  tail call void @_set_bit(i32 noundef 5, ptr noundef %folio) #11
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i.i21 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i21)
  %tobool.not.i.i.i.i22 = icmp eq i32 %and.i.i.i.i.i21, 0
  br i1 %tobool.not.i.i.i.i22, label %folio_test_active.exit.i.i25, label %if.then.i.i.i.i23, !prof !165

if.then.i.i.i.i23:                                ; preds = %folio_set_active.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit.i.i25:                     ; preds = %folio_set_active.exit
  %67 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %folio, align 4
  %69 = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.not.i.i24 = icmp eq i32 %69, 0
  br i1 %tobool.i.not.i.i24, label %folio_test_active.exit.i.i25.do.end8.i.i35_crit_edge, label %land.rhs.i.i28

folio_test_active.exit.i.i25.do.end8.i.i35_crit_edge: ; preds = %folio_test_active.exit.i.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i35

land.rhs.i.i28:                                   ; preds = %folio_test_active.exit.i.i25
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %0, align 4
  %and.i.i.i23.i.i26 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i.i26)
  %tobool.not.i.i24.i.i27 = icmp eq i32 %and.i.i.i23.i.i26, 0
  br i1 %tobool.not.i.i24.i.i27, label %folio_test_unevictable.exit.i.i31, label %if.then.i.i25.i.i29, !prof !165

if.then.i.i25.i.i29:                              ; preds = %land.rhs.i.i28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit.i.i31:                ; preds = %land.rhs.i.i28
  %72 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %folio, align 4
  %74 = and i32 %73, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i26.not.i.i30 = icmp eq i32 %74, 0
  br i1 %tobool.i26.not.i.i30, label %folio_test_unevictable.exit.i.i31.do.end8.i.i35_crit_edge, label %if.then.i.i32, !prof !165

folio_test_unevictable.exit.i.i31.do.end8.i.i35_crit_edge: ; preds = %folio_test_unevictable.exit.i.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i35

if.then.i.i32:                                    ; preds = %folio_test_unevictable.exit.i.i31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm_inline.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 83, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end8.i.i35:                                    ; preds = %folio_test_unevictable.exit.i.i31.do.end8.i.i35_crit_edge, %folio_test_active.exit.i.i25.do.end8.i.i35_crit_edge
  %75 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %0, align 4
  %and.i.i.i27.i.i33 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27.i.i33)
  %tobool.not.i.i28.i.i34 = icmp eq i32 %and.i.i.i27.i.i33, 0
  br i1 %tobool.not.i.i28.i.i34, label %folio_test_unevictable.exit31.i.i38, label %if.then.i.i29.i.i36, !prof !165

if.then.i.i29.i.i36:                              ; preds = %do.end8.i.i35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_unevictable.exit31.i.i38:              ; preds = %do.end8.i.i35
  %77 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %folio, align 4
  %79 = and i32 %78, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i30.not.i.i37 = icmp eq i32 %79, 0
  br i1 %tobool.i30.not.i.i37, label %if.end11.i.i41, label %folio_test_unevictable.exit31.i.i38.folio_lru_list.exit.i51_crit_edge

folio_test_unevictable.exit31.i.i38.folio_lru_list.exit.i51_crit_edge: ; preds = %folio_test_unevictable.exit31.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_lru_list.exit.i51

if.end11.i.i41:                                   ; preds = %folio_test_unevictable.exit31.i.i38
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i.i.i39 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i39)
  %tobool.not.i.i.i.i.i40 = icmp eq i32 %and.i.i.i.i.i.i39, 0
  br i1 %tobool.not.i.i.i.i.i40, label %folio_is_file_lru.exit.i.i45, label %if.then.i.i.i.i.i42, !prof !165

if.then.i.i.i.i.i42:                              ; preds = %if.end11.i.i41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_is_file_lru.exit.i.i45:                     ; preds = %if.end11.i.i41
  %82 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %folio, align 4
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %0, align 4
  %and.i.i.i32.i.i43 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32.i.i43)
  %tobool.not.i.i33.i.i44 = icmp eq i32 %and.i.i.i32.i.i43, 0
  br i1 %tobool.not.i.i33.i.i44, label %folio_test_active.exit36.i.i47, label %if.then.i.i34.i.i46, !prof !165

if.then.i.i34.i.i46:                              ; preds = %folio_is_file_lru.exit.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

folio_test_active.exit36.i.i47:                   ; preds = %folio_is_file_lru.exit.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  %86 = lshr i32 %83, 18
  %87 = and i32 %86, 2
  %88 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %folio, align 4
  %90 = lshr i32 %89, 5
  %91 = and i32 %90, 1
  %92 = or i32 %91, %87
  %93 = xor i32 %92, 2
  br label %folio_lru_list.exit.i51

folio_lru_list.exit.i51:                          ; preds = %folio_test_active.exit36.i.i47, %folio_test_unevictable.exit31.i.i38.folio_lru_list.exit.i51_crit_edge
  %retval.0.i.i48 = phi i32 [ %93, %folio_test_active.exit36.i.i47 ], [ 4, %folio_test_unevictable.exit31.i.i38.folio_lru_list.exit.i51_crit_edge ]
  %shr.i.i.i49 = lshr i32 %78, 30
  %94 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp.i.not.i.i.i.i50 = icmp eq i32 %95, -1
  br i1 %cmp.i.not.i.i.i.i50, label %if.then.i.i.i9.i, label %PageHead.exit.i.i.i53, !prof !166

if.then.i.i.i9.i:                                 ; preds = %folio_lru_list.exit.i51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

PageHead.exit.i.i.i53:                            ; preds = %folio_lru_list.exit.i51
  %96 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %folio, align 4
  %98 = and i32 %97, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i.i52 = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i.i52, label %PageHead.exit.i.i.i53.folio_nr_pages.exit.i_crit_edge, label %if.end.i.i.i55

PageHead.exit.i.i.i53.folio_nr_pages.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_nr_pages.exit.i

if.end.i.i.i55:                                   ; preds = %PageHead.exit.i.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  %compound_nr.i.i.i54 = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %99 = ptrtoint ptr %compound_nr.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %compound_nr.i.i.i54, align 4
  br label %folio_nr_pages.exit.i

folio_nr_pages.exit.i:                            ; preds = %if.end.i.i.i55, %PageHead.exit.i.i.i53.folio_nr_pages.exit.i_crit_edge
  %retval.0.i.i.i56 = phi i32 [ %100, %if.end.i.i.i55 ], [ 1, %PageHead.exit.i.i.i53.folio_nr_pages.exit.i_crit_edge ]
  %101 = ptrtoint ptr %pgdat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pgdat.i.i.i, align 4
  tail call void @__mod_lruvec_state(ptr noundef %lruvec, i32 noundef %retval.0.i.i48, i32 noundef %retval.0.i.i.i56) #11
  %arrayidx.i.i58 = getelementptr [4 x %struct.zone], ptr %102, i32 0, i32 %shr.i.i.i49
  %add1.i.i59 = add nsw i32 %retval.0.i.i48, 1
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i58, i32 noundef %add1.i.i59, i32 noundef %retval.0.i.i.i56) #11
  tail call void @mem_cgroup_update_lru_size(ptr noundef %lruvec, i32 noundef %retval.0.i.i48, i32 noundef %shr.i.i.i49, i32 noundef %retval.0.i.i.i56) #11
  %arrayidx.i = getelementptr [5 x %struct.list_head], ptr %lruvec, i32 0, i32 %retval.0.i.i48
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i60 = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %arrayidx.i, ptr noundef %104) #11
  br i1 %call.i.i.i60, label %if.end.i.i10.i, label %folio_nr_pages.exit.i.lruvec_add_folio.exit_crit_edge

folio_nr_pages.exit.i.lruvec_add_folio.exit_crit_edge: ; preds = %folio_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lruvec_add_folio.exit

if.end.i.i10.i:                                   ; preds = %folio_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %0, ptr %prev1.i.i.i, align 4
  %106 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %104, ptr %0, align 4
  %107 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %0, ptr %arrayidx.i, align 4
  br label %lruvec_add_folio.exit

lruvec_add_folio.exit:                            ; preds = %if.end.i.i10.i, %folio_nr_pages.exit.i.lruvec_add_folio.exit_crit_edge
  tail call fastcc void @trace_mm_lru_activate(ptr noundef %folio)
  %109 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %112
  %113 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %114, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 17) to i32)
  %115 = inttoptr i32 %add.i to ptr
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %add8.i = add i32 %117, %retval.0.i.i62
  store i32 %add8.i, ptr %115, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@__folio_activate, %lruvec_memcg.exit)) #11
          to label %if.end.i [label %lruvec_memcg.exit], !srcloc !170

if.end.i:                                         ; preds = %lruvec_add_folio.exit
  call void @__sanitizer_cov_trace_pc() #13
  %memcg.i = getelementptr inbounds %struct.mem_cgroup_per_node, ptr %lruvec, i32 0, i32 9
  %118 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %memcg.i, align 4
  br label %lruvec_memcg.exit

lruvec_memcg.exit:                                ; preds = %if.end.i, %lruvec_add_folio.exit
  %retval.0.i = phi ptr [ %119, %if.end.i ], [ null, %lruvec_add_folio.exit ]
  tail call void @__count_memcg_events(ptr noundef %retval.0.i, i32 noundef 17, i32 noundef %retval.0.i.i62) #11
  br label %if.end

if.end:                                           ; preds = %lruvec_memcg.exit, %folio_test_unevictable.exit.if.end_crit_edge, %folio_test_active.exit.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mm_lru_activate(ptr noundef %folio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_lru_activate, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mm_lru_activate, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !165

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !239
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_lru_activate, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %folio) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !240
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !240
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !155) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !155) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !165

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !241
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_lru_activate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mm_lru_activate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_mm_lru_activate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 78, ptr noundef nonnull @.str.49) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !242
  %38 = tail call i32 @llvm.read_register.i32(metadata !155) #11
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
declare dso_local void @__count_memcg_events(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_unless(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bh_lrus_cpu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mem_cgroup_uncharge_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mm_lru_insertion(ptr noundef %folio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_lru_insertion, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mm_lru_insertion, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !170

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !165

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !243
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_lru_insertion, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %folio) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !244
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !244
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !155) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !155) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !165

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !241
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_lru_insertion, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mm_lru_insertion.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_mm_lru_insertion.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 59, ptr noundef nonnull @.str.49) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !242
  %38 = tail call i32 @llvm.read_register.i32(metadata !155) #11
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
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !69, !71, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !109, !111, !113, !115, !116, !117, !119, !121, !123, !124, !126, !127, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !146, !148, !149, !151, !153, !154}
!llvm.named.register.sp = !{!155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__tracepoint_mm_lru_insertion, !1, !"__tracepoint_mm_lru_insertion", i1 false, i1 false}
!1 = !{!"../include/trace/events/pagemap.h", i32 28, i32 1}
!2 = !{ptr @__tracepoint_ptr_mm_lru_insertion, !1, !"__tracepoint_ptr_mm_lru_insertion", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mm_lru_insertion, !1, !"__SCK__tp_func_mm_lru_insertion", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mm_lru_activate, !5, !"__tracepoint_mm_lru_activate", i1 false, i1 false}
!5 = !{!"../include/trace/events/pagemap.h", i32 61, i32 1}
!6 = !{ptr @__tracepoint_ptr_mm_lru_activate, !5, !"__tracepoint_ptr_mm_lru_activate", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mm_lru_activate, !5, !"__SCK__tp_func_mm_lru_activate", i1 false, i1 false}
!8 = !{ptr @event_class_mm_lru_insertion, !1, !"event_class_mm_lru_insertion", i1 false, i1 false}
!9 = !{ptr @event_mm_lru_insertion, !1, !"event_mm_lru_insertion", i1 false, i1 false}
!10 = !{ptr @__event_mm_lru_insertion, !1, !"__event_mm_lru_insertion", i1 false, i1 false}
!11 = !{ptr @event_class_mm_lru_activate, !5, !"event_class_mm_lru_activate", i1 false, i1 false}
!12 = !{ptr @event_mm_lru_activate, !5, !"event_mm_lru_activate", i1 false, i1 false}
!13 = !{ptr @__event_mm_lru_activate, !5, !"__event_mm_lru_activate", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_mm_lru_insertion, !1, !"__bpf_trace_tp_map_mm_lru_insertion", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_mm_lru_activate, !5, !"__bpf_trace_tp_map_mm_lru_activate", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/swap.c", i32 55, i32 10}
!18 = !{ptr @lru_rotate, !19, !"lru_rotate", i1 false, i1 false}
!19 = !{!"../mm/swap.c", i32 54, i32 8}
!20 = !{ptr @lru_pvecs, !21, !"lru_pvecs", i1 false, i1 false}
!21 = !{!"../mm/swap.c", i32 72, i32 8}
!22 = !{ptr @__ksymtab___put_page, !23, !"__ksymtab___put_page", i1 false, i1 false}
!23 = !{!"../mm/swap.c", i32 132, i32 1}
!24 = !{ptr @__ksymtab_put_pages_list, !25, !"__ksymtab_put_pages_list", i1 false, i1 false}
!25 = !{!"../mm/swap.c", i32 161, i32 1}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../mm/swap.c", i32 182, i32 7}
!28 = !{ptr @__ksymtab_get_kernel_pages, !29, !"__ksymtab_get_kernel_pages", i1 false, i1 false}
!29 = !{!"../mm/swap.c", i32 191, i32 1}
!30 = !{ptr @__ksymtab_folio_mark_accessed, !31, !"__ksymtab_folio_mark_accessed", i1 false, i1 false}
!31 = !{!"../mm/swap.c", i32 447, i32 1}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../mm/swap.c", i32 462, i32 2}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../mm/swap.c", i32 463, i32 2}
!36 = !{ptr @__ksymtab_folio_add_lru, !37, !"__ksymtab_folio_add_lru", i1 false, i1 false}
!37 = !{!"../mm/swap.c", i32 472, i32 1}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../mm/swap.c", i32 487, i32 2}
!40 = !{ptr @__lru_add_drain_all.lru_drain_gen, !41, !"lru_drain_gen", i1 false, i1 false}
!41 = !{!"../mm/swap.c", i32 771, i32 22}
!42 = !{ptr @__lru_add_drain_all.has_work, !43, !"has_work", i1 false, i1 false}
!43 = !{!"../mm/swap.c", i32 772, i32 24}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../mm/swap.c", i32 773, i32 9}
!46 = !{ptr @__lru_add_drain_all.lock, !45, !"lock", i1 false, i1 false}
!47 = !{ptr @__lru_add_drain_all.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../mm/swap.c", i32 842, i32 4}
!49 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @lru_disable_count, !51, !"lru_disable_count", i1 false, i1 false}
!51 = !{!"../mm/swap.c", i32 866, i32 10}
!52 = !{ptr @__ksymtab_release_pages, !53, !"__ksymtab_release_pages", i1 false, i1 false}
!53 = !{!"../mm/swap.c", i32 982, i32 1}
!54 = !{ptr @__ksymtab___pagevec_release, !55, !"__ksymtab___pagevec_release", i1 false, i1 false}
!55 = !{!"../mm/swap.c", i32 1003, i32 1}
!56 = !{ptr @__ksymtab_pagevec_lookup_range, !57, !"__ksymtab_pagevec_lookup_range", i1 false, i1 false}
!57 = !{!"../mm/swap.c", i32 1127, i32 1}
!58 = !{ptr @__ksymtab_pagevec_lookup_range_tag, !59, !"__ksymtab_pagevec_lookup_range_tag", i1 false, i1 false}
!59 = !{!"../mm/swap.c", i32 1137, i32 1}
!60 = !{ptr @page_cluster, !61, !"page_cluster", i1 false, i1 false}
!61 = !{!"../mm/swap.c", i32 47, i32 5}
!62 = !{ptr @__pcpu_unique_lru_rotate, !19, !"__pcpu_unique_lru_rotate", i1 false, i1 false}
!63 = !{ptr @__pcpu_unique_lru_pvecs, !21, !"__pcpu_unique_lru_pvecs", i1 false, i1 false}
!64 = !{ptr @__pcpu_unique_lru_add_drain_work, !65, !"__pcpu_unique_lru_add_drain_work", i1 false, i1 false}
!65 = !{!"../mm/swap.c", i32 745, i32 8}
!66 = !{ptr @lru_add_drain_work, !65, !"lru_add_drain_work", i1 false, i1 false}
!67 = !{ptr @__tpstrtab_mm_lru_insertion, !1, !"__tpstrtab_mm_lru_insertion", i1 false, i1 false}
!68 = !{ptr @__tpstrtab_mm_lru_activate, !5, !"__tpstrtab_mm_lru_activate", i1 false, i1 false}
!69 = !{ptr @str__pagemap__trace_system_name, !70, !"str__pagemap__trace_system_name", i1 false, i1 false}
!70 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!71 = !{ptr @.str.7, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!75 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @trace_event_fields_mm_lru_insertion, !1, !"trace_event_fields_mm_lru_insertion", i1 false, i1 false}
!83 = !{ptr @trace_event_type_funcs_mm_lru_insertion, !1, !"trace_event_type_funcs_mm_lru_insertion", i1 false, i1 false}
!84 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @print_fmt_mm_lru_insertion, !1, !"print_fmt_mm_lru_insertion", i1 false, i1 false}
!94 = !{ptr @trace_event_fields_mm_lru_activate, !5, !"trace_event_fields_mm_lru_activate", i1 false, i1 false}
!95 = !{ptr @trace_event_type_funcs_mm_lru_activate, !5, !"trace_event_type_funcs_mm_lru_activate", i1 false, i1 false}
!96 = !{ptr @.str.25, !5, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @print_fmt_mm_lru_activate, !5, !"print_fmt_mm_lru_activate", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!100 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!104 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/mm.h", i32 888, i32 2}
!107 = !{ptr @.str.30, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/mm.h", i32 717, i32 2}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!111 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/local_lock_internal.h", i32 30, i32 2}
!115 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/page-flags.h", i32 423, i32 2}
!119 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../include/linux/vmstat.h", i32 202, i32 2}
!123 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/linux/memcontrol.h", i32 746, i32 2}
!126 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/memcontrol.h", i32 537, i32 2}
!130 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/memcontrol.h", i32 538, i32 2}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/memcontrol.h", i32 417, i32 2}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/memcontrol.h", i32 418, i32 2}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/memcontrol.h", i32 419, i32 2}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/memcontrol.h", i32 398, i32 2}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!142 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!143 = !{ptr @.str.48, !5, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!145 = !{ptr @.str.49, !5, !"<string literal>", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!148 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/page-flags.h", i32 506, i32 2}
!151 = !{ptr @.str.52, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/mm_inline.h", i32 55, i32 2}
!153 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!154 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!155 = !{!"sp"}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 2150251428, i64 2150251919, i64 2150251465, i64 2150251521, i64 2150251555, i64 2150251579, i64 2150251620, i64 2150251641, i64 2150251669, i64 2150251703}
!168 = !{i64 2154848614, i64 2154849103, i64 2154848651, i64 2154848707, i64 2154848741, i64 2154848765, i64 2154848806, i64 2154848827, i64 2154848855, i64 2154848889}
!169 = !{!"auto-init"}
!170 = !{i64 2148297107, i64 2148297112, i64 2148297125, i64 2148297169, i64 2148297203, i64 2148297224}
!171 = !{i64 2153151177, i64 2153151660, i64 2153151214, i64 2153151270, i64 2153151304, i64 2153151328, i64 2153151369, i64 2153151390, i64 2153151418, i64 2153151452}
!172 = !{i64 2153142426, i64 2153142909, i64 2153142463, i64 2153142519, i64 2153142553, i64 2153142577, i64 2153142618, i64 2153142639, i64 2153142667, i64 2153142701}
!173 = !{i64 2148784906}
!174 = !{i64 2148699615, i64 2148699647, i64 2148699676, i64 2148699710, i64 2148699741, i64 2148699764}
!175 = !{i64 2148785135}
!176 = !{i64 2151018214, i64 2151018705, i64 2151018251, i64 2151018307, i64 2151018341, i64 2151018365, i64 2151018406, i64 2151018427, i64 2151018455, i64 2151018489}
!177 = !{i64 2150297142, i64 2150297633, i64 2150297179, i64 2150297235, i64 2150297269, i64 2150297293, i64 2150297334, i64 2150297355, i64 2150297383, i64 2150297417}
!178 = !{i64 2150299083, i64 2150299574, i64 2150299120, i64 2150299176, i64 2150299210, i64 2150299234, i64 2150299275, i64 2150299296, i64 2150299324, i64 2150299358}
!179 = !{i64 2153166399, i64 2153166883, i64 2153166436, i64 2153166492, i64 2153166526, i64 2153166550, i64 2153166591, i64 2153166612, i64 2153166640, i64 2153166674}
!180 = !{i64 2148696430, i64 2148696456, i64 2148696485, i64 2148696519, i64 2148696550, i64 2148696573}
!181 = !{i64 1101110, i64 1101171}
!182 = !{i64 1103842}
!183 = !{i64 1104127}
!184 = !{i64 2150417338, i64 2150417511, i64 2150417526, i64 2150417578, i64 2150417637, i64 2150417661, i64 2150417702, i64 2150417723, i64 2150417751, i64 2150417783}
!185 = !{i64 2153172181, i64 2153172665, i64 2153172218, i64 2153172274, i64 2153172308, i64 2153172332, i64 2153172373, i64 2153172394, i64 2153172422, i64 2153172456}
!186 = !{i64 2150399398, i64 2150399571, i64 2150399586, i64 2150399638, i64 2150399697, i64 2150399721, i64 2150399762, i64 2150399783, i64 2150399811, i64 2150399843}
!187 = !{i64 2156024252}
!188 = !{i64 2156027288}
!189 = !{i64 2156020809}
!190 = !{i64 2156023911}
!191 = !{i64 2156029522, i64 2156029996, i64 2156029559, i64 2156029615, i64 2156029649, i64 2156029673, i64 2156029714, i64 2156029735, i64 2156029763, i64 2156029797}
!192 = !{i64 2156031291, i64 2156031765, i64 2156031328, i64 2156031384, i64 2156031418, i64 2156031442, i64 2156031483, i64 2156031504, i64 2156031532, i64 2156031566}
!193 = !{i64 2156032864}
!194 = !{i64 2156035900}
!195 = !{i64 2156095329, i64 2156095804, i64 2156095366, i64 2156095422, i64 2156095456, i64 2156095480, i64 2156095521, i64 2156095542, i64 2156095570, i64 2156095604}
!196 = !{i64 2156096741}
!197 = !{i64 2150031763}
!198 = !{i64 2150032029}
!199 = !{i64 2150393494, i64 2150393985, i64 2150393531, i64 2150393587, i64 2150393621, i64 2150393645, i64 2150393686, i64 2150393707, i64 2150393735, i64 2150393769}
!200 = !{i64 2156037754, i64 2156038228, i64 2156037791, i64 2156037847, i64 2156037881, i64 2156037905, i64 2156037946, i64 2156037967, i64 2156037995, i64 2156038029}
!201 = !{i64 2150968753, i64 2150968926, i64 2150968941, i64 2150968993, i64 2150969052, i64 2150969076, i64 2150969117, i64 2150969138, i64 2150969166, i64 2150969198}
!202 = !{i64 2150969628, i64 2150969801, i64 2150969816, i64 2150969868, i64 2150969927, i64 2150969951, i64 2150969992, i64 2150970013, i64 2150970041, i64 2150970073}
!203 = !{i64 2153133416, i64 2153133904, i64 2153133453, i64 2153133509, i64 2153133543, i64 2153133567, i64 2153133608, i64 2153133629, i64 2153133657, i64 2153133691}
!204 = !{i64 2150420119, i64 2150420610, i64 2150420156, i64 2150420212, i64 2150420246, i64 2150420270, i64 2150420311, i64 2150420332, i64 2150420360, i64 2150420394}
!205 = !{i64 2150904067, i64 2150904558, i64 2150904104, i64 2150904160, i64 2150904194, i64 2150904218, i64 2150904259, i64 2150904280, i64 2150904308, i64 2150904342}
!206 = !{i64 2150431363, i64 2150431536, i64 2150431551, i64 2150431603, i64 2150431662, i64 2150431686, i64 2150431727, i64 2150431748, i64 2150431776, i64 2150431808}
!207 = !{i64 2150349833, i64 2150350006, i64 2150350021, i64 2150350073, i64 2150350132, i64 2150350156, i64 2150350197, i64 2150350218, i64 2150350246, i64 2150350278}
!208 = !{i64 2150771343, i64 2150771834, i64 2150771380, i64 2150771436, i64 2150771470, i64 2150771494, i64 2150771535, i64 2150771556, i64 2150771584, i64 2150771618}
!209 = !{i64 2150365398, i64 2150365889, i64 2150365435, i64 2150365491, i64 2150365525, i64 2150365549, i64 2150365590, i64 2150365611, i64 2150365639, i64 2150365673}
!210 = !{i64 2150830636, i64 2150830809, i64 2150830824, i64 2150830876, i64 2150830935, i64 2150830959, i64 2150831000, i64 2150831021, i64 2150831049, i64 2150831081}
!211 = !{i64 2150831511, i64 2150831684, i64 2150831699, i64 2150831751, i64 2150831810, i64 2150831834, i64 2150831875, i64 2150831896, i64 2150831924, i64 2150831956}
!212 = !{i64 2150678942, i64 2150679433, i64 2150678979, i64 2150679035, i64 2150679069, i64 2150679093, i64 2150679134, i64 2150679155, i64 2150679183, i64 2150679217}
!213 = !{i64 2150696422, i64 2150696595, i64 2150696610, i64 2150696662, i64 2150696721, i64 2150696745, i64 2150696786, i64 2150696807, i64 2150696835, i64 2150696867}
!214 = !{i64 2150697297, i64 2150697470, i64 2150697485, i64 2150697537, i64 2150697596, i64 2150697620, i64 2150697661, i64 2150697682, i64 2150697710, i64 2150697742}
!215 = !{i64 2148695849}
!216 = !{i64 1182449, i64 1182474, i64 1182496, i64 1182512, i64 1182524, i64 1182544, i64 1182568, i64 1182584, i64 1182596}
!217 = !{i64 2148696037}
!218 = !{i64 2156048725}
!219 = !{i64 2156051893}
!220 = !{i64 2156052234}
!221 = !{i64 2156055347}
!222 = !{i64 2156055688}
!223 = !{i64 2156058779}
!224 = !{i64 2156059120}
!225 = !{i64 2156061278}
!226 = !{i64 2156064118}
!227 = !{i64 2156066276}
!228 = !{i64 2156069130}
!229 = !{i64 2156074948}
!230 = !{i64 2156077350}
!231 = !{i64 2156061619}
!232 = !{i64 2156063777}
!233 = !{i64 2154846045, i64 2154846534, i64 2154846082, i64 2154846138, i64 2154846172, i64 2154846196, i64 2154846237, i64 2154846258, i64 2154846286, i64 2154846320}
!234 = !{i8 0, i8 2}
!235 = !{i64 2154649023, i64 2154649514, i64 2154649060, i64 2154649116, i64 2154649150, i64 2154649174, i64 2154649215, i64 2154649236, i64 2154649264, i64 2154649298}
!236 = !{i64 2154650923, i64 2154651414, i64 2154650960, i64 2154651016, i64 2154651050, i64 2154651074, i64 2154651115, i64 2154651136, i64 2154651164, i64 2154651198}
!237 = !{i64 2154633523, i64 2154634014, i64 2154633560, i64 2154633616, i64 2154633650, i64 2154633674, i64 2154633715, i64 2154633736, i64 2154633764, i64 2154633798}
!238 = !{i64 2154627781, i64 2154628272, i64 2154627818, i64 2154627874, i64 2154627908, i64 2154627932, i64 2154627973, i64 2154627994, i64 2154628022, i64 2154628056}
!239 = !{i64 2155136313}
!240 = !{i64 2155136516}
!241 = !{i64 2150040322}
!242 = !{i64 2150041358}
!243 = !{i64 2155120235}
!244 = !{i64 2155120440}
