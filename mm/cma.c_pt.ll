; ModuleID = '/llk/IR_all_yes/mm/cma.c_pt.bc'
source_filename = "../mm/cma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.97, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cma = type { i32, i32, ptr, i32, %struct.spinlock, %struct.hlist_head, %struct.spinlock, %struct.debugfs_u32_array, [64 x i8], %struct.atomic64_t, %struct.atomic64_t, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.debugfs_u32_array = type { ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.vm_event_state = type { [76 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cma_alloc_class = type { %struct.trace_entry, i32, i32, ptr, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_cma_release = type { %struct.trace_entry, i32, i32, ptr, i32, [0 x i8] }
%struct.trace_event_raw_cma_alloc_start = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.page = type { i32, %union.anon.0, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cma_release = internal constant [12 x i8] c"cma_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cma_release = dso_local global %struct.static_call_key { ptr @__traceiter_cma_release }, align 4
@__tracepoint_cma_release = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cma_release, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cma_release, ptr null, ptr @__traceiter_cma_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cma_release = internal constant ptr @__tracepoint_cma_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_cma_alloc_start = internal constant [16 x i8] c"cma_alloc_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cma_alloc_start = dso_local global %struct.static_call_key { ptr @__traceiter_cma_alloc_start }, align 4
@__tracepoint_cma_alloc_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cma_alloc_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cma_alloc_start, ptr null, ptr @__traceiter_cma_alloc_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cma_alloc_start = internal constant ptr @__tracepoint_cma_alloc_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_cma_alloc_finish = internal constant [17 x i8] c"cma_alloc_finish\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cma_alloc_finish = dso_local global %struct.static_call_key { ptr @__traceiter_cma_alloc_finish }, align 4
@__tracepoint_cma_alloc_finish = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cma_alloc_finish, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cma_alloc_finish, ptr null, ptr @__traceiter_cma_alloc_finish, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cma_alloc_finish = internal constant ptr @__tracepoint_cma_alloc_finish, section "__tracepoints_ptrs", align 4
@__tpstrtab_cma_alloc_busy_retry = internal constant [21 x i8] c"cma_alloc_busy_retry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cma_alloc_busy_retry = dso_local global %struct.static_call_key { ptr @__traceiter_cma_alloc_busy_retry }, align 4
@__tracepoint_cma_alloc_busy_retry = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cma_alloc_busy_retry, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cma_alloc_busy_retry, ptr null, ptr @__traceiter_cma_alloc_busy_retry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cma_alloc_busy_retry = internal constant ptr @__tracepoint_cma_alloc_busy_retry, section "__tracepoints_ptrs", align 4
@str__cma__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cma\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_cma_alloc_class = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.37, %union.anon.95 { %struct.anon.96 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.39, %union.anon.95 { %struct.anon.96 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.95 { %struct.anon.96 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.39, %union.anon.95 { %struct.anon.96 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.44, %union.anon.95 { %struct.anon.96 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cma_alloc_class = internal global %struct.trace_event_class { ptr @str__cma__trace_system_name, ptr @trace_event_raw_event_cma_alloc_class, ptr @perf_trace_cma_alloc_class, ptr @trace_event_reg, ptr @trace_event_fields_cma_alloc_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cma_alloc_class, i64 24), ptr getelementptr (i8, ptr @event_class_cma_alloc_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_fields_cma_release = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.37, %union.anon.95 { %struct.anon.96 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.39, %union.anon.95 { %struct.anon.96 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.41, %union.anon.95 { %struct.anon.96 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.39, %union.anon.95 { %struct.anon.96 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cma_release = internal global %struct.trace_event_class { ptr @str__cma__trace_system_name, ptr @trace_event_raw_event_cma_release, ptr @perf_trace_cma_release, ptr @trace_event_reg, ptr @trace_event_fields_cma_release, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cma_release, i64 24), ptr getelementptr (i8, ptr @event_class_cma_release, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cma_release = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cma_release, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cma_release = internal global { [88 x i8], [40 x i8] } { [88 x i8] c"\22name=%s pfn=0x%lx page=%p count=%lu\22, __get_str(name), REC->pfn, REC->page, REC->count\00", [40 x i8] zeroinitializer }, align 32
@event_cma_release = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_release, %union.anon.97 { ptr @__tracepoint_cma_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_release }, ptr @print_fmt_cma_release, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cma_release = internal global ptr @event_cma_release, section "_ftrace_events", align 4
@trace_event_fields_cma_alloc_start = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.37, %union.anon.95 { %struct.anon.96 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.39, %union.anon.95 { %struct.anon.96 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.44, %union.anon.95 { %struct.anon.96 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cma_alloc_start = internal global %struct.trace_event_class { ptr @str__cma__trace_system_name, ptr @trace_event_raw_event_cma_alloc_start, ptr @perf_trace_cma_alloc_start, ptr @trace_event_reg, ptr @trace_event_fields_cma_alloc_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cma_alloc_start, i64 24), ptr getelementptr (i8, ptr @event_class_cma_alloc_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cma_alloc_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cma_alloc_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cma_alloc_start = internal global { [70 x i8], [58 x i8] } { [70 x i8] c"\22name=%s count=%lu align=%u\22, __get_str(name), REC->count, REC->align\00", [58 x i8] zeroinitializer }, align 32
@event_cma_alloc_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_alloc_start, %union.anon.97 { ptr @__tracepoint_cma_alloc_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_alloc_start }, ptr @print_fmt_cma_alloc_start, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cma_alloc_start = internal global ptr @event_cma_alloc_start, section "_ftrace_events", align 4
@trace_event_type_funcs_cma_alloc_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cma_alloc_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cma_alloc_class = internal global { [109 x i8], [51 x i8] } { [109 x i8] c"\22name=%s pfn=0x%lx page=%p count=%lu align=%u\22, __get_str(name), REC->pfn, REC->page, REC->count, REC->align\00", [51 x i8] zeroinitializer }, align 32
@event_cma_alloc_finish = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_alloc_class, %union.anon.97 { ptr @__tracepoint_cma_alloc_finish }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_alloc_class }, ptr @print_fmt_cma_alloc_class, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cma_alloc_finish = internal global ptr @event_cma_alloc_finish, section "_ftrace_events", align 4
@event_cma_alloc_busy_retry = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_alloc_class, %union.anon.97 { ptr @__tracepoint_cma_alloc_busy_retry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_alloc_class }, ptr @print_fmt_cma_alloc_class, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cma_alloc_busy_retry = internal global ptr @event_cma_alloc_busy_retry, section "_ftrace_events", align 4
@__bpf_trace_tp_map_cma_release = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_cma_release, ptr @__bpf_trace_cma_release, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cma_alloc_start = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_cma_alloc_start, ptr @__bpf_trace_cma_alloc_start, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cma_alloc_finish = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_cma_alloc_finish, ptr @__bpf_trace_cma_alloc_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cma_alloc_busy_retry = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_cma_alloc_busy_retry, ptr @__bpf_trace_cma_alloc_class, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__initcall__kmod_cma__285_151_cma_init_reserved_areas1 = internal global ptr @cma_init_reserved_areas, section ".initcall1.init", align 4
@cma_area_count = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@cma_init_reserved_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013cma: Not enough slots for CMA reserved regions!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cma_init_reserved_mem\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mm/cma.c\00", [23 x i8] zeroinitializer }, align 32
@cma_init_reserved_mem._entry_ptr = internal global ptr @cma_init_reserved_mem._entry, section ".printk_index", align 4
@cma_areas = dso_local global { [8 x %struct.cma], [416 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cma%d\0A\00", [25 x i8] zeroinitializer }, align 32
@totalcma_pages = external dso_local local_unnamed_addr global i32, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@cma_declare_contiguous_nid.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cma\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cma_declare_contiguous_nid\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(size %pa, base %pa, limit %pa alignment %pa)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"cma: %s(size %pa, base %pa, limit %pa alignment %pa)\0A\00", [42 x i8] zeroinitializer }, align 32
@cma_declare_contiguous_nid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cma_declare_contiguous_nid._entry_ptr = internal global ptr @cma_declare_contiguous_nid._entry, section ".printk_index", align 4
@cma_declare_contiguous_nid._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013cma: Region at %pa must be aligned to %pa bytes\0A\00", [45 x i8] zeroinitializer }, align 32
@cma_declare_contiguous_nid._entry_ptr.10 = internal global ptr @cma_declare_contiguous_nid._entry.8, section ".printk_index", align 4
@cma_declare_contiguous_nid._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013cma: Region at %pa defined on low/high memory boundary (%pa)\0A\00", [32 x i8] zeroinitializer }, align 32
@cma_declare_contiguous_nid._entry_ptr.13 = internal global ptr @cma_declare_contiguous_nid._entry.11, section ".printk_index", align 4
@cma_declare_contiguous_nid._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013cma: Size (%pa) of region at %pa exceeds limit (%pa)\0A\00", [40 x i8] zeroinitializer }, align 32
@cma_declare_contiguous_nid._entry_ptr.16 = internal global ptr @cma_declare_contiguous_nid._entry.14, section ".printk_index", align 4
@cma_declare_contiguous_nid._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cma: Reserved %ld MiB at %pa\0A\00", [32 x i8] zeroinitializer }, align 32
@cma_declare_contiguous_nid._entry_ptr.19 = internal global ptr @cma_declare_contiguous_nid._entry.17, section ".printk_index", align 4
@cma_declare_contiguous_nid._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cma: Failed to reserve %ld MiB\0A\00", [62 x i8] zeroinitializer }, align 32
@cma_declare_contiguous_nid._entry_ptr.22 = internal global ptr @cma_declare_contiguous_nid._entry.20, section ".printk_index", align 4
@cma_alloc.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cma_alloc\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(cma %p, count %lu, align %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cma: %s(cma %p, count %lu, align %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@cma_alloc.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): memory range at %p is busy, retrying\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cma: %s(): memory range at %p is busy, retrying\0A\00", [47 x i8] zeroinitializer }, align 32
@cma_alloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cma_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013cma: %s: %s: alloc failed, req-size: %lu pages, ret: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cma_alloc._entry_ptr = internal global ptr @cma_alloc._entry, section ".printk_index", align 4
@cma_alloc.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.23, ptr @.str.2, ptr @.str.30, i8 0, i8 -128, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(): returned %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cma: %s(): returned %p\0A\00", [40 x i8] zeroinitializer }, align 32
@cma_pages_valid.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cma_pages_valid\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(page %p, count %lu)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cma: %s(page %p, count %lu)\0A\00", [35 x i8] zeroinitializer }, align 32
@cma_release.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.35, ptr @.str.2, ptr @.str.33, i8 0, i8 -115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cma_release\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pfn\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"const struct page *\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"page\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"align\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"name=%s pfn=0x%lx page=%p count=%lu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"name=%s count=%lu align=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"name=%s pfn=0x%lx page=%p count=%lu align=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cma_activate_area.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cma_activate_area.__already_done.49 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cma_activate_area.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cma->lock\00", [21 x i8] zeroinitializer }, align 32
@cma_activate_area.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cma->mem_head_lock\00", [44 x i8] zeroinitializer }, align 32
@cma_activate_area._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013cma: CMA area %s could not be activated\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cma_activate_area\00", [46 x i8] zeroinitializer }, align 32
@cma_activate_area._entry_ptr = internal global ptr @cma_activate_area._entry, section ".printk_index", align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_set = external dso_local global %struct.tracepoint, align 4
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/cma.h\00", [37 x i8] zeroinitializer }, align 32
@trace_cma_alloc_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_cma_alloc_busy_retry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_cma_alloc_finish.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cma_debug_show_areas._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cma: number of available pages: \00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cma_debug_show_areas\00", [43 x i8] zeroinitializer }, align 32
@cma_debug_show_areas._entry_ptr = internal global ptr @cma_debug_show_areas._entry, section ".printk_index", align 4
@cma_debug_show_areas._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c%s%lu@%lu\00", [20 x i8] zeroinitializer }, align 32
@cma_debug_show_areas._entry_ptr.65 = internal global ptr @cma_debug_show_areas._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cma_debug_show_areas._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.62, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\01c=> %lu free of %lu total pages\0A\00", [62 x i8] zeroinitializer }, align 32
@cma_debug_show_areas._entry_ptr.70 = internal global ptr @cma_debug_show_areas._entry.68, section ".printk_index", align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@trace_cma_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"str__cma__trace_system_name\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 36, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [35 x i8] c"trace_event_fields_cma_alloc_class\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [31 x i8] c"trace_event_fields_cma_release\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_cma_release\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"print_fmt_cma_release\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"event_cma_release\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [35 x i8] c"trace_event_fields_cma_alloc_start\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_cma_alloc_start\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"print_fmt_cma_alloc_start\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"event_cma_alloc_start\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_cma_alloc_class\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"print_fmt_cma_alloc_class\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"event_cma_alloc_finish\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 94, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"event_cma_alloc_busy_retry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 102, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"cma_area_count\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 39, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 175, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [10 x i8] c"cma_areas\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 38, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 202, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 251, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 255, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 275, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 296, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 311, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 376, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 383, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 440, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 486, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 508, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 513, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 538, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 564, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 42, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 11, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 121, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 125, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 138, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1368, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 440, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant [30 x i8] c"../include/trace/events/cma.h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 70, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 108, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 396, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 404, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [12 x i8] c"../mm/cma.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 409, i32 2 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__bpf_trace_tp_map_cma_alloc_busy_retry, ptr @__bpf_trace_tp_map_cma_alloc_finish, ptr @__bpf_trace_tp_map_cma_alloc_start, ptr @__bpf_trace_tp_map_cma_release, ptr @__event_cma_alloc_busy_retry, ptr @__event_cma_alloc_finish, ptr @__event_cma_alloc_start, ptr @__event_cma_release, ptr @__initcall__kmod_cma__285_151_cma_init_reserved_areas1, ptr @__tracepoint_cma_alloc_busy_retry, ptr @__tracepoint_cma_alloc_finish, ptr @__tracepoint_cma_alloc_start, ptr @__tracepoint_cma_release, ptr @__tracepoint_ptr_cma_alloc_busy_retry, ptr @__tracepoint_ptr_cma_alloc_finish, ptr @__tracepoint_ptr_cma_alloc_start, ptr @__tracepoint_ptr_cma_release, ptr @cma_activate_area._entry, ptr @cma_activate_area._entry_ptr, ptr @cma_alloc._entry, ptr @cma_alloc._entry_ptr, ptr @cma_debug_show_areas._entry, ptr @cma_debug_show_areas._entry.63, ptr @cma_debug_show_areas._entry.68, ptr @cma_debug_show_areas._entry_ptr, ptr @cma_debug_show_areas._entry_ptr.65, ptr @cma_debug_show_areas._entry_ptr.70, ptr @cma_declare_contiguous_nid._entry, ptr @cma_declare_contiguous_nid._entry.11, ptr @cma_declare_contiguous_nid._entry.14, ptr @cma_declare_contiguous_nid._entry.17, ptr @cma_declare_contiguous_nid._entry.20, ptr @cma_declare_contiguous_nid._entry.8, ptr @cma_declare_contiguous_nid._entry_ptr, ptr @cma_declare_contiguous_nid._entry_ptr.10, ptr @cma_declare_contiguous_nid._entry_ptr.13, ptr @cma_declare_contiguous_nid._entry_ptr.16, ptr @cma_declare_contiguous_nid._entry_ptr.19, ptr @cma_declare_contiguous_nid._entry_ptr.22, ptr @cma_init_reserved_mem._entry, ptr @cma_init_reserved_mem._entry_ptr, ptr @event_class_cma_alloc_class, ptr @event_class_cma_alloc_start, ptr @event_class_cma_release, ptr @event_cma_alloc_busy_retry, ptr @event_cma_alloc_finish, ptr @event_cma_alloc_start, ptr @event_cma_release, ptr @str__cma__trace_system_name, ptr @trace_event_fields_cma_alloc_class, ptr @trace_event_fields_cma_release, ptr @trace_event_type_funcs_cma_release, ptr @print_fmt_cma_release, ptr @trace_event_fields_cma_alloc_start, ptr @trace_event_type_funcs_cma_alloc_start, ptr @print_fmt_cma_alloc_start, ptr @trace_event_type_funcs_cma_alloc_class, ptr @print_fmt_cma_alloc_class, ptr @cma_area_count, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cma_areas, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @cma_alloc._rs, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @cma_activate_area.__key, ptr @.str.50, ptr @cma_activate_area.__key.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__cma__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cma_alloc_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cma_release to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cma_release to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cma_release to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cma_release to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cma_alloc_start to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cma_alloc_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cma_alloc_start to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cma_alloc_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cma_alloc_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cma_alloc_class to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cma_alloc_finish to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cma_alloc_busy_retry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_area_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_init_reserved_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_areas to i32), i32 1664, i32 2080, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_declare_contiguous_nid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_declare_contiguous_nid._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_declare_contiguous_nid._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_declare_contiguous_nid._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_declare_contiguous_nid._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_declare_contiguous_nid._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_alloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_activate_area.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_activate_area.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_activate_area._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_debug_show_areas._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_debug_show_areas._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_debug_show_areas._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cma_release(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_release, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cma_alloc_start(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %count, i32 noundef %align) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %count, i32 noundef %align) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cma_alloc_finish(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_finish, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cma_alloc_busy_retry(ptr nocapture readnone %__data, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_busy_retry, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void %2(ptr noundef %4, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cma_alloc_class(ptr noundef %__data, ptr noundef readonly %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !189

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i32 = icmp eq ptr %name, null
  %spec.select.i = select i1 %tobool.not.i32, ptr @.str.36, ptr %name
  %call.i33 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #17
  %add = add i32 %call.i33, 29
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = shl i32 %call.i33, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #18
  %pfn10 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %pfn10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pfn, ptr %pfn10, align 4
  %page11 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %page11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %page, ptr %page11, align 4
  %count12 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %count12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %count12, align 4
  %align13 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %align13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %align, ptr %align13, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cma_alloc_class(ptr noundef %__data, ptr noundef readonly %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !190
  %tobool.not.i = icmp eq ptr %name, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.36, ptr %name
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #17
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i56.not = icmp eq ptr %15, null
  br i1 %tobool.not.i56.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 40
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !178) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #18
  %pfn22 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %pfn22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %pfn, ptr %pfn22, align 4
  %page23 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %page23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %page, ptr %page23, align 4
  %count24 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %count24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %count, ptr %count24, align 4
  %align25 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %align25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %align, ptr %align25, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cma_release(ptr noundef %__data, ptr noundef readonly %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !189

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i29 = icmp eq ptr %name, null
  %spec.select.i = select i1 %tobool.not.i29, ptr @.str.36, ptr %name
  %call.i30 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #17
  %add = add i32 %call.i30, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = shl i32 %call.i30, 16
  %or.i = add i32 %add.i, 65560
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #18
  %pfn10 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %pfn10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pfn, ptr %pfn10, align 4
  %page11 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %page11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %page, ptr %page11, align 4
  %count12 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %count12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %count12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cma_release(ptr noundef %__data, ptr noundef readonly %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !190
  %tobool.not.i = icmp eq ptr %name, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.36, ptr %name
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #17
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65560
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i53.not = icmp eq ptr %15, null
  br i1 %tobool.not.i53.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !178) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #18
  %pfn22 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %pfn22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %pfn, ptr %pfn22, align 4
  %page23 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %page23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %page, ptr %page23, align 4
  %count24 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %count24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %count, ptr %count24, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cma_alloc_start(ptr noundef %__data, ptr noundef readonly %name, i32 noundef %count, i32 noundef %align) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !189

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i26 = icmp eq ptr %name, null
  %spec.select.i = select i1 %tobool.not.i26, ptr @.str.36, ptr %name
  %call.i27 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #17
  %add = add i32 %call.i27, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = shl i32 %call.i27, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #18
  %count10 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %count10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %count, ptr %count10, align 4
  %align11 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %align11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %align, ptr %align11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cma_alloc_start(ptr noundef %__data, ptr noundef readonly %name, i32 noundef %count, i32 noundef %align) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !190
  %tobool.not.i = icmp eq ptr %name, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.36, ptr %name
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #17
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i50.not = icmp eq ptr %15, null
  br i1 %tobool.not.i50.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !178) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #18
  %count22 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %count22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %count, ptr %count22, align 4
  %align23 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %align23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %align, ptr %align23, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cma_release(ptr noundef %__data, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %pfn to i64
  %1 = ptrtoint ptr %page to i32
  %conv8 = zext i32 %1 to i64
  %conv12 = zext i32 %count to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cma_alloc_start(ptr noundef %__data, ptr noundef %name, i32 noundef %count, i32 noundef %align) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %count to i64
  %conv8 = zext i32 %align to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cma_alloc_class(ptr noundef %__data, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %pfn to i64
  %1 = ptrtoint ptr %page to i32
  %conv8 = zext i32 %1 to i64
  %conv12 = zext i32 %count to i64
  %conv16 = zext i32 %align to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cma_get_base(ptr nocapture noundef readonly %cma) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cma, align 8
  %shl = shl i32 %1, 12
  ret i32 %shl
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cma_get_size(ptr nocapture noundef readonly %cma) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %shl = shl i32 %1, 12
  ret i32 %shl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @cma_get_name(ptr noundef readnone %cma) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 8
  ret ptr %name
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_init_reserved_areas() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cma_area_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3.not = icmp eq i32 %0, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.04
  tail call fastcc void @cma_activate_area(ptr noundef %arrayidx) #19
  %inc = add nuw i32 %i.04, 1
  %1 = load i32, ptr @cma_area_count, align 4
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cma_init_reserved_mem(i32 noundef %base, i32 noundef %size, i32 noundef %order_per_bit, ptr noundef readonly %name, ptr nocapture noundef writeonly %res_cma) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cma_area_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %cmp = icmp eq i32 %0, 8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %base, i32 noundef %size) #14
  br i1 %call1, label %if.end3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %notmask = shl nsw i32 -1, %order_per_bit
  %sub = and i32 %notmask, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4.not = icmp eq i32 %sub, 0
  br i1 %cmp4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %add = add i32 %base, 8388607
  %and9 = and i32 %add, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %base)
  %cmp10.not = icmp eq i32 %and9, %base
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end6
  %add13 = add i32 %size, 8388607
  %and16 = and i32 %add13, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and16, i32 %size)
  %cmp17.not = icmp eq i32 %and16, %size
  br i1 %cmp17.not, label %if.end19, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false11
  %1 = load i32, ptr @cma_area_count, align 4
  %arrayidx = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %1
  %tobool20.not = icmp eq ptr %name, null
  %name24 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %1, i32 8
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name24, i32 noundef 64, ptr noundef nonnull %name)
  br label %if.end27

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name24, i32 noundef 64, ptr noundef nonnull @.str.3, i32 noundef %1)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then21
  %shr28 = lshr i32 %base, 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr28, ptr %arrayidx, align 8
  %shr29 = lshr i32 %size, 12
  %count = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %1, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr29, ptr %count, align 4
  %order_per_bit30 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %1, i32 3
  %4 = ptrtoint ptr %order_per_bit30 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %order_per_bit, ptr %order_per_bit30, align 4
  %5 = ptrtoint ptr %res_cma to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %res_cma, align 4
  %6 = load i32, ptr @cma_area_count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @cma_area_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @totalcma_pages to i32))
  %7 = load i32, ptr @totalcma_pages, align 4
  %add31 = add i32 %7, %shr29
  store i32 %add31, ptr @totalcma_pages, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %lor.lhs.false11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ 0, %if.end27 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cma_declare_contiguous_nid(i32 noundef %base, i32 noundef %size, i32 noundef %limit, i32 noundef %alignment, i32 noundef %order_per_bit, i1 noundef zeroext %fixed, ptr noundef %name, ptr nocapture noundef writeonly %res_cma, i32 noundef %nid) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %base.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %alignment.addr = alloca i32, align 4
  %highmem_start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %base, ptr %base.addr, align 4
  %1 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size.addr, align 4
  %2 = ptrtoint ptr %limit.addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %limit, ptr %limit.addr, align 4
  %3 = ptrtoint ptr %alignment.addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %alignment, ptr %alignment.addr, align 4
  %call = tail call i32 @memblock_end_of_DRAM() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %highmem_start) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %4 = load ptr, ptr @high_memory, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -1
  %5 = ptrtoint ptr %add.ptr to i32
  %call1 = tail call i32 @__virt_to_phys(i32 noundef %5) #14
  %add = add i32 %call1, 1
  %6 = ptrtoint ptr %highmem_start to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %highmem_start, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cma_declare_contiguous_nid.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cma_declare_contiguous_nid, %do.end)) #14
          to label %if.then [label %do.end], !srcloc !191

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cma_declare_contiguous_nid.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef nonnull %size.addr, ptr noundef nonnull %base.addr, ptr noundef nonnull %limit.addr, ptr noundef nonnull %alignment.addr) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr @cma_area_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp = icmp eq i32 %7, 8
  br i1 %cmp, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #20
  br label %cleanup117

if.end13:                                         ; preds = %do.end
  %8 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %if.end13.cleanup117_crit_edge, label %if.end16

if.end13.cleanup117_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup117

if.end16:                                         ; preds = %if.end13
  %10 = ptrtoint ptr %alignment.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alignment.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not = icmp eq i32 %11, 0
  %12 = call i32 @llvm.ctpop.i32(i32 %11) #14, !range !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp1.i = icmp ult i32 %12, 2
  %or.cond148 = or i1 %tobool17.not, %cmp1.i
  br i1 %or.cond148, label %if.end20, label %if.end16.cleanup117_crit_edge

if.end16.cleanup117_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup117

if.end20:                                         ; preds = %if.end16
  %13 = call i32 @llvm.umax.i32(i32 %11, i32 8388608)
  %14 = ptrtoint ptr %alignment.addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %alignment.addr, align 4
  br i1 %fixed, label %land.lhs.true24, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = add i32 %13, -1
  br label %if.end32

land.lhs.true24:                                  ; preds = %if.end20
  %15 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.addr, align 4
  %sub = add i32 %13, -1
  %and = and i32 %16, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true24.if.end32_crit_edge, label %if.then26

land.lhs.true24.if.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %base.addr, ptr noundef nonnull %alignment.addr) #20
  br label %do.end113

if.end32:                                         ; preds = %land.lhs.true24.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %sub33.pre-phi = phi i32 [ %.pre, %if.end20.if.end32_crit_edge ], [ %sub, %land.lhs.true24.if.end32_crit_edge ]
  %17 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base.addr, align 4
  %add34 = add i32 %18, %sub33.pre-phi
  %neg = sub i32 0, %13
  %and36 = and i32 %add34, %neg
  store i32 %and36, ptr %base.addr, align 4
  %add38 = add i32 %sub33.pre-phi, %9
  %and41 = and i32 %add38, %neg
  %19 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and41, ptr %size.addr, align 4
  %20 = ptrtoint ptr %limit.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %limit.addr, align 4
  %and44 = and i32 %21, %neg
  store i32 %and44, ptr %limit.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool45.not = icmp ne i32 %and36, 0
  %spec.select = and i1 %tobool45.not, %fixed
  %shr = lshr i32 %and41, 12
  %notmask = shl nsw i32 -1, %order_per_bit
  %sub48 = xor i32 %notmask, -1
  %and49 = and i32 %shr, %sub48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %cmp50 = icmp eq i32 %and49, 0
  br i1 %cmp50, label %if.end52, label %if.end32.cleanup117_crit_edge

if.end32.cleanup117_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup117

if.end52:                                         ; preds = %if.end32
  br i1 %spec.select, label %land.lhs.true54, label %if.end52.if.end65_crit_edge

if.end52.if.end65_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

land.lhs.true54:                                  ; preds = %if.end52
  %22 = ptrtoint ptr %highmem_start to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %highmem_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and36, i32 %23)
  %cmp55 = icmp ult i32 %and36, %23
  %add57 = add i32 %and36, %and41
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %23)
  %cmp58 = icmp ugt i32 %add57, %23
  %or.cond = select i1 %cmp55, i1 %cmp58, i1 false
  br i1 %or.cond, label %if.then59, label %land.lhs.true54.if.end65_crit_edge

land.lhs.true54.if.end65_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then59:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #16
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %base.addr, ptr noundef nonnull %highmem_start) #20
  br label %do.end113

if.end65:                                         ; preds = %land.lhs.true54.if.end65_crit_edge, %if.end52.if.end65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp66 = icmp eq i32 %and44, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and44, i32 %call)
  %cmp67 = icmp ugt i32 %and44, %call
  %or.cond139 = select i1 %cmp66, i1 true, i1 %cmp67
  br i1 %or.cond139, label %if.then68, label %if.end65.if.end69_crit_edge

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %limit.addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call, ptr %limit.addr, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65.if.end69_crit_edge
  %add70 = add i32 %and36, %and41
  %25 = ptrtoint ptr %limit.addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %limit.addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add70, i32 %26)
  %cmp71 = icmp ugt i32 %add70, %26
  br i1 %cmp71, label %if.then72, label %if.end78

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %size.addr, ptr noundef nonnull %base.addr, ptr noundef nonnull %limit.addr) #20
  br label %do.end113

if.end78:                                         ; preds = %if.end69
  br i1 %spec.select, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.end78
  %call81 = call zeroext i1 @memblock_is_region_reserved(i32 noundef %and36, i32 noundef %and41) #14
  br i1 %call81, label %if.then80.do.end113_crit_edge, label %lor.lhs.false82

if.then80.do.end113_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end113

lor.lhs.false82:                                  ; preds = %if.then80
  %27 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base.addr, align 4
  %29 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.addr, align 4
  %call83 = call i32 @memblock_reserve(i32 noundef %28, i32 noundef %30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %lor.lhs.false82.do.end113_crit_edge, label %lor.lhs.false82.if.end100_crit_edge

lor.lhs.false82.if.end100_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

lor.lhs.false82.do.end113_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end113

if.else:                                          ; preds = %if.end78
  %31 = ptrtoint ptr %highmem_start to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %highmem_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and36, i32 %32)
  %cmp87 = icmp ult i32 %and36, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %32)
  %cmp89 = icmp ugt i32 %26, %32
  %or.cond140 = select i1 %cmp87, i1 %cmp89, i1 false
  br i1 %or.cond140, label %if.end92, label %if.else.if.then94_crit_edge

