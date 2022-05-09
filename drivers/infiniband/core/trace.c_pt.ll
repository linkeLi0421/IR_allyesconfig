; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/trace.c_pt.bc'
source_filename = "../drivers/infiniband/core/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.192 }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.194, %struct.trace_event, ptr, ptr, %union.anon.195, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.194 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.195 = type { ptr }
%union.anon.196 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.197 = type { %struct.bpf_raw_event_map }
%union.anon.198 = type { %struct.bpf_raw_event_map }
%union.anon.199 = type { %struct.bpf_raw_event_map }
%union.anon.200 = type { %struct.bpf_raw_event_map }
%union.anon.201 = type { %struct.bpf_raw_event_map }
%union.anon.202 = type { %struct.bpf_raw_event_map }
%union.anon.203 = type { %struct.bpf_raw_event_map }
%union.anon.204 = type { %struct.bpf_raw_event_map }
%union.anon.205 = type { %struct.bpf_raw_event_map }
%union.anon.206 = type { %struct.bpf_raw_event_map }
%union.anon.207 = type { %struct.bpf_raw_event_map }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.171, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.171 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.trace_event_raw_cq_schedule = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_cq_reschedule = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_cq_process = type { %struct.trace_entry, i32, i8, i64, [0 x i8] }
%struct.trace_event_raw_cq_poll = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cq_drain_complete = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_cq_modify = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cq_alloc = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cq_alloc_error = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cq_free = type { %struct.trace_entry, i32, [0 x i8] }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.trace_event_raw_mr_alloc = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.trace_event_raw_mr_integ_alloc = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mr_dereg = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cq_schedule = internal constant [12 x i8] c"cq_schedule\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cq_schedule = dso_local global %struct.static_call_key { ptr @__traceiter_cq_schedule }, align 4
@__tracepoint_cq_schedule = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cq_schedule, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cq_schedule, ptr null, ptr @__traceiter_cq_schedule, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cq_schedule = internal constant ptr @__tracepoint_cq_schedule, section "__tracepoints_ptrs", align 4
@__tpstrtab_cq_reschedule = internal constant [14 x i8] c"cq_reschedule\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cq_reschedule = dso_local global %struct.static_call_key { ptr @__traceiter_cq_reschedule }, align 4
@__tracepoint_cq_reschedule = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cq_reschedule, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cq_reschedule, ptr null, ptr @__traceiter_cq_reschedule, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cq_reschedule = internal constant ptr @__tracepoint_cq_reschedule, section "__tracepoints_ptrs", align 4
@__tpstrtab_cq_process = internal constant [11 x i8] c"cq_process\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cq_process = dso_local global %struct.static_call_key { ptr @__traceiter_cq_process }, align 4
@__tracepoint_cq_process = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cq_process, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cq_process, ptr null, ptr @__traceiter_cq_process, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cq_process = internal constant ptr @__tracepoint_cq_process, section "__tracepoints_ptrs", align 4
@__tpstrtab_cq_poll = internal constant [8 x i8] c"cq_poll\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cq_poll = dso_local global %struct.static_call_key { ptr @__traceiter_cq_poll }, align 4
@__tracepoint_cq_poll = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cq_poll, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cq_poll, ptr null, ptr @__traceiter_cq_poll, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cq_poll = internal constant ptr @__tracepoint_cq_poll, section "__tracepoints_ptrs", align 4
@__tpstrtab_cq_drain_complete = internal constant [18 x i8] c"cq_drain_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cq_drain_complete = dso_local global %struct.static_call_key { ptr @__traceiter_cq_drain_complete }, align 4
@__tracepoint_cq_drain_complete = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cq_drain_complete, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cq_drain_complete, ptr null, ptr @__traceiter_cq_drain_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cq_drain_complete = internal constant ptr @__tracepoint_cq_drain_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_cq_modify = internal constant [10 x i8] c"cq_modify\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cq_modify = dso_local global %struct.static_call_key { ptr @__traceiter_cq_modify }, align 4
@__tracepoint_cq_modify = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cq_modify, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cq_modify, ptr null, ptr @__traceiter_cq_modify, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cq_modify = internal constant ptr @__tracepoint_cq_modify, section "__tracepoints_ptrs", align 4
@__tpstrtab_cq_alloc = internal constant [9 x i8] c"cq_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cq_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_cq_alloc }, align 4
@__tracepoint_cq_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cq_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cq_alloc, ptr null, ptr @__traceiter_cq_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cq_alloc = internal constant ptr @__tracepoint_cq_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_cq_alloc_error = internal constant [15 x i8] c"cq_alloc_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cq_alloc_error = dso_local global %struct.static_call_key { ptr @__traceiter_cq_alloc_error }, align 4
@__tracepoint_cq_alloc_error = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cq_alloc_error, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cq_alloc_error, ptr null, ptr @__traceiter_cq_alloc_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cq_alloc_error = internal constant ptr @__tracepoint_cq_alloc_error, section "__tracepoints_ptrs", align 4
@__tpstrtab_cq_free = internal constant [8 x i8] c"cq_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cq_free = dso_local global %struct.static_call_key { ptr @__traceiter_cq_free }, align 4
@__tracepoint_cq_free = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cq_free, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cq_free, ptr null, ptr @__traceiter_cq_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cq_free = internal constant ptr @__tracepoint_cq_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_mr_alloc = internal constant [9 x i8] c"mr_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mr_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_mr_alloc }, align 4
@__tracepoint_mr_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mr_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mr_alloc, ptr null, ptr @__traceiter_mr_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mr_alloc = internal constant ptr @__tracepoint_mr_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_mr_integ_alloc = internal constant [15 x i8] c"mr_integ_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mr_integ_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_mr_integ_alloc }, align 4
@__tracepoint_mr_integ_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mr_integ_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mr_integ_alloc, ptr null, ptr @__traceiter_mr_integ_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mr_integ_alloc = internal constant ptr @__tracepoint_mr_integ_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_mr_dereg = internal constant [9 x i8] c"mr_dereg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mr_dereg = dso_local global %struct.static_call_key { ptr @__traceiter_mr_dereg }, align 4
@__tracepoint_mr_dereg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mr_dereg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mr_dereg, ptr null, ptr @__traceiter_mr_dereg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mr_dereg = internal constant ptr @__tracepoint_mr_dereg, section "__tracepoints_ptrs", align 4
@str__rdma_core__trace_system_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rdma_core\00", [22 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IB_POLL_DIRECT\00", [17 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_POLL_DIRECT = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_POLL_DIRECT = internal global ptr @__TRACE_SYSTEM_IB_POLL_DIRECT, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IB_POLL_SOFTIRQ\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_POLL_SOFTIRQ = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str.1, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_POLL_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_IB_POLL_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IB_POLL_WORKQUEUE\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_POLL_WORKQUEUE = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str.2, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_POLL_WORKQUEUE = internal global ptr @__TRACE_SYSTEM_IB_POLL_WORKQUEUE, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IB_POLL_UNBOUND_WORKQUEUE\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_POLL_UNBOUND_WORKQUEUE = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str.3, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_POLL_UNBOUND_WORKQUEUE = internal global ptr @__TRACE_SYSTEM_IB_POLL_UNBOUND_WORKQUEUE, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_MR_TYPE_MEM_REG\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_MR_TYPE_MEM_REG = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str.4, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_MR_TYPE_MEM_REG = internal global ptr @__TRACE_SYSTEM_IB_MR_TYPE_MEM_REG, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IB_MR_TYPE_SG_GAPS\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_MR_TYPE_SG_GAPS = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str.5, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_MR_TYPE_SG_GAPS = internal global ptr @__TRACE_SYSTEM_IB_MR_TYPE_SG_GAPS, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IB_MR_TYPE_DM\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_MR_TYPE_DM = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str.6, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_MR_TYPE_DM = internal global ptr @__TRACE_SYSTEM_IB_MR_TYPE_DM, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IB_MR_TYPE_USER\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_MR_TYPE_USER = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str.7, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_MR_TYPE_USER = internal global ptr @__TRACE_SYSTEM_IB_MR_TYPE_USER, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IB_MR_TYPE_DMA\00", [17 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_MR_TYPE_DMA = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str.8, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_MR_TYPE_DMA = internal global ptr @__TRACE_SYSTEM_IB_MR_TYPE_DMA, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IB_MR_TYPE_INTEGRITY\00", [43 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_IB_MR_TYPE_INTEGRITY = internal global %struct.trace_eval_map { ptr @str__rdma_core__trace_system_name, ptr @.str.9, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_IB_MR_TYPE_INTEGRITY = internal global ptr @__TRACE_SYSTEM_IB_MR_TYPE_INTEGRITY, section "_ftrace_eval_map", align 4
@trace_event_fields_cq_schedule = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cq_schedule = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_cq_schedule, ptr @perf_trace_cq_schedule, ptr @trace_event_reg, ptr @trace_event_fields_cq_schedule, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cq_schedule, i64 24), ptr getelementptr (i8, ptr @event_class_cq_schedule, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cq_schedule = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cq_schedule, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cq_schedule = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\22cq.id=%u\22, REC->cq_id\00", [41 x i8] zeroinitializer }, align 32
@event_cq_schedule = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cq_schedule, %union.anon.194 { ptr @__tracepoint_cq_schedule }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cq_schedule }, ptr @print_fmt_cq_schedule, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cq_schedule = internal global ptr @event_cq_schedule, section "_ftrace_events", align 4
@trace_event_fields_cq_reschedule = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cq_reschedule = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_cq_reschedule, ptr @perf_trace_cq_reschedule, ptr @trace_event_reg, ptr @trace_event_fields_cq_reschedule, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cq_reschedule, i64 24), ptr getelementptr (i8, ptr @event_class_cq_reschedule, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cq_reschedule = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cq_reschedule, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cq_reschedule = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\22cq.id=%u\22, REC->cq_id\00", [41 x i8] zeroinitializer }, align 32
@event_cq_reschedule = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cq_reschedule, %union.anon.194 { ptr @__tracepoint_cq_reschedule }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cq_reschedule }, ptr @print_fmt_cq_reschedule, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cq_reschedule = internal global ptr @event_cq_reschedule, section "_ftrace_events", align 4
@trace_event_fields_cq_process = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.192 { %struct.anon.193 { ptr @.str.14, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.192 { %struct.anon.193 { ptr @.str.16, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cq_process = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_cq_process, ptr @perf_trace_cq_process, ptr @trace_event_reg, ptr @trace_event_fields_cq_process, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cq_process, i64 24), ptr getelementptr (i8, ptr @event_class_cq_process, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cq_process = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cq_process, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cq_process = internal global { [113 x i8], [47 x i8] } { [113 x i8] c"\22cq.id=%u wake-up took %lld [us] from %s\22, REC->cq_id, REC->latency, REC->interrupt ? \22interrupt\22 : \22reschedule\22\00", [47 x i8] zeroinitializer }, align 32
@event_cq_process = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cq_process, %union.anon.194 { ptr @__tracepoint_cq_process }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cq_process }, ptr @print_fmt_cq_process, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cq_process = internal global ptr @event_cq_process, section "_ftrace_events", align 4
@trace_event_fields_cq_poll = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.192 { %struct.anon.193 { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.192 { %struct.anon.193 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cq_poll = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_cq_poll, ptr @perf_trace_cq_poll, ptr @trace_event_reg, ptr @trace_event_fields_cq_poll, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cq_poll, i64 24), ptr getelementptr (i8, ptr @event_class_cq_poll, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cq_poll = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cq_poll, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cq_poll = internal global { [74 x i8], [54 x i8] } { [74 x i8] c"\22cq.id=%u requested %d, returned %d\22, REC->cq_id, REC->requested, REC->rc\00", [54 x i8] zeroinitializer }, align 32
@event_cq_poll = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cq_poll, %union.anon.194 { ptr @__tracepoint_cq_poll }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cq_poll }, ptr @print_fmt_cq_poll, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cq_poll = internal global ptr @event_cq_poll, section "_ftrace_events", align 4
@trace_event_fields_cq_drain_complete = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cq_drain_complete = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_cq_drain_complete, ptr @perf_trace_cq_drain_complete, ptr @trace_event_reg, ptr @trace_event_fields_cq_drain_complete, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cq_drain_complete, i64 24), ptr getelementptr (i8, ptr @event_class_cq_drain_complete, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cq_drain_complete = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cq_drain_complete, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cq_drain_complete = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\22cq.id=%u\22, REC->cq_id\00", [41 x i8] zeroinitializer }, align 32
@event_cq_drain_complete = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cq_drain_complete, %union.anon.194 { ptr @__tracepoint_cq_drain_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cq_drain_complete }, ptr @print_fmt_cq_drain_complete, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cq_drain_complete = internal global ptr @event_cq_drain_complete, section "_ftrace_events", align 4
@trace_event_fields_cq_modify = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.192 { %struct.anon.193 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.192 { %struct.anon.193 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cq_modify = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_cq_modify, ptr @perf_trace_cq_modify, ptr @trace_event_reg, ptr @trace_event_fields_cq_modify, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cq_modify, i64 24), ptr getelementptr (i8, ptr @event_class_cq_modify, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cq_modify = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cq_modify, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cq_modify = internal global { [63 x i8], [33 x i8] } { [63 x i8] c"\22cq.id=%u comps=%u usec=%u\22, REC->cq_id, REC->comps, REC->usec\00", [33 x i8] zeroinitializer }, align 32
@event_cq_modify = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cq_modify, %union.anon.194 { ptr @__tracepoint_cq_modify }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cq_modify }, ptr @print_fmt_cq_modify, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cq_modify = internal global ptr @event_cq_modify, section "_ftrace_events", align 4
@trace_event_fields_cq_alloc = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.192 { %struct.anon.193 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.192 { %struct.anon.193 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.192 { %struct.anon.193 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cq_alloc = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_cq_alloc, ptr @perf_trace_cq_alloc, ptr @trace_event_reg, ptr @trace_event_fields_cq_alloc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cq_alloc, i64 24), ptr getelementptr (i8, ptr @event_class_cq_alloc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cq_alloc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cq_alloc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cq_alloc = internal global { [274 x i8], [78 x i8] } { [274 x i8] c"\22cq.id=%u nr_cqe=%d comp_vector=%d poll_ctx=%s\22, REC->cq_id, REC->nr_cqe, REC->comp_vector, __print_symbolic(REC->poll_ctx, { IB_POLL_DIRECT, \22DIRECT\22 }, { IB_POLL_SOFTIRQ, \22SOFTIRQ\22 }, { IB_POLL_WORKQUEUE, \22WORKQUEUE\22 }, { IB_POLL_UNBOUND_WORKQUEUE, \22UNBOUND_WORKQUEUE\22 })\00", [78 x i8] zeroinitializer }, align 32
@event_cq_alloc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cq_alloc, %union.anon.194 { ptr @__tracepoint_cq_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cq_alloc }, ptr @print_fmt_cq_alloc, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cq_alloc = internal global ptr @event_cq_alloc, section "_ftrace_events", align 4
@trace_event_fields_cq_alloc_error = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.192 { %struct.anon.193 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.192 { %struct.anon.193 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.192 { %struct.anon.193 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.192 { %struct.anon.193 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cq_alloc_error = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_cq_alloc_error, ptr @perf_trace_cq_alloc_error, ptr @trace_event_reg, ptr @trace_event_fields_cq_alloc_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cq_alloc_error, i64 24), ptr getelementptr (i8, ptr @event_class_cq_alloc_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cq_alloc_error = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cq_alloc_error, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cq_alloc_error = internal global { [268 x i8], [84 x i8] } { [268 x i8] c"\22nr_cqe=%d comp_vector=%d poll_ctx=%s rc=%d\22, REC->nr_cqe, REC->comp_vector, __print_symbolic(REC->poll_ctx, { IB_POLL_DIRECT, \22DIRECT\22 }, { IB_POLL_SOFTIRQ, \22SOFTIRQ\22 }, { IB_POLL_WORKQUEUE, \22WORKQUEUE\22 }, { IB_POLL_UNBOUND_WORKQUEUE, \22UNBOUND_WORKQUEUE\22 }), REC->rc\00", [84 x i8] zeroinitializer }, align 32
@event_cq_alloc_error = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cq_alloc_error, %union.anon.194 { ptr @__tracepoint_cq_alloc_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cq_alloc_error }, ptr @print_fmt_cq_alloc_error, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cq_alloc_error = internal global ptr @event_cq_alloc_error, section "_ftrace_events", align 4
@trace_event_fields_cq_free = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cq_free = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_cq_free, ptr @perf_trace_cq_free, ptr @trace_event_reg, ptr @trace_event_fields_cq_free, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cq_free, i64 24), ptr getelementptr (i8, ptr @event_class_cq_free, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cq_free = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cq_free, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cq_free = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\22cq.id=%u\22, REC->cq_id\00", [41 x i8] zeroinitializer }, align 32
@event_cq_free = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cq_free, %union.anon.194 { ptr @__tracepoint_cq_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cq_free }, ptr @print_fmt_cq_free, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cq_free = internal global ptr @event_cq_free, section "_ftrace_events", align 4
@trace_event_fields_mr_alloc = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.192 { %struct.anon.193 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.192 { %struct.anon.193 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mr_alloc = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_mr_alloc, ptr @perf_trace_mr_alloc, ptr @trace_event_reg, ptr @trace_event_fields_mr_alloc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mr_alloc, i64 24), ptr getelementptr (i8, ptr @event_class_mr_alloc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mr_alloc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mr_alloc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mr_alloc = internal global { [320 x i8], [64 x i8] } { [320 x i8] c"\22pd.id=%u mr.id=%u type=%s max_num_sg=%u rc=%d\22, REC->pd_id, REC->mr_id, __print_symbolic(REC->mr_type, { IB_MR_TYPE_MEM_REG, \22MEM_REG\22 }, { IB_MR_TYPE_SG_GAPS, \22SG_GAPS\22 }, { IB_MR_TYPE_DM, \22DM\22 }, { IB_MR_TYPE_USER, \22USER\22 }, { IB_MR_TYPE_DMA, \22DMA\22 }, { IB_MR_TYPE_INTEGRITY, \22INTEGRITY\22 }), REC->max_num_sg, REC->rc\00", [64 x i8] zeroinitializer }, align 32
@event_mr_alloc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mr_alloc, %union.anon.194 { ptr @__tracepoint_mr_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mr_alloc }, ptr @print_fmt_mr_alloc, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mr_alloc = internal global ptr @event_mr_alloc, section "_ftrace_events", align 4
@trace_event_fields_mr_integ_alloc = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.192 { %struct.anon.193 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mr_integ_alloc = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_mr_integ_alloc, ptr @perf_trace_mr_integ_alloc, ptr @trace_event_reg, ptr @trace_event_fields_mr_integ_alloc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mr_integ_alloc, i64 24), ptr getelementptr (i8, ptr @event_class_mr_integ_alloc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mr_integ_alloc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mr_integ_alloc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mr_integ_alloc = internal global { [141 x i8], [51 x i8] } { [141 x i8] c"\22pd.id=%u mr.id=%u max_num_data_sg=%u max_num_meta_sg=%u rc=%d\22, REC->pd_id, REC->mr_id, REC->max_num_data_sg, REC->max_num_meta_sg, REC->rc\00", [51 x i8] zeroinitializer }, align 32
@event_mr_integ_alloc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mr_integ_alloc, %union.anon.194 { ptr @__tracepoint_mr_integ_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mr_integ_alloc }, ptr @print_fmt_mr_integ_alloc, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mr_integ_alloc = internal global ptr @event_mr_integ_alloc, section "_ftrace_events", align 4
@trace_event_fields_mr_dereg = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon.192 { %struct.anon.193 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mr_dereg = internal global %struct.trace_event_class { ptr @str__rdma_core__trace_system_name, ptr @trace_event_raw_event_mr_dereg, ptr @perf_trace_mr_dereg, ptr @trace_event_reg, ptr @trace_event_fields_mr_dereg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mr_dereg, i64 24), ptr getelementptr (i8, ptr @event_class_mr_dereg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mr_dereg = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mr_dereg, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mr_dereg = internal global { [20 x i8], [44 x i8] } { [20 x i8] c"\22mr.id=%u\22, REC->id\00", [44 x i8] zeroinitializer }, align 32
@event_mr_dereg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mr_dereg, %union.anon.194 { ptr @__tracepoint_mr_dereg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mr_dereg }, ptr @print_fmt_mr_dereg, ptr null, %union.anon.195 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mr_dereg = internal global ptr @event_mr_dereg, section "_ftrace_events", align 4
@__bpf_trace_tp_map_cq_schedule = internal global %union.anon.196 { %struct.bpf_raw_event_map { ptr @__tracepoint_cq_schedule, ptr @__bpf_trace_cq_schedule, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cq_reschedule = internal global %union.anon.197 { %struct.bpf_raw_event_map { ptr @__tracepoint_cq_reschedule, ptr @__bpf_trace_cq_reschedule, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cq_process = internal global %union.anon.198 { %struct.bpf_raw_event_map { ptr @__tracepoint_cq_process, ptr @__bpf_trace_cq_process, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cq_poll = internal global %union.anon.199 { %struct.bpf_raw_event_map { ptr @__tracepoint_cq_poll, ptr @__bpf_trace_cq_poll, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cq_drain_complete = internal global %union.anon.200 { %struct.bpf_raw_event_map { ptr @__tracepoint_cq_drain_complete, ptr @__bpf_trace_cq_drain_complete, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cq_modify = internal global %union.anon.201 { %struct.bpf_raw_event_map { ptr @__tracepoint_cq_modify, ptr @__bpf_trace_cq_modify, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cq_alloc = internal global %union.anon.202 { %struct.bpf_raw_event_map { ptr @__tracepoint_cq_alloc, ptr @__bpf_trace_cq_alloc, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cq_alloc_error = internal global %union.anon.203 { %struct.bpf_raw_event_map { ptr @__tracepoint_cq_alloc_error, ptr @__bpf_trace_cq_alloc_error, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cq_free = internal global %union.anon.204 { %struct.bpf_raw_event_map { ptr @__tracepoint_cq_free, ptr @__bpf_trace_cq_free, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mr_alloc = internal global %union.anon.205 { %struct.bpf_raw_event_map { ptr @__tracepoint_mr_alloc, ptr @__bpf_trace_mr_alloc, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mr_integ_alloc = internal global %union.anon.206 { %struct.bpf_raw_event_map { ptr @__tracepoint_mr_integ_alloc, ptr @__bpf_trace_mr_integ_alloc, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mr_dereg = internal global %union.anon.207 { %struct.bpf_raw_event_map { ptr @__tracepoint_mr_dereg, ptr @__bpf_trace_mr_dereg, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cq_id\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cq.id=%u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interrupt\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s64\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"latency\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cq.id=%u wake-up took %lld [us] from %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reschedule\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"requested\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rc\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cq.id=%u requested %d, returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"comps\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usec\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cq.id=%u comps=%u usec=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nr_cqe\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comp_vector\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poll_ctx\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cq.id=%u nr_cqe=%d comp_vector=%d poll_ctx=%s\0A\00", [49 x i8] zeroinitializer }, align 32
@trace_raw_output_cq_alloc.symbols = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.32 }, %struct.trace_print_flags { i32 0, ptr @.str.33 }, %struct.trace_print_flags { i32 1, ptr @.str.34 }, %struct.trace_print_flags { i32 2, ptr @.str.35 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIRECT\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOFTIRQ\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WORKQUEUE\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UNBOUND_WORKQUEUE\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nr_cqe=%d comp_vector=%d poll_ctx=%s rc=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@trace_raw_output_cq_alloc_error.symbols = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.32 }, %struct.trace_print_flags { i32 0, ptr @.str.33 }, %struct.trace_print_flags { i32 1, ptr @.str.34 }, %struct.trace_print_flags { i32 2, ptr @.str.35 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd_id\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mr_id\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"max_num_sg\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mr_type\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"pd.id=%u mr.id=%u type=%s max_num_sg=%u rc=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@trace_raw_output_mr_alloc.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.42 }, %struct.trace_print_flags { i32 1, ptr @.str.43 }, %struct.trace_print_flags { i32 2, ptr @.str.44 }, %struct.trace_print_flags { i32 3, ptr @.str.45 }, %struct.trace_print_flags { i32 4, ptr @.str.46 }, %struct.trace_print_flags { i32 5, ptr @.str.47 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MEM_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SG_GAPS\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"DM\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"USER\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INTEGRITY\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max_num_data_sg\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max_num_meta_sg\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"pd.id=%u mr.id=%u max_num_data_sg=%u max_num_meta_sg=%u rc=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mr.id=%u\0A\00", [22 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [35 x i8] c"../drivers/infiniband/core/trace.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [34 x i8] c"str__rdma_core__trace_system_name\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 36, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 34, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 290, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [31 x i8] c"trace_event_fields_cq_schedule\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_cq_schedule\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"print_fmt_cq_schedule\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"event_cq_schedule\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [33 x i8] c"trace_event_fields_cq_reschedule\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_cq_reschedule\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [24 x i8] c"print_fmt_cq_reschedule\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"event_cq_reschedule\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 70, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant [30 x i8] c"trace_event_fields_cq_process\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_cq_process\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"print_fmt_cq_process\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"event_cq_process\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"trace_event_fields_cq_poll\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_cq_poll\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"print_fmt_cq_poll\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"event_cq_poll\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [37 x i8] c"trace_event_fields_cq_drain_complete\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_cq_drain_complete\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [28 x i8] c"print_fmt_cq_drain_complete\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [24 x i8] c"event_cq_drain_complete\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 144, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant [29 x i8] c"trace_event_fields_cq_modify\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_cq_modify\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"print_fmt_cq_modify\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"event_cq_modify\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [28 x i8] c"trace_event_fields_cq_alloc\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_cq_alloc\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"print_fmt_cq_alloc\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"event_cq_alloc\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [34 x i8] c"trace_event_fields_cq_alloc_error\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_cq_alloc_error\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [25 x i8] c"print_fmt_cq_alloc_error\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"event_cq_alloc_error\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"trace_event_fields_cq_free\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_cq_free\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [18 x i8] c"print_fmt_cq_free\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [14 x i8] c"event_cq_free\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 251, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant [28 x i8] c"trace_event_fields_mr_alloc\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_mr_alloc\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"print_fmt_mr_alloc\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"event_mr_alloc\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [34 x i8] c"trace_event_fields_mr_integ_alloc\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_mr_integ_alloc\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [25 x i8] c"print_fmt_mr_integ_alloc\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [21 x i8] c"event_mr_integ_alloc\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [28 x i8] c"trace_event_fields_mr_dereg\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_mr_dereg\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"print_fmt_mr_dereg\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [15 x i8] c"event_mr_dereg\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 49, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 91, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 118, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 165, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 191, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 221, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 301, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 338, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [36 x i8] c"../include/trace/events/rdma_core.h\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 374, i32 1 }
@llvm.compiler.used = appending global [185 x ptr] [ptr @TRACE_SYSTEM_IB_MR_TYPE_DM, ptr @TRACE_SYSTEM_IB_MR_TYPE_DMA, ptr @TRACE_SYSTEM_IB_MR_TYPE_INTEGRITY, ptr @TRACE_SYSTEM_IB_MR_TYPE_MEM_REG, ptr @TRACE_SYSTEM_IB_MR_TYPE_SG_GAPS, ptr @TRACE_SYSTEM_IB_MR_TYPE_USER, ptr @TRACE_SYSTEM_IB_POLL_DIRECT, ptr @TRACE_SYSTEM_IB_POLL_SOFTIRQ, ptr @TRACE_SYSTEM_IB_POLL_UNBOUND_WORKQUEUE, ptr @TRACE_SYSTEM_IB_POLL_WORKQUEUE, ptr @__TRACE_SYSTEM_IB_MR_TYPE_DM, ptr @__TRACE_SYSTEM_IB_MR_TYPE_DMA, ptr @__TRACE_SYSTEM_IB_MR_TYPE_INTEGRITY, ptr @__TRACE_SYSTEM_IB_MR_TYPE_MEM_REG, ptr @__TRACE_SYSTEM_IB_MR_TYPE_SG_GAPS, ptr @__TRACE_SYSTEM_IB_MR_TYPE_USER, ptr @__TRACE_SYSTEM_IB_POLL_DIRECT, ptr @__TRACE_SYSTEM_IB_POLL_SOFTIRQ, ptr @__TRACE_SYSTEM_IB_POLL_UNBOUND_WORKQUEUE, ptr @__TRACE_SYSTEM_IB_POLL_WORKQUEUE, ptr @__bpf_trace_tp_map_cq_alloc, ptr @__bpf_trace_tp_map_cq_alloc_error, ptr @__bpf_trace_tp_map_cq_drain_complete, ptr @__bpf_trace_tp_map_cq_free, ptr @__bpf_trace_tp_map_cq_modify, ptr @__bpf_trace_tp_map_cq_poll, ptr @__bpf_trace_tp_map_cq_process, ptr @__bpf_trace_tp_map_cq_reschedule, ptr @__bpf_trace_tp_map_cq_schedule, ptr @__bpf_trace_tp_map_mr_alloc, ptr @__bpf_trace_tp_map_mr_dereg, ptr @__bpf_trace_tp_map_mr_integ_alloc, ptr @__event_cq_alloc, ptr @__event_cq_alloc_error, ptr @__event_cq_drain_complete, ptr @__event_cq_free, ptr @__event_cq_modify, ptr @__event_cq_poll, ptr @__event_cq_process, ptr @__event_cq_reschedule, ptr @__event_cq_schedule, ptr @__event_mr_alloc, ptr @__event_mr_dereg, ptr @__event_mr_integ_alloc, ptr @__tracepoint_cq_alloc, ptr @__tracepoint_cq_alloc_error, ptr @__tracepoint_cq_drain_complete, ptr @__tracepoint_cq_free, ptr @__tracepoint_cq_modify, ptr @__tracepoint_cq_poll, ptr @__tracepoint_cq_process, ptr @__tracepoint_cq_reschedule, ptr @__tracepoint_cq_schedule, ptr @__tracepoint_mr_alloc, ptr @__tracepoint_mr_dereg, ptr @__tracepoint_mr_integ_alloc, ptr @__tracepoint_ptr_cq_alloc, ptr @__tracepoint_ptr_cq_alloc_error, ptr @__tracepoint_ptr_cq_drain_complete, ptr @__tracepoint_ptr_cq_free, ptr @__tracepoint_ptr_cq_modify, ptr @__tracepoint_ptr_cq_poll, ptr @__tracepoint_ptr_cq_process, ptr @__tracepoint_ptr_cq_reschedule, ptr @__tracepoint_ptr_cq_schedule, ptr @__tracepoint_ptr_mr_alloc, ptr @__tracepoint_ptr_mr_dereg, ptr @__tracepoint_ptr_mr_integ_alloc, ptr @event_class_cq_alloc, ptr @event_class_cq_alloc_error, ptr @event_class_cq_drain_complete, ptr @event_class_cq_free, ptr @event_class_cq_modify, ptr @event_class_cq_poll, ptr @event_class_cq_process, ptr @event_class_cq_reschedule, ptr @event_class_cq_schedule, ptr @event_class_mr_alloc, ptr @event_class_mr_dereg, ptr @event_class_mr_integ_alloc, ptr @event_cq_alloc, ptr @event_cq_alloc_error, ptr @event_cq_drain_complete, ptr @event_cq_free, ptr @event_cq_modify, ptr @event_cq_poll, ptr @event_cq_process, ptr @event_cq_reschedule, ptr @event_cq_schedule, ptr @event_mr_alloc, ptr @event_mr_dereg, ptr @event_mr_integ_alloc, ptr @str__rdma_core__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @trace_event_fields_cq_schedule, ptr @trace_event_type_funcs_cq_schedule, ptr @print_fmt_cq_schedule, ptr @trace_event_fields_cq_reschedule, ptr @trace_event_type_funcs_cq_reschedule, ptr @print_fmt_cq_reschedule, ptr @trace_event_fields_cq_process, ptr @trace_event_type_funcs_cq_process, ptr @print_fmt_cq_process, ptr @trace_event_fields_cq_poll, ptr @trace_event_type_funcs_cq_poll, ptr @print_fmt_cq_poll, ptr @trace_event_fields_cq_drain_complete, ptr @trace_event_type_funcs_cq_drain_complete, ptr @print_fmt_cq_drain_complete, ptr @trace_event_fields_cq_modify, ptr @trace_event_type_funcs_cq_modify, ptr @print_fmt_cq_modify, ptr @trace_event_fields_cq_alloc, ptr @trace_event_type_funcs_cq_alloc, ptr @print_fmt_cq_alloc, ptr @trace_event_fields_cq_alloc_error, ptr @trace_event_type_funcs_cq_alloc_error, ptr @print_fmt_cq_alloc_error, ptr @trace_event_fields_cq_free, ptr @trace_event_type_funcs_cq_free, ptr @print_fmt_cq_free, ptr @trace_event_fields_mr_alloc, ptr @trace_event_type_funcs_mr_alloc, ptr @print_fmt_mr_alloc, ptr @trace_event_fields_mr_integ_alloc, ptr @trace_event_type_funcs_mr_integ_alloc, ptr @print_fmt_mr_integ_alloc, ptr @trace_event_fields_mr_dereg, ptr @trace_event_type_funcs_mr_dereg, ptr @print_fmt_mr_dereg, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @trace_raw_output_cq_alloc.symbols, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @trace_raw_output_cq_alloc_error.symbols, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @trace_raw_output_mr_alloc.symbols, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__rdma_core__trace_system_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cq_schedule to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cq_schedule to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cq_schedule to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cq_schedule to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cq_reschedule to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cq_reschedule to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cq_reschedule to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cq_reschedule to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cq_process to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cq_process to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cq_process to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cq_process to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cq_poll to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cq_poll to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cq_poll to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cq_poll to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cq_drain_complete to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cq_drain_complete to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cq_drain_complete to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cq_drain_complete to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cq_modify to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cq_modify to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cq_modify to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cq_modify to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cq_alloc to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cq_alloc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cq_alloc to i32), i32 274, i32 352, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cq_alloc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cq_alloc_error to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cq_alloc_error to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cq_alloc_error to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cq_alloc_error to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cq_free to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cq_free to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cq_free to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cq_free to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mr_alloc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mr_alloc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mr_alloc to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mr_alloc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mr_integ_alloc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mr_integ_alloc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mr_integ_alloc to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mr_integ_alloc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mr_dereg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mr_dereg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mr_dereg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mr_dereg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cq_alloc.symbols to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cq_alloc_error.symbols to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_mr_alloc.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cq_schedule(ptr nocapture readnone %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cq_schedule, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cq) #6
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
define dso_local i32 @__traceiter_cq_reschedule(ptr nocapture readnone %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cq_reschedule, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cq) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cq_process(ptr nocapture readnone %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cq_process, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cq) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cq_poll(ptr nocapture readnone %__data, ptr noundef %cq, i32 noundef %requested, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cq_poll, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cq, i32 noundef %requested, i32 noundef %rc) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cq_drain_complete(ptr nocapture readnone %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cq_drain_complete, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cq) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cq_modify(ptr nocapture readnone %__data, ptr noundef %cq, i16 noundef zeroext %comps, i16 noundef zeroext %usec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cq_modify, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cq, i16 noundef zeroext %comps, i16 noundef zeroext %usec) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cq_alloc(ptr nocapture readnone %__data, ptr noundef %cq, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cq_alloc, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cq, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cq_alloc_error(ptr nocapture readnone %__data, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cq_alloc_error, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx, i32 noundef %rc) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cq_free(ptr nocapture readnone %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cq_free, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %cq) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mr_alloc(ptr nocapture readnone %__data, ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, ptr noundef %mr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mr_alloc, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, ptr noundef %mr) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mr_integ_alloc(ptr nocapture readnone %__data, ptr noundef %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg, ptr noundef %mr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mr_integ_alloc, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg, ptr noundef %mr) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mr_dereg(ptr nocapture readnone %__data, ptr noundef %mr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mr_dereg, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %mr) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cq_schedule(ptr noundef %__data, ptr nocapture noundef %cq) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i64 @ktime_get() #6
  %timestamp = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 14
  %3 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call6, ptr %timestamp, align 8
  %interrupt = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 15
  %4 = ptrtoint ptr %interrupt to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %interrupt, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %interrupt, align 8
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_schedule, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cq_id, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cq_schedule(ptr noundef %__data, ptr nocapture noundef %cq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %call17 = call i64 @ktime_get() #6
  %timestamp = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 14
  %27 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call17, ptr %timestamp, align 8
  %interrupt = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 15
  %28 = ptrtoint ptr %interrupt to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %interrupt, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %interrupt, align 8
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_schedule, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cq_id, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #6
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
define internal void @trace_event_raw_event_cq_reschedule(ptr noundef %__data, ptr nocapture noundef %cq) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i64 @ktime_get() #6
  %timestamp = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 14
  %3 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call6, ptr %timestamp, align 8
  %interrupt = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 15
  %4 = ptrtoint ptr %interrupt to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %interrupt, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %interrupt, align 8
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_reschedule, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cq_id, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cq_reschedule(ptr noundef %__data, ptr nocapture noundef %cq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %call17 = call i64 @ktime_get() #6
  %timestamp = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 14
  %27 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call17, ptr %timestamp, align 8
  %interrupt = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 15
  %28 = ptrtoint ptr %interrupt to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %interrupt, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %interrupt, align 8
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_reschedule, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cq_id, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cq_process(ptr noundef %__data, ptr nocapture noundef readonly %cq) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i64 @ktime_get() #6
  %timestamp = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 14
  %3 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %timestamp, align 8
  %sub = sub i64 %call6, %4
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_process, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cq_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %8 = call i64 @llvm.abs.i64(i64 %sub, i1 false) #6
  %9 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %8, i32 0) #9, !srcloc !237
  %asmresult.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %8, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !238
  %asmresult10.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %latency8 = getelementptr inbounds %struct.trace_event_raw_cq_process, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %latency8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %cond213.i.i, ptr %latency8, align 8
  %interrupt = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 15
  %12 = ptrtoint ptr %interrupt to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %interrupt, align 8
  %interrupt10 = getelementptr inbounds %struct.trace_event_raw_cq_process, ptr %call3, i32 0, i32 2
  %bf.load.lobit = lshr i8 %bf.load, 7
  %13 = ptrtoint ptr %interrupt10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.load.lobit, ptr %interrupt10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cq_process(ptr noundef %__data, ptr nocapture noundef readonly %cq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %call17 = call i64 @ktime_get() #6
  %timestamp = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 14
  %27 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %timestamp, align 8
  %sub18 = sub i64 %call17, %28
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_process, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cq_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub18)
  %cmp8.i.i = icmp slt i64 %sub18, 0
  %32 = call i64 @llvm.abs.i64(i64 %sub18, i1 false) #6
  %33 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %32, i32 0) #9, !srcloc !237
  %asmresult.i.i.i = extractvalue { i64, i32 } %33, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %33, 1
  %34 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %32, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !238
  %asmresult10.i.i.i = extractvalue { i64, i32 } %34, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %latency20 = getelementptr inbounds %struct.trace_event_raw_cq_process, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %latency20 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %cond213.i.i, ptr %latency20, align 8
  %interrupt = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 15
  %36 = ptrtoint ptr %interrupt to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %interrupt, align 8
  %interrupt22 = getelementptr inbounds %struct.trace_event_raw_cq_process, ptr %call13, i32 0, i32 2
  %bf.load.lobit = lshr i8 %bf.load, 7
  %37 = ptrtoint ptr %interrupt22 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %bf.load.lobit, ptr %interrupt22, align 4
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cq_poll(ptr noundef %__data, ptr nocapture noundef readonly %cq, i32 noundef %requested, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_poll, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cq_id, align 4
  %requested6 = getelementptr inbounds %struct.trace_event_raw_cq_poll, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %requested6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %requested, ptr %requested6, align 4
  %rc7 = getelementptr inbounds %struct.trace_event_raw_cq_poll, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %rc7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rc, ptr %rc7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cq_poll(ptr noundef %__data, ptr nocapture noundef readonly %cq, i32 noundef %requested, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_poll, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cq_id, align 4
  %requested17 = getelementptr inbounds %struct.trace_event_raw_cq_poll, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %requested17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %requested, ptr %requested17, align 4
  %rc18 = getelementptr inbounds %struct.trace_event_raw_cq_poll, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %rc18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rc, ptr %rc18, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cq_drain_complete(ptr noundef %__data, ptr nocapture noundef readonly %cq) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_drain_complete, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cq_id, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cq_drain_complete(ptr noundef %__data, ptr nocapture noundef readonly %cq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_drain_complete, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cq_id, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cq_modify(ptr noundef %__data, ptr nocapture noundef readonly %cq, i16 noundef zeroext %comps, i16 noundef zeroext %usec) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_modify, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cq_id, align 4
  %conv = zext i16 %comps to i32
  %comps6 = getelementptr inbounds %struct.trace_event_raw_cq_modify, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %comps6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %comps6, align 4
  %conv7 = zext i16 %usec to i32
  %usec8 = getelementptr inbounds %struct.trace_event_raw_cq_modify, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %usec8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv7, ptr %usec8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cq_modify(ptr noundef %__data, ptr nocapture noundef readonly %cq, i16 noundef zeroext %comps, i16 noundef zeroext %usec) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_modify, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cq_id, align 4
  %conv = zext i16 %comps to i32
  %comps17 = getelementptr inbounds %struct.trace_event_raw_cq_modify, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %comps17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %comps17, align 4
  %conv18 = zext i16 %usec to i32
  %usec19 = getelementptr inbounds %struct.trace_event_raw_cq_modify, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %usec19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv18, ptr %usec19, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cq_alloc(ptr noundef %__data, ptr nocapture noundef readonly %cq, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cq_id, align 4
  %nr_cqe6 = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %nr_cqe6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nr_cqe, ptr %nr_cqe6, align 4
  %comp_vector7 = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %comp_vector7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %comp_vector, ptr %comp_vector7, align 4
  %poll_ctx8 = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %poll_ctx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %poll_ctx, ptr %poll_ctx8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cq_alloc(ptr noundef %__data, ptr nocapture noundef readonly %cq, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cq_id, align 4
  %nr_cqe17 = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %nr_cqe17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %nr_cqe, ptr %nr_cqe17, align 4
  %comp_vector18 = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %comp_vector18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %comp_vector, ptr %comp_vector18, align 4
  %poll_ctx19 = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %poll_ctx19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %poll_ctx, ptr %poll_ctx19, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cq_alloc_error(ptr noundef %__data, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx, i32 noundef %rc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rc6 = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %rc, ptr %rc6, align 4
  %nr_cqe7 = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_cqe7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nr_cqe, ptr %nr_cqe7, align 4
  %comp_vector8 = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %comp_vector8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %comp_vector, ptr %comp_vector8, align 4
  %poll_ctx9 = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %poll_ctx9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %poll_ctx, ptr %poll_ctx9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cq_alloc_error(ptr noundef %__data, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx, i32 noundef %rc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %rc17 = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %rc17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %rc, ptr %rc17, align 4
  %nr_cqe18 = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %nr_cqe18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %nr_cqe, ptr %nr_cqe18, align 4
  %comp_vector19 = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %comp_vector19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %comp_vector, ptr %comp_vector19, align 4
  %poll_ctx20 = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %poll_ctx20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %poll_ctx, ptr %poll_ctx20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cq_free(ptr noundef %__data, ptr nocapture noundef readonly %cq) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_free, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cq_id, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cq_free(ptr noundef %__data, ptr nocapture noundef readonly %cq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 8
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_free, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %cq_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cq_id, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mr_alloc(ptr noundef %__data, ptr nocapture noundef readonly %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, ptr noundef %mr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %pd_id = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %pd_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pd_id, align 4
  %cmp.i = icmp ugt ptr %mr, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mr to i32
  br label %if.end13

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %id10 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 12, i32 8
  %7 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id10, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %.sink35 = phi i32 [ 0, %if.then7 ], [ %8, %if.else ]
  %.sink = phi i32 [ %6, %if.then7 ], [ 0, %if.else ]
  %9 = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink35, ptr %9, align 4
  %11 = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 4
  %max_num_sg14 = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %max_num_sg14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %max_num_sg, ptr %max_num_sg14, align 4
  %mr_type15 = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %mr_type15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mr_type, ptr %mr_type15, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mr_alloc(ptr noundef %__data, ptr nocapture noundef readonly %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, ptr noundef %mr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %pd_id = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %pd_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pd_id, align 4
  %cmp.i = icmp ugt ptr %mr, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %mr to i32
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %id21 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 12, i32 8
  %31 = ptrtoint ptr %id21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id21, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18
  %.sink57 = phi i32 [ 0, %if.then18 ], [ %32, %if.else ]
  %.sink = phi i32 [ %30, %if.then18 ], [ 0, %if.else ]
  %33 = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink57, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %35, align 4
  %max_num_sg25 = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %max_num_sg25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %max_num_sg, ptr %max_num_sg25, align 4
  %mr_type26 = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %mr_type26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mr_type, ptr %mr_type26, align 4
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mr_integ_alloc(ptr noundef %__data, ptr nocapture noundef readonly %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg, ptr noundef %mr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %pd_id = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %pd_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pd_id, align 4
  %cmp.i = icmp ugt ptr %mr, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mr to i32
  br label %if.end13

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %id10 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 12, i32 8
  %7 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id10, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %.sink35 = phi i32 [ 0, %if.then7 ], [ %8, %if.else ]
  %.sink = phi i32 [ %6, %if.then7 ], [ 0, %if.else ]
  %9 = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink35, ptr %9, align 4
  %11 = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call3, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 4
  %max_num_data_sg14 = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %max_num_data_sg14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %max_num_data_sg, ptr %max_num_data_sg14, align 4
  %max_num_meta_sg15 = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %max_num_meta_sg15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %max_num_meta_sg, ptr %max_num_meta_sg15, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mr_integ_alloc(ptr noundef %__data, ptr nocapture noundef readonly %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg, ptr noundef %mr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %pd_id = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %pd_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pd_id, align 4
  %cmp.i = icmp ugt ptr %mr, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %mr to i32
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %id21 = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 12, i32 8
  %31 = ptrtoint ptr %id21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id21, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18
  %.sink57 = phi i32 [ 0, %if.then18 ], [ %32, %if.else ]
  %.sink = phi i32 [ %30, %if.then18 ], [ 0, %if.else ]
  %33 = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink57, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call13, i32 0, i32 5
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %35, align 4
  %max_num_data_sg25 = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %max_num_data_sg25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %max_num_data_sg, ptr %max_num_data_sg25, align 4
  %max_num_meta_sg26 = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %max_num_meta_sg26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %max_num_meta_sg, ptr %max_num_meta_sg26, align 4
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mr_dereg(ptr noundef %__data, ptr nocapture noundef readonly %mr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !234

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !235

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 12, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %id6 = getelementptr inbounds %struct.trace_event_raw_mr_dereg, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mr_dereg(ptr noundef %__data, ptr nocapture noundef readonly %mr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !236
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !224) #6
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
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
  %24 = call i32 @llvm.read_register.i32(metadata !224) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 12, i32 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %id17 = getelementptr inbounds %struct.trace_event_raw_mr_dereg, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %id17, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cq_schedule(ptr noundef %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cq to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cq_reschedule(ptr noundef %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cq to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cq_process(ptr noundef %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cq to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cq_poll(ptr noundef %__data, ptr noundef %cq, i32 noundef %requested, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cq to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %requested to i64
  %conv8 = zext i32 %rc to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cq_drain_complete(ptr noundef %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cq to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cq_modify(ptr noundef %__data, ptr noundef %cq, i16 noundef zeroext %comps, i16 noundef zeroext %usec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cq to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i16 %comps to i64
  %conv8 = zext i16 %usec to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cq_alloc(ptr noundef %__data, ptr noundef %cq, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cq to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %nr_cqe to i64
  %conv8 = zext i32 %comp_vector to i64
  %conv12 = zext i32 %poll_ctx to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cq_alloc_error(ptr noundef %__data, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx, i32 noundef %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %nr_cqe to i64
  %conv4 = zext i32 %comp_vector to i64
  %conv8 = zext i32 %poll_ctx to i64
  %conv12 = zext i32 %rc to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cq_free(ptr noundef %__data, ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %cq to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mr_alloc(ptr noundef %__data, ptr noundef %pd, i32 noundef %mr_type, i32 noundef %max_num_sg, ptr noundef %mr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %pd to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %mr_type to i64
  %conv8 = zext i32 %max_num_sg to i64
  %1 = ptrtoint ptr %mr to i32
  %conv12 = zext i32 %1 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mr_integ_alloc(ptr noundef %__data, ptr noundef %pd, i32 noundef %max_num_data_sg, i32 noundef %max_num_meta_sg, ptr noundef %mr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %pd to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %max_num_data_sg to i64
  %conv8 = zext i32 %max_num_meta_sg to i64
  %1 = ptrtoint ptr %mr to i32
  %conv12 = zext i32 %1 to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mr_dereg(ptr noundef %__data, ptr noundef %mr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %mr to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cq_schedule(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_schedule, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.12, i32 noundef %3) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
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
define internal i32 @trace_raw_output_cq_reschedule(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_reschedule, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.12, i32 noundef %3) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cq_process(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_process, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_id, align 8
  %latency = getelementptr inbounds %struct.trace_event_raw_cq_process, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %latency to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %latency, align 8
  %interrupt = getelementptr inbounds %struct.trace_event_raw_cq_process, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %interrupt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %interrupt, align 4, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.18, ptr @.str.14
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, i32 noundef %3, i64 noundef %5, ptr noundef nonnull %cond) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cq_poll(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_poll, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_id, align 4
  %requested = getelementptr inbounds %struct.trace_event_raw_cq_poll, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %requested to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %requested, align 4
  %rc = getelementptr inbounds %struct.trace_event_raw_cq_poll, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %5, i32 noundef %7) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cq_drain_complete(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_drain_complete, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.12, i32 noundef %3) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cq_modify(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_modify, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_id, align 4
  %comps = getelementptr inbounds %struct.trace_event_raw_cq_modify, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %comps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %comps, align 4
  %usec = getelementptr inbounds %struct.trace_event_raw_cq_modify, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %usec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.26, i32 noundef %3, i32 noundef %5, i32 noundef %7) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cq_alloc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_id, align 4
  %nr_cqe = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nr_cqe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_cqe, align 4
  %comp_vector = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %comp_vector, align 4
  %poll_ctx = getelementptr inbounds %struct.trace_event_raw_cq_alloc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %poll_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %poll_ctx, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %9, ptr noundef nonnull @trace_raw_output_cq_alloc.symbols) #6
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %call1) #6
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cq_alloc_error(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %nr_cqe = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_cqe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_cqe, align 4
  %comp_vector = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %comp_vector, align 4
  %poll_ctx = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %poll_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %poll_ctx, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cq_alloc_error.symbols) #6
  %rc = getelementptr inbounds %struct.trace_event_raw_cq_alloc_error, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %9) #6
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cq_free(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %cq_id = getelementptr inbounds %struct.trace_event_raw_cq_free, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cq_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.12, i32 noundef %3) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mr_alloc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pd_id = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pd_id, align 4
  %mr_id = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mr_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mr_id, align 4
  %mr_type = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %mr_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mr_type, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_mr_alloc.symbols) #6
  %max_num_sg = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %max_num_sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_num_sg, align 4
  %rc = getelementptr inbounds %struct.trace_event_raw_mr_alloc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.41, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %9, i32 noundef %11) #6
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mr_integ_alloc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %pd_id = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pd_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pd_id, align 4
  %mr_id = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mr_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mr_id, align 4
  %max_num_data_sg = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %max_num_data_sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_num_data_sg, align 4
  %max_num_meta_sg = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %max_num_meta_sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_num_meta_sg, align 4
  %rc = getelementptr inbounds %struct.trace_event_raw_mr_integ_alloc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.50, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mr_dereg(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %id = getelementptr inbounds %struct.trace_event_raw_mr_dereg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.52, i32 noundef %3) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
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
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!llvm.named.register.sp = !{!224}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @__tracepoint_cq_schedule, !1, !"__tracepoint_cq_schedule", i1 false, i1 false}
!1 = !{!"../include/trace/events/rdma_core.h", i32 49, i32 1}
!2 = !{ptr @__tracepoint_ptr_cq_schedule, !1, !"__tracepoint_ptr_cq_schedule", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_cq_schedule, !1, !"__SCK__tp_func_cq_schedule", i1 false, i1 false}
!4 = !{ptr @__tracepoint_cq_reschedule, !5, !"__tracepoint_cq_reschedule", i1 false, i1 false}
!5 = !{!"../include/trace/events/rdma_core.h", i32 70, i32 1}
!6 = !{ptr @__tracepoint_ptr_cq_reschedule, !5, !"__tracepoint_ptr_cq_reschedule", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_cq_reschedule, !5, !"__SCK__tp_func_cq_reschedule", i1 false, i1 false}
!8 = !{ptr @__tracepoint_cq_process, !9, !"__tracepoint_cq_process", i1 false, i1 false}
!9 = !{!"../include/trace/events/rdma_core.h", i32 91, i32 1}
!10 = !{ptr @__tracepoint_ptr_cq_process, !9, !"__tracepoint_ptr_cq_process", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_cq_process, !9, !"__SCK__tp_func_cq_process", i1 false, i1 false}
!12 = !{ptr @__tracepoint_cq_poll, !13, !"__tracepoint_cq_poll", i1 false, i1 false}
!13 = !{!"../include/trace/events/rdma_core.h", i32 118, i32 1}
!14 = !{ptr @__tracepoint_ptr_cq_poll, !13, !"__tracepoint_ptr_cq_poll", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_cq_poll, !13, !"__SCK__tp_func_cq_poll", i1 false, i1 false}
!16 = !{ptr @__tracepoint_cq_drain_complete, !17, !"__tracepoint_cq_drain_complete", i1 false, i1 false}
!17 = !{!"../include/trace/events/rdma_core.h", i32 144, i32 1}
!18 = !{ptr @__tracepoint_ptr_cq_drain_complete, !17, !"__tracepoint_ptr_cq_drain_complete", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_cq_drain_complete, !17, !"__SCK__tp_func_cq_drain_complete", i1 false, i1 false}
!20 = !{ptr @__tracepoint_cq_modify, !21, !"__tracepoint_cq_modify", i1 false, i1 false}
!21 = !{!"../include/trace/events/rdma_core.h", i32 165, i32 1}
!22 = !{ptr @__tracepoint_ptr_cq_modify, !21, !"__tracepoint_ptr_cq_modify", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_cq_modify, !21, !"__SCK__tp_func_cq_modify", i1 false, i1 false}
!24 = !{ptr @__tracepoint_cq_alloc, !25, !"__tracepoint_cq_alloc", i1 false, i1 false}
!25 = !{!"../include/trace/events/rdma_core.h", i32 191, i32 1}
!26 = !{ptr @__tracepoint_ptr_cq_alloc, !25, !"__tracepoint_ptr_cq_alloc", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_cq_alloc, !25, !"__SCK__tp_func_cq_alloc", i1 false, i1 false}
!28 = !{ptr @__tracepoint_cq_alloc_error, !29, !"__tracepoint_cq_alloc_error", i1 false, i1 false}
!29 = !{!"../include/trace/events/rdma_core.h", i32 221, i32 1}
!30 = !{ptr @__tracepoint_ptr_cq_alloc_error, !29, !"__tracepoint_ptr_cq_alloc_error", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_cq_alloc_error, !29, !"__SCK__tp_func_cq_alloc_error", i1 false, i1 false}
!32 = !{ptr @__tracepoint_cq_free, !33, !"__tracepoint_cq_free", i1 false, i1 false}
!33 = !{!"../include/trace/events/rdma_core.h", i32 251, i32 1}
!34 = !{ptr @__tracepoint_ptr_cq_free, !33, !"__tracepoint_ptr_cq_free", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_cq_free, !33, !"__SCK__tp_func_cq_free", i1 false, i1 false}
!36 = !{ptr @__tracepoint_mr_alloc, !37, !"__tracepoint_mr_alloc", i1 false, i1 false}
!37 = !{!"../include/trace/events/rdma_core.h", i32 301, i32 1}
!38 = !{ptr @__tracepoint_ptr_mr_alloc, !37, !"__tracepoint_ptr_mr_alloc", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_mr_alloc, !37, !"__SCK__tp_func_mr_alloc", i1 false, i1 false}
!40 = !{ptr @__tracepoint_mr_integ_alloc, !41, !"__tracepoint_mr_integ_alloc", i1 false, i1 false}
!41 = !{!"../include/trace/events/rdma_core.h", i32 338, i32 1}
!42 = !{ptr @__tracepoint_ptr_mr_integ_alloc, !41, !"__tracepoint_ptr_mr_integ_alloc", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_mr_integ_alloc, !41, !"__SCK__tp_func_mr_integ_alloc", i1 false, i1 false}
!44 = !{ptr @__tracepoint_mr_dereg, !45, !"__tracepoint_mr_dereg", i1 false, i1 false}
!45 = !{!"../include/trace/events/rdma_core.h", i32 374, i32 1}
!46 = !{ptr @__tracepoint_ptr_mr_dereg, !45, !"__tracepoint_ptr_mr_dereg", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_mr_dereg, !45, !"__SCK__tp_func_mr_dereg", i1 false, i1 false}
!48 = !{ptr @.str, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/trace/events/rdma_core.h", i32 34, i32 1}
!50 = !{ptr @__TRACE_SYSTEM_IB_POLL_DIRECT, !49, !"__TRACE_SYSTEM_IB_POLL_DIRECT", i1 false, i1 false}
!51 = !{ptr @TRACE_SYSTEM_IB_POLL_DIRECT, !49, !"TRACE_SYSTEM_IB_POLL_DIRECT", i1 false, i1 false}
!52 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__TRACE_SYSTEM_IB_POLL_SOFTIRQ, !49, !"__TRACE_SYSTEM_IB_POLL_SOFTIRQ", i1 false, i1 false}
!54 = !{ptr @TRACE_SYSTEM_IB_POLL_SOFTIRQ, !49, !"TRACE_SYSTEM_IB_POLL_SOFTIRQ", i1 false, i1 false}
!55 = !{ptr @.str.2, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__TRACE_SYSTEM_IB_POLL_WORKQUEUE, !49, !"__TRACE_SYSTEM_IB_POLL_WORKQUEUE", i1 false, i1 false}
!57 = !{ptr @TRACE_SYSTEM_IB_POLL_WORKQUEUE, !49, !"TRACE_SYSTEM_IB_POLL_WORKQUEUE", i1 false, i1 false}
!58 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__TRACE_SYSTEM_IB_POLL_UNBOUND_WORKQUEUE, !49, !"__TRACE_SYSTEM_IB_POLL_UNBOUND_WORKQUEUE", i1 false, i1 false}
!60 = !{ptr @TRACE_SYSTEM_IB_POLL_UNBOUND_WORKQUEUE, !49, !"TRACE_SYSTEM_IB_POLL_UNBOUND_WORKQUEUE", i1 false, i1 false}
!61 = !{ptr @.str.4, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/trace/events/rdma_core.h", i32 290, i32 1}
!63 = !{ptr @__TRACE_SYSTEM_IB_MR_TYPE_MEM_REG, !62, !"__TRACE_SYSTEM_IB_MR_TYPE_MEM_REG", i1 false, i1 false}
!64 = !{ptr @TRACE_SYSTEM_IB_MR_TYPE_MEM_REG, !62, !"TRACE_SYSTEM_IB_MR_TYPE_MEM_REG", i1 false, i1 false}
!65 = !{ptr @.str.5, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__TRACE_SYSTEM_IB_MR_TYPE_SG_GAPS, !62, !"__TRACE_SYSTEM_IB_MR_TYPE_SG_GAPS", i1 false, i1 false}
!67 = !{ptr @TRACE_SYSTEM_IB_MR_TYPE_SG_GAPS, !62, !"TRACE_SYSTEM_IB_MR_TYPE_SG_GAPS", i1 false, i1 false}
!68 = !{ptr @.str.6, !62, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__TRACE_SYSTEM_IB_MR_TYPE_DM, !62, !"__TRACE_SYSTEM_IB_MR_TYPE_DM", i1 false, i1 false}
!70 = !{ptr @TRACE_SYSTEM_IB_MR_TYPE_DM, !62, !"TRACE_SYSTEM_IB_MR_TYPE_DM", i1 false, i1 false}
!71 = !{ptr @.str.7, !62, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__TRACE_SYSTEM_IB_MR_TYPE_USER, !62, !"__TRACE_SYSTEM_IB_MR_TYPE_USER", i1 false, i1 false}
!73 = !{ptr @TRACE_SYSTEM_IB_MR_TYPE_USER, !62, !"TRACE_SYSTEM_IB_MR_TYPE_USER", i1 false, i1 false}
!74 = !{ptr @.str.8, !62, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__TRACE_SYSTEM_IB_MR_TYPE_DMA, !62, !"__TRACE_SYSTEM_IB_MR_TYPE_DMA", i1 false, i1 false}
!76 = !{ptr @TRACE_SYSTEM_IB_MR_TYPE_DMA, !62, !"TRACE_SYSTEM_IB_MR_TYPE_DMA", i1 false, i1 false}
!77 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__TRACE_SYSTEM_IB_MR_TYPE_INTEGRITY, !62, !"__TRACE_SYSTEM_IB_MR_TYPE_INTEGRITY", i1 false, i1 false}
!79 = !{ptr @TRACE_SYSTEM_IB_MR_TYPE_INTEGRITY, !62, !"TRACE_SYSTEM_IB_MR_TYPE_INTEGRITY", i1 false, i1 false}
!80 = !{ptr @event_class_cq_schedule, !1, !"event_class_cq_schedule", i1 false, i1 false}
!81 = !{ptr @event_cq_schedule, !1, !"event_cq_schedule", i1 false, i1 false}
!82 = !{ptr @__event_cq_schedule, !1, !"__event_cq_schedule", i1 false, i1 false}
!83 = !{ptr @event_class_cq_reschedule, !5, !"event_class_cq_reschedule", i1 false, i1 false}
!84 = !{ptr @event_cq_reschedule, !5, !"event_cq_reschedule", i1 false, i1 false}
!85 = !{ptr @__event_cq_reschedule, !5, !"__event_cq_reschedule", i1 false, i1 false}
!86 = !{ptr @event_class_cq_process, !9, !"event_class_cq_process", i1 false, i1 false}
!87 = !{ptr @event_cq_process, !9, !"event_cq_process", i1 false, i1 false}
!88 = !{ptr @__event_cq_process, !9, !"__event_cq_process", i1 false, i1 false}
!89 = !{ptr @event_class_cq_poll, !13, !"event_class_cq_poll", i1 false, i1 false}
!90 = !{ptr @event_cq_poll, !13, !"event_cq_poll", i1 false, i1 false}
!91 = !{ptr @__event_cq_poll, !13, !"__event_cq_poll", i1 false, i1 false}
!92 = !{ptr @event_class_cq_drain_complete, !17, !"event_class_cq_drain_complete", i1 false, i1 false}
!93 = !{ptr @event_cq_drain_complete, !17, !"event_cq_drain_complete", i1 false, i1 false}
!94 = !{ptr @__event_cq_drain_complete, !17, !"__event_cq_drain_complete", i1 false, i1 false}
!95 = !{ptr @event_class_cq_modify, !21, !"event_class_cq_modify", i1 false, i1 false}
!96 = !{ptr @event_cq_modify, !21, !"event_cq_modify", i1 false, i1 false}
!97 = !{ptr @__event_cq_modify, !21, !"__event_cq_modify", i1 false, i1 false}
!98 = !{ptr @event_class_cq_alloc, !25, !"event_class_cq_alloc", i1 false, i1 false}
!99 = !{ptr @event_cq_alloc, !25, !"event_cq_alloc", i1 false, i1 false}
!100 = !{ptr @__event_cq_alloc, !25, !"__event_cq_alloc", i1 false, i1 false}
!101 = !{ptr @event_class_cq_alloc_error, !29, !"event_class_cq_alloc_error", i1 false, i1 false}
!102 = !{ptr @event_cq_alloc_error, !29, !"event_cq_alloc_error", i1 false, i1 false}
!103 = !{ptr @__event_cq_alloc_error, !29, !"__event_cq_alloc_error", i1 false, i1 false}
!104 = !{ptr @event_class_cq_free, !33, !"event_class_cq_free", i1 false, i1 false}
!105 = !{ptr @event_cq_free, !33, !"event_cq_free", i1 false, i1 false}
!106 = !{ptr @__event_cq_free, !33, !"__event_cq_free", i1 false, i1 false}
!107 = !{ptr @event_class_mr_alloc, !37, !"event_class_mr_alloc", i1 false, i1 false}
!108 = !{ptr @event_mr_alloc, !37, !"event_mr_alloc", i1 false, i1 false}
!109 = !{ptr @__event_mr_alloc, !37, !"__event_mr_alloc", i1 false, i1 false}
!110 = !{ptr @event_class_mr_integ_alloc, !41, !"event_class_mr_integ_alloc", i1 false, i1 false}
!111 = !{ptr @event_mr_integ_alloc, !41, !"event_mr_integ_alloc", i1 false, i1 false}
!112 = !{ptr @__event_mr_integ_alloc, !41, !"__event_mr_integ_alloc", i1 false, i1 false}
!113 = !{ptr @event_class_mr_dereg, !45, !"event_class_mr_dereg", i1 false, i1 false}
!114 = !{ptr @event_mr_dereg, !45, !"event_mr_dereg", i1 false, i1 false}
!115 = !{ptr @__event_mr_dereg, !45, !"__event_mr_dereg", i1 false, i1 false}
!116 = !{ptr @__bpf_trace_tp_map_cq_schedule, !1, !"__bpf_trace_tp_map_cq_schedule", i1 false, i1 false}
!117 = !{ptr @__bpf_trace_tp_map_cq_reschedule, !5, !"__bpf_trace_tp_map_cq_reschedule", i1 false, i1 false}
!118 = !{ptr @__bpf_trace_tp_map_cq_process, !9, !"__bpf_trace_tp_map_cq_process", i1 false, i1 false}
!119 = !{ptr @__bpf_trace_tp_map_cq_poll, !13, !"__bpf_trace_tp_map_cq_poll", i1 false, i1 false}
!120 = !{ptr @__bpf_trace_tp_map_cq_drain_complete, !17, !"__bpf_trace_tp_map_cq_drain_complete", i1 false, i1 false}
!121 = !{ptr @__bpf_trace_tp_map_cq_modify, !21, !"__bpf_trace_tp_map_cq_modify", i1 false, i1 false}
!122 = !{ptr @__bpf_trace_tp_map_cq_alloc, !25, !"__bpf_trace_tp_map_cq_alloc", i1 false, i1 false}
!123 = !{ptr @__bpf_trace_tp_map_cq_alloc_error, !29, !"__bpf_trace_tp_map_cq_alloc_error", i1 false, i1 false}
!124 = !{ptr @__bpf_trace_tp_map_cq_free, !33, !"__bpf_trace_tp_map_cq_free", i1 false, i1 false}
!125 = !{ptr @__bpf_trace_tp_map_mr_alloc, !37, !"__bpf_trace_tp_map_mr_alloc", i1 false, i1 false}
!126 = !{ptr @__bpf_trace_tp_map_mr_integ_alloc, !41, !"__bpf_trace_tp_map_mr_integ_alloc", i1 false, i1 false}
!127 = !{ptr @__bpf_trace_tp_map_mr_dereg, !45, !"__bpf_trace_tp_map_mr_dereg", i1 false, i1 false}
!128 = !{ptr @__tpstrtab_cq_schedule, !1, !"__tpstrtab_cq_schedule", i1 false, i1 false}
!129 = !{ptr @__tpstrtab_cq_reschedule, !5, !"__tpstrtab_cq_reschedule", i1 false, i1 false}
!130 = !{ptr @__tpstrtab_cq_process, !9, !"__tpstrtab_cq_process", i1 false, i1 false}
!131 = !{ptr @__tpstrtab_cq_poll, !13, !"__tpstrtab_cq_poll", i1 false, i1 false}
!132 = !{ptr @__tpstrtab_cq_drain_complete, !17, !"__tpstrtab_cq_drain_complete", i1 false, i1 false}
!133 = !{ptr @__tpstrtab_cq_modify, !21, !"__tpstrtab_cq_modify", i1 false, i1 false}
!134 = !{ptr @__tpstrtab_cq_alloc, !25, !"__tpstrtab_cq_alloc", i1 false, i1 false}
!135 = !{ptr @__tpstrtab_cq_alloc_error, !29, !"__tpstrtab_cq_alloc_error", i1 false, i1 false}
!136 = !{ptr @__tpstrtab_cq_free, !33, !"__tpstrtab_cq_free", i1 false, i1 false}
!137 = !{ptr @__tpstrtab_mr_alloc, !37, !"__tpstrtab_mr_alloc", i1 false, i1 false}
!138 = !{ptr @__tpstrtab_mr_integ_alloc, !41, !"__tpstrtab_mr_integ_alloc", i1 false, i1 false}
!139 = !{ptr @__tpstrtab_mr_dereg, !45, !"__tpstrtab_mr_dereg", i1 false, i1 false}
!140 = !{ptr @str__rdma_core__trace_system_name, !141, !"str__rdma_core__trace_system_name", i1 false, i1 false}
!141 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!142 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @trace_event_fields_cq_schedule, !1, !"trace_event_fields_cq_schedule", i1 false, i1 false}
!145 = !{ptr @trace_event_type_funcs_cq_schedule, !1, !"trace_event_type_funcs_cq_schedule", i1 false, i1 false}
!146 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @print_fmt_cq_schedule, !1, !"print_fmt_cq_schedule", i1 false, i1 false}
!148 = !{ptr @trace_event_fields_cq_reschedule, !5, !"trace_event_fields_cq_reschedule", i1 false, i1 false}
!149 = !{ptr @trace_event_type_funcs_cq_reschedule, !5, !"trace_event_type_funcs_cq_reschedule", i1 false, i1 false}
!150 = !{ptr @print_fmt_cq_reschedule, !5, !"print_fmt_cq_reschedule", i1 false, i1 false}
!151 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @trace_event_fields_cq_process, !9, !"trace_event_fields_cq_process", i1 false, i1 false}
!156 = !{ptr @trace_event_type_funcs_cq_process, !9, !"trace_event_type_funcs_cq_process", i1 false, i1 false}
!157 = !{ptr @.str.17, !9, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.18, !9, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @print_fmt_cq_process, !9, !"print_fmt_cq_process", i1 false, i1 false}
!160 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.20, !13, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.21, !13, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @trace_event_fields_cq_poll, !13, !"trace_event_fields_cq_poll", i1 false, i1 false}
!164 = !{ptr @trace_event_type_funcs_cq_poll, !13, !"trace_event_type_funcs_cq_poll", i1 false, i1 false}
!165 = !{ptr @.str.22, !13, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @print_fmt_cq_poll, !13, !"print_fmt_cq_poll", i1 false, i1 false}
!167 = !{ptr @trace_event_fields_cq_drain_complete, !17, !"trace_event_fields_cq_drain_complete", i1 false, i1 false}
!168 = !{ptr @trace_event_type_funcs_cq_drain_complete, !17, !"trace_event_type_funcs_cq_drain_complete", i1 false, i1 false}
!169 = !{ptr @print_fmt_cq_drain_complete, !17, !"print_fmt_cq_drain_complete", i1 false, i1 false}
!170 = !{ptr @.str.23, !21, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.24, !21, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.25, !21, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @trace_event_fields_cq_modify, !21, !"trace_event_fields_cq_modify", i1 false, i1 false}
!174 = !{ptr @trace_event_type_funcs_cq_modify, !21, !"trace_event_type_funcs_cq_modify", i1 false, i1 false}
!175 = !{ptr @.str.26, !21, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @print_fmt_cq_modify, !21, !"print_fmt_cq_modify", i1 false, i1 false}
!177 = !{ptr @.str.27, !25, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.28, !25, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.29, !25, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.30, !25, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @trace_event_fields_cq_alloc, !25, !"trace_event_fields_cq_alloc", i1 false, i1 false}
!182 = !{ptr @trace_event_type_funcs_cq_alloc, !25, !"trace_event_type_funcs_cq_alloc", i1 false, i1 false}
!183 = !{ptr @.str.31, !25, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.32, !25, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.33, !25, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.34, !25, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.35, !25, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @trace_raw_output_cq_alloc.symbols, !25, !"symbols", i1 false, i1 false}
!189 = !{ptr @print_fmt_cq_alloc, !25, !"print_fmt_cq_alloc", i1 false, i1 false}
!190 = !{ptr @trace_event_fields_cq_alloc_error, !29, !"trace_event_fields_cq_alloc_error", i1 false, i1 false}
!191 = !{ptr @trace_event_type_funcs_cq_alloc_error, !29, !"trace_event_type_funcs_cq_alloc_error", i1 false, i1 false}
!192 = !{ptr @.str.36, !29, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @trace_raw_output_cq_alloc_error.symbols, !29, !"symbols", i1 false, i1 false}
!194 = !{ptr @print_fmt_cq_alloc_error, !29, !"print_fmt_cq_alloc_error", i1 false, i1 false}
!195 = !{ptr @trace_event_fields_cq_free, !33, !"trace_event_fields_cq_free", i1 false, i1 false}
!196 = !{ptr @trace_event_type_funcs_cq_free, !33, !"trace_event_type_funcs_cq_free", i1 false, i1 false}
!197 = !{ptr @print_fmt_cq_free, !33, !"print_fmt_cq_free", i1 false, i1 false}
!198 = !{ptr @.str.37, !37, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.38, !37, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.39, !37, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.40, !37, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @trace_event_fields_mr_alloc, !37, !"trace_event_fields_mr_alloc", i1 false, i1 false}
!203 = !{ptr @trace_event_type_funcs_mr_alloc, !37, !"trace_event_type_funcs_mr_alloc", i1 false, i1 false}
!204 = !{ptr @.str.41, !37, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.42, !37, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.43, !37, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.44, !37, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.45, !37, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.46, !37, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.47, !37, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @trace_raw_output_mr_alloc.symbols, !37, !"symbols", i1 false, i1 false}
!212 = !{ptr @print_fmt_mr_alloc, !37, !"print_fmt_mr_alloc", i1 false, i1 false}
!213 = !{ptr @.str.48, !41, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.49, !41, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @trace_event_fields_mr_integ_alloc, !41, !"trace_event_fields_mr_integ_alloc", i1 false, i1 false}
!216 = !{ptr @trace_event_type_funcs_mr_integ_alloc, !41, !"trace_event_type_funcs_mr_integ_alloc", i1 false, i1 false}
!217 = !{ptr @.str.50, !41, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @print_fmt_mr_integ_alloc, !41, !"print_fmt_mr_integ_alloc", i1 false, i1 false}
!219 = !{ptr @.str.51, !45, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @trace_event_fields_mr_dereg, !45, !"trace_event_fields_mr_dereg", i1 false, i1 false}
!221 = !{ptr @trace_event_type_funcs_mr_dereg, !45, !"trace_event_type_funcs_mr_dereg", i1 false, i1 false}
!222 = !{ptr @.str.52, !45, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @print_fmt_mr_dereg, !45, !"print_fmt_mr_dereg", i1 false, i1 false}
!224 = !{!"sp"}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{!"branch_weights", i32 2000, i32 1}
!235 = !{!"branch_weights", i32 1, i32 2000}
!236 = !{!"auto-init"}
!237 = !{i64 1271936, i64 1271963, i64 1271985, i64 1272013}
!238 = !{i64 1272344, i64 1272371, i64 1272404, i64 1272425, i64 1272452, i64 1272478}
!239 = !{i8 0, i8 2}
