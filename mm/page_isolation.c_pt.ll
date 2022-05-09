; ModuleID = '/llk/IR_all_yes/mm/page_isolation.c_pt.bc'
source_filename = "../mm/page_isolation.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
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
%union.anon.101 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_test_pages_isolated = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_test_pages_isolated = internal constant [20 x i8] c"test_pages_isolated\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_test_pages_isolated = dso_local global %struct.static_call_key { ptr @__traceiter_test_pages_isolated }, align 4
@__tracepoint_test_pages_isolated = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_test_pages_isolated, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_test_pages_isolated, ptr null, ptr @__traceiter_test_pages_isolated, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_test_pages_isolated = internal constant ptr @__tracepoint_test_pages_isolated, section "__tracepoints_ptrs", align 4
@str__page_isolation__trace_system_name = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"page_isolation\00", [17 x i8] zeroinitializer }, align 32
@trace_event_fields_test_pages_isolated = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_test_pages_isolated = internal global %struct.trace_event_class { ptr @str__page_isolation__trace_system_name, ptr @trace_event_raw_event_test_pages_isolated, ptr @perf_trace_test_pages_isolated, ptr @trace_event_reg, ptr @trace_event_fields_test_pages_isolated, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_test_pages_isolated, i64 24), ptr getelementptr (i8, ptr @event_class_test_pages_isolated, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_test_pages_isolated = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_test_pages_isolated, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_test_pages_isolated = internal global { [148 x i8], [44 x i8] } { [148 x i8] c"\22start_pfn=0x%lx end_pfn=0x%lx fin_pfn=0x%lx ret=%s\22, REC->start_pfn, REC->end_pfn, REC->fin_pfn, REC->end_pfn <= REC->fin_pfn ? \22success\22 : \22fail\22\00", [44 x i8] zeroinitializer }, align 32
@event_test_pages_isolated = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_test_pages_isolated, %union.anon.1 { ptr @__tracepoint_test_pages_isolated }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_test_pages_isolated }, ptr @print_fmt_test_pages_isolated, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_test_pages_isolated = internal global ptr @event_test_pages_isolated, section "_ftrace_events", align 4
@__bpf_trace_tp_map_test_pages_isolated = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_test_pages_isolated, ptr @__bpf_trace_test_pages_isolated, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_pfn\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"end_pfn\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fin_pfn\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"start_pfn=0x%lx end_pfn=0x%lx fin_pfn=0x%lx ret=%s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unmovable page\00", [17 x i8] zeroinitializer }, align 32
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"include/trace/events/page_isolation.h\00", [58 x i8] zeroinitializer }, align 32
@trace_test_pages_isolated.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [39 x i8] c"str__page_isolation__trace_system_name\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 36, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [39 x i8] c"trace_event_fields_test_pages_isolated\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_test_pages_isolated\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [30 x i8] c"print_fmt_test_pages_isolated\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [26 x i8] c"event_test_pages_isolated\00", align 1
@___asan_gen_.50 = private constant [23 x i8] c"../mm/page_isolation.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 61, i32 24 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1368, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [41 x i8] c"../include/trace/events/page_isolation.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 10, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 108, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__bpf_trace_tp_map_test_pages_isolated, ptr @__event_test_pages_isolated, ptr @__tracepoint_ptr_test_pages_isolated, ptr @__tracepoint_test_pages_isolated, ptr @event_class_test_pages_isolated, ptr @event_test_pages_isolated, ptr @str__page_isolation__trace_system_name, ptr @trace_event_fields_test_pages_isolated, ptr @trace_event_type_funcs_test_pages_isolated, ptr @print_fmt_test_pages_isolated, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__page_isolation__trace_system_name to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_test_pages_isolated to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_test_pages_isolated to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_test_pages_isolated to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_test_pages_isolated to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_test_pages_isolated(ptr nocapture readnone %__data, i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %fin_pfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_test_pages_isolated, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %fin_pfn) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_test_pages_isolated(ptr noundef %__data, i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %fin_pfn) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #6
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !44

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !45

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #6
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %start_pfn6 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %start_pfn6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %start_pfn, ptr %start_pfn6, align 4
  %end_pfn7 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %end_pfn7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %end_pfn, ptr %end_pfn7, align 4
  %fin_pfn8 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %fin_pfn8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %fin_pfn, ptr %fin_pfn8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_test_pages_isolated(ptr noundef %__data, i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %fin_pfn) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !46
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !34) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #6
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !34) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %start_pfn17 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %start_pfn17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %start_pfn, ptr %start_pfn17, align 4
  %end_pfn18 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %end_pfn18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %end_pfn, ptr %end_pfn18, align 4
  %fin_pfn19 = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %fin_pfn19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %fin_pfn, ptr %fin_pfn19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_test_pages_isolated(ptr noundef %__data, i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %fin_pfn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %start_pfn to i64
  %conv4 = zext i32 %end_pfn to i64
  %conv8 = zext i32 %fin_pfn to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @start_isolate_page_range(i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %migratetype, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start_pfn, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body9, label %do.body3, !prof !44

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_isolation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #6, !srcloc !47
  unreachable

do.body9:                                         ; preds = %entry
  %and10 = and i32 %end_pfn, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %for.cond.preheader, label %do.body21, !prof !44

for.cond.preheader:                               ; preds = %do.body9
  call void @__sanitizer_cov_trace_cmp4(i32 %start_pfn, i32 %end_pfn)
  %cmp3062 = icmp ult i32 %start_pfn, %end_pfn
  br i1 %cmp3062, label %for.cond.preheader.for.body.i.preheader_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.for.body.i.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.body.i.preheader

do.body21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_isolation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 194, 0\0A.popsection", ""() #6, !srcloc !48
  unreachable

for.body.i.preheader:                             ; preds = %for.inc.for.body.i.preheader_crit_edge, %for.cond.preheader.for.body.i.preheader_crit_edge
  %pfn.063 = phi i32 [ %add, %for.inc.for.body.i.preheader_crit_edge ], [ %start_pfn, %for.cond.preheader.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.i = add i32 %i.016.i, %pfn.063
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %add.i, %1
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %sub.i
  %tobool2.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool2.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2048
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i.not.i.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %page_zone.exit.i, !prof !45

if.then.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.9) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

page_zone.exit.i:                                 ; preds = %land.lhs.true
  %shr.i.i.i = lshr i32 %3, 30
  %arrayidx.i.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i
  %lock.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i, i32 22
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %5
  %call.i.i = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %add.ptr.i, i32 noundef %add.i.i, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 5
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i46

if.then.i:                                        ; preds = %page_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  br label %if.then34

if.end.i46:                                       ; preds = %page_zone.exit.i
  %call8.i = tail call ptr @has_unmovable_pages(ptr noundef %arrayidx.i.i, ptr noundef nonnull %add.ptr.i, i32 noundef %migratetype, i32 noundef %flags) #6
  %tobool.not.i45 = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i45, label %if.then9.i, label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i47 = add i32 %sub.ptr.div.i, %7
  %call10.i = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %add.ptr.i, i32 noundef %add.i47, i32 noundef 7) #6
  tail call void @set_pageblock_migratetype(ptr noundef nonnull %add.ptr.i, i32 noundef 5) #6
  %nr_isolate_pageblock.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i, i32 16
  %8 = ptrtoint ptr %nr_isolate_pageblock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_isolate_pageblock.i, align 4
  %inc.i48 = add i32 %9, 1
  store i32 %inc.i48, ptr %nr_isolate_pageblock.i, align 4
  %call11.i = tail call i32 @move_freepages_block(ptr noundef %arrayidx.i.i, ptr noundef nonnull %add.ptr.i, i32 noundef 5, ptr noundef null) #6
  %sub.i49 = sub i32 0, %call11.i
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i, i32 noundef 0, i32 noundef %sub.i49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call10.i)
  %cmp.i37.i = icmp eq i32 %call10.i, 4
  br i1 %cmp.i37.i, label %if.then.i.i, label %if.then9.i.set_migratetype_isolate.exit_crit_edge, !prof !45