if.else.if.then94_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then94

if.end92:                                         ; preds = %if.else
  %call91 = call i32 @memblock_alloc_range_nid(i32 noundef %and41, i32 noundef %13, i32 noundef %32, i32 noundef %26, i32 noundef %nid, i1 noundef zeroext true) #14
  %33 = ptrtoint ptr %highmem_start to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %highmem_start, align 4
  %35 = ptrtoint ptr %limit.addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %limit.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool93.not = icmp eq i32 %call91, 0
  br i1 %tobool93.not, label %if.end92.if.then94_crit_edge, label %if.end92.cleanup.thread_crit_edge

if.end92.cleanup.thread_crit_edge:                ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.end92.if.then94_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then94

if.then94:                                        ; preds = %if.end92.if.then94_crit_edge, %if.else.if.then94_crit_edge
  %36 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.addr, align 4
  %38 = ptrtoint ptr %alignment.addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %alignment.addr, align 4
  %40 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base.addr, align 4
  %42 = ptrtoint ptr %limit.addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %limit.addr, align 4
  %call95 = call i32 @memblock_alloc_range_nid(i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %nid, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then94.do.end113_crit_edge, label %if.then94.cleanup.thread_crit_edge

if.then94.cleanup.thread_crit_edge:               ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.then94.do.end113_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end113

cleanup.thread:                                   ; preds = %if.then94.cleanup.thread_crit_edge, %if.end92.cleanup.thread_crit_edge
  %addr.1 = phi i32 [ %call91, %if.end92.cleanup.thread_crit_edge ], [ %call95, %if.then94.cleanup.thread_crit_edge ]
  call void @kmemleak_ignore_phys(i32 noundef %addr.1) #14
  %44 = ptrtoint ptr %base.addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %addr.1, ptr %base.addr, align 4
  br label %if.end100

if.end100:                                        ; preds = %cleanup.thread, %lor.lhs.false82.if.end100_crit_edge
  %45 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base.addr, align 4
  %47 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.addr, align 4
  %call101 = call i32 @cma_init_reserved_mem(i32 noundef %46, i32 noundef %48, i32 noundef %order_per_bit, ptr noundef %name, ptr noundef %res_cma) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %do.end107, label %free_mem

do.end107:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.addr, align 4
  %div138 = lshr i32 %50, 20
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %div138, ptr noundef nonnull %base.addr) #20
  br label %cleanup117

