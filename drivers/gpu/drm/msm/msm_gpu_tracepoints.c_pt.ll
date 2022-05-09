; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_gpu_tracepoints.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gpu_tracepoints.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.119 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.121, %struct.trace_event, ptr, ptr, %union.anon.122, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.121 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.122 = type { ptr }
%union.anon.123 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.124 = type { %struct.bpf_raw_event_map }
%union.anon.125 = type { %struct.bpf_raw_event_map }
%union.anon.126 = type { %struct.bpf_raw_event_map }
%union.anon.127 = type { %struct.bpf_raw_event_map }
%union.anon.128 = type { %struct.bpf_raw_event_map }
%union.anon.129 = type { %struct.bpf_raw_event_map }
%union.anon.130 = type { %struct.bpf_raw_event_map }
%union.anon.131 = type { %struct.bpf_raw_event_map }
%union.anon.132 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_msm_gpu_submit = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msm_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, %struct.list_head, %struct.ww_acquire_ctx, i32, ptr, ptr, i32, ptr, ptr, i8, i8, i8, ptr, ptr, i32, i32, i32, ptr, [0 x %struct.anon.95] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.83, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.83 = type { %struct.irq_work }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.anon.95 = type { i32, %union.anon.96, i64 }
%union.anon.96 = type { ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.upid = type { i32, ptr }
%struct.trace_event_raw_msm_gpu_submit_flush = type { %struct.trace_entry, i32, i32, i32, i32, i64, [0 x i8] }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.trace_event_raw_msm_gpu_submit_retired = type { %struct.trace_entry, i32, i32, i32, i32, i64, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_msm_gpu_freq_change = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gmu_freq_change = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_msm_gem_purge = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gem_evict = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gem_purge_vmaps = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gpu_suspend = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_gpu_resume = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_msm_gpu_submit = internal constant [15 x i8] c"msm_gpu_submit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_submit = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_submit }, align 4
@__tracepoint_msm_gpu_submit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gpu_submit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gpu_submit, ptr null, ptr @__traceiter_msm_gpu_submit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_submit = internal constant ptr @__tracepoint_msm_gpu_submit, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_submit_flush = internal constant [21 x i8] c"msm_gpu_submit_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_submit_flush = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_submit_flush }, align 4
@__tracepoint_msm_gpu_submit_flush = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gpu_submit_flush, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gpu_submit_flush, ptr null, ptr @__traceiter_msm_gpu_submit_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_submit_flush = internal constant ptr @__tracepoint_msm_gpu_submit_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_submit_retired = internal constant [23 x i8] c"msm_gpu_submit_retired\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_submit_retired = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_submit_retired }, align 4
@__tracepoint_msm_gpu_submit_retired = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gpu_submit_retired, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gpu_submit_retired, ptr null, ptr @__traceiter_msm_gpu_submit_retired, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_submit_retired = internal constant ptr @__tracepoint_msm_gpu_submit_retired, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_freq_change = internal constant [20 x i8] c"msm_gpu_freq_change\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_freq_change = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_freq_change }, align 4
@__tracepoint_msm_gpu_freq_change = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gpu_freq_change, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gpu_freq_change, ptr null, ptr @__traceiter_msm_gpu_freq_change, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_freq_change = internal constant ptr @__tracepoint_msm_gpu_freq_change, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gmu_freq_change = internal constant [20 x i8] c"msm_gmu_freq_change\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gmu_freq_change = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gmu_freq_change }, align 4
@__tracepoint_msm_gmu_freq_change = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gmu_freq_change, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gmu_freq_change, ptr null, ptr @__traceiter_msm_gmu_freq_change, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gmu_freq_change = internal constant ptr @__tracepoint_msm_gmu_freq_change, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gem_purge = internal constant [14 x i8] c"msm_gem_purge\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gem_purge = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gem_purge }, align 4
@__tracepoint_msm_gem_purge = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gem_purge, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gem_purge, ptr null, ptr @__traceiter_msm_gem_purge, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gem_purge = internal constant ptr @__tracepoint_msm_gem_purge, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gem_evict = internal constant [14 x i8] c"msm_gem_evict\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gem_evict = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gem_evict }, align 4
@__tracepoint_msm_gem_evict = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gem_evict, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gem_evict, ptr null, ptr @__traceiter_msm_gem_evict, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gem_evict = internal constant ptr @__tracepoint_msm_gem_evict, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gem_purge_vmaps = internal constant [20 x i8] c"msm_gem_purge_vmaps\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gem_purge_vmaps = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gem_purge_vmaps }, align 4
@__tracepoint_msm_gem_purge_vmaps = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gem_purge_vmaps, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gem_purge_vmaps, ptr null, ptr @__traceiter_msm_gem_purge_vmaps, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gem_purge_vmaps = internal constant ptr @__tracepoint_msm_gem_purge_vmaps, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_suspend = internal constant [16 x i8] c"msm_gpu_suspend\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_suspend = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_suspend }, align 4
@__tracepoint_msm_gpu_suspend = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gpu_suspend, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gpu_suspend, ptr null, ptr @__traceiter_msm_gpu_suspend, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_suspend = internal constant ptr @__tracepoint_msm_gpu_suspend, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_gpu_resume = internal constant [15 x i8] c"msm_gpu_resume\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_gpu_resume = dso_local global %struct.static_call_key { ptr @__traceiter_msm_gpu_resume }, align 4
@__tracepoint_msm_gpu_resume = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_msm_gpu_resume, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_msm_gpu_resume, ptr null, ptr @__traceiter_msm_gpu_resume, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_gpu_resume = internal constant ptr @__tracepoint_msm_gpu_resume, section "__tracepoints_ptrs", align 4
@str__drm_msm_gpu__trace_system_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drm_msm_gpu\00", [20 x i8] zeroinitializer }, align 32
@trace_event_fields_msm_gpu_submit = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.119 { %struct.anon.120 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_msm_gpu_submit = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_submit, ptr @perf_trace_msm_gpu_submit, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_submit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_submit, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_submit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_submit = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_submit, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gpu_submit = internal global { [97 x i8], [63 x i8] } { [97 x i8] c"\22id=%d pid=%d ring=%d bos=%d cmds=%d\22, REC->id, REC->pid, REC->ringid, REC->nr_bos, REC->nr_cmds\00", [63 x i8] zeroinitializer }, align 32
@event_msm_gpu_submit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_submit, %union.anon.121 { ptr @__tracepoint_msm_gpu_submit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_submit }, ptr @print_fmt_msm_gpu_submit, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gpu_submit = internal global ptr @event_msm_gpu_submit, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_submit_flush = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.119 { %struct.anon.120 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.119 { %struct.anon.120 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_msm_gpu_submit_flush = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_submit_flush, ptr @perf_trace_msm_gpu_submit_flush, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_submit_flush, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_submit_flush, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_submit_flush, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_submit_flush = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_submit_flush, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gpu_submit_flush = internal global { [93 x i8], [35 x i8] } { [93 x i8] c"\22id=%d pid=%d ring=%d:%d ticks=%lld\22, REC->id, REC->pid, REC->ringid, REC->seqno, REC->ticks\00", [35 x i8] zeroinitializer }, align 32
@event_msm_gpu_submit_flush = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_submit_flush, %union.anon.121 { ptr @__tracepoint_msm_gpu_submit_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_submit_flush }, ptr @print_fmt_msm_gpu_submit_flush, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gpu_submit_flush = internal global ptr @event_msm_gpu_submit_flush, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_submit_retired = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.119 { %struct.anon.120 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.119 { %struct.anon.120 { ptr @.str.12, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.119 { %struct.anon.120 { ptr @.str.13, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.119 { %struct.anon.120 { ptr @.str.14, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.119 { %struct.anon.120 { ptr @.str.15, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_msm_gpu_submit_retired = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_submit_retired, ptr @perf_trace_msm_gpu_submit_retired, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_submit_retired, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_submit_retired, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_submit_retired, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_submit_retired = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_submit_retired, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gpu_submit_retired = internal global { [175 x i8], [49 x i8] } { [175 x i8] c"\22id=%d pid=%d ring=%d:%d elapsed=%lld ns mhz=%lld start=%lld end=%lld\22, REC->id, REC->pid, REC->ringid, REC->seqno, REC->elapsed, REC->clock, REC->start_ticks, REC->end_ticks\00", [49 x i8] zeroinitializer }, align 32
@event_msm_gpu_submit_retired = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_submit_retired, %union.anon.121 { ptr @__tracepoint_msm_gpu_submit_retired }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_submit_retired }, ptr @print_fmt_msm_gpu_submit_retired, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gpu_submit_retired = internal global ptr @event_msm_gpu_submit_retired, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_freq_change = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_msm_gpu_freq_change = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_freq_change, ptr @perf_trace_msm_gpu_freq_change, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_freq_change, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_freq_change, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_freq_change, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_freq_change = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_freq_change, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gpu_freq_change = internal global { [25 x i8], [39 x i8] } { [25 x i8] c"\22new_freq=%u\22, REC->freq\00", [39 x i8] zeroinitializer }, align 32
@event_msm_gpu_freq_change = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_freq_change, %union.anon.121 { ptr @__tracepoint_msm_gpu_freq_change }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_freq_change }, ptr @print_fmt_msm_gpu_freq_change, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gpu_freq_change = internal global ptr @event_msm_gpu_freq_change, section "_ftrace_events", align 4
@trace_event_fields_msm_gmu_freq_change = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_msm_gmu_freq_change = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gmu_freq_change, ptr @perf_trace_msm_gmu_freq_change, ptr @trace_event_reg, ptr @trace_event_fields_msm_gmu_freq_change, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gmu_freq_change, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gmu_freq_change, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gmu_freq_change = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gmu_freq_change, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gmu_freq_change = internal global { [53 x i8], [43 x i8] } { [53 x i8] c"\22freq=%u, perf_index=%u\22, REC->freq, REC->perf_index\00", [43 x i8] zeroinitializer }, align 32
@event_msm_gmu_freq_change = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gmu_freq_change, %union.anon.121 { ptr @__tracepoint_msm_gmu_freq_change }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gmu_freq_change }, ptr @print_fmt_msm_gmu_freq_change, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gmu_freq_change = internal global ptr @event_msm_gmu_freq_change, section "_ftrace_events", align 4
@trace_event_fields_msm_gem_purge = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_msm_gem_purge = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gem_purge, ptr @perf_trace_msm_gem_purge, ptr @trace_event_reg, ptr @trace_event_fields_msm_gem_purge, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gem_purge, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gem_purge, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gem_purge = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gem_purge, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gem_purge = internal global { [31 x i8], [33 x i8] } { [31 x i8] c"\22Purging %u bytes\22, REC->bytes\00", [33 x i8] zeroinitializer }, align 32
@event_msm_gem_purge = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gem_purge, %union.anon.121 { ptr @__tracepoint_msm_gem_purge }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gem_purge }, ptr @print_fmt_msm_gem_purge, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gem_purge = internal global ptr @event_msm_gem_purge, section "_ftrace_events", align 4
@trace_event_fields_msm_gem_evict = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_msm_gem_evict = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gem_evict, ptr @perf_trace_msm_gem_evict, ptr @trace_event_reg, ptr @trace_event_fields_msm_gem_evict, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gem_evict, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gem_evict, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gem_evict = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gem_evict, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gem_evict = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\22Evicting %u bytes\22, REC->bytes\00", [32 x i8] zeroinitializer }, align 32
@event_msm_gem_evict = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gem_evict, %union.anon.121 { ptr @__tracepoint_msm_gem_evict }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gem_evict }, ptr @print_fmt_msm_gem_evict, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gem_evict = internal global ptr @event_msm_gem_evict, section "_ftrace_events", align 4
@trace_event_fields_msm_gem_purge_vmaps = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_msm_gem_purge_vmaps = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gem_purge_vmaps, ptr @perf_trace_msm_gem_purge_vmaps, ptr @trace_event_reg, ptr @trace_event_fields_msm_gem_purge_vmaps, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gem_purge_vmaps, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gem_purge_vmaps, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gem_purge_vmaps = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gem_purge_vmaps, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gem_purge_vmaps = internal global { [34 x i8], [62 x i8] } { [34 x i8] c"\22Purging %u vmaps\22, REC->unmapped\00", [62 x i8] zeroinitializer }, align 32
@event_msm_gem_purge_vmaps = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gem_purge_vmaps, %union.anon.121 { ptr @__tracepoint_msm_gem_purge_vmaps }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gem_purge_vmaps }, ptr @print_fmt_msm_gem_purge_vmaps, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gem_purge_vmaps = internal global ptr @event_msm_gem_purge_vmaps, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_suspend = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_msm_gpu_suspend = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_suspend, ptr @perf_trace_msm_gpu_suspend, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_suspend, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_suspend, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_suspend, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_suspend = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_suspend, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gpu_suspend = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\22%u\22, REC->dummy\00", [47 x i8] zeroinitializer }, align 32
@event_msm_gpu_suspend = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_suspend, %union.anon.121 { ptr @__tracepoint_msm_gpu_suspend }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_suspend }, ptr @print_fmt_msm_gpu_suspend, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gpu_suspend = internal global ptr @event_msm_gpu_suspend, section "_ftrace_events", align 4
@trace_event_fields_msm_gpu_resume = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.119 { %struct.anon.120 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_msm_gpu_resume = internal global %struct.trace_event_class { ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_raw_event_msm_gpu_resume, ptr @perf_trace_msm_gpu_resume, ptr @trace_event_reg, ptr @trace_event_fields_msm_gpu_resume, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_gpu_resume, i64 24), ptr getelementptr (i8, ptr @event_class_msm_gpu_resume, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_gpu_resume = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_msm_gpu_resume, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_msm_gpu_resume = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\22%u\22, REC->dummy\00", [47 x i8] zeroinitializer }, align 32
@event_msm_gpu_resume = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_gpu_resume, %union.anon.121 { ptr @__tracepoint_msm_gpu_resume }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_gpu_resume }, ptr @print_fmt_msm_gpu_resume, ptr null, %union.anon.122 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_msm_gpu_resume = internal global ptr @event_msm_gpu_resume, section "_ftrace_events", align 4
@__bpf_trace_tp_map_msm_gpu_submit = internal global %union.anon.123 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gpu_submit, ptr @__bpf_trace_msm_gpu_submit, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_msm_gpu_submit_flush = internal global %union.anon.124 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gpu_submit_flush, ptr @__bpf_trace_msm_gpu_submit_flush, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_msm_gpu_submit_retired = internal global %union.anon.125 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gpu_submit_retired, ptr @__bpf_trace_msm_gpu_submit_retired, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_msm_gpu_freq_change = internal global %union.anon.126 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gpu_freq_change, ptr @__bpf_trace_msm_gpu_freq_change, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_msm_gmu_freq_change = internal global %union.anon.127 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gmu_freq_change, ptr @__bpf_trace_msm_gmu_freq_change, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_msm_gem_purge = internal global %union.anon.128 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gem_purge, ptr @__bpf_trace_msm_gem_purge, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_msm_gem_evict = internal global %union.anon.129 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gem_evict, ptr @__bpf_trace_msm_gem_evict, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_msm_gem_purge_vmaps = internal global %union.anon.130 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gem_purge_vmaps, ptr @__bpf_trace_msm_gem_purge_vmaps, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_msm_gpu_suspend = internal global %union.anon.131 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gpu_suspend, ptr @__bpf_trace_msm_gpu_suspend, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_msm_gpu_resume = internal global %union.anon.132 { %struct.bpf_raw_event_map { ptr @__tracepoint_msm_gpu_resume, ptr @__bpf_trace_msm_gpu_resume, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ringid\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nr_cmds\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nr_bos\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"id=%d pid=%d ring=%d bos=%d cmds=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seqno\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ticks\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"id=%d pid=%d ring=%d:%d ticks=%lld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"elapsed\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"start_ticks\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"end_ticks\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"id=%d pid=%d ring=%d:%d elapsed=%lld ns mhz=%lld start=%lld end=%lld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"new_freq=%u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"perf_index\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"freq=%u, perf_index=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bytes\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Purging %u bytes\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Evicting %u bytes\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unmapped\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Purging %u vmaps\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [45 x i8] c"../drivers/gpu/drm/msm/msm_gpu_tracepoints.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [36 x i8] c"str__drm_msm_gpu__trace_system_name\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 36, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [34 x i8] c"trace_event_fields_msm_gpu_submit\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_msm_gpu_submit\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"print_fmt_msm_gpu_submit\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"event_msm_gpu_submit\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [40 x i8] c"trace_event_fields_msm_gpu_submit_flush\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_msm_gpu_submit_flush\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"print_fmt_msm_gpu_submit_flush\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"event_msm_gpu_submit_flush\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [42 x i8] c"trace_event_fields_msm_gpu_submit_retired\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_msm_gpu_submit_retired\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [33 x i8] c"print_fmt_msm_gpu_submit_retired\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [29 x i8] c"event_msm_gpu_submit_retired\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [39 x i8] c"trace_event_fields_msm_gpu_freq_change\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_msm_gpu_freq_change\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"print_fmt_msm_gpu_freq_change\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"event_msm_gpu_freq_change\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [39 x i8] c"trace_event_fields_msm_gmu_freq_change\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_msm_gmu_freq_change\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"print_fmt_msm_gmu_freq_change\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"event_msm_gmu_freq_change\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [33 x i8] c"trace_event_fields_msm_gem_purge\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_msm_gem_purge\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [24 x i8] c"print_fmt_msm_gem_purge\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"event_msm_gem_purge\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [33 x i8] c"trace_event_fields_msm_gem_evict\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_msm_gem_evict\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"print_fmt_msm_gem_evict\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"event_msm_gem_evict\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [39 x i8] c"trace_event_fields_msm_gem_purge_vmaps\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_msm_gem_purge_vmaps\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"print_fmt_msm_gem_purge_vmaps\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"event_msm_gem_purge_vmaps\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [35 x i8] c"trace_event_fields_msm_gpu_suspend\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_msm_gpu_suspend\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [26 x i8] c"print_fmt_msm_gpu_suspend\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [22 x i8] c"event_msm_gpu_suspend\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [34 x i8] c"trace_event_fields_msm_gpu_resume\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_msm_gpu_resume\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"print_fmt_msm_gpu_resume\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [21 x i8] c"event_msm_gpu_resume\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 170, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 11, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 33, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 56, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 87, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 103, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 118, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 131, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 144, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [59 x i8] c"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 157, i32 1 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__bpf_trace_tp_map_msm_gem_evict, ptr @__bpf_trace_tp_map_msm_gem_purge, ptr @__bpf_trace_tp_map_msm_gem_purge_vmaps, ptr @__bpf_trace_tp_map_msm_gmu_freq_change, ptr @__bpf_trace_tp_map_msm_gpu_freq_change, ptr @__bpf_trace_tp_map_msm_gpu_resume, ptr @__bpf_trace_tp_map_msm_gpu_submit, ptr @__bpf_trace_tp_map_msm_gpu_submit_flush, ptr @__bpf_trace_tp_map_msm_gpu_submit_retired, ptr @__bpf_trace_tp_map_msm_gpu_suspend, ptr @__event_msm_gem_evict, ptr @__event_msm_gem_purge, ptr @__event_msm_gem_purge_vmaps, ptr @__event_msm_gmu_freq_change, ptr @__event_msm_gpu_freq_change, ptr @__event_msm_gpu_resume, ptr @__event_msm_gpu_submit, ptr @__event_msm_gpu_submit_flush, ptr @__event_msm_gpu_submit_retired, ptr @__event_msm_gpu_suspend, ptr @__tracepoint_msm_gem_evict, ptr @__tracepoint_msm_gem_purge, ptr @__tracepoint_msm_gem_purge_vmaps, ptr @__tracepoint_msm_gmu_freq_change, ptr @__tracepoint_msm_gpu_freq_change, ptr @__tracepoint_msm_gpu_resume, ptr @__tracepoint_msm_gpu_submit, ptr @__tracepoint_msm_gpu_submit_flush, ptr @__tracepoint_msm_gpu_submit_retired, ptr @__tracepoint_msm_gpu_suspend, ptr @__tracepoint_ptr_msm_gem_evict, ptr @__tracepoint_ptr_msm_gem_purge, ptr @__tracepoint_ptr_msm_gem_purge_vmaps, ptr @__tracepoint_ptr_msm_gmu_freq_change, ptr @__tracepoint_ptr_msm_gpu_freq_change, ptr @__tracepoint_ptr_msm_gpu_resume, ptr @__tracepoint_ptr_msm_gpu_submit, ptr @__tracepoint_ptr_msm_gpu_submit_flush, ptr @__tracepoint_ptr_msm_gpu_submit_retired, ptr @__tracepoint_ptr_msm_gpu_suspend, ptr @event_class_msm_gem_evict, ptr @event_class_msm_gem_purge, ptr @event_class_msm_gem_purge_vmaps, ptr @event_class_msm_gmu_freq_change, ptr @event_class_msm_gpu_freq_change, ptr @event_class_msm_gpu_resume, ptr @event_class_msm_gpu_submit, ptr @event_class_msm_gpu_submit_flush, ptr @event_class_msm_gpu_submit_retired, ptr @event_class_msm_gpu_suspend, ptr @event_msm_gem_evict, ptr @event_msm_gem_purge, ptr @event_msm_gem_purge_vmaps, ptr @event_msm_gmu_freq_change, ptr @event_msm_gpu_freq_change, ptr @event_msm_gpu_resume, ptr @event_msm_gpu_submit, ptr @event_msm_gpu_submit_flush, ptr @event_msm_gpu_submit_retired, ptr @event_msm_gpu_suspend, ptr @str__drm_msm_gpu__trace_system_name, ptr @trace_event_fields_msm_gpu_submit, ptr @trace_event_type_funcs_msm_gpu_submit, ptr @print_fmt_msm_gpu_submit, ptr @trace_event_fields_msm_gpu_submit_flush, ptr @trace_event_type_funcs_msm_gpu_submit_flush, ptr @print_fmt_msm_gpu_submit_flush, ptr @trace_event_fields_msm_gpu_submit_retired, ptr @trace_event_type_funcs_msm_gpu_submit_retired, ptr @print_fmt_msm_gpu_submit_retired, ptr @trace_event_fields_msm_gpu_freq_change, ptr @trace_event_type_funcs_msm_gpu_freq_change, ptr @print_fmt_msm_gpu_freq_change, ptr @trace_event_fields_msm_gmu_freq_change, ptr @trace_event_type_funcs_msm_gmu_freq_change, ptr @print_fmt_msm_gmu_freq_change, ptr @trace_event_fields_msm_gem_purge, ptr @trace_event_type_funcs_msm_gem_purge, ptr @print_fmt_msm_gem_purge, ptr @trace_event_fields_msm_gem_evict, ptr @trace_event_type_funcs_msm_gem_evict, ptr @print_fmt_msm_gem_evict, ptr @trace_event_fields_msm_gem_purge_vmaps, ptr @trace_event_type_funcs_msm_gem_purge_vmaps, ptr @print_fmt_msm_gem_purge_vmaps, ptr @trace_event_fields_msm_gpu_suspend, ptr @trace_event_type_funcs_msm_gpu_suspend, ptr @print_fmt_msm_gpu_suspend, ptr @trace_event_fields_msm_gpu_resume, ptr @trace_event_type_funcs_msm_gpu_resume, ptr @print_fmt_msm_gpu_resume, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__drm_msm_gpu__trace_system_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gpu_submit to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gpu_submit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gpu_submit to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gpu_submit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gpu_submit_flush to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gpu_submit_flush to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gpu_submit_flush to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gpu_submit_flush to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gpu_submit_retired to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gpu_submit_retired to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gpu_submit_retired to i32), i32 175, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gpu_submit_retired to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gpu_freq_change to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gpu_freq_change to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gpu_freq_change to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gpu_freq_change to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gmu_freq_change to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gmu_freq_change to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gmu_freq_change to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gmu_freq_change to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gem_purge to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gem_purge to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gem_purge to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gem_purge to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gem_evict to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gem_evict to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gem_evict to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gem_evict to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gem_purge_vmaps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gem_purge_vmaps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gem_purge_vmaps to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gem_purge_vmaps to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gpu_suspend to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gpu_suspend to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gpu_suspend to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gpu_suspend to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_msm_gpu_resume to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_msm_gpu_resume to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_msm_gpu_resume to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_msm_gpu_resume to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_submit(ptr nocapture readnone %__data, i32 noundef %pid, i32 noundef %ringid, i32 noundef %id, i32 noundef %nr_bos, i32 noundef %nr_cmds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gpu_submit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %pid, i32 noundef %ringid, i32 noundef %id, i32 noundef %nr_bos, i32 noundef %nr_cmds) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_submit_flush(ptr nocapture readnone %__data, ptr noundef %submit, i64 noundef %ticks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gpu_submit_flush, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %submit, i64 noundef %ticks) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_submit_retired(ptr nocapture readnone %__data, ptr noundef %submit, i64 noundef %elapsed, i64 noundef %clock, i64 noundef %start, i64 noundef %end) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gpu_submit_retired, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, ptr noundef %submit, i64 noundef %elapsed, i64 noundef %clock, i64 noundef %start, i64 noundef %end) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_freq_change(ptr nocapture readnone %__data, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gpu_freq_change, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %freq) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gmu_freq_change(ptr nocapture readnone %__data, i32 noundef %freq, i32 noundef %perf_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gmu_freq_change, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %freq, i32 noundef %perf_index) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gem_purge(ptr nocapture readnone %__data, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gem_purge, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %bytes) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gem_evict(ptr nocapture readnone %__data, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gem_evict, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %bytes) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gem_purge_vmaps(ptr nocapture readnone %__data, i32 noundef %unmapped) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gem_purge_vmaps, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %unmapped) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_suspend(ptr nocapture readnone %__data, i32 noundef %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gpu_suspend, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %dummy) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_gpu_resume(ptr nocapture readnone %__data, i32 noundef %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_msm_gpu_resume, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void %2(ptr noundef %4, i32 noundef %dummy) #5
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_submit(ptr noundef %__data, i32 noundef %pid, i32 noundef %ringid, i32 noundef %id, i32 noundef %nr_bos, i32 noundef %nr_cmds) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pid6 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %pid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %pid, ptr %pid6, align 4
  %id7 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %id7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %id7, align 4
  %ringid8 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %ringid8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ringid, ptr %ringid8, align 4
  %nr_bos9 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call3, i32 0, i32 5
  %6 = ptrtoint ptr %nr_bos9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nr_bos, ptr %nr_bos9, align 4
  %nr_cmds10 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call3, i32 0, i32 4
  %7 = ptrtoint ptr %nr_cmds10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nr_cmds, ptr %nr_cmds10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_submit(ptr noundef %__data, i32 noundef %pid, i32 noundef %ringid, i32 noundef %id, i32 noundef %nr_bos, i32 noundef %nr_cmds) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid17 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %pid, ptr %pid17, align 4
  %id18 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %id18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %id, ptr %id18, align 4
  %ringid19 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %ringid19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %ringid, ptr %ringid19, align 4
  %nr_bos20 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call13, i32 0, i32 5
  %30 = ptrtoint ptr %nr_bos20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %nr_bos, ptr %nr_bos20, align 4
  %nr_cmds21 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %call13, i32 0, i32 4
  %31 = ptrtoint ptr %nr_cmds21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %nr_cmds, ptr %nr_cmds21, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_submit_flush(ptr noundef %__data, ptr nocapture noundef readonly %submit, i64 noundef %ticks) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pid = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 12
  %3 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pid, align 4
  %tobool.not.i26 = icmp eq ptr %4, null
  br i1 %tobool.not.i26, label %if.end5.pid_nr.exit_crit_edge, label %if.then.i

if.end5.pid_nr.exit_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %pid_nr.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %numbers.i = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i, %if.end5.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %6, %if.then.i ], [ 0, %if.end5.pid_nr.exit_crit_edge ]
  %pid7 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %pid7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nr.0.i, ptr %pid7, align 8
  %ident = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 20
  %8 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ident, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %id, align 4
  %ring = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 16
  %11 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring, align 4
  %id8 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id8, align 4
  %ringid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %ringid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ringid, align 8
  %seqno = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %16 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seqno, align 8
  %seqno9 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call3, i32 0, i32 4
  %18 = ptrtoint ptr %seqno9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %seqno9, align 4
  %ticks10 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %ticks10 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %ticks, ptr %ticks10, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %pid_nr.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_submit_flush(ptr noundef %__data, ptr nocapture noundef readonly %submit, i64 noundef %ticks) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 12
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pid, align 4
  %tobool.not.i49 = icmp eq ptr %28, null
  br i1 %tobool.not.i49, label %if.end16.pid_nr.exit_crit_edge, label %if.then.i

if.end16.pid_nr.exit_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %pid_nr.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %numbers.i = getelementptr inbounds %struct.pid, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i, %if.end16.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %30, %if.then.i ], [ 0, %if.end16.pid_nr.exit_crit_edge ]
  %pid18 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %pid18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %nr.0.i, ptr %pid18, align 8
  %ident = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 20
  %32 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ident, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %id, align 4
  %ring = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 16
  %35 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ring, align 4
  %id19 = getelementptr inbounds %struct.msm_ringbuffer, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %id19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id19, align 4
  %ringid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %ringid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ringid, align 8
  %seqno = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %40 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %seqno, align 8
  %seqno20 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call13, i32 0, i32 4
  %42 = ptrtoint ptr %seqno20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %seqno20, align 4
  %ticks21 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %ticks21 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %ticks, ptr %ticks21, align 8
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %pid_nr.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_submit_retired(ptr noundef %__data, ptr nocapture noundef readonly %submit, i64 noundef %elapsed, i64 noundef %clock, i64 noundef %start, i64 noundef %end) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 56) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pid = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 12
  %3 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pid, align 4
  %tobool.not.i33 = icmp eq ptr %4, null
  br i1 %tobool.not.i33, label %if.end5.pid_nr.exit_crit_edge, label %if.then.i

if.end5.pid_nr.exit_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %pid_nr.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %numbers.i = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i, %if.end5.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %6, %if.then.i ], [ 0, %if.end5.pid_nr.exit_crit_edge ]
  %pid7 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %pid7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nr.0.i, ptr %pid7, align 8
  %ident = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 20
  %8 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ident, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %id, align 4
  %ring = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 16
  %11 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring, align 4
  %id8 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %id8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id8, align 4
  %ringid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %ringid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ringid, align 8
  %seqno = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %16 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seqno, align 8
  %seqno9 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call3, i32 0, i32 4
  %18 = ptrtoint ptr %seqno9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %seqno9, align 4
  %elapsed10 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %elapsed10 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %elapsed, ptr %elapsed10, align 8
  %clock11 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call3, i32 0, i32 6
  %20 = ptrtoint ptr %clock11 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %clock, ptr %clock11, align 8
  %start_ticks = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call3, i32 0, i32 7
  %21 = ptrtoint ptr %start_ticks to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %start, ptr %start_ticks, align 8
  %end_ticks = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call3, i32 0, i32 8
  %22 = ptrtoint ptr %end_ticks to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %end, ptr %end_ticks, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %pid_nr.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_submit_retired(ptr noundef %__data, ptr nocapture noundef readonly %submit, i64 noundef %elapsed, i64 noundef %clock, i64 noundef %start, i64 noundef %end) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 12
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pid, align 4
  %tobool.not.i56 = icmp eq ptr %28, null
  br i1 %tobool.not.i56, label %if.end16.pid_nr.exit_crit_edge, label %if.then.i

if.end16.pid_nr.exit_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %pid_nr.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %numbers.i = getelementptr inbounds %struct.pid, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i, %if.end16.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %30, %if.then.i ], [ 0, %if.end16.pid_nr.exit_crit_edge ]
  %pid18 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %pid18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %nr.0.i, ptr %pid18, align 8
  %ident = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 20
  %32 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ident, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %id, align 4
  %ring = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 16
  %35 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ring, align 4
  %id19 = getelementptr inbounds %struct.msm_ringbuffer, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %id19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id19, align 4
  %ringid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %ringid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ringid, align 8
  %seqno = getelementptr inbounds %struct.msm_gem_submit, ptr %submit, i32 0, i32 7
  %40 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %seqno, align 8
  %seqno20 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call13, i32 0, i32 4
  %42 = ptrtoint ptr %seqno20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %seqno20, align 4
  %elapsed21 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %elapsed21 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %elapsed, ptr %elapsed21, align 8
  %clock22 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call13, i32 0, i32 6
  %44 = ptrtoint ptr %clock22 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %clock, ptr %clock22, align 8
  %start_ticks = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call13, i32 0, i32 7
  %45 = ptrtoint ptr %start_ticks to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %start, ptr %start_ticks, align 8
  %end_ticks = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %call13, i32 0, i32 8
  %46 = ptrtoint ptr %end_ticks to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %end, ptr %end_ticks, align 8
  %47 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rctx, align 4
  %49 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 60, i32 noundef %48, ptr noundef %__data, i64 noundef 1, ptr noundef %50, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %pid_nr.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_freq_change(ptr noundef %__data, i32 noundef %freq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %freq, 999999
  %div = udiv i32 %sub, 1000000
  %freq7 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_freq_change, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %freq7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div, ptr %freq7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_freq_change(ptr noundef %__data, i32 noundef %freq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %sub18 = add i32 %freq, 999999
  %div = udiv i32 %sub18, 1000000
  %freq19 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_freq_change, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %freq19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div, ptr %freq19, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gmu_freq_change(ptr noundef %__data, i32 noundef %freq, i32 noundef %perf_index) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %freq6 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %freq6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %freq, ptr %freq6, align 4
  %perf_index7 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %perf_index7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %perf_index, ptr %perf_index7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gmu_freq_change(ptr noundef %__data, i32 noundef %freq, i32 noundef %perf_index) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %freq17 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %freq17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %freq, ptr %freq17, align 4
  %perf_index18 = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %perf_index18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %perf_index, ptr %perf_index18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gem_purge(ptr noundef %__data, i32 noundef %bytes) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bytes6 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %bytes6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bytes, ptr %bytes6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gem_purge(ptr noundef %__data, i32 noundef %bytes) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bytes17 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %bytes17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bytes, ptr %bytes17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gem_evict(ptr noundef %__data, i32 noundef %bytes) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bytes6 = getelementptr inbounds %struct.trace_event_raw_msm_gem_evict, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %bytes6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bytes, ptr %bytes6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gem_evict(ptr noundef %__data, i32 noundef %bytes) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bytes17 = getelementptr inbounds %struct.trace_event_raw_msm_gem_evict, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %bytes17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bytes, ptr %bytes17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gem_purge_vmaps(ptr noundef %__data, i32 noundef %unmapped) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %unmapped6 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge_vmaps, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %unmapped6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %unmapped, ptr %unmapped6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gem_purge_vmaps(ptr noundef %__data, i32 noundef %unmapped) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %unmapped17 = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge_vmaps, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %unmapped17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %unmapped, ptr %unmapped17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_suspend(ptr noundef %__data, i32 noundef %dummy) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dummy6 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_suspend, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dummy6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dummy, ptr %dummy6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_suspend(ptr noundef %__data, i32 noundef %dummy) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dummy17 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_suspend, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dummy17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dummy, ptr %dummy17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_gpu_resume(ptr noundef %__data, i32 noundef %dummy) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #5
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !160

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !161

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #5
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dummy6 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_resume, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dummy6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dummy, ptr %dummy6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_msm_gpu_resume(ptr noundef %__data, i32 noundef %dummy) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !162
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #5
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #5
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !150) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dummy17 = getelementptr inbounds %struct.trace_event_raw_msm_gpu_resume, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dummy17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dummy, ptr %dummy17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gpu_submit(ptr noundef %__data, i32 noundef %pid, i32 noundef %ringid, i32 noundef %id, i32 noundef %nr_bos, i32 noundef %nr_cmds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %pid to i64
  %conv4 = zext i32 %ringid to i64
  %conv8 = zext i32 %id to i64
  %conv12 = zext i32 %nr_bos to i64
  %conv16 = zext i32 %nr_cmds to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gpu_submit_flush(ptr noundef %__data, ptr noundef %submit, i64 noundef %ticks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %submit to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %ticks) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gpu_submit_retired(ptr noundef %__data, ptr noundef %submit, i64 noundef %elapsed, i64 noundef %clock, i64 noundef %start, i64 noundef %end) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %submit to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %elapsed, i64 noundef %clock, i64 noundef %start, i64 noundef %end) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gpu_freq_change(ptr noundef %__data, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %freq to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gmu_freq_change(ptr noundef %__data, i32 noundef %freq, i32 noundef %perf_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %freq to i64
  %conv4 = zext i32 %perf_index to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gem_purge(ptr noundef %__data, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %bytes to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gem_evict(ptr noundef %__data, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %bytes to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gem_purge_vmaps(ptr noundef %__data, i32 noundef %unmapped) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %unmapped to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gpu_suspend(ptr noundef %__data, i32 noundef %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %dummy to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_msm_gpu_resume(ptr noundef %__data, i32 noundef %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %dummy to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_submit(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %id = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %pid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %ringid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ringid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ringid, align 4
  %nr_bos = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_bos, align 4
  %nr_cmds = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %nr_cmds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_cmds, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
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
define internal i32 @trace_raw_output_msm_gpu_submit_flush(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %id = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %pid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %ringid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ringid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ringid, align 8
  %seqno = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seqno, align 4
  %ticks = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_flush, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ticks to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ticks, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i64 noundef %11) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_submit_retired(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %id = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %pid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %ringid = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ringid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ringid, align 8
  %seqno = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %seqno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seqno, align 4
  %elapsed = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %elapsed to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %elapsed, align 8
  %clock = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %clock to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %clock, align 8
  %start_ticks = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %start_ticks to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start_ticks, align 8
  %end_ticks = getelementptr inbounds %struct.trace_event_raw_msm_gpu_submit_retired, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %end_ticks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %end_ticks, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15, i64 noundef %17) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_freq_change(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %freq = getelementptr inbounds %struct.trace_event_raw_msm_gpu_freq_change, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, i32 noundef %3) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gmu_freq_change(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %freq = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  %perf_index = getelementptr inbounds %struct.trace_event_raw_msm_gmu_freq_change, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %perf_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %perf_index, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %5) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gem_purge(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bytes = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, i32 noundef %3) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gem_evict(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bytes = getelementptr inbounds %struct.trace_event_raw_msm_gem_evict, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.23, i32 noundef %3) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gem_purge_vmaps(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %unmapped = getelementptr inbounds %struct.trace_event_raw_msm_gem_purge_vmaps, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unmapped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unmapped, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.25, i32 noundef %3) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_suspend(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dummy = getelementptr inbounds %struct.trace_event_raw_msm_gpu_suspend, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dummy, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, i32 noundef %3) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_gpu_resume(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dummy = getelementptr inbounds %struct.trace_event_raw_msm_gpu_resume, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dummy, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, i32 noundef %3) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
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
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!llvm.named.register.sp = !{!150}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__tracepoint_msm_gpu_submit, !1, !"__tracepoint_msm_gpu_submit", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 11, i32 1}
!2 = !{ptr @__tracepoint_ptr_msm_gpu_submit, !1, !"__tracepoint_ptr_msm_gpu_submit", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_msm_gpu_submit, !1, !"__SCK__tp_func_msm_gpu_submit", i1 false, i1 false}
!4 = !{ptr @__tracepoint_msm_gpu_submit_flush, !5, !"__tracepoint_msm_gpu_submit_flush", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 33, i32 1}
!6 = !{ptr @__tracepoint_ptr_msm_gpu_submit_flush, !5, !"__tracepoint_ptr_msm_gpu_submit_flush", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_msm_gpu_submit_flush, !5, !"__SCK__tp_func_msm_gpu_submit_flush", i1 false, i1 false}
!8 = !{ptr @__tracepoint_msm_gpu_submit_retired, !9, !"__tracepoint_msm_gpu_submit_retired", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 56, i32 1}
!10 = !{ptr @__tracepoint_ptr_msm_gpu_submit_retired, !9, !"__tracepoint_ptr_msm_gpu_submit_retired", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_msm_gpu_submit_retired, !9, !"__SCK__tp_func_msm_gpu_submit_retired", i1 false, i1 false}
!12 = !{ptr @__tracepoint_msm_gpu_freq_change, !13, !"__tracepoint_msm_gpu_freq_change", i1 false, i1 false}
!13 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 87, i32 1}
!14 = !{ptr @__tracepoint_ptr_msm_gpu_freq_change, !13, !"__tracepoint_ptr_msm_gpu_freq_change", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_msm_gpu_freq_change, !13, !"__SCK__tp_func_msm_gpu_freq_change", i1 false, i1 false}
!16 = !{ptr @__tracepoint_msm_gmu_freq_change, !17, !"__tracepoint_msm_gmu_freq_change", i1 false, i1 false}
!17 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 103, i32 1}
!18 = !{ptr @__tracepoint_ptr_msm_gmu_freq_change, !17, !"__tracepoint_ptr_msm_gmu_freq_change", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_msm_gmu_freq_change, !17, !"__SCK__tp_func_msm_gmu_freq_change", i1 false, i1 false}
!20 = !{ptr @__tracepoint_msm_gem_purge, !21, !"__tracepoint_msm_gem_purge", i1 false, i1 false}
!21 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 118, i32 1}
!22 = !{ptr @__tracepoint_ptr_msm_gem_purge, !21, !"__tracepoint_ptr_msm_gem_purge", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_msm_gem_purge, !21, !"__SCK__tp_func_msm_gem_purge", i1 false, i1 false}
!24 = !{ptr @__tracepoint_msm_gem_evict, !25, !"__tracepoint_msm_gem_evict", i1 false, i1 false}
!25 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 131, i32 1}
!26 = !{ptr @__tracepoint_ptr_msm_gem_evict, !25, !"__tracepoint_ptr_msm_gem_evict", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_msm_gem_evict, !25, !"__SCK__tp_func_msm_gem_evict", i1 false, i1 false}
!28 = !{ptr @__tracepoint_msm_gem_purge_vmaps, !29, !"__tracepoint_msm_gem_purge_vmaps", i1 false, i1 false}
!29 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 144, i32 1}
!30 = !{ptr @__tracepoint_ptr_msm_gem_purge_vmaps, !29, !"__tracepoint_ptr_msm_gem_purge_vmaps", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_msm_gem_purge_vmaps, !29, !"__SCK__tp_func_msm_gem_purge_vmaps", i1 false, i1 false}
!32 = !{ptr @__tracepoint_msm_gpu_suspend, !33, !"__tracepoint_msm_gpu_suspend", i1 false, i1 false}
!33 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 157, i32 1}
!34 = !{ptr @__tracepoint_ptr_msm_gpu_suspend, !33, !"__tracepoint_ptr_msm_gpu_suspend", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_msm_gpu_suspend, !33, !"__SCK__tp_func_msm_gpu_suspend", i1 false, i1 false}
!36 = !{ptr @__tracepoint_msm_gpu_resume, !37, !"__tracepoint_msm_gpu_resume", i1 false, i1 false}
!37 = !{!"../include/trace/../../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 170, i32 1}
!38 = !{ptr @__tracepoint_ptr_msm_gpu_resume, !37, !"__tracepoint_ptr_msm_gpu_resume", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_msm_gpu_resume, !37, !"__SCK__tp_func_msm_gpu_resume", i1 false, i1 false}
!40 = !{ptr @event_class_msm_gpu_submit, !1, !"event_class_msm_gpu_submit", i1 false, i1 false}
!41 = !{ptr @event_msm_gpu_submit, !1, !"event_msm_gpu_submit", i1 false, i1 false}
!42 = !{ptr @__event_msm_gpu_submit, !1, !"__event_msm_gpu_submit", i1 false, i1 false}
!43 = !{ptr @event_class_msm_gpu_submit_flush, !5, !"event_class_msm_gpu_submit_flush", i1 false, i1 false}
!44 = !{ptr @event_msm_gpu_submit_flush, !5, !"event_msm_gpu_submit_flush", i1 false, i1 false}
!45 = !{ptr @__event_msm_gpu_submit_flush, !5, !"__event_msm_gpu_submit_flush", i1 false, i1 false}
!46 = !{ptr @event_class_msm_gpu_submit_retired, !9, !"event_class_msm_gpu_submit_retired", i1 false, i1 false}
!47 = !{ptr @event_msm_gpu_submit_retired, !9, !"event_msm_gpu_submit_retired", i1 false, i1 false}
!48 = !{ptr @__event_msm_gpu_submit_retired, !9, !"__event_msm_gpu_submit_retired", i1 false, i1 false}
!49 = !{ptr @event_class_msm_gpu_freq_change, !13, !"event_class_msm_gpu_freq_change", i1 false, i1 false}
!50 = !{ptr @event_msm_gpu_freq_change, !13, !"event_msm_gpu_freq_change", i1 false, i1 false}
!51 = !{ptr @__event_msm_gpu_freq_change, !13, !"__event_msm_gpu_freq_change", i1 false, i1 false}
!52 = !{ptr @event_class_msm_gmu_freq_change, !17, !"event_class_msm_gmu_freq_change", i1 false, i1 false}
!53 = !{ptr @event_msm_gmu_freq_change, !17, !"event_msm_gmu_freq_change", i1 false, i1 false}
!54 = !{ptr @__event_msm_gmu_freq_change, !17, !"__event_msm_gmu_freq_change", i1 false, i1 false}
!55 = !{ptr @event_class_msm_gem_purge, !21, !"event_class_msm_gem_purge", i1 false, i1 false}
!56 = !{ptr @event_msm_gem_purge, !21, !"event_msm_gem_purge", i1 false, i1 false}
!57 = !{ptr @__event_msm_gem_purge, !21, !"__event_msm_gem_purge", i1 false, i1 false}
!58 = !{ptr @event_class_msm_gem_evict, !25, !"event_class_msm_gem_evict", i1 false, i1 false}
!59 = !{ptr @event_msm_gem_evict, !25, !"event_msm_gem_evict", i1 false, i1 false}
!60 = !{ptr @__event_msm_gem_evict, !25, !"__event_msm_gem_evict", i1 false, i1 false}
!61 = !{ptr @event_class_msm_gem_purge_vmaps, !29, !"event_class_msm_gem_purge_vmaps", i1 false, i1 false}
!62 = !{ptr @event_msm_gem_purge_vmaps, !29, !"event_msm_gem_purge_vmaps", i1 false, i1 false}
!63 = !{ptr @__event_msm_gem_purge_vmaps, !29, !"__event_msm_gem_purge_vmaps", i1 false, i1 false}
!64 = !{ptr @event_class_msm_gpu_suspend, !33, !"event_class_msm_gpu_suspend", i1 false, i1 false}
!65 = !{ptr @event_msm_gpu_suspend, !33, !"event_msm_gpu_suspend", i1 false, i1 false}
!66 = !{ptr @__event_msm_gpu_suspend, !33, !"__event_msm_gpu_suspend", i1 false, i1 false}
!67 = !{ptr @event_class_msm_gpu_resume, !37, !"event_class_msm_gpu_resume", i1 false, i1 false}
!68 = !{ptr @event_msm_gpu_resume, !37, !"event_msm_gpu_resume", i1 false, i1 false}
!69 = !{ptr @__event_msm_gpu_resume, !37, !"__event_msm_gpu_resume", i1 false, i1 false}
!70 = !{ptr @__bpf_trace_tp_map_msm_gpu_submit, !1, !"__bpf_trace_tp_map_msm_gpu_submit", i1 false, i1 false}
!71 = !{ptr @__bpf_trace_tp_map_msm_gpu_submit_flush, !5, !"__bpf_trace_tp_map_msm_gpu_submit_flush", i1 false, i1 false}
!72 = !{ptr @__bpf_trace_tp_map_msm_gpu_submit_retired, !9, !"__bpf_trace_tp_map_msm_gpu_submit_retired", i1 false, i1 false}
!73 = !{ptr @__bpf_trace_tp_map_msm_gpu_freq_change, !13, !"__bpf_trace_tp_map_msm_gpu_freq_change", i1 false, i1 false}
!74 = !{ptr @__bpf_trace_tp_map_msm_gmu_freq_change, !17, !"__bpf_trace_tp_map_msm_gmu_freq_change", i1 false, i1 false}
!75 = !{ptr @__bpf_trace_tp_map_msm_gem_purge, !21, !"__bpf_trace_tp_map_msm_gem_purge", i1 false, i1 false}
!76 = !{ptr @__bpf_trace_tp_map_msm_gem_evict, !25, !"__bpf_trace_tp_map_msm_gem_evict", i1 false, i1 false}
!77 = !{ptr @__bpf_trace_tp_map_msm_gem_purge_vmaps, !29, !"__bpf_trace_tp_map_msm_gem_purge_vmaps", i1 false, i1 false}
!78 = !{ptr @__bpf_trace_tp_map_msm_gpu_suspend, !33, !"__bpf_trace_tp_map_msm_gpu_suspend", i1 false, i1 false}
!79 = !{ptr @__bpf_trace_tp_map_msm_gpu_resume, !37, !"__bpf_trace_tp_map_msm_gpu_resume", i1 false, i1 false}
!80 = !{ptr @__tpstrtab_msm_gpu_submit, !1, !"__tpstrtab_msm_gpu_submit", i1 false, i1 false}
!81 = !{ptr @__tpstrtab_msm_gpu_submit_flush, !5, !"__tpstrtab_msm_gpu_submit_flush", i1 false, i1 false}
!82 = !{ptr @__tpstrtab_msm_gpu_submit_retired, !9, !"__tpstrtab_msm_gpu_submit_retired", i1 false, i1 false}
!83 = !{ptr @__tpstrtab_msm_gpu_freq_change, !13, !"__tpstrtab_msm_gpu_freq_change", i1 false, i1 false}
!84 = !{ptr @__tpstrtab_msm_gmu_freq_change, !17, !"__tpstrtab_msm_gmu_freq_change", i1 false, i1 false}
!85 = !{ptr @__tpstrtab_msm_gem_purge, !21, !"__tpstrtab_msm_gem_purge", i1 false, i1 false}
!86 = !{ptr @__tpstrtab_msm_gem_evict, !25, !"__tpstrtab_msm_gem_evict", i1 false, i1 false}
!87 = !{ptr @__tpstrtab_msm_gem_purge_vmaps, !29, !"__tpstrtab_msm_gem_purge_vmaps", i1 false, i1 false}
!88 = !{ptr @__tpstrtab_msm_gpu_suspend, !33, !"__tpstrtab_msm_gpu_suspend", i1 false, i1 false}
!89 = !{ptr @__tpstrtab_msm_gpu_resume, !37, !"__tpstrtab_msm_gpu_resume", i1 false, i1 false}
!90 = !{ptr @str__drm_msm_gpu__trace_system_name, !91, !"str__drm_msm_gpu__trace_system_name", i1 false, i1 false}
!91 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!92 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @trace_event_fields_msm_gpu_submit, !1, !"trace_event_fields_msm_gpu_submit", i1 false, i1 false}
!100 = !{ptr @trace_event_type_funcs_msm_gpu_submit, !1, !"trace_event_type_funcs_msm_gpu_submit", i1 false, i1 false}
!101 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @print_fmt_msm_gpu_submit, !1, !"print_fmt_msm_gpu_submit", i1 false, i1 false}
!103 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @trace_event_fields_msm_gpu_submit_flush, !5, !"trace_event_fields_msm_gpu_submit_flush", i1 false, i1 false}
!107 = !{ptr @trace_event_type_funcs_msm_gpu_submit_flush, !5, !"trace_event_type_funcs_msm_gpu_submit_flush", i1 false, i1 false}
!108 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @print_fmt_msm_gpu_submit_flush, !5, !"print_fmt_msm_gpu_submit_flush", i1 false, i1 false}
!110 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @trace_event_fields_msm_gpu_submit_retired, !9, !"trace_event_fields_msm_gpu_submit_retired", i1 false, i1 false}
!115 = !{ptr @trace_event_type_funcs_msm_gpu_submit_retired, !9, !"trace_event_type_funcs_msm_gpu_submit_retired", i1 false, i1 false}
!116 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @print_fmt_msm_gpu_submit_retired, !9, !"print_fmt_msm_gpu_submit_retired", i1 false, i1 false}
!118 = !{ptr @.str.17, !13, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @trace_event_fields_msm_gpu_freq_change, !13, !"trace_event_fields_msm_gpu_freq_change", i1 false, i1 false}
!120 = !{ptr @trace_event_type_funcs_msm_gpu_freq_change, !13, !"trace_event_type_funcs_msm_gpu_freq_change", i1 false, i1 false}
!121 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @print_fmt_msm_gpu_freq_change, !13, !"print_fmt_msm_gpu_freq_change", i1 false, i1 false}
!123 = !{ptr @.str.19, !17, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @trace_event_fields_msm_gmu_freq_change, !17, !"trace_event_fields_msm_gmu_freq_change", i1 false, i1 false}
!125 = !{ptr @trace_event_type_funcs_msm_gmu_freq_change, !17, !"trace_event_type_funcs_msm_gmu_freq_change", i1 false, i1 false}
!126 = !{ptr @.str.20, !17, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @print_fmt_msm_gmu_freq_change, !17, !"print_fmt_msm_gmu_freq_change", i1 false, i1 false}
!128 = !{ptr @.str.21, !21, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @trace_event_fields_msm_gem_purge, !21, !"trace_event_fields_msm_gem_purge", i1 false, i1 false}
!130 = !{ptr @trace_event_type_funcs_msm_gem_purge, !21, !"trace_event_type_funcs_msm_gem_purge", i1 false, i1 false}
!131 = !{ptr @.str.22, !21, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @print_fmt_msm_gem_purge, !21, !"print_fmt_msm_gem_purge", i1 false, i1 false}
!133 = !{ptr @trace_event_fields_msm_gem_evict, !25, !"trace_event_fields_msm_gem_evict", i1 false, i1 false}
!134 = !{ptr @trace_event_type_funcs_msm_gem_evict, !25, !"trace_event_type_funcs_msm_gem_evict", i1 false, i1 false}
!135 = !{ptr @.str.23, !25, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @print_fmt_msm_gem_evict, !25, !"print_fmt_msm_gem_evict", i1 false, i1 false}
!137 = !{ptr @.str.24, !29, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @trace_event_fields_msm_gem_purge_vmaps, !29, !"trace_event_fields_msm_gem_purge_vmaps", i1 false, i1 false}
!139 = !{ptr @trace_event_type_funcs_msm_gem_purge_vmaps, !29, !"trace_event_type_funcs_msm_gem_purge_vmaps", i1 false, i1 false}
!140 = !{ptr @.str.25, !29, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @print_fmt_msm_gem_purge_vmaps, !29, !"print_fmt_msm_gem_purge_vmaps", i1 false, i1 false}
!142 = !{ptr @.str.26, !33, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @trace_event_fields_msm_gpu_suspend, !33, !"trace_event_fields_msm_gpu_suspend", i1 false, i1 false}
!144 = !{ptr @trace_event_type_funcs_msm_gpu_suspend, !33, !"trace_event_type_funcs_msm_gpu_suspend", i1 false, i1 false}
!145 = !{ptr @.str.27, !33, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @print_fmt_msm_gpu_suspend, !33, !"print_fmt_msm_gpu_suspend", i1 false, i1 false}
!147 = !{ptr @trace_event_fields_msm_gpu_resume, !37, !"trace_event_fields_msm_gpu_resume", i1 false, i1 false}
!148 = !{ptr @trace_event_type_funcs_msm_gpu_resume, !37, !"trace_event_type_funcs_msm_gpu_resume", i1 false, i1 false}
!149 = !{ptr @print_fmt_msm_gpu_resume, !37, !"print_fmt_msm_gpu_resume", i1 false, i1 false}
!150 = !{!"sp"}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{!"branch_weights", i32 1, i32 2000}
!162 = !{!"auto-init"}