if.then9.i.set_migratetype_isolate.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_migratetype_isolate.exit

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i, i32 noundef 10, i32 noundef %sub.i49) #6
  br label %set_migratetype_isolate.exit

if.end13.i:                                       ; preds = %if.end.i46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.then34_crit_edge, label %if.then16.i

if.end13.i.if.then34_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef nonnull %call8.i, ptr noundef nonnull @.str.7) #6
  br label %if.then34

set_migratetype_isolate.exit:                     ; preds = %if.then.i.i, %if.then9.i.set_migratetype_isolate.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  br label %for.inc

if.then34:                                        ; preds = %if.then16.i, %if.end13.i.if.then34_crit_edge, %if.then.i
  tail call void @undo_isolate_page_range(i32 noundef %start_pfn, i32 noundef %pfn.063, i32 noundef %migratetype)
  br label %cleanup

for.inc:                                          ; preds = %set_migratetype_isolate.exit, %for.inc.i.for.inc_crit_edge
  %add = add i32 %pfn.063, 2048
  %cmp30 = icmp ult i32 %add, %end_pfn
  br i1 %cmp30, label %for.inc.for.body.i.preheader_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body.i.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then34, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then34 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @undo_isolate_page_range(i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %migratetype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %start_pfn, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body9, label %do.body3, !prof !44

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_isolation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #6, !srcloc !50
  unreachable

do.body9:                                         ; preds = %entry
  %and10 = and i32 %end_pfn, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %for.cond.preheader, label %do.body21, !prof !44

for.cond.preheader:                               ; preds = %do.body9
  call void @__sanitizer_cov_trace_cmp4(i32 %start_pfn, i32 %end_pfn)
  %cmp3046 = icmp ult i32 %start_pfn, %end_pfn
  br i1 %cmp3046, label %for.body.i.preheader.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.i.preheader.lr.ph:                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %migratetype)
  %cmp.i85.i = icmp eq i32 %migratetype, 4
  br label %for.body.i.preheader