free_mem:                                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %base.addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base.addr, align 4
  %53 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.addr, align 4
  %call110 = call i32 @memblock_phys_free(i32 noundef %52, i32 noundef %54) #14
  br label %do.end113

do.end113:                                        ; preds = %free_mem, %if.then94.do.end113_crit_edge, %lor.lhs.false82.do.end113_crit_edge, %if.then80.do.end113_crit_edge, %if.then72, %if.then59, %if.then26
  %ret.1 = phi i32 [ -22, %if.then26 ], [ -22, %if.then59 ], [ -22, %if.then72 ], [ %call101, %free_mem ], [ -16, %lor.lhs.false82.do.end113_crit_edge ], [ -16, %if.then80.do.end113_crit_edge ], [ -12, %if.then94.do.end113_crit_edge ]
  %55 = ptrtoint ptr %size.addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.addr, align 4
  %div115137 = lshr i32 %56, 20
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %div115137) #20
  br label %cleanup117

cleanup117:                                       ; preds = %do.end113, %do.end107, %if.end32.cleanup117_crit_edge, %if.end16.cleanup117_crit_edge, %if.end13.cleanup117_crit_edge, %do.end10
  %retval.0 = phi i32 [ -28, %do.end10 ], [ %ret.1, %do.end113 ], [ 0, %do.end107 ], [ -22, %if.end13.cleanup117_crit_edge ], [ -22, %if.end32.cleanup117_crit_edge ], [ -22, %if.end16.cleanup117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %highmem_start) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_alloc_range_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_ignore_phys(i32 noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_free(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cma_alloc(ptr noundef %cma, i32 noundef %count, i32 noundef %align, i1 noundef zeroext %no_warn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cma, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %lor.lhs.false

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

lor.lhs.false:                                    ; preds = %entry
  %count1 = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 1
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %bitmap = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 2
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bitmap, align 8
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false3.if.else_crit_edge, label %do.body

lor.lhs.false3.if.else_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

do.body:                                          ; preds = %lor.lhs.false3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cma_alloc.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cma_alloc, %do.end)) #14
          to label %if.then10 [label %do.end], !srcloc !191

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cma_alloc.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, ptr noundef nonnull %cma, i32 noundef %count, i32 noundef %align) #14
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool12.not = icmp eq i32 %count, 0
  br i1 %tobool12.not, label %do.end.if.else_crit_edge, label %if.end14

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end14:                                         ; preds = %do.end
  %name = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 8
  tail call fastcc void @trace_cma_alloc_start(ptr noundef %name, i32 noundef %count, i32 noundef %align)
  %order_per_bit.i = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 3
  %4 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %order_per_bit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %align)
  %cmp.not.i = icmp ult i32 %5, %align
  %sub.i = sub i32 %align, %5
  %notmask.i = shl nsw i32 -1, %sub.i
  %sub2.i = xor i32 %notmask.i, -1
  %retval.0.i183 = select i1 %cmp.not.i, i32 %sub2.i, i32 0
  %6 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cma, align 8
  %notmask.i184 = shl nsw i32 -1, %align
  %sub.i185 = xor i32 %notmask.i184, -1
  %and.i = and i32 %7, %sub.i185
  %shr.i = lshr i32 %and.i, %5
  %8 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count1, align 4
  %shr.i188 = lshr i32 %9, %5
  %notmask.i190 = shl nsw i32 -1, %5
  %sub.i191 = xor i32 %notmask.i190, -1
  %add.i = add i32 %sub.i191, %count
  %and.i192 = and i32 %add.i, %notmask.i190
  %shr.i193 = lshr i32 %and.i192, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i193, i32 %shr.i188)
  %cmp = icmp ugt i32 %shr.i193, %shr.i188
  br i1 %cmp, label %if.end14.if.else_crit_edge, label %for.cond.preheader

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

