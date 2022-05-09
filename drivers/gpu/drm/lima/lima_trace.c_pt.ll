; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_trace.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.99, %struct.trace_event, ptr, ptr, %union.anon.100, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.99 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.100 = type { ptr }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.51, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.51 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.trace_event_raw_lima_task = type { %struct.trace_entry, i64, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.3, i64, i64, i32, %struct.kref, i32 }
%union.anon.3 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_lima_task_submit = internal constant [17 x i8] c"lima_task_submit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_lima_task_submit = dso_local global %struct.static_call_key { ptr @__traceiter_lima_task_submit }, align 4
@__tracepoint_lima_task_submit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_lima_task_submit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_lima_task_submit, ptr null, ptr @__traceiter_lima_task_submit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_lima_task_submit = internal constant ptr @__tracepoint_lima_task_submit, section "__tracepoints_ptrs", align 4
@__tpstrtab_lima_task_run = internal constant [14 x i8] c"lima_task_run\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_lima_task_run = dso_local global %struct.static_call_key { ptr @__traceiter_lima_task_run }, align 4
@__tracepoint_lima_task_run = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_lima_task_run, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_lima_task_run, ptr null, ptr @__traceiter_lima_task_run, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_lima_task_run = internal constant ptr @__tracepoint_lima_task_run, section "__tracepoints_ptrs", align 4
@str__lima__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lima\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_lima_task = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.97 { %struct.anon.98 { ptr @.str.2, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.97 { %struct.anon.98 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.97 { %struct.anon.98 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.97 { %struct.anon.98 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_lima_task = internal global %struct.trace_event_class { ptr @str__lima__trace_system_name, ptr @trace_event_raw_event_lima_task, ptr @perf_trace_lima_task, ptr @trace_event_reg, ptr @trace_event_fields_lima_task, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_lima_task, i64 24), ptr getelementptr (i8, ptr @event_class_lima_task, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_lima_task = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_lima_task, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_lima_task = internal global { [98 x i8], [62 x i8] } { [98 x i8] c"\22task=%llu, context=%u seqno=%u pipe=%s\22, REC->task_id, REC->context, REC->seqno, __get_str(pipe)\00", [62 x i8] zeroinitializer }, align 32
@event_lima_task_submit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_lima_task, %union.anon.99 { ptr @__tracepoint_lima_task_submit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_lima_task }, ptr @print_fmt_lima_task, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_lima_task_submit = internal global ptr @event_lima_task_submit, section "_ftrace_events", align 4
@event_lima_task_run = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_lima_task, %union.anon.99 { ptr @__tracepoint_lima_task_run }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_lima_task }, ptr @print_fmt_lima_task, ptr null, %union.anon.100 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_lima_task_run = internal global ptr @event_lima_task_run, section "_ftrace_events", align 4
@__bpf_trace_tp_map_lima_task_submit = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_lima_task_submit, ptr @__bpf_trace_lima_task, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_lima_task_run = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_lima_task_run, ptr @__bpf_trace_lima_task, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint64_t\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"task_id\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"context\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seqno\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"task=%llu, context=%u seqno=%u pipe=%s\0A\00", [56 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [37 x i8] c"../drivers/gpu/drm/lima/lima_trace.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [29 x i8] c"str__lima__trace_system_name\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 36, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [29 x i8] c"trace_event_fields_lima_task\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_lima_task\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"print_fmt_lima_task\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"event_lima_task_submit\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 35, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"event_lima_task_run\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 40, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [57 x i8] c"../include/trace/../../drivers/gpu/drm/lima/lima_trace.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 13, i32 1 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__bpf_trace_tp_map_lima_task_run, ptr @__bpf_trace_tp_map_lima_task_submit, ptr @__event_lima_task_run, ptr @__event_lima_task_submit, ptr @__tracepoint_lima_task_run, ptr @__tracepoint_lima_task_submit, ptr @__tracepoint_ptr_lima_task_run, ptr @__tracepoint_ptr_lima_task_submit, ptr @event_class_lima_task, ptr @event_lima_task_run, ptr @event_lima_task_submit, ptr @str__lima__trace_system_name, ptr @trace_event_fields_lima_task, ptr @trace_event_type_funcs_lima_task, ptr @print_fmt_lima_task, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__lima__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_lima_task to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_lima_task to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_lima_task to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_lima_task_submit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_lima_task_run to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_lima_task_submit(ptr nocapture readnone %__data, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_lima_task_submit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %task) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_lima_task_run(ptr nocapture readnone %__data, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_lima_task_run, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %task) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_lima_task(ptr noundef %__data, ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !42

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !43

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %task, i32 0, i32 2
  %3 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sched.i, align 4
  %name.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 4
  %tobool.not.i36 = icmp eq ptr %6, null
  %spec.select.i = select i1 %tobool.not.i36, ptr @.str, ptr %6
  %call.i37 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add = add i32 %call.i37, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl i32 %call.i37, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_pipe = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %call3, i32 0, i32 4
  %7 = ptrtoint ptr %__data_loc_pipe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_pipe, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %task, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %id, align 8
  %task_id = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %task_id to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %task_id, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %task, i32 0, i32 3
  %11 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fence, align 8
  %context = getelementptr inbounds %struct.drm_sched_fence, ptr %12, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %context, align 8
  %conv = trunc i64 %14 to i32
  %context7 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %call3, i32 0, i32 2
  %15 = ptrtoint ptr %context7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %context7, align 8
  %16 = load ptr, ptr %s_fence, align 8
  %seqno = getelementptr inbounds %struct.drm_sched_fence, ptr %16, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %seqno, align 8
  %conv11 = trunc i64 %18 to i32
  %seqno12 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %seqno12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv11, ptr %seqno12, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %20 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sched.i, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %tobool15.not = icmp eq ptr %23, null
  %spec.select = select i1 %tobool15.not, ptr @.str, ptr %23
  %call19 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_lima_task(ptr noundef %__data, ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !44
  %sched.i = getelementptr inbounds %struct.drm_sched_job, ptr %task, i32 0, i32 2
  %2 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched.i, align 4
  %name.i = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str, ptr %5
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #10
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !32) #7
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %16 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %17, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i60.not = icmp eq ptr %19, null
  br i1 %tobool.not.i60.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #7
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !32) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_pipe = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %call13, i32 0, i32 4
  %31 = ptrtoint ptr %__data_loc_pipe to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_pipe, align 8
  %id = getelementptr inbounds %struct.drm_sched_job, ptr %task, i32 0, i32 5
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %id, align 8
  %task_id = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %call13, i32 0, i32 1
  %34 = ptrtoint ptr %task_id to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %task_id, align 8
  %s_fence = getelementptr inbounds %struct.drm_sched_job, ptr %task, i32 0, i32 3
  %35 = ptrtoint ptr %s_fence to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fence, align 8
  %context = getelementptr inbounds %struct.drm_sched_fence, ptr %36, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %context to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %context, align 8
  %conv = trunc i64 %38 to i32
  %context18 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %call13, i32 0, i32 2
  %39 = ptrtoint ptr %context18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv, ptr %context18, align 8
  %40 = load ptr, ptr %s_fence, align 8
  %seqno = getelementptr inbounds %struct.drm_sched_fence, ptr %40, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %seqno, align 8
  %conv22 = trunc i64 %42 to i32
  %seqno23 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %seqno23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv22, ptr %seqno23, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %44 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sched.i, align 4
  %name = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name, align 4
  %tobool27.not = icmp eq ptr %47, null
  %spec.select = select i1 %tobool27.not, ptr @.str, ptr %47
  %call31 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #11
  %48 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rctx, align 4
  %50 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %49, ptr noundef %__data, i64 noundef 1, ptr noundef %51, ptr noundef %15, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_lima_task(ptr noundef %__data, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_lima_task(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %task_id = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %task_id, align 8
  %context = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %context, align 8
  %seqno = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seqno, align 4
  %__data_loc_pipe = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %__data_loc_pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_pipe, align 8
  %and = and i32 %9, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.8, i64 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %add.ptr) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__tracepoint_lima_task_submit, !1, !"__tracepoint_lima_task_submit", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/gpu/drm/lima/lima_trace.h", i32 35, i32 1}
!2 = !{ptr @__tracepoint_ptr_lima_task_submit, !1, !"__tracepoint_ptr_lima_task_submit", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_lima_task_submit, !1, !"__SCK__tp_func_lima_task_submit", i1 false, i1 false}
!4 = !{ptr @__tracepoint_lima_task_run, !5, !"__tracepoint_lima_task_run", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/gpu/drm/lima/lima_trace.h", i32 40, i32 1}
!6 = !{ptr @__tracepoint_ptr_lima_task_run, !5, !"__tracepoint_ptr_lima_task_run", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_lima_task_run, !5, !"__SCK__tp_func_lima_task_run", i1 false, i1 false}
!8 = !{ptr @event_class_lima_task, !9, !"event_class_lima_task", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/gpu/drm/lima/lima_trace.h", i32 13, i32 1}
!10 = !{ptr @event_lima_task_submit, !1, !"event_lima_task_submit", i1 false, i1 false}
!11 = !{ptr @__event_lima_task_submit, !1, !"__event_lima_task_submit", i1 false, i1 false}
!12 = !{ptr @event_lima_task_run, !5, !"event_lima_task_run", i1 false, i1 false}
!13 = !{ptr @__event_lima_task_run, !5, !"__event_lima_task_run", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_lima_task_submit, !1, !"__bpf_trace_tp_map_lima_task_submit", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_lima_task_run, !5, !"__bpf_trace_tp_map_lima_task_run", i1 false, i1 false}
!16 = !{ptr @__tpstrtab_lima_task_submit, !1, !"__tpstrtab_lima_task_submit", i1 false, i1 false}
!17 = !{ptr @__tpstrtab_lima_task_run, !5, !"__tpstrtab_lima_task_run", i1 false, i1 false}
!18 = !{ptr @str__lima__trace_system_name, !19, !"str__lima__trace_system_name", i1 false, i1 false}
!19 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!20 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @trace_event_fields_lima_task, !9, !"trace_event_fields_lima_task", i1 false, i1 false}
!29 = !{ptr @trace_event_type_funcs_lima_task, !9, !"trace_event_type_funcs_lima_task", i1 false, i1 false}
!30 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @print_fmt_lima_task, !9, !"print_fmt_lima_task", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{!"auto-init"}
