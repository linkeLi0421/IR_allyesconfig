; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/trace.c_pt.bc'
source_filename = "../drivers/usb/chipidea/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.107, %struct.trace_event, ptr, ptr, %union.anon.108, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.107 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.108 = type { ptr }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.trace_event_raw_ci_log = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.va_format = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.78, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.78 = type { %struct.list_head, ptr, i32 }
%struct.trace_event_raw_ci_log_trb = type { %struct.trace_entry, i32, ptr, ptr, i32, i32, i32, i32, i32, [0 x i8] }
%struct.td_node = type { %struct.list_head, i32, ptr, i32 }
%struct.ci_hw_td = type { i32, i32, [5 x i32] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.__va_list = type { ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_ci_log = internal constant [7 x i8] c"ci_log\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ci_log = dso_local global %struct.static_call_key { ptr @__traceiter_ci_log }, align 4
@__tracepoint_ci_log = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ci_log, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ci_log, ptr null, ptr @__traceiter_ci_log, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ci_log = internal constant ptr @__tracepoint_ci_log, section "__tracepoints_ptrs", align 4
@__tpstrtab_ci_prepare_td = internal constant [14 x i8] c"ci_prepare_td\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ci_prepare_td = dso_local global %struct.static_call_key { ptr @__traceiter_ci_prepare_td }, align 4
@__tracepoint_ci_prepare_td = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ci_prepare_td, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ci_prepare_td, ptr null, ptr @__traceiter_ci_prepare_td, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ci_prepare_td = internal constant ptr @__tracepoint_ci_prepare_td, section "__tracepoints_ptrs", align 4
@__tpstrtab_ci_complete_td = internal constant [15 x i8] c"ci_complete_td\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ci_complete_td = dso_local global %struct.static_call_key { ptr @__traceiter_ci_complete_td }, align 4
@__tracepoint_ci_complete_td = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_ci_complete_td, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_ci_complete_td, ptr null, ptr @__traceiter_ci_complete_td, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ci_complete_td = internal constant ptr @__tracepoint_ci_complete_td, section "__tracepoints_ptrs", align 4
@str__chipidea__trace_system_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chipidea\00", [23 x i8] zeroinitializer }, align 32
@trace_event_fields_ci_log = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.105 { %struct.anon.106 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.105 { %struct.anon.106 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_ci_log = internal global %struct.trace_event_class { ptr @str__chipidea__trace_system_name, ptr @trace_event_raw_event_ci_log, ptr @perf_trace_ci_log, ptr @trace_event_reg, ptr @trace_event_fields_ci_log, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ci_log, i64 24), ptr getelementptr (i8, ptr @event_class_ci_log, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ci_log = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ci_log, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ci_log = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\22%s: %s\22, __get_str(name), __get_str(msg)\00", [54 x i8] zeroinitializer }, align 32
@event_ci_log = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ci_log, %union.anon.107 { ptr @__tracepoint_ci_log }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ci_log }, ptr @print_fmt_ci_log, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ci_log = internal global ptr @event_ci_log, section "_ftrace_events", align 4
@trace_event_fields_ci_log_trb = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.105 { %struct.anon.106 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.105 { %struct.anon.106 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.105 { %struct.anon.106 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.105 { %struct.anon.106 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.105 { %struct.anon.106 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_ci_log_trb = internal global %struct.trace_event_class { ptr @str__chipidea__trace_system_name, ptr @trace_event_raw_event_ci_log_trb, ptr @perf_trace_ci_log_trb, ptr @trace_event_reg, ptr @trace_event_fields_ci_log_trb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ci_log_trb, i64 24), ptr getelementptr (i8, ptr @event_class_ci_log_trb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ci_log_trb = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_ci_log_trb, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_ci_log_trb = internal global { [283 x i8], [69 x i8] } { [283 x i8] c"\22%s: req: %p, td: %p, td_dma_address: %pad, remaining_size: %d, next: %x, total bytes: %d, status: %lx\22, __get_str(name), REC->req, REC->td, &REC->dma, REC->td_remaining_size, REC->next, (int)((REC->token & (0x7FFFUL << 16)) >> __ffs((0x7FFFUL << 16))), REC->token & (0x00FFUL << 0)\00", [69 x i8] zeroinitializer }, align 32
@event_ci_prepare_td = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ci_log_trb, %union.anon.107 { ptr @__tracepoint_ci_prepare_td }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ci_log_trb }, ptr @print_fmt_ci_log_trb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ci_prepare_td = internal global ptr @event_ci_prepare_td, section "_ftrace_events", align 4
@event_ci_complete_td = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ci_log_trb, %union.anon.107 { ptr @__tracepoint_ci_complete_td }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ci_log_trb }, ptr @print_fmt_ci_log_trb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_ci_complete_td = internal global ptr @event_ci_complete_td, section "_ftrace_events", align 4
@__bpf_trace_tp_map_ci_log = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_ci_log, ptr @__bpf_trace_ci_log, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ci_prepare_td = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_ci_prepare_td, ptr @__bpf_trace_ci_log_trb, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_ci_complete_td = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_ci_complete_td, ptr @__bpf_trace_ci_log_trb, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"struct td_node *\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"td\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct usb_request *\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dma_addr_t\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s32\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"td_remaining_size\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"next\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"token\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"%s: req: %p, td: %p, td_dma_address: %pad, remaining_size: %d, next: %x, total bytes: %d, status: %lx\0A\00", [57 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/chipidea/trace.h\00", [35 x i8] zeroinitializer }, align 32
@trace_ci_log.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [32 x i8] c"../drivers/usb/chipidea/trace.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [33 x i8] c"str__chipidea__trace_system_name\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 36, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"trace_event_fields_ci_log\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [30 x i8] c"trace_event_type_funcs_ci_log\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"print_fmt_ci_log\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"event_ci_log\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"trace_event_fields_ci_log_trb\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_ci_log_trb\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"print_fmt_ci_log_trb\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"event_ci_prepare_td\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 72, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"event_ci_complete_td\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 77, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 40, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [34 x i8] c"../drivers/usb/chipidea/./trace.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 26, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 108, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__bpf_trace_tp_map_ci_complete_td, ptr @__bpf_trace_tp_map_ci_log, ptr @__bpf_trace_tp_map_ci_prepare_td, ptr @__event_ci_complete_td, ptr @__event_ci_log, ptr @__event_ci_prepare_td, ptr @__tracepoint_ci_complete_td, ptr @__tracepoint_ci_log, ptr @__tracepoint_ci_prepare_td, ptr @__tracepoint_ptr_ci_complete_td, ptr @__tracepoint_ptr_ci_log, ptr @__tracepoint_ptr_ci_prepare_td, ptr @event_ci_complete_td, ptr @event_ci_log, ptr @event_ci_prepare_td, ptr @event_class_ci_log, ptr @event_class_ci_log_trb, ptr @str__chipidea__trace_system_name, ptr @trace_event_fields_ci_log, ptr @trace_event_type_funcs_ci_log, ptr @print_fmt_ci_log, ptr @trace_event_fields_ci_log_trb, ptr @trace_event_type_funcs_ci_log_trb, ptr @print_fmt_ci_log_trb, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__chipidea__trace_system_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ci_log to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ci_log to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ci_log to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ci_log to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_ci_log_trb to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_ci_log_trb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_ci_log_trb to i32), i32 283, i32 352, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ci_prepare_td to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_ci_complete_td to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ci_log(ptr nocapture readnone %__data, ptr noundef %ci, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ci_log, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %ci, ptr noundef %vaf) #11
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
define dso_local i32 @__traceiter_ci_prepare_td(ptr nocapture readnone %__data, ptr noundef %hwep, ptr noundef %hwreq, ptr noundef %td) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ci_prepare_td, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %hwep, ptr noundef %hwreq, ptr noundef %td) #11
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
define dso_local i32 @__traceiter_ci_complete_td(ptr nocapture readnone %__data, ptr noundef %hwep, ptr noundef %hwreq, ptr noundef %td) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ci_complete_td, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %hwep, ptr noundef %hwreq, ptr noundef %td) #11
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
define internal void @trace_event_raw_event_ci_log(ptr noundef %__data, ptr nocapture noundef readonly %ci, ptr nocapture noundef readonly %vaf) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !70

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !71

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
  %3 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ci, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_ci_log.exit_crit_edge

if.end.trace_event_get_offsets_ci_log.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_ci_log.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i31 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i31, ptr @.str, ptr %8
  br label %trace_event_get_offsets_ci_log.exit

trace_event_get_offsets_ci_log.exit:              ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_ci_log.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_ci_log.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add = add i32 %call4.i, 517
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_ci_log.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_ci_log.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_ci_log.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_ci_log.exit
  %add8.i = add i32 %call4.i, 17
  %or11.i = or i32 %add8.i, 32768000
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or11.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %11 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i32 = icmp eq ptr %14, null
  br i1 %tobool.not.i32, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i37

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i37:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i37, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %18, %if.end.i37 ], [ %14, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %19 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %__data_loc_msg, align 4
  %and13 = and i32 %20, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %21 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %23 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %va, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack = load i32, ptr %24, align 4
  %26 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call15 = call i32 @vsnprintf(ptr noundef %add.ptr14, i32 noundef 500, ptr noundef %22, [1 x i32] %26)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_ci_log.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ci_log(ptr noundef %__data, ptr nocapture noundef readonly %ci, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !72
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_ci_log.exit_crit_edge

entry.trace_event_get_offsets_ci_log.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_ci_log.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %trace_event_get_offsets_ci_log.exit

trace_event_get_offsets_ci_log.exit:              ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_ci_log.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_ci_log.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65552
  %add8.i = add i32 %call4.i, 17
  %or11.i = or i32 %add8.i, 32768000
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_ci_log.exit.if.end_crit_edge

trace_event_get_offsets_ci_log.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_ci_log.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_ci_log.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i55.not = icmp eq ptr %21, null
  br i1 %tobool.not.i55.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_ci_log.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 528
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #11
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !60) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or11.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %35 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ci, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i56 = icmp eq ptr %38, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %tobool20.not = icmp eq ptr %40, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i59

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i59:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i59, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %42, %if.end.i59 ], [ %38, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %43 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %__data_loc_msg, align 4
  %and25 = and i32 %44, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %45 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %47 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %va, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack = load i32, ptr %48, align 4
  %50 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call27 = call i32 @vsnprintf(ptr noundef %add.ptr26, i32 noundef 500, ptr noundef %46, [1 x i32] %50)
  %51 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rctx, align 4
  %53 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %52, ptr noundef %__data, i64 noundef 1, ptr noundef %54, ptr noundef %17, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ci_log_trb(ptr noundef %__data, ptr noundef readonly %hwep, ptr noundef %hwreq, ptr noundef %td) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !70

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !71

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
  %name.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 4
  %call.i44 = tail call i32 @strlen(ptr noundef nonnull %name.i) #14
  %add = add i32 %call.i44, 41
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = shl i32 %call.i44, 16
  %or.i = add i32 %add.i, 65576
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 40
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #15
  %req12 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %req12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hwreq, ptr %req12, align 4
  %td13 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %td13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %td, ptr %td13, align 4
  %dma = getelementptr inbounds %struct.td_node, ptr %td, i32 0, i32 1
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  %dma14 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %dma14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dma14, align 4
  %td_remaining_size = getelementptr inbounds %struct.td_node, ptr %td, i32 0, i32 3
  %9 = ptrtoint ptr %td_remaining_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %td_remaining_size, align 4
  %td_remaining_size15 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call3, i32 0, i32 5
  %11 = ptrtoint ptr %td_remaining_size15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %td_remaining_size15, align 4
  %ptr = getelementptr inbounds %struct.td_node, ptr %td, i32 0, i32 2
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %next16 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %next16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %next16, align 4
  %18 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptr, align 4
  %token = getelementptr inbounds %struct.ci_hw_td, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %token, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %token18 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call3, i32 0, i32 7
  %23 = ptrtoint ptr %token18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %token18, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %hwep, i32 0, i32 9
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bmAttributes.i, align 1
  %28 = and i8 %27, 3
  %and.i45 = zext i8 %28 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call3, i32 0, i32 8
  %29 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i45, ptr %type, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_ci_log_trb(ptr noundef %__data, ptr noundef readonly %hwep, ptr noundef %hwreq, ptr noundef %td) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !72
  %name.i = getelementptr inbounds %struct.ci_hw_ep, ptr %hwep, i32 0, i32 4
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #14
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65576
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !60) #11
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
  %add12 = add i32 %call.i, 52
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !60) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 40
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #15
  %req24 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call13, i32 0, i32 3
  %28 = ptrtoint ptr %req24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %hwreq, ptr %req24, align 4
  %td25 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %td25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %td, ptr %td25, align 4
  %dma = getelementptr inbounds %struct.td_node, ptr %td, i32 0, i32 1
  %30 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma, align 4
  %dma26 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %dma26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dma26, align 4
  %td_remaining_size = getelementptr inbounds %struct.td_node, ptr %td, i32 0, i32 3
  %33 = ptrtoint ptr %td_remaining_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %td_remaining_size, align 4
  %td_remaining_size27 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call13, i32 0, i32 5
  %35 = ptrtoint ptr %td_remaining_size27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %td_remaining_size27, align 4
  %ptr = getelementptr inbounds %struct.td_node, ptr %td, i32 0, i32 2
  %36 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptr, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %next28 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call13, i32 0, i32 6
  %41 = ptrtoint ptr %next28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %next28, align 4
  %42 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptr, align 4
  %token = getelementptr inbounds %struct.ci_hw_td, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %token, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %token30 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call13, i32 0, i32 7
  %47 = ptrtoint ptr %token30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %token30, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %hwep, i32 0, i32 9
  %48 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bmAttributes.i, align 1
  %52 = and i8 %51, 3
  %and.i68 = zext i8 %52 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %call13, i32 0, i32 8
  %53 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and.i68, ptr %type, align 4
  %54 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rctx, align 4
  %56 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %55, ptr noundef %__data, i64 noundef 1, ptr noundef %57, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ci_log(ptr noundef %__data, ptr noundef %ci, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %ci to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %vaf to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_ci_log_trb(ptr noundef %__data, ptr noundef %hwep, ptr noundef %hwreq, ptr noundef %td) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %hwep to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %hwreq to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %td to i32
  %conv8 = zext i32 %2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_log(ptr noundef %ci, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #11
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !72
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  call fastcc void @trace_ci_log(ptr noundef %ci, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ci_log(ptr noundef %ci, ptr noundef %vaf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ci_log, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_ci_log, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #11
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !70

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ci_log, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %ci, ptr noundef %vaf) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !60) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !60) #11
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !70

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !76
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_ci_log, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ci_log.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ci_log.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 38, ptr noundef nonnull @.str.19) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %38 = tail call i32 @llvm.read_register.i32(metadata !60) #11
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

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ci_log(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_msg, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, ptr noundef %add.ptr, ptr noundef %add.ptr2) #11
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ci_log_trb(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %req = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %td = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %td, align 4
  %dma = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %1, i32 0, i32 4
  %td_remaining_size = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %td_remaining_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %td_remaining_size, align 4
  %next = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next, align 4
  %token = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %token, align 4
  %and1 = lshr i32 %13, 16
  %shr = and i32 %and1, 32767
  %and4 = and i32 %13, 255
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, ptr noundef %add.ptr, ptr noundef %5, ptr noundef %7, ptr noundef %dma, i32 noundef %9, i32 noundef %11, i32 noundef %shr, i32 noundef %and4) #11
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__tracepoint_ci_log, !1, !"__tracepoint_ci_log", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/./trace.h", i32 26, i32 1}
!2 = !{ptr @__tracepoint_ptr_ci_log, !1, !"__tracepoint_ptr_ci_log", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_ci_log, !1, !"__SCK__tp_func_ci_log", i1 false, i1 false}
!4 = !{ptr @__tracepoint_ci_prepare_td, !5, !"__tracepoint_ci_prepare_td", i1 false, i1 false}
!5 = !{!"../drivers/usb/chipidea/./trace.h", i32 72, i32 1}
!6 = !{ptr @__tracepoint_ptr_ci_prepare_td, !5, !"__tracepoint_ptr_ci_prepare_td", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_ci_prepare_td, !5, !"__SCK__tp_func_ci_prepare_td", i1 false, i1 false}
!8 = !{ptr @__tracepoint_ci_complete_td, !9, !"__tracepoint_ci_complete_td", i1 false, i1 false}
!9 = !{!"../drivers/usb/chipidea/./trace.h", i32 77, i32 1}
!10 = !{ptr @__tracepoint_ptr_ci_complete_td, !9, !"__tracepoint_ptr_ci_complete_td", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_ci_complete_td, !9, !"__SCK__tp_func_ci_complete_td", i1 false, i1 false}
!12 = !{ptr @event_class_ci_log, !1, !"event_class_ci_log", i1 false, i1 false}
!13 = !{ptr @event_ci_log, !1, !"event_ci_log", i1 false, i1 false}
!14 = !{ptr @__event_ci_log, !1, !"__event_ci_log", i1 false, i1 false}
!15 = !{ptr @event_class_ci_log_trb, !16, !"event_class_ci_log_trb", i1 false, i1 false}
!16 = !{!"../drivers/usb/chipidea/./trace.h", i32 40, i32 1}
!17 = !{ptr @event_ci_prepare_td, !5, !"event_ci_prepare_td", i1 false, i1 false}
!18 = !{ptr @__event_ci_prepare_td, !5, !"__event_ci_prepare_td", i1 false, i1 false}
!19 = !{ptr @event_ci_complete_td, !9, !"event_ci_complete_td", i1 false, i1 false}
!20 = !{ptr @__event_ci_complete_td, !9, !"__event_ci_complete_td", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_ci_log, !1, !"__bpf_trace_tp_map_ci_log", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_ci_prepare_td, !5, !"__bpf_trace_tp_map_ci_prepare_td", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_ci_complete_td, !9, !"__bpf_trace_tp_map_ci_complete_td", i1 false, i1 false}
!24 = !{ptr @__tpstrtab_ci_log, !1, !"__tpstrtab_ci_log", i1 false, i1 false}
!25 = !{ptr @__tpstrtab_ci_prepare_td, !5, !"__tpstrtab_ci_prepare_td", i1 false, i1 false}
!26 = !{ptr @__tpstrtab_ci_complete_td, !9, !"__tpstrtab_ci_complete_td", i1 false, i1 false}
!27 = !{ptr @str__chipidea__trace_system_name, !28, !"str__chipidea__trace_system_name", i1 false, i1 false}
!28 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!29 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @trace_event_fields_ci_log, !1, !"trace_event_fields_ci_log", i1 false, i1 false}
!34 = !{ptr @trace_event_type_funcs_ci_log, !1, !"trace_event_type_funcs_ci_log", i1 false, i1 false}
!35 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @print_fmt_ci_log, !1, !"print_fmt_ci_log", i1 false, i1 false}
!37 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !16, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !16, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !16, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !16, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @trace_event_fields_ci_log_trb, !16, !"trace_event_fields_ci_log_trb", i1 false, i1 false}
!50 = !{ptr @trace_event_type_funcs_ci_log_trb, !16, !"trace_event_type_funcs_ci_log_trb", i1 false, i1 false}
!51 = !{ptr @.str.17, !16, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @print_fmt_ci_log_trb, !16, !"print_fmt_ci_log_trb", i1 false, i1 false}
!53 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!54 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!56 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{!"auto-init"}
!73 = !{i64 2148844178, i64 2148844183, i64 2148844196, i64 2148844240, i64 2148844274, i64 2148844295}
!74 = !{i64 2155353260}
!75 = !{i64 2155353449}
!76 = !{i64 2149184737}
!77 = !{i64 2149185773}