for.cond.preheader:                               ; preds = %if.end14
  %lock = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %10 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap, align 8
  %call22245 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %11, i32 noundef %shr.i188, i32 noundef 0, i32 noundef %shr.i193, i32 noundef %retval.0.i183, i32 noundef %shr.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call22245, i32 %shr.i188)
  %cmp23.not246 = icmp ult i32 %call22245, %shr.i188
  br i1 %cmp23.not246, label %if.end26.lr.ph, label %for.cond.preheader.if.then24_crit_edge

for.cond.preheader.if.then24_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

if.end26.lr.ph:                                   ; preds = %for.cond.preheader
  %or = select i1 %no_warn, i32 11456, i32 3264
  %add62 = add i32 %retval.0.i183, 1
  br label %if.end26

if.then24:                                        ; preds = %do.end57.if.then24_crit_edge, %for.cond.preheader.if.then24_crit_edge
  %ret.0.lcssa = phi i32 [ -12, %for.cond.preheader.if.then24_crit_edge ], [ -16, %do.end57.if.then24_crit_edge ]
  %pfn.0.lcssa = phi i32 [ -1, %for.cond.preheader.if.then24_crit_edge ], [ %add, %do.end57.if.then24_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %if.end72

if.end26:                                         ; preds = %do.end57.if.end26_crit_edge, %if.end26.lr.ph
  %call22247 = phi i32 [ %call22245, %if.end26.lr.ph ], [ %call22, %do.end57.if.end26_crit_edge ]
  %12 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bitmap, align 8
  tail call void @__bitmap_set(ptr noundef %13, i32 noundef %call22247, i32 noundef %shr.i193) #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  %14 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cma, align 8
  %16 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %order_per_bit.i, align 4
  %shl = shl i32 %call22247, %17
  %add = add i32 %shl, %15
  %add29 = add i32 %add, %count
  %call31 = tail call i32 @alloc_contig_range(i32 noundef %add, i32 noundef %add29, i32 noundef 4, i32 noundef %or) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %for.end, label %if.end34

if.end34:                                         ; preds = %if.end26
  %18 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cma, align 8
  %sub.i194 = sub i32 %add, %19
  %20 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %order_per_bit.i, align 4
  %shr.i196 = lshr i32 %sub.i194, %21
  %notmask.i.i = shl nsw i32 -1, %21
  %sub.i.i = xor i32 %notmask.i.i, -1
  %add.i.i = add i32 %sub.i.i, %count
  %and.i.i = and i32 %add.i.i, %notmask.i.i
  %shr.i.i = lshr i32 %and.i.i, %21
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %22 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bitmap, align 8
  tail call void @__bitmap_clear(ptr noundef %23, i32 noundef %shr.i196, i32 noundef %shr.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call31)
  %cmp35.not = icmp eq i32 %call31, -16
  br i1 %cmp35.not, label %do.body38, label %if.end34.if.end72_crit_edge

if.end34.if.end72_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

do.body38:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cma_alloc.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cma_alloc, %do.end57)) #14
          to label %if.then52 [label %do.end57], !srcloc !191