do.body21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_isolation.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #6, !srcloc !51
  unreachable

for.body.i.preheader:                             ; preds = %for.inc.for.body.i.preheader_crit_edge, %for.body.i.preheader.lr.ph
  %pfn.047 = phi i32 [ %start_pfn, %for.body.i.preheader.lr.ph ], [ %add, %for.inc.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.i = add i32 %i.016.i, %pfn.047
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %add.i, %1
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %sub.i
  %tobool2.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool2.not.i, label %if.end.i.for.inc.i_crit_edge, label %lor.lhs.false

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2048
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i41 = add i32 %sub.ptr.div.i, %3
  %call.i42 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %add.ptr.i, i32 noundef %add.i41, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i42)
  %cmp.i = icmp eq i32 %call.i42, 5
  br i1 %cmp.i, label %if.end34, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end34:                                         ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i.i.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %page_zone.exit.i, !prof !45

if.then.i.i.i:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.9) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

page_zone.exit.i:                                 ; preds = %if.end34
  %shr.i.i.i = lshr i32 %5, 30
  %arrayidx.i.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i
  %lock.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i, i32 22
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %7
  %call.i.i = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %add.ptr.i, i32 noundef %add.i.i, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i)
  %cmp.i84.i = icmp eq i32 %call.i.i, 5
  br i1 %cmp.i84.i, label %if.end.i43, label %page_zone.exit.i.unset_migratetype_isolate.exit_crit_edge

page_zone.exit.i.unset_migratetype_isolate.exit_crit_edge: ; preds = %page_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unset_migratetype_isolate.exit

if.end.i43:                                       ; preds = %page_zone.exit.i
  %call54.i = tail call i32 @move_freepages_block(ptr noundef %arrayidx.i.i, ptr noundef nonnull %add.ptr.i, i32 noundef %migratetype, ptr noundef null) #6
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i, i32 noundef 0, i32 noundef %call54.i) #6
  br i1 %cmp.i85.i, label %if.then.i.i, label %if.end.i43.__mod_zone_freepage_state.exit.i_crit_edge, !prof !45

if.end.i43.__mod_zone_freepage_state.exit.i_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %__mod_zone_freepage_state.exit.i

if.then.i.i:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i, i32 noundef 10, i32 noundef %call54.i) #6
  br label %__mod_zone_freepage_state.exit.i

__mod_zone_freepage_state.exit.i:                 ; preds = %if.then.i.i, %if.end.i43.__mod_zone_freepage_state.exit.i_crit_edge
  tail call void @set_pageblock_migratetype(ptr noundef nonnull %add.ptr.i, i32 noundef %migratetype) #6
  %nr_isolate_pageblock.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i, i32 16
  %8 = ptrtoint ptr %nr_isolate_pageblock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_isolate_pageblock.i, align 4
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %nr_isolate_pageblock.i, align 4
  br label %unset_migratetype_isolate.exit

unset_migratetype_isolate.exit:                   ; preds = %__mod_zone_freepage_state.exit.i, %page_zone.exit.i.unset_migratetype_isolate.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  br label %for.inc

