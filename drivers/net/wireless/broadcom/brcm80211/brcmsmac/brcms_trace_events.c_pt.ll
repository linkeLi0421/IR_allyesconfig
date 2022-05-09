; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcms_trace_events.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcms_trace_events.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.96 }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.98, %struct.trace_event, ptr, ptr, %union.anon.99, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.98 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.99 = type { ptr }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.brcms_timer = type { %struct.delayed_work, ptr, ptr, ptr, i32, i8, i8, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.trace_event_raw_brcms_timer = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_brcms_dpc = type { %struct.trace_entry, i32, [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.trace_event_raw_brcms_macintstatus = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_brcms_txdesc = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_brcms_txstatus = type { %struct.trace_entry, i32, i16, i16, i16, i16, i16, i16, i16, [0 x i8] }
%struct.trace_event_raw_brcms_ampdu_session = type { %struct.trace_entry, i32, i32, i16, i16, i16, i16, [0 x i8] }
%struct.trace_event_raw_brcms_msg_event = type { %struct.trace_entry, i32, [0 x i8] }
%struct.va_format = type { ptr, ptr }
%struct.trace_event_raw_brcms_dbg = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_brcms_timer = internal constant [12 x i8] c"brcms_timer\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_timer = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_timer }, align 4
@__tracepoint_brcms_timer = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_timer, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_timer, ptr null, ptr @__traceiter_brcms_timer, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_timer = internal constant ptr @__tracepoint_brcms_timer, section "__tracepoints_ptrs", align 4
@__tpstrtab_brcms_dpc = internal constant [10 x i8] c"brcms_dpc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_dpc = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_dpc }, align 4
@__tracepoint_brcms_dpc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_dpc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_dpc, ptr null, ptr @__traceiter_brcms_dpc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_dpc = internal constant ptr @__tracepoint_brcms_dpc, section "__tracepoints_ptrs", align 4
@__tpstrtab_brcms_macintstatus = internal constant [19 x i8] c"brcms_macintstatus\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_macintstatus = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_macintstatus }, align 4
@__tracepoint_brcms_macintstatus = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_macintstatus, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_macintstatus, ptr null, ptr @__traceiter_brcms_macintstatus, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_macintstatus = internal constant ptr @__tracepoint_brcms_macintstatus, section "__tracepoints_ptrs", align 4
@str__brcmsmac__trace_system_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcmsmac\00", [23 x i8] zeroinitializer }, align 32
@trace_event_fields_brcms_timer = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.96 { %struct.anon.97 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.96 { %struct.anon.97 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.96 { %struct.anon.97 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_brcms_timer = internal global %struct.trace_event_class { ptr @str__brcmsmac__trace_system_name, ptr @trace_event_raw_event_brcms_timer, ptr @perf_trace_brcms_timer, ptr @trace_event_reg, ptr @trace_event_fields_brcms_timer, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_brcms_timer, i64 24), ptr getelementptr (i8, ptr @event_class_brcms_timer, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_brcms_timer = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_brcms_timer, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_brcms_timer = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\22ms=%u set=%u periodic=%u\22, REC->ms, REC->set, REC->periodic\00", [35 x i8] zeroinitializer }, align 32
@event_brcms_timer = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_timer, %union.anon.98 { ptr @__tracepoint_brcms_timer }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_timer }, ptr @print_fmt_brcms_timer, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_timer = internal global ptr @event_brcms_timer, section "_ftrace_events", align 4
@trace_event_fields_brcms_dpc = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.96 { %struct.anon.97 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_brcms_dpc = internal global %struct.trace_event_class { ptr @str__brcmsmac__trace_system_name, ptr @trace_event_raw_event_brcms_dpc, ptr @perf_trace_brcms_dpc, ptr @trace_event_reg, ptr @trace_event_fields_brcms_dpc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_brcms_dpc, i64 24), ptr getelementptr (i8, ptr @event_class_brcms_dpc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_brcms_dpc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_brcms_dpc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_brcms_dpc = internal global { [29 x i8], [35 x i8] } { [29 x i8] c"\22data=%p\22, (void *)REC->data\00", [35 x i8] zeroinitializer }, align 32
@event_brcms_dpc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_dpc, %union.anon.98 { ptr @__tracepoint_brcms_dpc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_dpc }, ptr @print_fmt_brcms_dpc, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_dpc = internal global ptr @event_brcms_dpc, section "_ftrace_events", align 4
@trace_event_fields_brcms_macintstatus = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.96 { %struct.anon.97 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.96 { %struct.anon.97 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.96 { %struct.anon.97 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_brcms_macintstatus = internal global %struct.trace_event_class { ptr @str__brcmsmac__trace_system_name, ptr @trace_event_raw_event_brcms_macintstatus, ptr @perf_trace_brcms_macintstatus, ptr @trace_event_reg, ptr @trace_event_fields_brcms_macintstatus, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_brcms_macintstatus, i64 24), ptr getelementptr (i8, ptr @event_class_brcms_macintstatus, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_brcms_macintstatus = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_brcms_macintstatus, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_brcms_macintstatus = internal global { [102 x i8], [58 x i8] } { [102 x i8] c"\22[%s] in_isr=%d macintstatus=%#x mask=%#x\22, __get_str(dev), REC->in_isr, REC->macintstatus, REC->mask\00", [58 x i8] zeroinitializer }, align 32
@event_brcms_macintstatus = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_macintstatus, %union.anon.98 { ptr @__tracepoint_brcms_macintstatus }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_macintstatus }, ptr @print_fmt_brcms_macintstatus, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_macintstatus = internal global ptr @event_brcms_macintstatus, section "_ftrace_events", align 4
@__bpf_trace_tp_map_brcms_timer = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_timer, ptr @__bpf_trace_brcms_timer, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_brcms_dpc = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_dpc, ptr @__bpf_trace_brcms_dpc, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_brcms_macintstatus = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_macintstatus, ptr @__bpf_trace_brcms_macintstatus, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__tpstrtab_brcms_txdesc = internal constant [13 x i8] c"brcms_txdesc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_txdesc = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_txdesc }, align 4
@__tracepoint_brcms_txdesc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_txdesc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_txdesc, ptr null, ptr @__traceiter_brcms_txdesc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_txdesc = internal constant ptr @__tracepoint_brcms_txdesc, section "__tracepoints_ptrs", align 4
@__tpstrtab_brcms_txstatus = internal constant [15 x i8] c"brcms_txstatus\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_txstatus = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_txstatus }, align 4
@__tracepoint_brcms_txstatus = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_txstatus, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_txstatus, ptr null, ptr @__traceiter_brcms_txstatus, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_txstatus = internal constant ptr @__tracepoint_brcms_txstatus, section "__tracepoints_ptrs", align 4
@__tpstrtab_brcms_ampdu_session = internal constant [20 x i8] c"brcms_ampdu_session\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_ampdu_session = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_ampdu_session }, align 4
@__tracepoint_brcms_ampdu_session = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_ampdu_session, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_ampdu_session, ptr null, ptr @__traceiter_brcms_ampdu_session, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_ampdu_session = internal constant ptr @__tracepoint_brcms_ampdu_session, section "__tracepoints_ptrs", align 4
@str__brcmsmac_tx__trace_system_name = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"brcmsmac_tx\00", [20 x i8] zeroinitializer }, align 32
@trace_event_fields_brcms_txdesc = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.96 { %struct.anon.97 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_brcms_txdesc = internal global %struct.trace_event_class { ptr @str__brcmsmac_tx__trace_system_name, ptr @trace_event_raw_event_brcms_txdesc, ptr @perf_trace_brcms_txdesc, ptr @trace_event_reg, ptr @trace_event_fields_brcms_txdesc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_brcms_txdesc, i64 24), ptr getelementptr (i8, ptr @event_class_brcms_txdesc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_brcms_txdesc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_brcms_txdesc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_brcms_txdesc = internal global { [30 x i8], [34 x i8] } { [30 x i8] c"\22[%s] txdesc\22, __get_str(dev)\00", [34 x i8] zeroinitializer }, align 32
@event_brcms_txdesc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_txdesc, %union.anon.98 { ptr @__tracepoint_brcms_txdesc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_txdesc }, ptr @print_fmt_brcms_txdesc, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_txdesc = internal global ptr @event_brcms_txdesc, section "_ftrace_events", align 4
@trace_event_fields_brcms_txstatus = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.21, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.22, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.23, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.24, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.25, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.26, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.27, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_brcms_txstatus = internal global %struct.trace_event_class { ptr @str__brcmsmac_tx__trace_system_name, ptr @trace_event_raw_event_brcms_txstatus, ptr @perf_trace_brcms_txstatus, ptr @trace_event_reg, ptr @trace_event_fields_brcms_txstatus, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_brcms_txstatus, i64 24), ptr getelementptr (i8, ptr @event_class_brcms_txstatus, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_brcms_txstatus = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_brcms_txstatus, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_brcms_txstatus = internal global { [198 x i8], [58 x i8] } { [198 x i8] c"\22[%s] FrameId %#04x TxStatus %#04x LastTxTime %#04x Seq %#04x PHYTxStatus %#04x RxAck %#04x\22, __get_str(dev), REC->frameid, REC->status, REC->lasttxtime, REC->sequence, REC->phyerr, REC->ackphyrxsh\00", [58 x i8] zeroinitializer }, align 32
@event_brcms_txstatus = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_txstatus, %union.anon.98 { ptr @__tracepoint_brcms_txstatus }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_txstatus }, ptr @print_fmt_brcms_txstatus, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_txstatus = internal global ptr @event_brcms_txstatus, section "_ftrace_events", align 4
@trace_event_fields_brcms_ampdu_session = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.96 { %struct.anon.97 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.31, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.32, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.33, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.96 { %struct.anon.97 { ptr @.str.34, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_brcms_ampdu_session = internal global %struct.trace_event_class { ptr @str__brcmsmac_tx__trace_system_name, ptr @trace_event_raw_event_brcms_ampdu_session, ptr @perf_trace_brcms_ampdu_session, ptr @trace_event_reg, ptr @trace_event_fields_brcms_ampdu_session, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_brcms_ampdu_session, i64 24), ptr getelementptr (i8, ptr @event_class_brcms_ampdu_session, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_brcms_ampdu_session = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_brcms_ampdu_session, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_brcms_ampdu_session = internal global { [182 x i8], [42 x i8] } { [182 x i8] c"\22[%s] ampdu session max_len=%u max_frames=%u len=%u frames=%u dma_len=%u\22, __get_str(dev), REC->max_ampdu_len, REC->max_ampdu_frames, REC->ampdu_len, REC->ampdu_frames, REC->dma_len\00", [42 x i8] zeroinitializer }, align 32
@event_brcms_ampdu_session = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_ampdu_session, %union.anon.98 { ptr @__tracepoint_brcms_ampdu_session }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_ampdu_session }, ptr @print_fmt_brcms_ampdu_session, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_ampdu_session = internal global ptr @event_brcms_ampdu_session, section "_ftrace_events", align 4
@__bpf_trace_tp_map_brcms_txdesc = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_txdesc, ptr @__bpf_trace_brcms_txdesc, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_brcms_txstatus = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_txstatus, ptr @__bpf_trace_brcms_txstatus, i32 8, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_brcms_ampdu_session = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_ampdu_session, ptr @__bpf_trace_brcms_ampdu_session, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__tpstrtab_brcms_info = internal constant [11 x i8] c"brcms_info\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_info = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_info }, align 4
@__tracepoint_brcms_info = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_info, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_info, ptr null, ptr @__traceiter_brcms_info, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_info = internal constant ptr @__tracepoint_brcms_info, section "__tracepoints_ptrs", align 4
@__tpstrtab_brcms_warn = internal constant [11 x i8] c"brcms_warn\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_warn = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_warn }, align 4
@__tracepoint_brcms_warn = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_warn, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_warn, ptr null, ptr @__traceiter_brcms_warn, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_warn = internal constant ptr @__tracepoint_brcms_warn, section "__tracepoints_ptrs", align 4
@__tpstrtab_brcms_err = internal constant [10 x i8] c"brcms_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_err = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_err }, align 4
@__tracepoint_brcms_err = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_err, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_err, ptr null, ptr @__traceiter_brcms_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_err = internal constant ptr @__tracepoint_brcms_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_brcms_crit = internal constant [11 x i8] c"brcms_crit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_crit = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_crit }, align 4
@__tracepoint_brcms_crit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_crit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_crit, ptr null, ptr @__traceiter_brcms_crit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_crit = internal constant ptr @__tracepoint_brcms_crit, section "__tracepoints_ptrs", align 4
@__tpstrtab_brcms_dbg = internal constant [10 x i8] c"brcms_dbg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_brcms_dbg = dso_local global %struct.static_call_key { ptr @__traceiter_brcms_dbg }, align 4
@__tracepoint_brcms_dbg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_brcms_dbg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_brcms_dbg, ptr null, ptr @__traceiter_brcms_dbg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_brcms_dbg = internal constant ptr @__tracepoint_brcms_dbg, section "__tracepoints_ptrs", align 4
@str__brcmsmac_msg__trace_system_name = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcmsmac_msg\00", [19 x i8] zeroinitializer }, align 32
@trace_event_fields_brcms_msg_event = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_brcms_msg_event = internal global %struct.trace_event_class { ptr @str__brcmsmac_msg__trace_system_name, ptr @trace_event_raw_event_brcms_msg_event, ptr @perf_trace_brcms_msg_event, ptr @trace_event_reg, ptr @trace_event_fields_brcms_msg_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_brcms_msg_event, i64 24), ptr getelementptr (i8, ptr @event_class_brcms_msg_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_brcms_msg_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_brcms_msg_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_brcms_msg_event = internal global { [21 x i8], [43 x i8] } { [21 x i8] c"\22%s\22, __get_str(msg)\00", [43 x i8] zeroinitializer }, align 32
@event_brcms_info = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_msg_event, %union.anon.98 { ptr @__tracepoint_brcms_info }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_msg_event }, ptr @print_fmt_brcms_msg_event, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_info = internal global ptr @event_brcms_info, section "_ftrace_events", align 4
@event_brcms_warn = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_msg_event, %union.anon.98 { ptr @__tracepoint_brcms_warn }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_msg_event }, ptr @print_fmt_brcms_msg_event, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_warn = internal global ptr @event_brcms_warn, section "_ftrace_events", align 4
@event_brcms_err = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_msg_event, %union.anon.98 { ptr @__tracepoint_brcms_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_msg_event }, ptr @print_fmt_brcms_msg_event, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_err = internal global ptr @event_brcms_err, section "_ftrace_events", align 4
@event_brcms_crit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_msg_event, %union.anon.98 { ptr @__tracepoint_brcms_crit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_msg_event }, ptr @print_fmt_brcms_msg_event, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_crit = internal global ptr @event_brcms_crit, section "_ftrace_events", align 4
@trace_event_fields_brcms_dbg = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon.96 { %struct.anon.97 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_brcms_dbg = internal global %struct.trace_event_class { ptr @str__brcmsmac_msg__trace_system_name, ptr @trace_event_raw_event_brcms_dbg, ptr @perf_trace_brcms_dbg, ptr @trace_event_reg, ptr @trace_event_fields_brcms_dbg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_brcms_dbg, i64 24), ptr getelementptr (i8, ptr @event_class_brcms_dbg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_brcms_dbg = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_brcms_dbg, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_brcms_dbg = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\22%s: %s\22, __get_str(func), __get_str(msg)\00", [54 x i8] zeroinitializer }, align 32
@event_brcms_dbg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_brcms_dbg, %union.anon.98 { ptr @__tracepoint_brcms_dbg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_brcms_dbg }, ptr @print_fmt_brcms_dbg, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_brcms_dbg = internal global ptr @event_brcms_dbg, section "_ftrace_events", align 4
@__bpf_trace_tp_map_brcms_info = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_info, ptr @__bpf_trace_brcms_msg_event, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_brcms_warn = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_warn, ptr @__bpf_trace_brcms_msg_event, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_brcms_err = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_err, ptr @__bpf_trace_brcms_msg_event, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_brcms_crit = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_crit, ptr @__bpf_trace_brcms_msg_event, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_brcms_dbg = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_brcms_dbg, ptr @__bpf_trace_brcms_dbg, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uint\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ms\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"periodic\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ms=%u set=%u periodic=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"data=%p\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in_isr\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"macintstatus\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s] in_isr=%d macintstatus=%#x mask=%#x\0A\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__data_loc u8[]\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"txh\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[%s] txdesc\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"framelen\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"frameid\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lasttxtime\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sequence\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phyerr\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ackphyrxsh\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"[%s] FrameId %#04x TxStatus %#04x LastTxTime %#04x Seq %#04x PHYTxStatus %#04x RxAck %#04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_ampdu_len\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_ampdu_frames\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ampdu_len\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ampdu_frames\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dma_len\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"[%s] ampdu session max_len=%u max_frames=%u len=%u frames=%u dma_len=%u\0A\00", [55 x i8] zeroinitializer }, align 32
@trace_event_raw_event_brcms_msg_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_msg.h\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@trace_event_raw_event_brcms_dbg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"func\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@perf_trace_brcms_msg_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@perf_trace_brcms_dbg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_ = private constant [73 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcms_trace_events.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [33 x i8] c"str__brcmsmac__trace_system_name\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [31 x i8] c"trace_event_fields_brcms_timer\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_brcms_timer\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"print_fmt_brcms_timer\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"event_brcms_timer\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [29 x i8] c"trace_event_fields_brcms_dpc\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_brcms_dpc\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"print_fmt_brcms_dpc\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"event_brcms_dpc\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [38 x i8] c"trace_event_fields_brcms_macintstatus\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_brcms_macintstatus\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [29 x i8] c"print_fmt_brcms_macintstatus\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"event_brcms_macintstatus\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [36 x i8] c"str__brcmsmac_tx__trace_system_name\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [32 x i8] c"trace_event_fields_brcms_txdesc\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_brcms_txdesc\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"print_fmt_brcms_txdesc\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"event_brcms_txdesc\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [34 x i8] c"trace_event_fields_brcms_txstatus\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_brcms_txstatus\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [25 x i8] c"print_fmt_brcms_txstatus\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"event_brcms_txstatus\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [39 x i8] c"trace_event_fields_brcms_ampdu_session\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_brcms_ampdu_session\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"print_fmt_brcms_ampdu_session\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [26 x i8] c"event_brcms_ampdu_session\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [37 x i8] c"str__brcmsmac_msg__trace_system_name\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 36, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [35 x i8] c"trace_event_fields_brcms_msg_event\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_brcms_msg_event\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [26 x i8] c"print_fmt_brcms_msg_event\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"event_brcms_info\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 41, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"event_brcms_warn\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 46, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"event_brcms_err\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 51, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"event_brcms_crit\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 56, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant [29 x i8] c"trace_event_fields_brcms_dbg\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_brcms_dbg\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"print_fmt_brcms_dbg\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"event_brcms_dbg\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 29, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 58, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [77 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 73, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 25, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 40, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant [80 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_tx.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 73, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 27, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [81 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_msg.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 61, i32 1 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__bpf_trace_tp_map_brcms_ampdu_session, ptr @__bpf_trace_tp_map_brcms_crit, ptr @__bpf_trace_tp_map_brcms_dbg, ptr @__bpf_trace_tp_map_brcms_dpc, ptr @__bpf_trace_tp_map_brcms_err, ptr @__bpf_trace_tp_map_brcms_info, ptr @__bpf_trace_tp_map_brcms_macintstatus, ptr @__bpf_trace_tp_map_brcms_timer, ptr @__bpf_trace_tp_map_brcms_txdesc, ptr @__bpf_trace_tp_map_brcms_txstatus, ptr @__bpf_trace_tp_map_brcms_warn, ptr @__event_brcms_ampdu_session, ptr @__event_brcms_crit, ptr @__event_brcms_dbg, ptr @__event_brcms_dpc, ptr @__event_brcms_err, ptr @__event_brcms_info, ptr @__event_brcms_macintstatus, ptr @__event_brcms_timer, ptr @__event_brcms_txdesc, ptr @__event_brcms_txstatus, ptr @__event_brcms_warn, ptr @__tracepoint_brcms_ampdu_session, ptr @__tracepoint_brcms_crit, ptr @__tracepoint_brcms_dbg, ptr @__tracepoint_brcms_dpc, ptr @__tracepoint_brcms_err, ptr @__tracepoint_brcms_info, ptr @__tracepoint_brcms_macintstatus, ptr @__tracepoint_brcms_timer, ptr @__tracepoint_brcms_txdesc, ptr @__tracepoint_brcms_txstatus, ptr @__tracepoint_brcms_warn, ptr @__tracepoint_ptr_brcms_ampdu_session, ptr @__tracepoint_ptr_brcms_crit, ptr @__tracepoint_ptr_brcms_dbg, ptr @__tracepoint_ptr_brcms_dpc, ptr @__tracepoint_ptr_brcms_err, ptr @__tracepoint_ptr_brcms_info, ptr @__tracepoint_ptr_brcms_macintstatus, ptr @__tracepoint_ptr_brcms_timer, ptr @__tracepoint_ptr_brcms_txdesc, ptr @__tracepoint_ptr_brcms_txstatus, ptr @__tracepoint_ptr_brcms_warn, ptr @event_brcms_ampdu_session, ptr @event_brcms_crit, ptr @event_brcms_dbg, ptr @event_brcms_dpc, ptr @event_brcms_err, ptr @event_brcms_info, ptr @event_brcms_macintstatus, ptr @event_brcms_timer, ptr @event_brcms_txdesc, ptr @event_brcms_txstatus, ptr @event_brcms_warn, ptr @event_class_brcms_ampdu_session, ptr @event_class_brcms_dbg, ptr @event_class_brcms_dpc, ptr @event_class_brcms_macintstatus, ptr @event_class_brcms_msg_event, ptr @event_class_brcms_timer, ptr @event_class_brcms_txdesc, ptr @event_class_brcms_txstatus, ptr @str__brcmsmac__trace_system_name, ptr @trace_event_fields_brcms_timer, ptr @trace_event_type_funcs_brcms_timer, ptr @print_fmt_brcms_timer, ptr @trace_event_fields_brcms_dpc, ptr @trace_event_type_funcs_brcms_dpc, ptr @print_fmt_brcms_dpc, ptr @trace_event_fields_brcms_macintstatus, ptr @trace_event_type_funcs_brcms_macintstatus, ptr @print_fmt_brcms_macintstatus, ptr @str__brcmsmac_tx__trace_system_name, ptr @trace_event_fields_brcms_txdesc, ptr @trace_event_type_funcs_brcms_txdesc, ptr @print_fmt_brcms_txdesc, ptr @trace_event_fields_brcms_txstatus, ptr @trace_event_type_funcs_brcms_txstatus, ptr @print_fmt_brcms_txstatus, ptr @trace_event_fields_brcms_ampdu_session, ptr @trace_event_type_funcs_brcms_ampdu_session, ptr @print_fmt_brcms_ampdu_session, ptr @str__brcmsmac_msg__trace_system_name, ptr @trace_event_fields_brcms_msg_event, ptr @trace_event_type_funcs_brcms_msg_event, ptr @print_fmt_brcms_msg_event, ptr @trace_event_fields_brcms_dbg, ptr @trace_event_type_funcs_brcms_dbg, ptr @print_fmt_brcms_dbg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__brcmsmac__trace_system_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_brcms_timer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_brcms_timer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_brcms_timer to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_timer to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_brcms_dpc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_brcms_dpc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_brcms_dpc to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_dpc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_brcms_macintstatus to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_brcms_macintstatus to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_brcms_macintstatus to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_macintstatus to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__brcmsmac_tx__trace_system_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_brcms_txdesc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_brcms_txdesc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_brcms_txdesc to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_txdesc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_brcms_txstatus to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_brcms_txstatus to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_brcms_txstatus to i32), i32 198, i32 256, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_txstatus to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_brcms_ampdu_session to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_brcms_ampdu_session to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_brcms_ampdu_session to i32), i32 182, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_ampdu_session to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__brcmsmac_msg__trace_system_name to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_brcms_msg_event to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_brcms_msg_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_brcms_msg_event to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_warn to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_crit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_brcms_dbg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_brcms_dbg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_brcms_dbg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_brcms_dbg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_timer(ptr nocapture readnone %__data, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_timer, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %t) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_dpc(ptr nocapture readnone %__data, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_dpc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, i32 noundef %data) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_macintstatus(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %in_isr, i32 noundef %macintstatus, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_macintstatus, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %in_isr, i32 noundef %macintstatus, i32 noundef %mask) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_brcms_timer(ptr noundef %__data, ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !181

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !182

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ms = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 4
  %3 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ms, align 4
  %ms6 = getelementptr inbounds %struct.trace_event_raw_brcms_timer, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %ms6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ms6, align 4
  %set = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 6
  %6 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %set, align 1, !range !183
  %8 = zext i8 %7 to i32
  %set8 = getelementptr inbounds %struct.trace_event_raw_brcms_timer, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %set8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %set8, align 4
  %periodic = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 5
  %10 = ptrtoint ptr %periodic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %periodic, align 4, !range !183
  %12 = zext i8 %11 to i32
  %periodic11 = getelementptr inbounds %struct.trace_event_raw_brcms_timer, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %periodic11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %periodic11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_brcms_timer(ptr noundef %__data, ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !184
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !171) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !171) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ms = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 4
  %27 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ms, align 4
  %ms17 = getelementptr inbounds %struct.trace_event_raw_brcms_timer, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %ms17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ms17, align 4
  %set = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 6
  %30 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %set, align 1, !range !183
  %32 = zext i8 %31 to i32
  %set19 = getelementptr inbounds %struct.trace_event_raw_brcms_timer, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %set19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %set19, align 4
  %periodic = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 5
  %34 = ptrtoint ptr %periodic to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %periodic, align 4, !range !183
  %36 = zext i8 %35 to i32
  %periodic22 = getelementptr inbounds %struct.trace_event_raw_brcms_timer, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %periodic22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %periodic22, align 4
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_brcms_dpc(ptr noundef %__data, i32 noundef %data) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !181

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !182

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data6 = getelementptr inbounds %struct.trace_event_raw_brcms_dpc, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %data, ptr %data6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_brcms_dpc(ptr noundef %__data, i32 noundef %data) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !184
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !171) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !171) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %data17 = getelementptr inbounds %struct.trace_event_raw_brcms_dpc, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %data17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %data, ptr %data17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_brcms_macintstatus(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %in_isr, i32 noundef %macintstatus, i32 noundef %mask) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !181

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !182

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_brcms_macintstatus.exit_crit_edge

if.end.trace_event_get_offsets_brcms_macintstatus.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_brcms_macintstatus.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %tobool.not.i31 = icmp eq ptr %6, null
  %spec.select = select i1 %tobool.not.i31, ptr @.str.8, ptr %6
  br label %trace_event_get_offsets_brcms_macintstatus.exit

trace_event_get_offsets_brcms_macintstatus.exit:  ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_brcms_macintstatus.exit_crit_edge
  %cond.i = phi ptr [ %4, %if.end.trace_event_get_offsets_brcms_macintstatus.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #11
  %add = add i32 %call3.i, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_brcms_macintstatus.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_brcms_macintstatus.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_brcms_macintstatus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_brcms_macintstatus.exit
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65560
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_dev, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i32 = icmp eq ptr %9, null
  br i1 %tobool.not.i32, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i37

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i37:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i37, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %13, %if.end.i37 ], [ %9, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %in_isr12 = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %in_isr12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %in_isr, ptr %in_isr12, align 4
  %macintstatus13 = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %macintstatus13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %macintstatus, ptr %macintstatus13, align 4
  %mask14 = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %mask14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mask, ptr %mask14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_brcms_macintstatus.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_brcms_macintstatus(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %in_isr, i32 noundef %macintstatus, i32 noundef %mask) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !184
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_brcms_macintstatus.exit_crit_edge

entry.trace_event_get_offsets_brcms_macintstatus.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_brcms_macintstatus.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.8, ptr %5
  br label %trace_event_get_offsets_brcms_macintstatus.exit

trace_event_get_offsets_brcms_macintstatus.exit:  ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_brcms_macintstatus.exit_crit_edge
  %cond.i = phi ptr [ %3, %entry.trace_event_get_offsets_brcms_macintstatus.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #11
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65560
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !171) #8
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_brcms_macintstatus.exit.if.end_crit_edge

trace_event_get_offsets_brcms_macintstatus.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_brcms_macintstatus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_brcms_macintstatus.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i55.not = icmp eq ptr %19, null
  br i1 %tobool.not.i55.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_brcms_macintstatus.exit.if.end_crit_edge
  %add12 = add i32 %call3.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #8
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !171) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_dev, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i56 = icmp eq ptr %33, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %tobool21.not = icmp eq ptr %35, null
  br i1 %tobool21.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i59

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i59:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i59, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %37, %if.end.i59 ], [ %33, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %in_isr24 = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %in_isr24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %in_isr, ptr %in_isr24, align 4
  %macintstatus25 = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %macintstatus25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %macintstatus, ptr %macintstatus25, align 4
  %mask26 = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %mask26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mask, ptr %mask26, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %15, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_brcms_timer(ptr noundef %__data, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %t to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_brcms_dpc(ptr noundef %__data, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %data to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_brcms_macintstatus(ptr noundef %__data, ptr noundef %dev, i32 noundef %in_isr, i32 noundef %macintstatus, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %in_isr to i64
  %conv8 = zext i32 %macintstatus to i64
  %conv12 = zext i32 %mask to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_txdesc(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %txh, i32 noundef %txh_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_txdesc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %txh, i32 noundef %txh_len) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_txstatus(ptr nocapture readnone %__data, ptr noundef %dev, i16 noundef zeroext %framelen, i16 noundef zeroext %frameid, i16 noundef zeroext %status, i16 noundef zeroext %lasttxtime, i16 noundef zeroext %sequence, i16 noundef zeroext %phyerr, i16 noundef zeroext %ackphyrxsh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_txstatus, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i16 noundef zeroext %framelen, i16 noundef zeroext %frameid, i16 noundef zeroext %status, i16 noundef zeroext %lasttxtime, i16 noundef zeroext %sequence, i16 noundef zeroext %phyerr, i16 noundef zeroext %ackphyrxsh) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_ampdu_session(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %max_ampdu_len, i16 noundef zeroext %max_ampdu_frames, i16 noundef zeroext %ampdu_len, i16 noundef zeroext %ampdu_frames, i16 noundef zeroext %dma_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_ampdu_session, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %max_ampdu_len, i16 noundef zeroext %max_ampdu_frames, i16 noundef zeroext %ampdu_len, i16 noundef zeroext %ampdu_frames, i16 noundef zeroext %dma_len) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_brcms_txdesc(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %txh, i32 noundef %txh_len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !181

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !182

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_brcms_txdesc.exit_crit_edge

if.end.trace_event_get_offsets_brcms_txdesc.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_brcms_txdesc.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %tobool.not.i31 = icmp eq ptr %6, null
  %spec.select = select i1 %tobool.not.i31, ptr @.str.8, ptr %6
  br label %trace_event_get_offsets_brcms_txdesc.exit

trace_event_get_offsets_brcms_txdesc.exit:        ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_brcms_txdesc.exit_crit_edge
  %cond.i = phi ptr [ %4, %if.end.trace_event_get_offsets_brcms_txdesc.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #11
  %add.i = add i32 %call3.i, 1
  %add14.i = add i32 %txh_len, 16
  %add = add i32 %add14.i, %add.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_brcms_txdesc.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_brcms_txdesc.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_brcms_txdesc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_brcms_txdesc.exit
  %add9.i = add i32 %call3.i, 17
  %shl11.i = shl i32 %txh_len, 16
  %or13.i = or i32 %add9.i, %shl11.i
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 16
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_txdesc, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_dev, align 4
  %__data_loc_txh = getelementptr inbounds %struct.trace_event_raw_brcms_txdesc, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %__data_loc_txh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or13.i, ptr %__data_loc_txh, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i32 = icmp eq ptr %10, null
  br i1 %tobool.not.i32, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i37

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i37:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i37, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %14, %if.end.i37 ], [ %10, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %15 = ptrtoint ptr %__data_loc_txh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__data_loc_txh, align 4
  %and14 = and i32 %16, 65535
  %add.ptr15 = getelementptr i8, ptr %call3, i32 %and14
  %17 = call ptr @memcpy(ptr %add.ptr15, ptr %txh, i32 %txh_len)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_brcms_txdesc.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_brcms_txdesc(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %txh, i32 noundef %txh_len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !184
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_brcms_txdesc.exit_crit_edge

entry.trace_event_get_offsets_brcms_txdesc.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_brcms_txdesc.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.8, ptr %5
  br label %trace_event_get_offsets_brcms_txdesc.exit

trace_event_get_offsets_brcms_txdesc.exit:        ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_brcms_txdesc.exit_crit_edge
  %cond.i = phi ptr [ %3, %entry.trace_event_get_offsets_brcms_txdesc.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #11
  %add.i = add i32 %call3.i, 1
  %shl.i = shl i32 %add.i, 16
  %or.i = or i32 %shl.i, 16
  %add9.i = add i32 %call3.i, 17
  %shl11.i = shl i32 %txh_len, 16
  %or13.i = or i32 %add9.i, %shl11.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !171) #8
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_brcms_txdesc.exit.if.end_crit_edge

trace_event_get_offsets_brcms_txdesc.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_brcms_txdesc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_brcms_txdesc.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i55.not = icmp eq ptr %19, null
  br i1 %tobool.not.i55.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_brcms_txdesc.exit.if.end_crit_edge
  %add14.i = add i32 %txh_len, 27
  %add12 = add i32 %add14.i, %add.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #8
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !171) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_txdesc, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_dev, align 4
  %__data_loc_txh = getelementptr inbounds %struct.trace_event_raw_brcms_txdesc, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %__data_loc_txh to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or13.i, ptr %__data_loc_txh, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i56 = icmp eq ptr %34, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %tobool22.not = icmp eq ptr %36, null
  br i1 %tobool22.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i59

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i59:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i59, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %38, %if.end.i59 ], [ %34, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %39 = ptrtoint ptr %__data_loc_txh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %__data_loc_txh, align 4
  %and26 = and i32 %40, 65535
  %add.ptr27 = getelementptr i8, ptr %call13, i32 %and26
  %41 = call ptr @memcpy(ptr %add.ptr27, ptr %txh, i32 %txh_len)
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %15, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_brcms_txstatus(ptr noundef %__data, ptr nocapture noundef readonly %dev, i16 noundef zeroext %framelen, i16 noundef zeroext %frameid, i16 noundef zeroext %status, i16 noundef zeroext %lasttxtime, i16 noundef zeroext %sequence, i16 noundef zeroext %phyerr, i16 noundef zeroext %ackphyrxsh) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !181

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !182

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_brcms_txstatus.exit_crit_edge

if.end.trace_event_get_offsets_brcms_txstatus.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_brcms_txstatus.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %tobool.not.i43 = icmp eq ptr %6, null
  %spec.select = select i1 %tobool.not.i43, ptr @.str.8, ptr %6
  br label %trace_event_get_offsets_brcms_txstatus.exit

trace_event_get_offsets_brcms_txstatus.exit:      ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_brcms_txstatus.exit_crit_edge
  %cond.i = phi ptr [ %4, %if.end.trace_event_get_offsets_brcms_txstatus.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #11
  %add = add i32 %call3.i, 29
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_brcms_txstatus.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_brcms_txstatus.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_brcms_txstatus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_brcms_txstatus.exit
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65562
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_dev, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 26
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i44 = icmp eq ptr %9, null
  br i1 %tobool.not.i44, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i49

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i49:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i49, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %13, %if.end.i49 ], [ %9, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %framelen12 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %framelen12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %framelen, ptr %framelen12, align 4
  %frameid13 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %frameid13 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %frameid, ptr %frameid13, align 2
  %status14 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %status14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %status, ptr %status14, align 4
  %lasttxtime15 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %lasttxtime15 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %lasttxtime, ptr %lasttxtime15, align 2
  %sequence16 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %sequence16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %sequence, ptr %sequence16, align 4
  %phyerr17 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call3, i32 0, i32 7
  %19 = ptrtoint ptr %phyerr17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %phyerr, ptr %phyerr17, align 2
  %ackphyrxsh18 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call3, i32 0, i32 8
  %20 = ptrtoint ptr %ackphyrxsh18 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %ackphyrxsh, ptr %ackphyrxsh18, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_brcms_txstatus.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_brcms_txstatus(ptr noundef %__data, ptr nocapture noundef readonly %dev, i16 noundef zeroext %framelen, i16 noundef zeroext %frameid, i16 noundef zeroext %status, i16 noundef zeroext %lasttxtime, i16 noundef zeroext %sequence, i16 noundef zeroext %phyerr, i16 noundef zeroext %ackphyrxsh) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !184
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_brcms_txstatus.exit_crit_edge

entry.trace_event_get_offsets_brcms_txstatus.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_brcms_txstatus.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.8, ptr %5
  br label %trace_event_get_offsets_brcms_txstatus.exit

trace_event_get_offsets_brcms_txstatus.exit:      ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_brcms_txstatus.exit_crit_edge
  %cond.i = phi ptr [ %3, %entry.trace_event_get_offsets_brcms_txstatus.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #11
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65562
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !171) #8
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_brcms_txstatus.exit.if.end_crit_edge

trace_event_get_offsets_brcms_txstatus.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_brcms_txstatus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_brcms_txstatus.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i67.not = icmp eq ptr %19, null
  br i1 %tobool.not.i67.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_brcms_txstatus.exit.if.end_crit_edge
  %add12 = add i32 %call3.i, 40
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #8
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !171) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_dev, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 26
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i68 = icmp eq ptr %33, null
  br i1 %tobool.not.i68, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %tobool21.not = icmp eq ptr %35, null
  br i1 %tobool21.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i71

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i71:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i71, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %37, %if.end.i71 ], [ %33, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %framelen24 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %framelen24 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %framelen, ptr %framelen24, align 4
  %frameid25 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %frameid25 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %frameid, ptr %frameid25, align 2
  %status26 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %status26 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %status, ptr %status26, align 4
  %lasttxtime27 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %lasttxtime27 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %lasttxtime, ptr %lasttxtime27, align 2
  %sequence28 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call13, i32 0, i32 6
  %42 = ptrtoint ptr %sequence28 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %sequence, ptr %sequence28, align 4
  %phyerr29 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call13, i32 0, i32 7
  %43 = ptrtoint ptr %phyerr29 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %phyerr, ptr %phyerr29, align 2
  %ackphyrxsh30 = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %call13, i32 0, i32 8
  %44 = ptrtoint ptr %ackphyrxsh30 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %ackphyrxsh, ptr %ackphyrxsh30, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %15, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_brcms_ampdu_session(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %max_ampdu_len, i16 noundef zeroext %max_ampdu_frames, i16 noundef zeroext %ampdu_len, i16 noundef zeroext %ampdu_frames, i16 noundef zeroext %dma_len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !181

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !182

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_brcms_ampdu_session.exit_crit_edge

if.end.trace_event_get_offsets_brcms_ampdu_session.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_brcms_ampdu_session.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %tobool.not.i37 = icmp eq ptr %6, null
  %spec.select = select i1 %tobool.not.i37, ptr @.str.8, ptr %6
  br label %trace_event_get_offsets_brcms_ampdu_session.exit

trace_event_get_offsets_brcms_ampdu_session.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_brcms_ampdu_session.exit_crit_edge
  %cond.i = phi ptr [ %4, %if.end.trace_event_get_offsets_brcms_ampdu_session.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #11
  %add = add i32 %call3.i, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_brcms_ampdu_session.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_brcms_ampdu_session.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_brcms_ampdu_session.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_brcms_ampdu_session.exit
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65560
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_dev, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i38 = icmp eq ptr %9, null
  br i1 %tobool.not.i38, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i43

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i43:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i43, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %13, %if.end.i43 ], [ %9, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %max_ampdu_len12 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %max_ampdu_len12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %max_ampdu_len, ptr %max_ampdu_len12, align 4
  %max_ampdu_frames13 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %max_ampdu_frames13 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %max_ampdu_frames, ptr %max_ampdu_frames13, align 4
  %ampdu_len14 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %ampdu_len14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %ampdu_len, ptr %ampdu_len14, align 2
  %ampdu_frames15 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %ampdu_frames15 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %ampdu_frames, ptr %ampdu_frames15, align 4
  %dma_len16 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %dma_len16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %dma_len, ptr %dma_len16, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_brcms_ampdu_session.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_brcms_ampdu_session(ptr noundef %__data, ptr nocapture noundef readonly %dev, i32 noundef %max_ampdu_len, i16 noundef zeroext %max_ampdu_frames, i16 noundef zeroext %ampdu_len, i16 noundef zeroext %ampdu_frames, i16 noundef zeroext %dma_len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !184
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_brcms_ampdu_session.exit_crit_edge

entry.trace_event_get_offsets_brcms_ampdu_session.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %trace_event_get_offsets_brcms_ampdu_session.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.8, ptr %5
  br label %trace_event_get_offsets_brcms_ampdu_session.exit

trace_event_get_offsets_brcms_ampdu_session.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_brcms_ampdu_session.exit_crit_edge
  %cond.i = phi ptr [ %3, %entry.trace_event_get_offsets_brcms_ampdu_session.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #11
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65560
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !171) #8
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_brcms_ampdu_session.exit.if.end_crit_edge

trace_event_get_offsets_brcms_ampdu_session.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_brcms_ampdu_session.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_brcms_ampdu_session.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i61.not = icmp eq ptr %19, null
  br i1 %tobool.not.i61.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_brcms_ampdu_session.exit.if.end_crit_edge
  %add12 = add i32 %call3.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #8
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !171) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_dev, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i62 = icmp eq ptr %33, null
  br i1 %tobool.not.i62, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %tobool21.not = icmp eq ptr %35, null
  br i1 %tobool21.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i65

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.i65:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i65, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %37, %if.end.i65 ], [ %33, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #12
  %max_ampdu_len24 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %max_ampdu_len24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %max_ampdu_len, ptr %max_ampdu_len24, align 4
  %max_ampdu_frames25 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %max_ampdu_frames25 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %max_ampdu_frames, ptr %max_ampdu_frames25, align 4
  %ampdu_len26 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %ampdu_len26 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %ampdu_len, ptr %ampdu_len26, align 2
  %ampdu_frames27 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %ampdu_frames27 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %ampdu_frames, ptr %ampdu_frames27, align 4
  %dma_len28 = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %call13, i32 0, i32 6
  %42 = ptrtoint ptr %dma_len28 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %dma_len, ptr %dma_len28, align 2
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %15, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_brcms_txdesc(ptr noundef %__data, ptr noundef %dev, ptr noundef %txh, i32 noundef %txh_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %txh to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %txh_len to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_brcms_txstatus(ptr noundef %__data, ptr noundef %dev, i16 noundef zeroext %framelen, i16 noundef zeroext %frameid, i16 noundef zeroext %status, i16 noundef zeroext %lasttxtime, i16 noundef zeroext %sequence, i16 noundef zeroext %phyerr, i16 noundef zeroext %ackphyrxsh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i16 %framelen to i64
  %conv8 = zext i16 %frameid to i64
  %conv12 = zext i16 %status to i64
  %conv16 = zext i16 %lasttxtime to i64
  %conv20 = zext i16 %sequence to i64
  %conv24 = zext i16 %phyerr to i64
  %conv28 = zext i16 %ackphyrxsh to i64
  tail call void @bpf_trace_run8(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24, i64 noundef %conv28) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_brcms_ampdu_session(ptr noundef %__data, ptr noundef %dev, i32 noundef %max_ampdu_len, i16 noundef zeroext %max_ampdu_frames, i16 noundef zeroext %ampdu_len, i16 noundef zeroext %ampdu_frames, i16 noundef zeroext %dma_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %max_ampdu_len to i64
  %conv8 = zext i16 %max_ampdu_frames to i64
  %conv12 = zext i16 %ampdu_len to i64
  %conv16 = zext i16 %ampdu_frames to i64
  %conv20 = zext i16 %dma_len to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_info(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_info, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_warn(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_warn, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_err(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_err, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_crit(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_crit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_brcms_dbg(ptr nocapture readnone %__data, i32 noundef %level, ptr noundef %func, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_brcms_dbg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, i32 noundef %level, ptr noundef %func, ptr noundef %vaf) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_brcms_msg_event(ptr noundef %__data, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !181

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !182

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 112) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_brcms_msg_event, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6553612, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %7, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef 100, ptr noundef %5, [1 x i32] %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call7)
  %cmp = icmp sgt i32 %call7, 99
  br i1 %cmp, label %land.rhs, label %if.end5.if.end37_crit_edge

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.rhs:                                         ; preds = %if.end5
  %.b57 = load i1, ptr @trace_event_raw_event_brcms_msg_event.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end37_crit_edge, label %if.then15, !prof !181

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_event_raw_event_brcms_msg_event.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 36, i32 noundef 9, ptr noundef null) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then15, %land.rhs.if.end37_crit_edge, %if.end5.if.end37_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_brcms_msg_event(ptr noundef %__data, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !184
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !171) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 116, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !171) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_brcms_msg_event, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6553612, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 12
  %28 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %30 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %va, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack = load i32, ptr %31, align 4
  %33 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call19 = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef 100, ptr noundef %29, [1 x i32] %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call19)
  %cmp = icmp sgt i32 %call19, 99
  br i1 %cmp, label %land.rhs, label %if.end16.if.end59_crit_edge

if.end16.if.end59_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.rhs:                                         ; preds = %if.end16
  %.b91 = load i1, ptr @perf_trace_brcms_msg_event.__already_done, align 1
  br i1 %.b91, label %land.rhs.if.end59_crit_edge, label %if.then33, !prof !181

land.rhs.if.end59_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then33:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @perf_trace_brcms_msg_event.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 36, i32 noundef 9, ptr noundef null) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then33, %land.rhs.if.end59_crit_edge, %if.end16.if.end59_crit_edge
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 116, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_brcms_dbg(ptr noundef %__data, i32 noundef %level, ptr noundef readonly %func, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !181

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !182

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i72 = icmp eq ptr %func, null
  %spec.select.i = select i1 %tobool.not.i72, ptr @.str.8, ptr %func
  %call.i73 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add = add i32 %call.i73, 121
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add6.i = add i32 %call.i73, 21
  %or9.i = or i32 %add6.i, 6553600
  %add.i = shl i32 %call.i73, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_func = getelementptr inbounds %struct.trace_event_raw_brcms_dbg, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_func to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_func, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_brcms_dbg, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or9.i, ptr %__data_loc_msg, align 4
  %level7 = getelementptr inbounds %struct.trace_event_raw_brcms_dbg, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %level7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %level, ptr %level7, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %and12 = and i32 %add6.i, 65535
  %add.ptr13 = getelementptr i8, ptr %call3, i32 %and12
  %6 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %8 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %va, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %9, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call14 = call i32 @vsnprintf(ptr noundef %add.ptr13, i32 noundef 100, ptr noundef %7, [1 x i32] %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call14)
  %cmp = icmp sgt i32 %call14, 99
  br i1 %cmp, label %land.rhs, label %if.end5.if.end44_crit_edge

if.end5.if.end44_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.rhs:                                         ; preds = %if.end5
  %.b71 = load i1, ptr @trace_event_raw_event_brcms_dbg.__already_done, align 1
  br i1 %.b71, label %land.rhs.if.end44_crit_edge, label %if.then22, !prof !181

land.rhs.if.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_event_raw_event_brcms_dbg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 74, i32 noundef 9, ptr noundef null) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then22, %land.rhs.if.end44_crit_edge, %if.end5.if.end44_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_brcms_dbg(ptr noundef %__data, i32 noundef %level, ptr noundef readonly %func, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !184
  %tobool.not.i = icmp eq ptr %func, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.8, ptr %func
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65556
  %add6.i = add i32 %call.i, 21
  %or9.i = or i32 %add6.i, 6553600
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !171) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i106.not = icmp eq ptr %15, null
  br i1 %tobool.not.i106.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 132
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !171) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_func = getelementptr inbounds %struct.trace_event_raw_brcms_dbg, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_func to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_func, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_brcms_dbg, ptr %call13, i32 0, i32 3
  %28 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or9.i, ptr %__data_loc_msg, align 4
  %level18 = getelementptr inbounds %struct.trace_event_raw_brcms_dbg, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %level18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %level, ptr %level18, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #12
  %and24 = and i32 %add6.i, 65535
  %add.ptr25 = getelementptr i8, ptr %call13, i32 %and24
  %30 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %32 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %va, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack = load i32, ptr %33, align 4
  %35 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call26 = call i32 @vsnprintf(ptr noundef %add.ptr25, i32 noundef 100, ptr noundef %31, [1 x i32] %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call26)
  %cmp = icmp sgt i32 %call26, 99
  br i1 %cmp, label %land.rhs, label %if.end16.if.end66_crit_edge

if.end16.if.end66_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

land.rhs:                                         ; preds = %if.end16
  %.b105 = load i1, ptr @perf_trace_brcms_dbg.__already_done, align 1
  br i1 %.b105, label %land.rhs.if.end66_crit_edge, label %if.then40, !prof !181

land.rhs.if.end66_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then40:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @perf_trace_brcms_dbg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 74, i32 noundef 9, ptr noundef null) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then40, %land.rhs.if.end66_crit_edge, %if.end16.if.end66_crit_edge
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_brcms_msg_event(ptr noundef %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %vaf to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_brcms_dbg(ptr noundef %__data, i32 noundef %level, ptr noundef %func, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %level to i64
  %0 = ptrtoint ptr %func to i32
  %conv4 = zext i32 %0 to i64
  %1 = ptrtoint ptr %vaf to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_brcms_timer(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ms = getelementptr inbounds %struct.trace_event_raw_brcms_timer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ms, align 4
  %set = getelementptr inbounds %struct.trace_event_raw_brcms_timer, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %set, align 4
  %periodic = getelementptr inbounds %struct.trace_event_raw_brcms_timer, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %periodic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %periodic, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
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
define internal i32 @trace_raw_output_brcms_dpc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %data = getelementptr inbounds %struct.trace_event_raw_brcms_dpc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = inttoptr i32 %3 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, ptr noundef %4) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_brcms_macintstatus(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_dev, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %in_isr = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %in_isr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_isr, align 4
  %macintstatus = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %macintstatus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macintstatus, align 4
  %mask = getelementptr inbounds %struct.trace_event_raw_brcms_macintstatus, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_brcms_txdesc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_txdesc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_dev, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, ptr noundef %add.ptr) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_brcms_txstatus(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_dev, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %frameid = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %frameid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %frameid, align 2
  %conv = zext i16 %5 to i32
  %status = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %status, align 4
  %conv1 = zext i16 %7 to i32
  %lasttxtime = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %lasttxtime to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lasttxtime, align 2
  %conv2 = zext i16 %9 to i32
  %sequence = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sequence, align 4
  %conv3 = zext i16 %11 to i32
  %phyerr = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %phyerr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %phyerr, align 2
  %conv4 = zext i16 %13 to i32
  %ackphyrxsh = getelementptr inbounds %struct.trace_event_raw_brcms_txstatus, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %ackphyrxsh to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ackphyrxsh, align 4
  %conv5 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.28, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #8
  %call6 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_brcms_ampdu_session(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_dev = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_dev, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %max_ampdu_len = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %max_ampdu_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_ampdu_len, align 4
  %max_ampdu_frames = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %max_ampdu_frames to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_ampdu_frames, align 4
  %conv = zext i16 %7 to i32
  %ampdu_len = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ampdu_len, align 2
  %conv1 = zext i16 %9 to i32
  %ampdu_frames = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ampdu_frames to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ampdu_frames, align 4
  %conv2 = zext i16 %11 to i32
  %dma_len = getelementptr inbounds %struct.trace_event_raw_brcms_ampdu_session, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dma_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dma_len, align 2
  %conv3 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.35, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3) #8
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run8(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_brcms_msg_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_brcms_msg_event, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_msg, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, ptr noundef %add.ptr) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_brcms_dbg(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_func = getelementptr inbounds %struct.trace_event_raw_brcms_dbg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_func, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_brcms_dbg, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_msg, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.41, ptr noundef %add.ptr, ptr noundef %add.ptr2) #8
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!llvm.named.register.sp = !{!171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__tracepoint_brcms_timer, !1, !"__tracepoint_brcms_timer", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac.h", i32 29, i32 1}
!2 = !{ptr @__tracepoint_ptr_brcms_timer, !1, !"__tracepoint_ptr_brcms_timer", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_brcms_timer, !1, !"__SCK__tp_func_brcms_timer", i1 false, i1 false}
!4 = !{ptr @__tracepoint_brcms_dpc, !5, !"__tracepoint_brcms_dpc", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac.h", i32 58, i32 1}
!6 = !{ptr @__tracepoint_ptr_brcms_dpc, !5, !"__tracepoint_ptr_brcms_dpc", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_brcms_dpc, !5, !"__SCK__tp_func_brcms_dpc", i1 false, i1 false}
!8 = !{ptr @__tracepoint_brcms_macintstatus, !9, !"__tracepoint_brcms_macintstatus", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac.h", i32 73, i32 1}
!10 = !{ptr @__tracepoint_ptr_brcms_macintstatus, !9, !"__tracepoint_ptr_brcms_macintstatus", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_brcms_macintstatus, !9, !"__SCK__tp_func_brcms_macintstatus", i1 false, i1 false}
!12 = !{ptr @event_class_brcms_timer, !1, !"event_class_brcms_timer", i1 false, i1 false}
!13 = !{ptr @event_brcms_timer, !1, !"event_brcms_timer", i1 false, i1 false}
!14 = !{ptr @__event_brcms_timer, !1, !"__event_brcms_timer", i1 false, i1 false}
!15 = !{ptr @event_class_brcms_dpc, !5, !"event_class_brcms_dpc", i1 false, i1 false}
!16 = !{ptr @event_brcms_dpc, !5, !"event_brcms_dpc", i1 false, i1 false}
!17 = !{ptr @__event_brcms_dpc, !5, !"__event_brcms_dpc", i1 false, i1 false}
!18 = !{ptr @event_class_brcms_macintstatus, !9, !"event_class_brcms_macintstatus", i1 false, i1 false}
!19 = !{ptr @event_brcms_macintstatus, !9, !"event_brcms_macintstatus", i1 false, i1 false}
!20 = !{ptr @__event_brcms_macintstatus, !9, !"__event_brcms_macintstatus", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_brcms_timer, !1, !"__bpf_trace_tp_map_brcms_timer", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_brcms_dpc, !5, !"__bpf_trace_tp_map_brcms_dpc", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_brcms_macintstatus, !9, !"__bpf_trace_tp_map_brcms_macintstatus", i1 false, i1 false}
!24 = !{ptr @__tracepoint_brcms_txdesc, !25, !"__tracepoint_brcms_txdesc", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_tx.h", i32 25, i32 1}
!26 = !{ptr @__tracepoint_ptr_brcms_txdesc, !25, !"__tracepoint_ptr_brcms_txdesc", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_brcms_txdesc, !25, !"__SCK__tp_func_brcms_txdesc", i1 false, i1 false}
!28 = !{ptr @__tracepoint_brcms_txstatus, !29, !"__tracepoint_brcms_txstatus", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_tx.h", i32 40, i32 1}
!30 = !{ptr @__tracepoint_ptr_brcms_txstatus, !29, !"__tracepoint_ptr_brcms_txstatus", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_brcms_txstatus, !29, !"__SCK__tp_func_brcms_txstatus", i1 false, i1 false}
!32 = !{ptr @__tracepoint_brcms_ampdu_session, !33, !"__tracepoint_brcms_ampdu_session", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_tx.h", i32 73, i32 1}
!34 = !{ptr @__tracepoint_ptr_brcms_ampdu_session, !33, !"__tracepoint_ptr_brcms_ampdu_session", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_brcms_ampdu_session, !33, !"__SCK__tp_func_brcms_ampdu_session", i1 false, i1 false}
!36 = !{ptr @event_class_brcms_txdesc, !25, !"event_class_brcms_txdesc", i1 false, i1 false}
!37 = !{ptr @event_brcms_txdesc, !25, !"event_brcms_txdesc", i1 false, i1 false}
!38 = !{ptr @__event_brcms_txdesc, !25, !"__event_brcms_txdesc", i1 false, i1 false}
!39 = !{ptr @event_class_brcms_txstatus, !29, !"event_class_brcms_txstatus", i1 false, i1 false}
!40 = !{ptr @event_brcms_txstatus, !29, !"event_brcms_txstatus", i1 false, i1 false}
!41 = !{ptr @__event_brcms_txstatus, !29, !"__event_brcms_txstatus", i1 false, i1 false}
!42 = !{ptr @event_class_brcms_ampdu_session, !33, !"event_class_brcms_ampdu_session", i1 false, i1 false}
!43 = !{ptr @event_brcms_ampdu_session, !33, !"event_brcms_ampdu_session", i1 false, i1 false}
!44 = !{ptr @__event_brcms_ampdu_session, !33, !"__event_brcms_ampdu_session", i1 false, i1 false}
!45 = !{ptr @__bpf_trace_tp_map_brcms_txdesc, !25, !"__bpf_trace_tp_map_brcms_txdesc", i1 false, i1 false}
!46 = !{ptr @__bpf_trace_tp_map_brcms_txstatus, !29, !"__bpf_trace_tp_map_brcms_txstatus", i1 false, i1 false}
!47 = !{ptr @__bpf_trace_tp_map_brcms_ampdu_session, !33, !"__bpf_trace_tp_map_brcms_ampdu_session", i1 false, i1 false}
!48 = !{ptr @__tracepoint_brcms_info, !49, !"__tracepoint_brcms_info", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_msg.h", i32 41, i32 1}
!50 = !{ptr @__tracepoint_ptr_brcms_info, !49, !"__tracepoint_ptr_brcms_info", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_brcms_info, !49, !"__SCK__tp_func_brcms_info", i1 false, i1 false}
!52 = !{ptr @__tracepoint_brcms_warn, !53, !"__tracepoint_brcms_warn", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_msg.h", i32 46, i32 1}
!54 = !{ptr @__tracepoint_ptr_brcms_warn, !53, !"__tracepoint_ptr_brcms_warn", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_brcms_warn, !53, !"__SCK__tp_func_brcms_warn", i1 false, i1 false}
!56 = !{ptr @__tracepoint_brcms_err, !57, !"__tracepoint_brcms_err", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_msg.h", i32 51, i32 1}
!58 = !{ptr @__tracepoint_ptr_brcms_err, !57, !"__tracepoint_ptr_brcms_err", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_brcms_err, !57, !"__SCK__tp_func_brcms_err", i1 false, i1 false}
!60 = !{ptr @__tracepoint_brcms_crit, !61, !"__tracepoint_brcms_crit", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_msg.h", i32 56, i32 1}
!62 = !{ptr @__tracepoint_ptr_brcms_crit, !61, !"__tracepoint_ptr_brcms_crit", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_brcms_crit, !61, !"__SCK__tp_func_brcms_crit", i1 false, i1 false}
!64 = !{ptr @__tracepoint_brcms_dbg, !65, !"__tracepoint_brcms_dbg", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_msg.h", i32 61, i32 1}
!66 = !{ptr @__tracepoint_ptr_brcms_dbg, !65, !"__tracepoint_ptr_brcms_dbg", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_brcms_dbg, !65, !"__SCK__tp_func_brcms_dbg", i1 false, i1 false}
!68 = !{ptr @event_class_brcms_msg_event, !69, !"event_class_brcms_msg_event", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/./brcms_trace_brcmsmac_msg.h", i32 27, i32 1}
!70 = !{ptr @event_brcms_info, !49, !"event_brcms_info", i1 false, i1 false}
!71 = !{ptr @__event_brcms_info, !49, !"__event_brcms_info", i1 false, i1 false}
!72 = !{ptr @event_brcms_warn, !53, !"event_brcms_warn", i1 false, i1 false}
!73 = !{ptr @__event_brcms_warn, !53, !"__event_brcms_warn", i1 false, i1 false}
!74 = !{ptr @event_brcms_err, !57, !"event_brcms_err", i1 false, i1 false}
!75 = !{ptr @__event_brcms_err, !57, !"__event_brcms_err", i1 false, i1 false}
!76 = !{ptr @event_brcms_crit, !61, !"event_brcms_crit", i1 false, i1 false}
!77 = !{ptr @__event_brcms_crit, !61, !"__event_brcms_crit", i1 false, i1 false}
!78 = !{ptr @event_class_brcms_dbg, !65, !"event_class_brcms_dbg", i1 false, i1 false}
!79 = !{ptr @event_brcms_dbg, !65, !"event_brcms_dbg", i1 false, i1 false}
!80 = !{ptr @__event_brcms_dbg, !65, !"__event_brcms_dbg", i1 false, i1 false}
!81 = !{ptr @__bpf_trace_tp_map_brcms_info, !49, !"__bpf_trace_tp_map_brcms_info", i1 false, i1 false}
!82 = !{ptr @__bpf_trace_tp_map_brcms_warn, !53, !"__bpf_trace_tp_map_brcms_warn", i1 false, i1 false}
!83 = !{ptr @__bpf_trace_tp_map_brcms_err, !57, !"__bpf_trace_tp_map_brcms_err", i1 false, i1 false}
!84 = !{ptr @__bpf_trace_tp_map_brcms_crit, !61, !"__bpf_trace_tp_map_brcms_crit", i1 false, i1 false}
!85 = !{ptr @__bpf_trace_tp_map_brcms_dbg, !65, !"__bpf_trace_tp_map_brcms_dbg", i1 false, i1 false}
!86 = !{ptr @__tpstrtab_brcms_timer, !1, !"__tpstrtab_brcms_timer", i1 false, i1 false}
!87 = !{ptr @__tpstrtab_brcms_dpc, !5, !"__tpstrtab_brcms_dpc", i1 false, i1 false}
!88 = !{ptr @__tpstrtab_brcms_macintstatus, !9, !"__tpstrtab_brcms_macintstatus", i1 false, i1 false}
!89 = !{ptr @str__brcmsmac__trace_system_name, !90, !"str__brcmsmac__trace_system_name", i1 false, i1 false}
!90 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!91 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @trace_event_fields_brcms_timer, !1, !"trace_event_fields_brcms_timer", i1 false, i1 false}
!96 = !{ptr @trace_event_type_funcs_brcms_timer, !1, !"trace_event_type_funcs_brcms_timer", i1 false, i1 false}
!97 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @print_fmt_brcms_timer, !1, !"print_fmt_brcms_timer", i1 false, i1 false}
!99 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @trace_event_fields_brcms_dpc, !5, !"trace_event_fields_brcms_dpc", i1 false, i1 false}
!102 = !{ptr @trace_event_type_funcs_brcms_dpc, !5, !"trace_event_type_funcs_brcms_dpc", i1 false, i1 false}
!103 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @print_fmt_brcms_dpc, !5, !"print_fmt_brcms_dpc", i1 false, i1 false}
!105 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @trace_event_fields_brcms_macintstatus, !9, !"trace_event_fields_brcms_macintstatus", i1 false, i1 false}
!114 = !{ptr @trace_event_type_funcs_brcms_macintstatus, !9, !"trace_event_type_funcs_brcms_macintstatus", i1 false, i1 false}
!115 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @print_fmt_brcms_macintstatus, !9, !"print_fmt_brcms_macintstatus", i1 false, i1 false}
!117 = !{ptr @__tpstrtab_brcms_txdesc, !25, !"__tpstrtab_brcms_txdesc", i1 false, i1 false}
!118 = !{ptr @__tpstrtab_brcms_txstatus, !29, !"__tpstrtab_brcms_txstatus", i1 false, i1 false}
!119 = !{ptr @__tpstrtab_brcms_ampdu_session, !33, !"__tpstrtab_brcms_ampdu_session", i1 false, i1 false}
!120 = !{ptr @str__brcmsmac_tx__trace_system_name, !90, !"str__brcmsmac_tx__trace_system_name", i1 false, i1 false}
!121 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @trace_event_fields_brcms_txdesc, !25, !"trace_event_fields_brcms_txdesc", i1 false, i1 false}
!124 = !{ptr @trace_event_type_funcs_brcms_txdesc, !25, !"trace_event_type_funcs_brcms_txdesc", i1 false, i1 false}
!125 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @print_fmt_brcms_txdesc, !25, !"print_fmt_brcms_txdesc", i1 false, i1 false}
!127 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.22, !29, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.23, !29, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.24, !29, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.25, !29, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.26, !29, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.27, !29, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @trace_event_fields_brcms_txstatus, !29, !"trace_event_fields_brcms_txstatus", i1 false, i1 false}
!136 = !{ptr @trace_event_type_funcs_brcms_txstatus, !29, !"trace_event_type_funcs_brcms_txstatus", i1 false, i1 false}
!137 = !{ptr @.str.28, !29, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @print_fmt_brcms_txstatus, !29, !"print_fmt_brcms_txstatus", i1 false, i1 false}
!139 = !{ptr @.str.29, !33, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.30, !33, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.31, !33, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.32, !33, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.33, !33, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.34, !33, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @trace_event_fields_brcms_ampdu_session, !33, !"trace_event_fields_brcms_ampdu_session", i1 false, i1 false}
!146 = !{ptr @trace_event_type_funcs_brcms_ampdu_session, !33, !"trace_event_type_funcs_brcms_ampdu_session", i1 false, i1 false}
!147 = !{ptr @.str.35, !33, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @print_fmt_brcms_ampdu_session, !33, !"print_fmt_brcms_ampdu_session", i1 false, i1 false}
!149 = !{ptr @__tpstrtab_brcms_info, !49, !"__tpstrtab_brcms_info", i1 false, i1 false}
!150 = !{ptr @__tpstrtab_brcms_warn, !53, !"__tpstrtab_brcms_warn", i1 false, i1 false}
!151 = !{ptr @__tpstrtab_brcms_err, !57, !"__tpstrtab_brcms_err", i1 false, i1 false}
!152 = !{ptr @__tpstrtab_brcms_crit, !61, !"__tpstrtab_brcms_crit", i1 false, i1 false}
!153 = !{ptr @__tpstrtab_brcms_dbg, !65, !"__tpstrtab_brcms_dbg", i1 false, i1 false}
!154 = !{ptr @str__brcmsmac_msg__trace_system_name, !90, !"str__brcmsmac_msg__trace_system_name", i1 false, i1 false}
!155 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!156 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @trace_event_fields_brcms_msg_event, !69, !"trace_event_fields_brcms_msg_event", i1 false, i1 false}
!159 = !{ptr @trace_event_type_funcs_brcms_msg_event, !69, !"trace_event_type_funcs_brcms_msg_event", i1 false, i1 false}
!160 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @print_fmt_brcms_msg_event, !69, !"print_fmt_brcms_msg_event", i1 false, i1 false}
!162 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!163 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @trace_event_fields_brcms_dbg, !65, !"trace_event_fields_brcms_dbg", i1 false, i1 false}
!166 = !{ptr @trace_event_type_funcs_brcms_dbg, !65, !"trace_event_type_funcs_brcms_dbg", i1 false, i1 false}
!167 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @print_fmt_brcms_dbg, !65, !"print_fmt_brcms_dbg", i1 false, i1 false}
!169 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!170 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!171 = !{!"sp"}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{!"branch_weights", i32 1, i32 2000}
!183 = !{i8 0, i8 2}
!184 = !{!"auto-init"}