if.then52:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub53 = sub i32 %add, %25
  %add.ptr54 = getelementptr %struct.page, ptr %24, i32 %sub53
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cma_alloc.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.23, ptr noundef %add.ptr54) #14
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub60 = sub i32 %add, %27
  %add.ptr61 = getelementptr %struct.page, ptr %26, i32 %sub60
  tail call fastcc void @trace_cma_alloc_busy_retry(ptr noundef %name, i32 noundef %add, ptr noundef %add.ptr61, i32 noundef %count, i32 noundef %align)
  %add63 = add i32 %add62, %call22247
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %28 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bitmap, align 8
  %call22 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %29, i32 noundef %shr.i188, i32 noundef %add63, i32 noundef %shr.i193, i32 noundef %retval.0.i183, i32 noundef %shr.i) #14
  %cmp23.not = icmp ult i32 %call22, %shr.i188
  br i1 %cmp23.not, label %do.end57.if.end26_crit_edge, label %do.end57.if.then24_crit_edge

do.end57.if.then24_crit_edge:                     ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then24

do.end57.if.end26_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

for.end:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %add, %31
  %add.ptr = getelementptr %struct.page, ptr %30, i32 %sub
  tail call fastcc void @trace_cma_alloc_finish(ptr noundef %name, i32 noundef %add, ptr noundef %add.ptr, i32 noundef %count, i32 noundef %align)
  br label %do.body88

if.end72:                                         ; preds = %if.end34.if.end72_crit_edge, %if.then24
  %ret.1.ph = phi i32 [ %ret.0.lcssa, %if.then24 ], [ %call31, %if.end34.if.end72_crit_edge ]
  %pfn.1.ph = phi i32 [ %pfn.0.lcssa, %if.then24 ], [ %add, %if.end34.if.end72_crit_edge ]
  tail call fastcc void @trace_cma_alloc_finish(ptr noundef %name, i32 noundef %pfn.1.ph, ptr noundef null, i32 noundef %count, i32 noundef %align)
  br i1 %no_warn, label %if.end72.do.body88_crit_edge, label %if.then75

if.end72.do.body88_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body88

if.then75:                                        ; preds = %if.end72
  %call76 = tail call i32 @___ratelimit(ptr noundef nonnull @cma_alloc._rs, ptr noundef nonnull @.str.23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.if.end86_crit_edge, label %do.end81

if.then75.if.end86_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

do.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #16
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %count, i32 noundef %ret.1.ph) #20
  br label %if.end86

if.end86:                                         ; preds = %do.end81, %if.then75.if.end86_crit_edge
  %32 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count1, align 4
  %34 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %order_per_bit.i, align 4
  %shr.i.i198 = lshr i32 %33, %35
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #20
  %36 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bitmap, align 8
  %call233.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %37, i32 noundef %shr.i.i198, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call233.i, i32 %shr.i.i198)
  %cmp.not34.i = icmp ult i32 %call233.i, %shr.i.i198
  br i1 %cmp.not34.i, label %if.end86.if.end.i_crit_edge, label %if.end86.cma_debug_show_areas.exit_crit_edge

if.end86.cma_debug_show_areas.exit_crit_edge:     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %cma_debug_show_areas.exit

if.end86.if.end.i_crit_edge:                      ; preds = %if.end86
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end86.if.end.i_crit_edge
  %call236.i = phi i32 [ %call2.i, %if.end.i.if.end.i_crit_edge ], [ %call233.i, %if.end86.if.end.i_crit_edge ]
  %nr_total.035.i = phi i32 [ %add.i202, %if.end.i.if.end.i_crit_edge ], [ 0, %if.end86.if.end.i_crit_edge ]
  %38 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bitmap, align 8
  %call4.i = tail call i32 @_find_next_bit_be(ptr noundef %39, i32 noundef %shr.i.i198, i32 noundef %call236.i) #14
  %sub.i201 = sub i32 %call4.i, %call236.i
  %40 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %order_per_bit.i, align 4
  %shl.i = shl i32 %sub.i201, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_total.035.i)
  %tobool.not.i = icmp eq i32 %nr_total.035.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.67, ptr @.str.66
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull %cond.i, i32 noundef %shl.i, i32 noundef %call236.i) #20
  %add.i202 = add i32 %shl.i, %nr_total.035.i
  %42 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bitmap, align 8
  %call2.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %43, i32 noundef %shr.i.i198, i32 noundef %call4.i) #14
  %cmp.not.i203 = icmp ult i32 %call2.i, %shr.i.i198
  br i1 %cmp.not.i203, label %if.end.i.if.end.i_crit_edge, label %if.end.i.cma_debug_show_areas.exit_crit_edge

if.end.i.cma_debug_show_areas.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cma_debug_show_areas.exit

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

cma_debug_show_areas.exit:                        ; preds = %if.end.i.cma_debug_show_areas.exit_crit_edge, %if.end86.cma_debug_show_areas.exit_crit_edge
  %nr_total.0.lcssa.i = phi i32 [ 0, %if.end86.cma_debug_show_areas.exit_crit_edge ], [ %add.i202, %if.end.i.cma_debug_show_areas.exit_crit_edge ]
  %44 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count1, align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %nr_total.0.lcssa.i, i32 noundef %45) #20
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %do.body88

do.body88:                                        ; preds = %cma_debug_show_areas.exit, %if.end72.do.body88_crit_edge, %for.end
  %page.0224230 = phi ptr [ null, %if.end72.do.body88_crit_edge ], [ null, %cma_debug_show_areas.exit ], [ %add.ptr, %for.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cma_alloc.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cma_alloc, %out)) #14
          to label %if.then102 [label %out], !srcloc !191

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cma_alloc.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23, ptr noundef %page.0224230) #14
  br label %out

out:                                              ; preds = %if.then102, %do.body88
  %tobool106.not = icmp eq ptr %page.0224230, null
  br i1 %tobool106.not, label %out.if.else_crit_edge, label %if.then107

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then107:                                       ; preds = %out
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !193
  %47 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i204 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i204 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx13.i, align 4
  %add.i205 = add i32 %52, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 60) to i32)
  %53 = inttoptr i32 %add.i205 to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add14.i = add i32 %55, 1
  store i32 %add14.i, ptr %53, align 4
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !194
  %and.i.i.i206 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i206)
  %tobool.not.i207 = icmp eq i32 %and.i.i.i206, 0
  br i1 %tobool.not.i207, label %if.then.i208, label %if.then107.count_vm_event.exit_crit_edge, !prof !189

if.then107.count_vm_event.exit_crit_edge:         ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_vm_event.exit

if.then.i208:                                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %count_vm_event.exit

count_vm_event.exit:                              ; preds = %if.then.i208, %if.then107.count_vm_event.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #14, !srcloc !195
  tail call void @cma_sysfs_account_success_pages(ptr noundef nonnull %cma, i32 noundef %count) #14
  br label %if.end111