for.inc:                                          ; preds = %unset_migratetype_isolate.exit, %lor.lhs.false.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge
  %add = add i32 %pfn.047, 2048
  %cmp30 = icmp ult i32 %add, %end_pfn
  br i1 %cmp30, label %for.inc.for.body.i.preheader_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body.i.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @test_pages_isolated(i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %isol_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %end_pfn, i32 %start_pfn)
  %cmp61 = icmp ugt i32 %end_pfn, %start_pfn
  br i1 %cmp61, label %entry.for.body.i.preheader_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.inc.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  %pfn.062 = phi i32 [ %add, %for.inc.for.body.i.preheader_crit_edge ], [ %start_pfn, %entry.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.i = add i32 %i.016.i, %pfn.062
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %add.i, %1
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %sub.i
  %tobool2.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool2.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2048
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i36 = add i32 %sub.ptr.div.i, %3
  %call.i37 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %add.ptr.i, i32 noundef %add.i36, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i37)
  %cmp.i = icmp eq i32 %call.i37, 5
  br i1 %cmp.i, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge
  %add = add i32 %pfn.062, 2048
  %cmp = icmp ult i32 %add, %end_pfn
  br i1 %cmp, label %for.inc.for.body.i.preheader_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body.i.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %pfn.0.lcssa = phi i32 [ %start_pfn, %entry.for.end_crit_edge ], [ %pfn.062, %land.lhs.true.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  %cmp.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %land.lhs.true.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  %sub = sub i32 %end_pfn, %start_pfn
  call void @__sanitizer_cov_trace_cmp4(i32 %end_pfn, i32 %start_pfn)
  %cmp15.not.i = icmp eq i32 %end_pfn, %start_pfn
  br i1 %cmp15.not.i, label %for.end.out_crit_edge, label %for.end.for.body.i42_crit_edge

for.end.for.body.i42_crit_edge:                   ; preds = %for.end
  br label %for.body.i42

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.i42:                                     ; preds = %for.inc.i49.for.body.i42_crit_edge, %for.end.for.body.i42_crit_edge
  %i.016.i38 = phi i32 [ %inc.i47, %for.inc.i49.for.body.i42_crit_edge ], [ 0, %for.end.for.body.i42_crit_edge ]
  %add.i39 = add i32 %i.016.i38, %start_pfn
  %call.i40 = tail call i32 @pfn_valid(i32 noundef %add.i39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %for.body.i42.for.inc.i49_crit_edge, label %if.end.i46

for.body.i42.for.inc.i49_crit_edge:               ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i49

if.end.i46:                                       ; preds = %for.body.i42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i43 = sub i32 %add.i39, %5
  %add.ptr.i44 = getelementptr %struct.page, ptr %4, i32 %sub.i43
  %tobool2.not.i45 = icmp eq ptr %add.ptr.i44, null
  br i1 %tobool2.not.i45, label %if.end.i46.for.inc.i49_crit_edge, label %__first_valid_page.exit51

if.end.i46.for.inc.i49_crit_edge:                 ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i49

for.inc.i49:                                      ; preds = %if.end.i46.for.inc.i49_crit_edge, %for.body.i42.for.inc.i49_crit_edge
  %inc.i47 = add nuw i32 %i.016.i38, 1
  %exitcond.not.i48 = icmp eq i32 %inc.i47, %sub
  br i1 %exitcond.not.i48, label %for.inc.i49.out_crit_edge, label %for.inc.i49.for.body.i42_crit_edge

for.inc.i49.for.body.i42_crit_edge:               ; preds = %for.inc.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i42

for.inc.i49.out_crit_edge:                        ; preds = %for.inc.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

__first_valid_page.exit51:                        ; preds = %if.end.i46
  br i1 %cmp.lcssa, label %__first_valid_page.exit51.out_crit_edge, label %if.end6

__first_valid_page.exit51.out_crit_edge:          ; preds = %__first_valid_page.exit51
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %__first_valid_page.exit51
  %6 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !45

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef nonnull %add.ptr.i44, ptr noundef nonnull @.str.9) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

page_zone.exit:                                   ; preds = %if.end6
  %shr.i.i = lshr i32 %7, 30
  %lock = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i, i32 22
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  br i1 %cmp61, label %while.body.lr.ph.i, label %page_zone.exit.__test_page_isolated_in_pageblock.exit_crit_edge

page_zone.exit.__test_page_isolated_in_pageblock.exit_crit_edge: ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__test_page_isolated_in_pageblock.exit

while.body.lr.ph.i:                               ; preds = %page_zone.exit
  %and.i = and i32 %isol_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i52 = icmp ne i32 %and.i, 0
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pfn.addr.034.i = phi i32 [ %start_pfn, %while.body.lr.ph.i ], [ %pfn.addr.1.i, %if.end19.i.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i53 = sub i32 %pfn.addr.034.i, %9
  %add.ptr.i54 = getelementptr %struct.page, ptr %8, i32 %sub.i53
  %10 = getelementptr %struct.page, ptr %8, i32 %sub.i53, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i.i = and i32 %12, -268435328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, -268435456
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %private.i.i = getelementptr %struct.page, ptr %8, i32 %sub.i53, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private.i.i, align 4
  %shl.i = shl nuw i32 1, %14
  br label %if.end19.i

if.else.i:                                        ; preds = %while.body.i
  %and.i30.i = and i32 %12, -268435200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i30.i)
  %cmp.i31.not.i = icmp eq i32 %and.i30.i, -268435456
  %or.cond.i = select i1 %tobool2.not.i52, i1 %cmp.i31.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true12.i, label %if.else.i.__test_page_isolated_in_pageblock.exit_crit_edge

if.else.i.__test_page_isolated_in_pageblock.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__test_page_isolated_in_pageblock.exit

land.lhs.true12.i:                                ; preds = %if.else.i
  %15 = getelementptr %struct.page, ptr %8, i32 %sub.i53, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !44

if.then.i.i.i:                                    ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add i32 %17, -1
  br label %page_count.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %add.ptr.i54 to i32
  br label %page_count.exit.i

page_count.exit.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %18, %if.end.i.i.i ]
  %19 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #6
  %20 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not.i = icmp eq i32 %21, 0
  br i1 %tobool14.not.i, label %page_count.exit.i.if.end19.i_crit_edge, label %page_count.exit.i.__test_page_isolated_in_pageblock.exit_crit_edge