if.else:                                          ; preds = %out.if.else_crit_edge, %if.end14.if.else_crit_edge, %do.end.if.else_crit_edge, %lor.lhs.false3.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge, %entry.if.else_crit_edge
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !193
  %58 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i209 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i209 to ptr
  %cpu.i210 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu.i210 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i210, align 4
  %arrayidx13.i211 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx13.i211 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx13.i211, align 4
  %add.i212 = add i32 %63, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 61) to i32)
  %64 = inttoptr i32 %add.i212 to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add14.i213 = add i32 %66, 1
  store i32 %add14.i213, ptr %64, align 4
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !194
  %and.i.i.i214 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i214)
  %tobool.not.i215 = icmp eq i32 %and.i.i.i214, 0
  br i1 %tobool.not.i215, label %if.then.i216, label %if.else.count_vm_event.exit217_crit_edge, !prof !189

if.else.count_vm_event.exit217_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_vm_event.exit217

if.then.i216:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %count_vm_event.exit217

count_vm_event.exit217:                           ; preds = %if.then.i216, %if.else.count_vm_event.exit217_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %57) #14, !srcloc !195
  br i1 %tobool.not, label %count_vm_event.exit217.if.end111_crit_edge, label %if.then109

count_vm_event.exit217.if.end111_crit_edge:       ; preds = %count_vm_event.exit217
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then109:                                       ; preds = %count_vm_event.exit217
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @cma_sysfs_account_fail_pages(ptr noundef nonnull %cma, i32 noundef %count) #14
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %count_vm_event.exit217.if.end111_crit_edge, %count_vm_event.exit
  %page.1234 = phi ptr [ null, %count_vm_event.exit217.if.end111_crit_edge ], [ null, %if.then109 ], [ %page.0224230, %count_vm_event.exit ]
  ret ptr %page.1234
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cma_alloc_start(ptr noundef %name, i32 noundef %count, i32 noundef %align) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_start, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cma_alloc_start, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !196
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_start, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %name, i32 noundef %count, i32 noundef %align) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !197
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !197
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !198
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cma_alloc_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_cma_alloc_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 92, ptr noundef nonnull @.str.59) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %38 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_contig_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cma_alloc_busy_retry(ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_busy_retry, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cma_alloc_busy_retry, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !200
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_busy_retry, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !201
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !201
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !198
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_busy_retry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cma_alloc_busy_retry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_cma_alloc_busy_retry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 108, ptr noundef nonnull @.str.59) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %38 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cma_alloc_finish(ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_finish, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cma_alloc_finish, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !202
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_finish, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count, i32 noundef %align) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !203
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !203
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !198
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_alloc_finish, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cma_alloc_finish.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_cma_alloc_finish.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 100, ptr noundef nonnull @.str.59) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %38 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cma_sysfs_account_success_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cma_sysfs_account_fail_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cma_pages_valid(ptr noundef readonly %cma, ptr noundef %pages, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cma, null
  %tobool1.not = icmp eq ptr %pages, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %pages to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %1
  %2 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cma, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ult i32 %add, %3
  br i1 %cmp, label %if.end.do.body_crit_edge, label %lor.lhs.false2

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false2:                                   ; preds = %if.end
  %count4 = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 1
  %4 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count4, align 4
  %add5 = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add5)
  %cmp6.not = icmp ult i32 %add, %add5
  br i1 %cmp6.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false2.do.body_crit_edge

lor.lhs.false2.do.body_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false2.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cma_pages_valid.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cma_pages_valid, %cleanup)) #14
          to label %if.then12 [label %cleanup], !srcloc !191

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cma_pages_valid.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef nonnull %pages, i32 noundef %count) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.then12 ], [ true, %lor.lhs.false2.cleanup_crit_edge ], [ false, %do.body ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cma_release(ptr noundef %cma, ptr noundef %pages, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %cma, null
  %tobool1.not.i = icmp eq ptr %pages, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pages to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %1
  %2 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cma, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.i = icmp ult i32 %add.i, %3
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %lor.lhs.false2.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

lor.lhs.false2.i:                                 ; preds = %if.end.i
  %count4.i = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 1
  %4 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count4.i, align 4
  %add5.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add5.i)
  %cmp6.not.i = icmp ult i32 %add.i, %add5.i
  br i1 %cmp6.not.i, label %do.body, label %lor.lhs.false2.i.do.body.i_crit_edge

lor.lhs.false2.i.do.body.i_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false2.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cma_pages_valid.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cma_release, %cleanup)) #14
          to label %if.then12.i [label %cleanup], !srcloc !191

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cma_pages_valid.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef nonnull %pages, i32 noundef %count) #14
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false2.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cma_release.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cma_release, %do.end)) #14
          to label %if.then5 [label %do.end], !srcloc !191

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cma_release.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull %pages, i32 noundef %count) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %7
  %add8 = add i32 %add, %count
  %8 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cma, align 8
  %10 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count4.i, align 4
  %add10 = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %add10)
  %cmp = icmp ugt i32 %add8, %add10
  br i1 %cmp, label %do.body18, label %do.end26, !prof !189

do.body18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/cma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 568, 0\0A.popsection", ""() #14, !srcloc !204
  unreachable

do.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @free_contig_range(i32 noundef %add, i32 noundef %count) #14
  %12 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cma, align 8
  %sub.i = sub i32 %add, %13
  %order_per_bit.i = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 3
  %14 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %order_per_bit.i, align 4
  %shr.i = lshr i32 %sub.i, %15
  %notmask.i.i = shl nsw i32 -1, %15
  %sub.i.i = xor i32 %notmask.i.i, -1
  %add.i.i = add i32 %sub.i.i, %count
  %and.i.i = and i32 %add.i.i, %notmask.i.i
  %shr.i.i = lshr i32 %and.i.i, %15
  %lock.i = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #14
  %bitmap.i = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 2
  %16 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitmap.i, align 8
  tail call void @__bitmap_clear(ptr noundef %17, i32 noundef %shr.i, i32 noundef %shr.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #14
  %name = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 8
  tail call fastcc void @trace_cma_release(ptr noundef %name, i32 noundef %add, ptr noundef nonnull %pages, i32 noundef %count)
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then12.i, %do.body.i, %entry.cleanup_crit_edge
  %retval.0.i4244 = phi i1 [ true, %do.end26 ], [ false, %do.body.i ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then12.i ]
  ret i1 %retval.0.i4244
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_contig_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cma_release(ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_release, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_cma_release, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !191

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_release, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %name, i32 noundef %pfn, ptr noundef %page, i32 noundef %count) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !178) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !198
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cma_release, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cma_release.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_cma_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 68, ptr noundef nonnull @.str.59) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !199
  %38 = tail call i32 @llvm.read_register.i32(metadata !178) #14
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cma_for_each_area(ptr nocapture noundef readonly %it, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cma_area_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5.not = icmp eq i32 %0, 0
  br i1 %cmp5.not, label %entry.cleanup1_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup1

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.06, 1
  %1 = load i32, ptr @cma_area_count, align 4
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup1_crit_edge

for.cond.cleanup1_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup1

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.06
  %call = tail call i32 %it(ptr noundef %arrayidx, ptr noundef %data) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup1_crit_edge

for.body.cleanup1_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup1

cleanup1:                                         ; preds = %for.body.cleanup1_crit_edge, %for.cond.cleanup1_crit_edge, %entry.cleanup1_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup1_crit_edge ], [ 0, %for.cond.cleanup1_crit_edge ], [ %call, %for.body.cleanup1_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cma_release(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %pfn = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pfn, align 4
  %page = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  %count = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.46, ptr noundef %add.ptr, i32 noundef %5, ptr noundef %7, i32 noundef %9) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cma_alloc_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %count = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %align = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %align, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.47, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cma_alloc_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %pfn = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pfn, align 4
  %page = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  %count = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %align = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %align, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.48, ptr noundef %add.ptr, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cma_activate_area(ptr noundef %cma) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cma, align 8
  %count.i = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  %order_per_bit.i = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 3
  %4 = ptrtoint ptr %order_per_bit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %order_per_bit.i, align 4
  %shr.i = lshr i32 %3, %5
  %call2 = tail call ptr @bitmap_zalloc(i32 noundef %shr.i, i32 noundef 3264) #14
  %bitmap = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 2
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %bitmap, align 8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.out_error_crit_edge, label %if.end

entry.out_error_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_error

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @pfn_valid(i32 noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.rhs, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.rhs:                                         ; preds = %if.end
  %.b183 = load i1, ptr @cma_activate_area.__already_done, align 1
  br i1 %.b183, label %land.rhs.if.end36_crit_edge, label %if.then14, !prof !188

land.rhs.if.end36_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cma_activate_area.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 109, i32 noundef 9, ptr noundef null) #14
  br label %if.end36

if.end36:                                         ; preds = %if.then14, %land.rhs.if.end36_crit_edge, %if.end.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %1, %8
  %add.ptr = getelementptr %struct.page, ptr %7, i32 %sub
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !189

if.then.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.55) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !207
  unreachable

page_zone.exit:                                   ; preds = %if.end36
  %shr.i.i = lshr i32 %10, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  br label %for.cond

for.cond:                                         ; preds = %page_zone.exit188.for.cond_crit_edge, %page_zone.exit
  %pfn.0.in = phi i32 [ %1, %page_zone.exit ], [ %pfn.0, %page_zone.exit188.for.cond_crit_edge ]
  %pfn.0 = add i32 %pfn.0.in, 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %add45 = add i32 %12, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %pfn.0, i32 %add45)
  %cmp = icmp ult i32 %pfn.0, %add45
  br i1 %cmp, label %for.body, label %for.cond109.preheader

for.cond109.preheader:                            ; preds = %for.cond
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 4
  %add111190 = add i32 %14, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add111190)
  %cmp112191 = icmp ult i32 %1, %add111190
  br i1 %cmp112191, label %for.cond109.preheader.for.body113_crit_edge, label %for.cond109.preheader.do.body119_crit_edge

for.cond109.preheader.do.body119_crit_edge:       ; preds = %for.cond109.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body119

for.cond109.preheader.for.body113_crit_edge:      ; preds = %for.cond109.preheader
  br label %for.body113

for.body:                                         ; preds = %for.cond
  %call47 = tail call i32 @pfn_valid(i32 noundef %pfn.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.rhs57, label %for.body.if.end95_crit_edge

for.body.if.end95_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

land.rhs57:                                       ; preds = %for.body
  %.b181182 = load i1, ptr @cma_activate_area.__already_done.49, align 1
  br i1 %.b181182, label %land.rhs57.if.end95_crit_edge, label %if.then68, !prof !188

land.rhs57.if.end95_crit_edge:                    ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then68:                                        ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cma_activate_area.__already_done.49, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef null) #14
  br label %if.end95

if.end95:                                         ; preds = %if.then68, %land.rhs57.if.end95_crit_edge, %for.body.if.end95_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub103 = sub i32 %pfn.0, %16
  %add.ptr104 = getelementptr %struct.page, ptr %15, i32 %sub103
  %17 = ptrtoint ptr %add.ptr104 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %add.ptr104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i.i184 = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i.i184, label %if.then.i.i185, label %page_zone.exit188, !prof !189

if.then.i.i185:                                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %add.ptr104, ptr noundef nonnull @.str.55) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #14, !srcloc !207
  unreachable

page_zone.exit188:                                ; preds = %if.end95
  %shr.i.i186 = lshr i32 %18, 30
  %arrayidx.i187 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i186
  %cmp106.not = icmp eq ptr %arrayidx.i187, %arrayidx.i
  br i1 %cmp106.not, label %page_zone.exit188.for.cond_crit_edge, label %not_in_zone

page_zone.exit188.for.cond_crit_edge:             ; preds = %page_zone.exit188
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.body113:                                      ; preds = %for.body113.for.body113_crit_edge, %for.cond109.preheader.for.body113_crit_edge
  %pfn.1192 = phi i32 [ %add117, %for.body113.for.body113_crit_edge ], [ %1, %for.cond109.preheader.for.body113_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub114 = sub i32 %pfn.1192, %20
  %add.ptr115 = getelementptr %struct.page, ptr %19, i32 %sub114
  tail call void @init_cma_reserved_pageblock(ptr noundef %add.ptr115) #14
  %add117 = add i32 %pfn.1192, 2048
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i, align 4
  %add111 = add i32 %22, %1
  %cmp112 = icmp ult i32 %add117, %add111
  br i1 %cmp112, label %for.body113.for.body113_crit_edge, label %for.body113.do.body119_crit_edge

for.body113.do.body119_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body119

for.body113.for.body113_crit_edge:                ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body113

do.body119:                                       ; preds = %for.body113.do.body119_crit_edge, %for.cond109.preheader.do.body119_crit_edge
  %lock = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.50, ptr noundef nonnull @cma_activate_area.__key, i16 noundef signext 3) #14
  %mem_head = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 5
  %23 = ptrtoint ptr %mem_head to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mem_head, align 4
  %mem_head_lock = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %mem_head_lock, ptr noundef nonnull @.str.52, ptr noundef nonnull @cma_activate_area.__key.51, i16 noundef signext 3) #14
  br label %cleanup

not_in_zone:                                      ; preds = %page_zone.exit188
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bitmap, align 8
  tail call void @bitmap_free(ptr noundef %25) #14
  br label %out_error

out_error:                                        ; preds = %not_in_zone, %entry.out_error_crit_edge
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i, align 4
  %add130193 = add i32 %27, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add130193)
  %cmp131194 = icmp ult i32 %1, %add130193
  br i1 %cmp131194, label %out_error.for.body132_crit_edge, label %out_error.for.end137_crit_edge

out_error.for.end137_crit_edge:                   ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end137

out_error.for.body132_crit_edge:                  ; preds = %out_error
  br label %for.body132

for.body132:                                      ; preds = %for.body132.for.body132_crit_edge, %out_error.for.body132_crit_edge
  %pfn.2195 = phi i32 [ %inc136, %for.body132.for.body132_crit_edge ], [ %1, %out_error.for.body132_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %29 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub133 = sub i32 %pfn.2195, %29
  %add.ptr134 = getelementptr %struct.page, ptr %28, i32 %sub133
  tail call fastcc void @free_reserved_page(ptr noundef %add.ptr134)
  %inc136 = add nuw i32 %pfn.2195, 1
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i, align 4
  %add130 = add i32 %31, %1
  %cmp131 = icmp ult i32 %inc136, %add130
  br i1 %cmp131, label %for.body132.for.body132_crit_edge, label %for.body132.for.end137_crit_edge

for.body132.for.end137_crit_edge:                 ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end137

for.body132.for.body132_crit_edge:                ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body132

for.end137:                                       ; preds = %for.body132.for.end137_crit_edge, %out_error.for.end137_crit_edge
  %.lcssa = phi i32 [ %27, %out_error.for.end137_crit_edge ], [ %31, %for.body132.for.end137_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @totalcma_pages to i32))
  %32 = load i32, ptr @totalcma_pages, align 4
  %sub139 = sub i32 %32, %.lcssa
  store i32 %sub139, ptr @totalcma_pages, align 4
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %count.i, align 4
  %name = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 8
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name) #20
  br label %cleanup

cleanup:                                          ; preds = %for.end137, %do.body119
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cma_reserved_pageblock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_reserved_page(ptr noundef %page) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %entry
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !188

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.56) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !208
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %ClearPageReserved.exit, !prof !189

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.57) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #14, !srcloc !209
  unreachable

ClearPageReserved.exit:                           ; preds = %do.body7.i
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %page) #14
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %_refcount.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_set, i32 0, i32 1), ptr blockaddress(@free_reserved_page, %if.then.i.i)) #14
          to label %init_page_count.exit [label %if.then.i.i], !srcloc !191

if.then.i.i:                                      ; preds = %ClearPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__page_ref_set(ptr noundef %page, i32 noundef 1) #14
  br label %init_page_count.exit

init_page_count.exit:                             ; preds = %if.then.i.i, %ClearPageReserved.exit
  tail call void @__free_pages(ptr noundef %page, i32 noundef 0) #14
  tail call void @adjust_managed_page_count(ptr noundef %page, i32 noundef 1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_managed_page_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { cold }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !100, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !132, !134, !136, !137, !139, !140, !142, !143, !144, !145, !147, !149, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !172, !174, !175, !176, !177}