page_count.exit.i.__test_page_isolated_in_pageblock.exit_crit_edge: ; preds = %page_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__test_page_isolated_in_pageblock.exit

page_count.exit.i.if.end19.i_crit_edge:           ; preds = %page_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %page_count.exit.i.if.end19.i_crit_edge, %if.then.i
  %shl.pn.i = phi i32 [ %shl.i, %if.then.i ], [ 1, %page_count.exit.i.if.end19.i_crit_edge ]
  %pfn.addr.1.i = add i32 %shl.pn.i, %pfn.addr.034.i
  %cmp.i55 = icmp ult i32 %pfn.addr.1.i, %end_pfn
  br i1 %cmp.i55, label %if.end19.i.while.body.i_crit_edge, label %if.end19.i.__test_page_isolated_in_pageblock.exit_crit_edge

if.end19.i.__test_page_isolated_in_pageblock.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__test_page_isolated_in_pageblock.exit

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

__test_page_isolated_in_pageblock.exit:           ; preds = %if.end19.i.__test_page_isolated_in_pageblock.exit_crit_edge, %page_count.exit.i.__test_page_isolated_in_pageblock.exit_crit_edge, %if.else.i.__test_page_isolated_in_pageblock.exit_crit_edge, %page_zone.exit.__test_page_isolated_in_pageblock.exit_crit_edge
  %pfn.addr.0.lcssa.i = phi i32 [ %start_pfn, %page_zone.exit.__test_page_isolated_in_pageblock.exit_crit_edge ], [ %pfn.addr.1.i, %if.end19.i.__test_page_isolated_in_pageblock.exit_crit_edge ], [ %pfn.addr.034.i, %page_count.exit.i.__test_page_isolated_in_pageblock.exit_crit_edge ], [ %pfn.addr.034.i, %if.else.i.__test_page_isolated_in_pageblock.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %pfn.addr.0.lcssa.i, i32 %end_pfn)
  %cmp16 = icmp ult i32 %pfn.addr.0.lcssa.i, %end_pfn
  %cond = select i1 %cmp16, i32 -16, i32 0
  br label %out