!llvm.named.register.sp = !{!178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__tracepoint_cma_release, !1, !"__tracepoint_cma_release", i1 false, i1 false}
!1 = !{!"../include/trace/events/cma.h", i32 42, i32 1}
!2 = !{ptr @__tracepoint_ptr_cma_release, !1, !"__tracepoint_ptr_cma_release", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_cma_release, !1, !"__SCK__tp_func_cma_release", i1 false, i1 false}
!4 = !{ptr @__tracepoint_cma_alloc_start, !5, !"__tracepoint_cma_alloc_start", i1 false, i1 false}
!5 = !{!"../include/trace/events/cma.h", i32 70, i32 1}
!6 = !{ptr @__tracepoint_ptr_cma_alloc_start, !5, !"__tracepoint_ptr_cma_alloc_start", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_cma_alloc_start, !5, !"__SCK__tp_func_cma_alloc_start", i1 false, i1 false}
!8 = !{ptr @__tracepoint_cma_alloc_finish, !9, !"__tracepoint_cma_alloc_finish", i1 false, i1 false}
!9 = !{!"../include/trace/events/cma.h", i32 94, i32 1}
!10 = !{ptr @__tracepoint_ptr_cma_alloc_finish, !9, !"__tracepoint_ptr_cma_alloc_finish", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_cma_alloc_finish, !9, !"__SCK__tp_func_cma_alloc_finish", i1 false, i1 false}
!12 = !{ptr @__tracepoint_cma_alloc_busy_retry, !13, !"__tracepoint_cma_alloc_busy_retry", i1 false, i1 false}
!13 = !{!"../include/trace/events/cma.h", i32 102, i32 1}
!14 = !{ptr @__tracepoint_ptr_cma_alloc_busy_retry, !13, !"__tracepoint_ptr_cma_alloc_busy_retry", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_cma_alloc_busy_retry, !13, !"__SCK__tp_func_cma_alloc_busy_retry", i1 false, i1 false}
!16 = !{ptr @event_class_cma_alloc_class, !17, !"event_class_cma_alloc_class", i1 false, i1 false}
!17 = !{!"../include/trace/events/cma.h", i32 11, i32 1}
!18 = !{ptr @event_class_cma_release, !1, !"event_class_cma_release", i1 false, i1 false}
!19 = !{ptr @event_cma_release, !1, !"event_cma_release", i1 false, i1 false}
!20 = !{ptr @__event_cma_release, !1, !"__event_cma_release", i1 false, i1 false}
!21 = !{ptr @event_class_cma_alloc_start, !5, !"event_class_cma_alloc_start", i1 false, i1 false}
!22 = !{ptr @event_cma_alloc_start, !5, !"event_cma_alloc_start", i1 false, i1 false}
!23 = !{ptr @__event_cma_alloc_start, !5, !"__event_cma_alloc_start", i1 false, i1 false}
!24 = !{ptr @event_cma_alloc_finish, !9, !"event_cma_alloc_finish", i1 false, i1 false}
!25 = !{ptr @__event_cma_alloc_finish, !9, !"__event_cma_alloc_finish", i1 false, i1 false}
!26 = !{ptr @event_cma_alloc_busy_retry, !13, !"event_cma_alloc_busy_retry", i1 false, i1 false}
!27 = !{ptr @__event_cma_alloc_busy_retry, !13, !"__event_cma_alloc_busy_retry", i1 false, i1 false}
!28 = !{ptr @__bpf_trace_tp_map_cma_release, !1, !"__bpf_trace_tp_map_cma_release", i1 false, i1 false}
!29 = !{ptr @__bpf_trace_tp_map_cma_alloc_start, !5, !"__bpf_trace_tp_map_cma_alloc_start", i1 false, i1 false}
!30 = !{ptr @__bpf_trace_tp_map_cma_alloc_finish, !9, !"__bpf_trace_tp_map_cma_alloc_finish", i1 false, i1 false}
!31 = !{ptr @__bpf_trace_tp_map_cma_alloc_busy_retry, !13, !"__bpf_trace_tp_map_cma_alloc_busy_retry", i1 false, i1 false}
!32 = !{ptr @__initcall__kmod_cma__285_151_cma_init_reserved_areas1, !33, !"__initcall__kmod_cma__285_151_cma_init_reserved_areas1", i1 false, i1 false}
!33 = !{!"../mm/cma.c", i32 151, i32 1}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../mm/cma.c", i32 175, i32 3}
!36 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cma_init_reserved_mem._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @cma_init_reserved_mem._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/cma.c", i32 202, i32 38}
!42 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../mm/cma.c", i32 251, i32 2}
!44 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cma_declare_contiguous_nid.__UNIQUE_ID_ddebug288, !43, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!47 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cma_declare_contiguous_nid._entry, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../mm/cma.c", i32 255, i32 3}
!50 = !{ptr @cma_declare_contiguous_nid._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../mm/cma.c", i32 275, i32 3}
!53 = !{ptr @cma_declare_contiguous_nid._entry.8, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cma_declare_contiguous_nid._entry_ptr.10, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../mm/cma.c", i32 296, i32 3}
!57 = !{ptr @cma_declare_contiguous_nid._entry.11, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cma_declare_contiguous_nid._entry_ptr.13, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../mm/cma.c", i32 311, i32 3}
!61 = !{ptr @cma_declare_contiguous_nid._entry.14, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cma_declare_contiguous_nid._entry_ptr.16, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../mm/cma.c", i32 376, i32 2}
!65 = !{ptr @cma_declare_contiguous_nid._entry.17, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cma_declare_contiguous_nid._entry_ptr.19, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../mm/cma.c", i32 383, i32 2}
!69 = !{ptr @cma_declare_contiguous_nid._entry.20, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @cma_declare_contiguous_nid._entry_ptr.22, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../mm/cma.c", i32 440, i32 2}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cma_alloc.__UNIQUE_ID_ddebug293, !72, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!75 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../mm/cma.c", i32 486, i32 3}
!78 = !{ptr @cma_alloc.__UNIQUE_ID_ddebug294, !77, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!79 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../mm/cma.c", i32 508, i32 3}
!82 = !{ptr @cma_alloc._rs, !81, !"_rs", i1 false, i1 false}
!83 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cma_alloc._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @cma_alloc._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../mm/cma.c", i32 513, i32 2}
!88 = !{ptr @cma_alloc.__UNIQUE_ID_ddebug295, !87, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!89 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../mm/cma.c", i32 538, i32 3}
!92 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cma_pages_valid.__UNIQUE_ID_ddebug296, !91, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!94 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../mm/cma.c", i32 564, i32 2}
!97 = !{ptr @cma_release.__UNIQUE_ID_ddebug297, !96, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!98 = !{ptr @cma_areas, !99, !"cma_areas", i1 false, i1 false}
!99 = !{!"../mm/cma.c", i32 38, i32 12}
!100 = !{ptr @cma_area_count, !101, !"cma_area_count", i1 false, i1 false}
!101 = !{!"../mm/cma.c", i32 39, i32 10}
!102 = !{ptr @__tpstrtab_cma_release, !1, !"__tpstrtab_cma_release", i1 false, i1 false}
!103 = !{ptr @__tpstrtab_cma_alloc_start, !5, !"__tpstrtab_cma_alloc_start", i1 false, i1 false}
!104 = !{ptr @__tpstrtab_cma_alloc_finish, !9, !"__tpstrtab_cma_alloc_finish", i1 false, i1 false}
!105 = !{ptr @__tpstrtab_cma_alloc_busy_retry, !13, !"__tpstrtab_cma_alloc_busy_retry", i1 false, i1 false}
!106 = !{ptr @str__cma__trace_system_name, !107, !"str__cma__trace_system_name", i1 false, i1 false}
!107 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!108 = !{ptr @.str.36, !17, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.37, !17, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.38, !17, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.39, !17, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.40, !17, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.41, !17, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.42, !17, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.43, !17, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.44, !17, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.45, !17, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @trace_event_fields_cma_alloc_class, !17, !"trace_event_fields_cma_alloc_class", i1 false, i1 false}
!119 = !{ptr @trace_event_fields_cma_release, !1, !"trace_event_fields_cma_release", i1 false, i1 false}
!120 = !{ptr @trace_event_type_funcs_cma_release, !1, !"trace_event_type_funcs_cma_release", i1 false, i1 false}
!121 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @print_fmt_cma_release, !1, !"print_fmt_cma_release", i1 false, i1 false}
!123 = !{ptr @trace_event_fields_cma_alloc_start, !5, !"trace_event_fields_cma_alloc_start", i1 false, i1 false}
!124 = !{ptr @trace_event_type_funcs_cma_alloc_start, !5, !"trace_event_type_funcs_cma_alloc_start", i1 false, i1 false}
!125 = !{ptr @.str.47, !5, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @print_fmt_cma_alloc_start, !5, !"print_fmt_cma_alloc_start", i1 false, i1 false}
!127 = !{ptr @trace_event_type_funcs_cma_alloc_class, !17, !"trace_event_type_funcs_cma_alloc_class", i1 false, i1 false}
!128 = !{ptr @.str.48, !17, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @print_fmt_cma_alloc_class, !17, !"print_fmt_cma_alloc_class", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../mm/cma.c", i32 109, i32 2}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../mm/cma.c", i32 112, i32 3}
!134 = !{ptr @cma_activate_area.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../mm/cma.c", i32 121, i32 2}
!136 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cma_activate_area.__key.51, !138, !"__key", i1 false, i1 false}
!138 = !{!"../mm/cma.c", i32 125, i32 2}
!139 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../mm/cma.c", i32 138, i32 2}
!142 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @cma_activate_area._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @cma_activate_area._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/page-flags.h", i32 440, i32 1}
!149 = !{ptr @.str.57, !148, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!151 = !{ptr @.str.58, !5, !"<string literal>", i1 false, i1 false}
!152 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!153 = !{ptr @.str.59, !5, !"<string literal>", i1 false, i1 false}
!154 = distinct !{null, !155, !"__already_done", i1 false, i1 false}
!155 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!156 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!157 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!158 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!159 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!160 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!161 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../mm/cma.c", i32 396, i32 2}
!163 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @cma_debug_show_areas._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @cma_debug_show_areas._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../mm/cma.c", i32 404, i32 3}
!168 = !{ptr @cma_debug_show_areas._entry.63, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @cma_debug_show_areas._entry_ptr.65, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.69, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../mm/cma.c", i32 409, i32 2}
!174 = !{ptr @cma_debug_show_areas._entry.68, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @cma_debug_show_areas._entry_ptr.70, !173, !"_entry_ptr", i1 false, i1 false}
!176 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!177 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!178 = !{!"sp"}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{!"branch_weights", i32 1, i32 2000}
!190 = !{!"auto-init"}
!191 = !{i64 2148301012, i64 2148301017, i64 2148301030, i64 2148301074, i64 2148301108, i64 2148301129}
!192 = !{i32 0, i32 33}
!193 = !{i64 1105015, i64 1105076}
!194 = !{i64 1107747}
!195 = !{i64 1108032}
!196 = !{i64 2154148665}
!197 = !{i64 2154148894}
!198 = !{i64 2150044227}
!199 = !{i64 2150045263}
!200 = !{i64 2154188390}
!201 = !{i64 2154188651}
!202 = !{i64 2154170363}
!203 = !{i64 2154170616}
!204 = !{i64 2155555632, i64 2155556105, i64 2155555669, i64 2155555725, i64 2155555759, i64 2155555783, i64 2155555824, i64 2155555845, i64 2155555873, i64 2155555907}
!205 = !{i64 2154131954}
!206 = !{i64 2154132183}
!207 = !{i64 2153176142, i64 2153176626, i64 2153176179, i64 2153176235, i64 2153176269, i64 2153176293, i64 2153176334, i64 2153176355, i64 2153176383, i64 2153176417}
!208 = !{i64 2150667672, i64 2150667845, i64 2150667860, i64 2150667912, i64 2150667971, i64 2150667995, i64 2150668036, i64 2150668057, i64 2150668085, i64 2150668117}
!209 = !{i64 2150668443, i64 2150668616, i64 2150668631, i64 2150668683, i64 2150668742, i64 2150668766, i64 2150668807, i64 2150668828, i64 2150668856, i64 2150668888}