out:                                              ; preds = %__test_page_isolated_in_pageblock.exit, %__first_valid_page.exit51.out_crit_edge, %for.inc.i49.out_crit_edge, %for.end.out_crit_edge
  %ret.0 = phi i32 [ %cond, %__test_page_isolated_in_pageblock.exit ], [ -16, %__first_valid_page.exit51.out_crit_edge ], [ -16, %for.end.out_crit_edge ], [ -16, %for.inc.i49.out_crit_edge ]
  %pfn.1 = phi i32 [ %pfn.addr.0.lcssa.i, %__test_page_isolated_in_pageblock.exit ], [ %pfn.0.lcssa, %__first_valid_page.exit51.out_crit_edge ], [ %pfn.0.lcssa, %for.end.out_crit_edge ], [ %pfn.0.lcssa, %for.inc.i49.out_crit_edge ]
  tail call fastcc void @trace_test_pages_isolated(i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %pfn.1)
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_test_pages_isolated(i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %fin_pfn) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_test_pages_isolated, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_test_pages_isolated, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !52

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !34) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !44

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !34) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_test_pages_isolated, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %start_pfn, i32 noundef %end_pfn, i32 noundef %fin_pfn) #6
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !34) #6
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !34) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !44

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !34) #6
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !55
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_test_pages_isolated, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_test_pages_isolated.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_test_pages_isolated.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 34, ptr noundef nonnull @.str.11) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !56
  %38 = tail call i32 @llvm.read_register.i32(metadata !34) #6
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
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_test_pages_isolated(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %start_pfn = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %start_pfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_pfn, align 4
  %end_pfn = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %end_pfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end_pfn, align 4
  %fin_pfn = getelementptr inbounds %struct.trace_event_raw_test_pages_isolated, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fin_pfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fin_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp ugt i32 %5, %7
  %cond = select i1 %cmp3.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %cond) #6
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
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
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @has_unmovable_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pageblock_migratetype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @move_freepages_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !31, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__tracepoint_test_pages_isolated, !1, !"__tracepoint_test_pages_isolated", i1 false, i1 false}
!1 = !{!"../include/trace/events/page_isolation.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_test_pages_isolated, !1, !"__tracepoint_ptr_test_pages_isolated", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_test_pages_isolated, !1, !"__SCK__tp_func_test_pages_isolated", i1 false, i1 false}
!4 = !{ptr @event_class_test_pages_isolated, !1, !"event_class_test_pages_isolated", i1 false, i1 false}
!5 = !{ptr @event_test_pages_isolated, !1, !"event_test_pages_isolated", i1 false, i1 false}
!6 = !{ptr @__event_test_pages_isolated, !1, !"__event_test_pages_isolated", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_test_pages_isolated, !1, !"__bpf_trace_tp_map_test_pages_isolated", i1 false, i1 false}
!8 = !{ptr @__tpstrtab_test_pages_isolated, !1, !"__tpstrtab_test_pages_isolated", i1 false, i1 false}
!9 = !{ptr @str__page_isolation__trace_system_name, !10, !"str__page_isolation__trace_system_name", i1 false, i1 false}
!10 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!11 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @trace_event_fields_test_pages_isolated, !1, !"trace_event_fields_test_pages_isolated", i1 false, i1 false}
!16 = !{ptr @trace_event_type_funcs_test_pages_isolated, !1, !"trace_event_type_funcs_test_pages_isolated", i1 false, i1 false}
!17 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @print_fmt_test_pages_isolated, !1, !"print_fmt_test_pages_isolated", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../mm/page_isolation.c", i32 61, i32 24}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../mm/page_isolation.c", i32 103, i32 5}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!27 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!28 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!30 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{!"auto-init"}
!47 = !{i64 2155484147, i64 2155484631, i64 2155484184, i64 2155484240, i64 2155484274, i64 2155484298, i64 2155484339, i64 2155484360, i64 2155484388, i64 2155484422}
!48 = !{i64 2155485987, i64 2155486471, i64 2155486024, i64 2155486080, i64 2155486114, i64 2155486138, i64 2155486179, i64 2155486200, i64 2155486228, i64 2155486262}
!49 = !{i64 2153148390, i64 2153148874, i64 2153148427, i64 2153148483, i64 2153148517, i64 2153148541, i64 2153148582, i64 2153148603, i64 2153148631, i64 2153148665}
!50 = !{i64 2155487980, i64 2155488464, i64 2155488017, i64 2155488073, i64 2155488107, i64 2155488131, i64 2155488172, i64 2155488193, i64 2155488221, i64 2155488255}
!51 = !{i64 2155489820, i64 2155490304, i64 2155489857, i64 2155489913, i64 2155489947, i64 2155489971, i64 2155490012, i64 2155490033, i64 2155490061, i64 2155490095}
!52 = !{i64 2148273316, i64 2148273321, i64 2148273334, i64 2148273378, i64 2148273412, i64 2148273433}
!53 = !{i64 2154674966}
!54 = !{i64 2154675221}
!55 = !{i64 2150016531}
!56 = !{i64 2150017567}
