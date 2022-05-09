; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/tipd/trace.c_pt.bc'
source_filename = "../drivers/usb/typec/tipd/trace.c"
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
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%struct.trace_print_flags_u64 = type { i64, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_tps6598x_irq = type { %struct.trace_entry, i64, i64, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_cd321x_irq = type { %struct.trace_entry, i64, [0 x i8] }
%struct.trace_event_raw_tps6598x_status = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_tps6598x_power_status = type { %struct.trace_entry, i16, [0 x i8] }
%struct.trace_event_raw_tps6598x_data_status = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_tps6598x_irq = internal constant [13 x i8] c"tps6598x_irq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tps6598x_irq = dso_local global %struct.static_call_key { ptr @__traceiter_tps6598x_irq }, align 4
@__tracepoint_tps6598x_irq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tps6598x_irq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tps6598x_irq, ptr null, ptr @__traceiter_tps6598x_irq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tps6598x_irq = internal constant ptr @__tracepoint_tps6598x_irq, section "__tracepoints_ptrs", align 4
@__tpstrtab_cd321x_irq = internal constant [11 x i8] c"cd321x_irq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cd321x_irq = dso_local global %struct.static_call_key { ptr @__traceiter_cd321x_irq }, align 4
@__tracepoint_cd321x_irq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cd321x_irq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cd321x_irq, ptr null, ptr @__traceiter_cd321x_irq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cd321x_irq = internal constant ptr @__tracepoint_cd321x_irq, section "__tracepoints_ptrs", align 4
@__tpstrtab_tps6598x_status = internal constant [16 x i8] c"tps6598x_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tps6598x_status = dso_local global %struct.static_call_key { ptr @__traceiter_tps6598x_status }, align 4
@__tracepoint_tps6598x_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tps6598x_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tps6598x_status, ptr null, ptr @__traceiter_tps6598x_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tps6598x_status = internal constant ptr @__tracepoint_tps6598x_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_tps6598x_power_status = internal constant [22 x i8] c"tps6598x_power_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tps6598x_power_status = dso_local global %struct.static_call_key { ptr @__traceiter_tps6598x_power_status }, align 4
@__tracepoint_tps6598x_power_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tps6598x_power_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tps6598x_power_status, ptr null, ptr @__traceiter_tps6598x_power_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tps6598x_power_status = internal constant ptr @__tracepoint_tps6598x_power_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_tps6598x_data_status = internal constant [21 x i8] c"tps6598x_data_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tps6598x_data_status = dso_local global %struct.static_call_key { ptr @__traceiter_tps6598x_data_status }, align 4
@__tracepoint_tps6598x_data_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tps6598x_data_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tps6598x_data_status, ptr null, ptr @__traceiter_tps6598x_data_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tps6598x_data_status = internal constant ptr @__tracepoint_tps6598x_data_status, section "__tracepoints_ptrs", align 4
@str__tps6598x__trace_system_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps6598x\00", [23 x i8] zeroinitializer }, align 32
@trace_event_fields_tps6598x_irq = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.2, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_tps6598x_irq = internal global %struct.trace_event_class { ptr @str__tps6598x__trace_system_name, ptr @trace_event_raw_event_tps6598x_irq, ptr @perf_trace_tps6598x_irq, ptr @trace_event_reg, ptr @trace_event_fields_tps6598x_irq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tps6598x_irq, i64 24), ptr getelementptr (i8, ptr @event_class_tps6598x_irq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tps6598x_irq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tps6598x_irq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tps6598x_irq = internal global { [4815 x i8], [1201 x i8] } { [4815 x i8] c"\22event1=%s, event2=%s\22, ({ static const struct trace_print_flags_u64 __flags[] = { { ((((1UL))) << (0)), \22PD_SOFT_RESET\22 }, { ((((1UL))) << (1)), \22HARD_RESET\22 }, { ((((1UL))) << (3)), \22PLUG_EVENT\22 }, { ((((1UL))) << (4)), \22PR_SWAP_COMPLETE\22 }, { ((((1UL))) << (5)), \22DR_SWAP_COMPLETE\22 }, { ((((1UL))) << (7)), \22RDO_RECEIVED_FROM_SINK\22 }, { ((((1UL))) << (8)), \22BIST\22 }, { ((((1UL))) << (9)), \22OVERCURRENT\22 }, { ((((1UL))) << (10)), \22ATTENTION_RECEIVED\22 }, { ((((1UL))) << (11)), \22VDM_RECEIVED\22 }, { ((((1UL))) << (12)), \22NEW_CONTRACT_AS_CONSUMER\22 }, { ((((1UL))) << (13)), \22NEW_CONTRACT_AS_PROVIDER\22 }, { ((((1UL))) << (14)), \22SOURCE_CAP_MESSAGE_READY\22 }, { ((((1UL))) << (15)), \22SINK_CAP_MESSAGE_READY\22 }, { ((((1UL))) << (17)), \22PR_SWAP_REQUESTED\22 }, { ((((1UL))) << (19)), \22GOTO_MIN_RECEIVED\22 }, { ((((1UL))) << (20)), \22USB_HOST_PRESENT\22 }, { ((((1UL))) << (21)), \22USB_HOST_PRESENT_NO_LONGER\22 }, { ((((1UL))) << (22)), \22HIGH_VOLTAGE_WARNING\22 }, { ((((1UL))) << (23)), \22PP_SWITCH_CHANGED\22 }, { ((((1UL))) << (24)), \22POWER_STATUS_UPDATE\22 }, { ((((1UL))) << (25)), \22DATA_STATUS_UPDATE\22 }, { ((((1UL))) << (26)), \22STATUS_UPDATE\22 }, { ((((1UL))) << (27)), \22PD_STATUS_UPDATE\22 }, { ((((1UL))) << (28)), \22ADC_LOW_THRESHOLD\22 }, { ((((1UL))) << (29)), \22ADC_HIGH_THRESHOLD\22 }, { ((((1UL))) << (30)), \22CMD1_COMPLETE\22 }, { ((((1UL))) << (31)), \22CMD2_COMPLETE\22 }, { ((((1ULL))) << (0+32)), \22ERROR_DEVICE_INCOMPATIBLE\22 }, { ((((1ULL))) << (1+32)), \22ERROR_CANNOT_PROVIDE_PWR\22 }, { ((((1ULL))) << (2+32)), \22ERROR_CAN_PROVIDE_PWR_LATER\22 }, { ((((1ULL))) << (3+32)), \22ERROR_POWER_EVENT_OCCURRED\22 }, { ((((1ULL))) << (4+32)), \22ERROR_MISSING_GET_CAP_MESSAGE\22 }, { ((((1ULL))) << (6+32)), \22ERROR_PROTOCOL_ERROR\22 }, { ((((1ULL))) << (7+32)), \22ERROR_MESSAGE_DATA\22 }, { ((((1ULL))) << (9+32)), \22ERROR_DISCHARGE_FAILED\22 }, { ((((1ULL))) << (10+32)), \22SRC_TRANSITION\22 }, { ((((1ULL))) << (14+32)), \22ERROR_UNABLE_TO_SOURCE\22 }, { ((((1ULL))) << (17+32)), \22VDM_ENTERED_MODE\22 }, { ((((1ULL))) << (18+32)), \22VDM_MSG_SENT\22 }, { ((((1ULL))) << (19+32)), \22DISCOVER_MODES_COMPLETE\22 }, { ((((1ULL))) << (20+32)), \22EXIT_MODES_COMPLETE\22 }, { ((((1ULL))) << (24+32)), \22USER_VID_ALT_MODE_ENTERED\22 }, { ((((1ULL))) << (25+32)), \22USER_VID_ALT_MODE_EXIT\22 }, { ((((1ULL))) << (26+32)), \22USER_VID_ALT_MODE_ATTN_VDM\22 }, { ((((1ULL))) << (27+32)), \22USER_VID_ALT_MODE_OTHER_VDM\22 }, { -1, ((void *)0) } }; trace_print_flags_seq_u64(p, \22|\22, REC->event1, __flags); }), ({ static const struct trace_print_flags_u64 __flags[] = { { ((((1UL))) << (0)), \22PD_SOFT_RESET\22 }, { ((((1UL))) << (1)), \22HARD_RESET\22 }, { ((((1UL))) << (3)), \22PLUG_EVENT\22 }, { ((((1UL))) << (4)), \22PR_SWAP_COMPLETE\22 }, { ((((1UL))) << (5)), \22DR_SWAP_COMPLETE\22 }, { ((((1UL))) << (7)), \22RDO_RECEIVED_FROM_SINK\22 }, { ((((1UL))) << (8)), \22BIST\22 }, { ((((1UL))) << (9)), \22OVERCURRENT\22 }, { ((((1UL))) << (10)), \22ATTENTION_RECEIVED\22 }, { ((((1UL))) << (11)), \22VDM_RECEIVED\22 }, { ((((1UL))) << (12)), \22NEW_CONTRACT_AS_CONSUMER\22 }, { ((((1UL))) << (13)), \22NEW_CONTRACT_AS_PROVIDER\22 }, { ((((1UL))) << (14)), \22SOURCE_CAP_MESSAGE_READY\22 }, { ((((1UL))) << (15)), \22SINK_CAP_MESSAGE_READY\22 }, { ((((1UL))) << (17)), \22PR_SWAP_REQUESTED\22 }, { ((((1UL))) << (19)), \22GOTO_MIN_RECEIVED\22 }, { ((((1UL))) << (20)), \22USB_HOST_PRESENT\22 }, { ((((1UL))) << (21)), \22USB_HOST_PRESENT_NO_LONGER\22 }, { ((((1UL))) << (22)), \22HIGH_VOLTAGE_WARNING\22 }, { ((((1UL))) << (23)), \22PP_SWITCH_CHANGED\22 }, { ((((1UL))) << (24)), \22POWER_STATUS_UPDATE\22 }, { ((((1UL))) << (25)), \22DATA_STATUS_UPDATE\22 }, { ((((1UL))) << (26)), \22STATUS_UPDATE\22 }, { ((((1UL))) << (27)), \22PD_STATUS_UPDATE\22 }, { ((((1UL))) << (28)), \22ADC_LOW_THRESHOLD\22 }, { ((((1UL))) << (29)), \22ADC_HIGH_THRESHOLD\22 }, { ((((1UL))) << (30)), \22CMD1_COMPLETE\22 }, { ((((1UL))) << (31)), \22CMD2_COMPLETE\22 }, { ((((1ULL))) << (0+32)), \22ERROR_DEVICE_INCOMPATIBLE\22 }, { ((((1ULL))) << (1+32)), \22ERROR_CANNOT_PROVIDE_PWR\22 }, { ((((1ULL))) << (2+32)), \22ERROR_CAN_PROVIDE_PWR_LATER\22 }, { ((((1ULL))) << (3+32)), \22ERROR_POWER_EVENT_OCCURRED\22 }, { ((((1ULL))) << (4+32)), \22ERROR_MISSING_GET_CAP_MESSAGE\22 }, { ((((1ULL))) << (6+32)), \22ERROR_PROTOCOL_ERROR\22 }, { ((((1ULL))) << (7+32)), \22ERROR_MESSAGE_DATA\22 }, { ((((1ULL))) << (9+32)), \22ERROR_DISCHARGE_FAILED\22 }, { ((((1ULL))) << (10+32)), \22SRC_TRANSITION\22 }, { ((((1ULL))) << (14+32)), \22ERROR_UNABLE_TO_SOURCE\22 }, { ((((1ULL))) << (17+32)), \22VDM_ENTERED_MODE\22 }, { ((((1ULL))) << (18+32)), \22VDM_MSG_SENT\22 }, { ((((1ULL))) << (19+32)), \22DISCOVER_MODES_COMPLETE\22 }, { ((((1ULL))) << (20+32)), \22EXIT_MODES_COMPLETE\22 }, { ((((1ULL))) << (24+32)), \22USER_VID_ALT_MODE_ENTERED\22 }, { ((((1ULL))) << (25+32)), \22USER_VID_ALT_MODE_EXIT\22 }, { ((((1ULL))) << (26+32)), \22USER_VID_ALT_MODE_ATTN_VDM\22 }, { ((((1ULL))) << (27+32)), \22USER_VID_ALT_MODE_OTHER_VDM\22 }, { -1, ((void *)0) } }; trace_print_flags_seq_u64(p, \22|\22, REC->event2, __flags); })\00", [1201 x i8] zeroinitializer }, align 32
@event_tps6598x_irq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tps6598x_irq, %union.anon.1 { ptr @__tracepoint_tps6598x_irq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tps6598x_irq }, ptr @print_fmt_tps6598x_irq, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tps6598x_irq = internal global ptr @event_tps6598x_irq, section "_ftrace_events", align 4
@trace_event_fields_cd321x_irq = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.52, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cd321x_irq = internal global %struct.trace_event_class { ptr @str__tps6598x__trace_system_name, ptr @trace_event_raw_event_cd321x_irq, ptr @perf_trace_cd321x_irq, ptr @trace_event_reg, ptr @trace_event_fields_cd321x_irq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cd321x_irq, i64 24), ptr getelementptr (i8, ptr @event_class_cd321x_irq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cd321x_irq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cd321x_irq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cd321x_irq = internal global { [326 x i8], [90 x i8] } { [326 x i8] c"\22event=%s\22, ({ static const struct trace_print_flags_u64 __flags[] = { { ((((1UL))) << (1)), \22PLUG_EVENT\22 }, { ((((1UL))) << (9)), \22POWER_STATUS_UPDATE\22 }, { ((((1UL))) << (10)), \22DATA_STATUS_UPDATE\22 }, { ((((1UL))) << (8)), \22STATUS_UPDATE\22 }, { -1, ((void *)0) } }; trace_print_flags_seq_u64(p, \22|\22, REC->event, __flags); })\00", [90 x i8] zeroinitializer }, align 32
@event_cd321x_irq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cd321x_irq, %union.anon.1 { ptr @__tracepoint_cd321x_irq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cd321x_irq }, ptr @print_fmt_cd321x_irq, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cd321x_irq = internal global ptr @event_cd321x_irq, section "_ftrace_events", align 4
@trace_event_fields_tps6598x_status = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.54, %union.anon.0 { %struct.anon { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_tps6598x_status = internal global %struct.trace_event_class { ptr @str__tps6598x__trace_system_name, ptr @trace_event_raw_event_tps6598x_status, ptr @perf_trace_tps6598x_status, ptr @trace_event_reg, ptr @trace_event_fields_tps6598x_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tps6598x_status, i64 24), ptr getelementptr (i8, ptr @event_class_tps6598x_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tps6598x_status = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tps6598x_status, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tps6598x_status = internal global { [10850 x i8], [2718 x i8] } { [10850 x i8] c"\22conn: %s, pp_5v0: %s, pp_hv: %s, pp_ext: %s, pp_cable: %s, pwr-src: %s, vbus: %s, usb-host: %s, legacy: %s, flags: %s\22, __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((1) > (3)) * 0l)) : (int *)8))), (1) > (3), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (1)) + 1) & (~(((0UL))) >> (32 - 1 - (3)))))))(((((REC->status))) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((1) > (3)) * 0l)) : (int *)8))), (1) > (3), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (1)) + 1) & (~(((0UL))) >> (32 - 1 - (3))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((1) > (3)) * 0l)) : (int *)8))), (1) > (3), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (1)) + 1) & (~(((0UL))) >> (32 - 1 - (3)))))) - 1))), { 7, \22conn-Ra\22 }, { 6, \22conn-no-Ra\22 }, { 4, \22no-conn-Ra\22 }, { 3, \22debug\22 }, { 2, \22audio\22 }, { 1, \22disabled\22 }, { 0, \22no-conn\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (9)) * 0l)) : (int *)8))), (8) > (9), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (8)) + 1) & (~(((0UL))) >> (32 - 1 - (9)))))))((((REC->status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (9)) * 0l)) : (int *)8))), (8) > (9), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (8)) + 1) & (~(((0UL))) >> (32 - 1 - (9))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (9)) * 0l)) : (int *)8))), (8) > (9), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (8)) + 1) & (~(((0UL))) >> (32 - 1 - (9)))))) - 1))), { 3, \22in\22 }, { 2, \22out\22 }, { 1, \22fault\22 }, { 0, \22off\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((10) > (11)) * 0l)) : (int *)8))), (10) > (11), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (10)) + 1) & (~(((0UL))) >> (32 - 1 - (11)))))))((((REC->status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((10) > (11)) * 0l)) : (int *)8))), (10) > (11), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (10)) + 1) & (~(((0UL))) >> (32 - 1 - (11))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((10) > (11)) * 0l)) : (int *)8))), (10) > (11), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (10)) + 1) & (~(((0UL))) >> (32 - 1 - (11)))))) - 1))), { 3, \22in\22 }, { 2, \22out\22 }, { 1, \22fault\22 }, { 0, \22off\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((12) > (13)) * 0l)) : (int *)8))), (12) > (13), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (12)) + 1) & (~(((0UL))) >> (32 - 1 - (13)))))))((((REC->status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((12) > (13)) * 0l)) : (int *)8))), (12) > (13), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (12)) + 1) & (~(((0UL))) >> (32 - 1 - (13))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((12) > (13)) * 0l)) : (int *)8))), (12) > (13), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (12)) + 1) & (~(((0UL))) >> (32 - 1 - (13)))))) - 1))), { 3, \22in\22 }, { 2, \22out\22 }, { 1, \22fault\22 }, { 0, \22off\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((14) > (15)) * 0l)) : (int *)8))), (14) > (15), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (14)) + 1) & (~(((0UL))) >> (32 - 1 - (15)))))))((((REC->status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((14) > (15)) * 0l)) : (int *)8))), (14) > (15), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (14)) + 1) & (~(((0UL))) >> (32 - 1 - (15))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((14) > (15)) * 0l)) : (int *)8))), (14) > (15), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (14)) + 1) & (~(((0UL))) >> (32 - 1 - (15)))))) - 1))), { 3, \22in\22 }, { 2, \22out\22 }, { 1, \22fault\22 }, { 0, \22off\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((18) > (19)) * 0l)) : (int *)8))), (18) > (19), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (18)) + 1) & (~(((0UL))) >> (32 - 1 - (19)))))))((((REC->status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((18) > (19)) * 0l)) : (int *)8))), (18) > (19), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (18)) + 1) & (~(((0UL))) >> (32 - 1 - (19))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((18) > (19)) * 0l)) : (int *)8))), (18) > (19), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (18)) + 1) & (~(((0UL))) >> (32 - 1 - (19)))))) - 1))), { 3, \22vbus\22 }, { 1, \22vin-3p3\22 }, { 2, \22dead-battery\22 }, { 0, \22unknown\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((20) > (21)) * 0l)) : (int *)8))), (20) > (21), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (20)) + 1) & (~(((0UL))) >> (32 - 1 - (21)))))))((((REC->status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((20) > (21)) * 0l)) : (int *)8))), (20) > (21), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (20)) + 1) & (~(((0UL))) >> (32 - 1 - (21))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((20) > (21)) * 0l)) : (int *)8))), (20) > (21), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (20)) + 1) & (~(((0UL))) >> (32 - 1 - (21)))))) - 1))), { 0, \22vSafe0V\22 }, { 1, \22vSafe5V\22 }, { 2, \22pd\22 }, { 3, \22fault\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((22) > (23)) * 0l)) : (int *)8))), (22) > (23), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (22)) + 1) & (~(((0UL))) >> (32 - 1 - (23)))))))((((REC->status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((22) > (23)) * 0l)) : (int *)8))), (22) > (23), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (22)) + 1) & (~(((0UL))) >> (32 - 1 - (23))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((22) > (23)) * 0l)) : (int *)8))), (22) > (23), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (22)) + 1) & (~(((0UL))) >> (32 - 1 - (23)))))) - 1))), { 3, \22pd-usb\22 }, { 2, \22no-pd\22 }, { 1, \22pd-no-usb\22 }, { 0, \22no\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((24) > (25)) * 0l)) : (int *)8))), (24) > (25), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (24)) + 1) & (~(((0UL))) >> (32 - 1 - (25)))))))((((REC->status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((24) > (25)) * 0l)) : (int *)8))), (24) > (25), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (24)) + 1) & (~(((0UL))) >> (32 - 1 - (25))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((24) > (25)) * 0l)) : (int *)8))), (24) > (25), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (24)) + 1) & (~(((0UL))) >> (32 - 1 - (25)))))) - 1))), { 2, \22source\22 }, { 1, \22sink\22 }, { 0, \22no\22 }), __print_flags((REC->status & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (31)) * 0l)) : (int *)8))), (0) > (31), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (0)) + 1) & (~(((0UL))) >> (32 - 1 - (31))))) ^ (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((1) > (3)) * 0l)) : (int *)8))), (1) > (3), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (1)) + 1) & (~(((0UL))) >> (32 - 1 - (3))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((8) > (9)) * 0l)) : (int *)8))), (8) > (9), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (8)) + 1) & (~(((0UL))) >> (32 - 1 - (9))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((10) > (11)) * 0l)) : (int *)8))), (10) > (11), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (10)) + 1) & (~(((0UL))) >> (32 - 1 - (11))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((12) > (13)) * 0l)) : (int *)8))), (12) > (13), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (12)) + 1) & (~(((0UL))) >> (32 - 1 - (13))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((14) > (15)) * 0l)) : (int *)8))), (14) > (15), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (14)) + 1) & (~(((0UL))) >> (32 - 1 - (15))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((18) > (19)) * 0l)) : (int *)8))), (18) > (19), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (18)) + 1) & (~(((0UL))) >> (32 - 1 - (19))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((20) > (21)) * 0l)) : (int *)8))), (20) > (21), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (20)) + 1) & (~(((0UL))) >> (32 - 1 - (21))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((22) > (23)) * 0l)) : (int *)8))), (22) > (23), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (22)) + 1) & (~(((0UL))) >> (32 - 1 - (23))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((24) > (25)) * 0l)) : (int *)8))), (24) > (25), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (24)) + 1) & (~(((0UL))) >> (32 - 1 - (25)))))))), \22|\22, { ((((1UL))) << (0)), \22PLUG_PRESENT\22 }, { ((((1UL))) << (4)), \22UPSIDE_DOWN\22 }, { ((((1UL))) << (5)), \22PORTROLE\22 }, { ((((1UL))) << (6)), \22DATAROLE\22 }, { ((((1UL))) << (7)), \22VCONN\22 }, { ((((1UL))) << (16)), \22OVERCURRENT\22 }, { ((((1UL))) << (26)), \22GOTO_MIN_ACTIVE\22 }, { ((((1UL))) << (27)), \22BIST\22 }, { ((((1UL))) << (28)), \22HIGH_VOLAGE_WARNING\22 }, { ((((1UL))) << (29)), \22HIGH_LOW_VOLTAGE_WARNING\22 })\00", [2718 x i8] zeroinitializer }, align 32
@event_tps6598x_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tps6598x_status, %union.anon.1 { ptr @__tracepoint_tps6598x_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tps6598x_status }, ptr @print_fmt_tps6598x_status, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tps6598x_status = internal global ptr @event_tps6598x_status, section "_ftrace_events", align 4
@trace_event_fields_tps6598x_power_status = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.97, %union.anon.0 { %struct.anon { ptr @.str.98, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_tps6598x_power_status = internal global %struct.trace_event_class { ptr @str__tps6598x__trace_system_name, ptr @trace_event_raw_event_tps6598x_power_status, ptr @perf_trace_tps6598x_power_status, ptr @trace_event_reg, ptr @trace_event_fields_tps6598x_power_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tps6598x_power_status, i64 24), ptr getelementptr (i8, ptr @event_class_tps6598x_power_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tps6598x_power_status = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tps6598x_power_status, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tps6598x_power_status = internal global { [2039 x i8], [489 x i8] } { [2039 x i8] c"\22conn: %d, pwr-role: %s, typec: %s, bc: %s\22, !!((typeof(((((1UL))) << (0))))((((REC->power_status)) & (((((1UL))) << (0)))) >> (__builtin_ffsll(((((1UL))) << (0))) - 1))), __print_symbolic(((typeof(((((1UL))) << (1))))((((REC->power_status)) & (((((1UL))) << (1)))) >> (__builtin_ffsll(((((1UL))) << (1))) - 1))), { 1, \22sink\22 }, { 0, \22source\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((2) > (3)) * 0l)) : (int *)8))), (2) > (3), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (2)) + 1) & (~(((0UL))) >> (32 - 1 - (3)))))))((((REC->power_status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((2) > (3)) * 0l)) : (int *)8))), (2) > (3), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (2)) + 1) & (~(((0UL))) >> (32 - 1 - (3))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((2) > (3)) * 0l)) : (int *)8))), (2) > (3), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (2)) + 1) & (~(((0UL))) >> (32 - 1 - (3)))))) - 1))), { 3, \22pd\22 }, { 2, \223.0A\22 }, { 1, \221.5A\22 }, { 0, \22usb\22 }), __print_symbolic(((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((5) > (6)) * 0l)) : (int *)8))), (5) > (6), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (5)) + 1) & (~(((0UL))) >> (32 - 1 - (6)))))))((((REC->power_status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((5) > (6)) * 0l)) : (int *)8))), (5) > (6), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (5)) + 1) & (~(((0UL))) >> (32 - 1 - (6))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((5) > (6)) * 0l)) : (int *)8))), (5) > (6), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (5)) + 1) & (~(((0UL))) >> (32 - 1 - (6)))))) - 1))), { 3, \22dcp\22 }, { 2, \22cdp\22 }, { 0, \22sdp\22 })\00", [489 x i8] zeroinitializer }, align 32
@event_tps6598x_power_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tps6598x_power_status, %union.anon.1 { ptr @__tracepoint_tps6598x_power_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tps6598x_power_status }, ptr @print_fmt_tps6598x_power_status, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tps6598x_power_status = internal global ptr @event_tps6598x_power_status, section "_ftrace_events", align 4
@trace_event_fields_tps6598x_data_status = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.54, %union.anon.0 { %struct.anon { ptr @.str.108, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_tps6598x_data_status = internal global %struct.trace_event_class { ptr @str__tps6598x__trace_system_name, ptr @trace_event_raw_event_tps6598x_data_status, ptr @perf_trace_tps6598x_data_status, ptr @trace_event_reg, ptr @trace_event_fields_tps6598x_data_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tps6598x_data_status, i64 24), ptr getelementptr (i8, ptr @event_class_tps6598x_data_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tps6598x_data_status = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tps6598x_data_status, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tps6598x_data_status = internal global { [2903 x i8], [713 x i8] } { [2903 x i8] c"\22%s%s%s\22, __print_flags(REC->data_status & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (31)) * 0l)) : (int *)8))), (0) > (31), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (0)) + 1) & (~(((0UL))) >> (32 - 1 - (31))))) ^ (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((10) > (11)) * 0l)) : (int *)8))), (10) > (11), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (10)) + 1) & (~(((0UL))) >> (32 - 1 - (11))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((25) > (27)) * 0l)) : (int *)8))), (25) > (27), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (25)) + 1) & (~(((0UL))) >> (32 - 1 - (27))))) | ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((28) > (29)) * 0l)) : (int *)8))), (28) > (29), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (28)) + 1) & (~(((0UL))) >> (32 - 1 - (29))))))), \22|\22, { ((((1UL))) << (0)), \22DATA_CONNECTION\22 }, { ((((1UL))) << (1)), \22DATA_UPSIDE_DOWN\22 }, { ((((1UL))) << (2)), \22ACTIVE_CABLE\22 }, { ((((1UL))) << (4)), \22USB2_CONNECTION\22 }, { ((((1UL))) << (5)), \22USB3_CONNECTION\22 }, { ((((1UL))) << (6)), \22USB3_GEN2\22 }, { ((((1UL))) << (7)), \22USB_DATA_ROLE\22 }, { ((((1UL))) << (8)), \22DP_CONNECTION\22 }, { ((((1UL))) << (9)), \22DP_SINK\22 }, { ((((1UL))) << (16)), \22TBT_CONNECTION\22 }, { ((((1UL))) << (17)), \22TBT_TYPE\22 }, { ((((1UL))) << (18)), \22OPTICAL_CABLE\22 }, { ((((1UL))) << (20)), \22ACTIVE_LINK_TRAIN\22 }, { ((((1UL))) << (23)), \22FORCE_LSX\22 }, { ((((1UL))) << (24)), \22POWER_MISMATCH\22 }), REC->data_status & ((((1UL))) << (8)) ? \22, DP pinout \22 : \22\22, (REC->data_status & ((((1UL))) << (8)) ? __print_symbolic(((((typeof(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((10) > (11)) * 0l)) : (int *)8))), (10) > (11), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (10)) + 1) & (~(((0UL))) >> (32 - 1 - (11)))))))((((REC->data_status)) & (((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((10) > (11)) * 0l)) : (int *)8))), (10) > (11), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (10)) + 1) & (~(((0UL))) >> (32 - 1 - (11))))))) >> (__builtin_ffsll(((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((10) > (11)) * 0l)) : (int *)8))), (10) > (11), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (10)) + 1) & (~(((0UL))) >> (32 - 1 - (11)))))) - 1))) << 1) | ((typeof(((((1UL))) << (5))))((((REC->data_status)) & (((((1UL))) << (5)))) >> (__builtin_ffsll(((((1UL))) << (5))) - 1)))), { 0, \22E\22 }, { ((((1UL))) << (0)), \22F\22 }, { ((((1UL))) << (1)), \22C\22 }, { (((((1UL))) << (1)) | ((((1UL))) << (0))), \22D\22 }, { ((((1UL))) << (2)), \22A\22 }, { (((((1UL))) << (2)) | ((((1UL))) << (1))), \22B\22 }) : \22\22)\00", [713 x i8] zeroinitializer }, align 32
@event_tps6598x_data_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tps6598x_data_status, %union.anon.1 { ptr @__tracepoint_tps6598x_data_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tps6598x_data_status }, ptr @print_fmt_tps6598x_data_status, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tps6598x_data_status = internal global ptr @event_tps6598x_data_status, section "_ftrace_events", align 4
@__bpf_trace_tp_map_tps6598x_irq = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_tps6598x_irq, ptr @__bpf_trace_tps6598x_irq, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cd321x_irq = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_cd321x_irq, ptr @__bpf_trace_cd321x_irq, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tps6598x_status = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_tps6598x_status, ptr @__bpf_trace_tps6598x_status, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tps6598x_power_status = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_tps6598x_power_status, ptr @__bpf_trace_tps6598x_power_status, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tps6598x_data_status = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_tps6598x_data_status, ptr @__bpf_trace_tps6598x_data_status, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"event1\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"event2\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"event1=%s, event2=%s\0A\00", [42 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_irq.__flags = internal constant { [47 x %struct.trace_print_flags_u64], [176 x i8] } { [47 x %struct.trace_print_flags_u64] [%struct.trace_print_flags_u64 { i64 1, ptr @.str.4 }, %struct.trace_print_flags_u64 { i64 2, ptr @.str.5 }, %struct.trace_print_flags_u64 { i64 8, ptr @.str.6 }, %struct.trace_print_flags_u64 { i64 16, ptr @.str.7 }, %struct.trace_print_flags_u64 { i64 32, ptr @.str.8 }, %struct.trace_print_flags_u64 { i64 128, ptr @.str.9 }, %struct.trace_print_flags_u64 { i64 256, ptr @.str.10 }, %struct.trace_print_flags_u64 { i64 512, ptr @.str.11 }, %struct.trace_print_flags_u64 { i64 1024, ptr @.str.12 }, %struct.trace_print_flags_u64 { i64 2048, ptr @.str.13 }, %struct.trace_print_flags_u64 { i64 4096, ptr @.str.14 }, %struct.trace_print_flags_u64 { i64 8192, ptr @.str.15 }, %struct.trace_print_flags_u64 { i64 16384, ptr @.str.16 }, %struct.trace_print_flags_u64 { i64 32768, ptr @.str.17 }, %struct.trace_print_flags_u64 { i64 131072, ptr @.str.18 }, %struct.trace_print_flags_u64 { i64 524288, ptr @.str.19 }, %struct.trace_print_flags_u64 { i64 1048576, ptr @.str.20 }, %struct.trace_print_flags_u64 { i64 2097152, ptr @.str.21 }, %struct.trace_print_flags_u64 { i64 4194304, ptr @.str.22 }, %struct.trace_print_flags_u64 { i64 8388608, ptr @.str.23 }, %struct.trace_print_flags_u64 { i64 16777216, ptr @.str.24 }, %struct.trace_print_flags_u64 { i64 33554432, ptr @.str.25 }, %struct.trace_print_flags_u64 { i64 67108864, ptr @.str.26 }, %struct.trace_print_flags_u64 { i64 134217728, ptr @.str.27 }, %struct.trace_print_flags_u64 { i64 268435456, ptr @.str.28 }, %struct.trace_print_flags_u64 { i64 536870912, ptr @.str.29 }, %struct.trace_print_flags_u64 { i64 1073741824, ptr @.str.30 }, %struct.trace_print_flags_u64 { i64 2147483648, ptr @.str.31 }, %struct.trace_print_flags_u64 { i64 4294967296, ptr @.str.32 }, %struct.trace_print_flags_u64 { i64 8589934592, ptr @.str.33 }, %struct.trace_print_flags_u64 { i64 17179869184, ptr @.str.34 }, %struct.trace_print_flags_u64 { i64 34359738368, ptr @.str.35 }, %struct.trace_print_flags_u64 { i64 68719476736, ptr @.str.36 }, %struct.trace_print_flags_u64 { i64 274877906944, ptr @.str.37 }, %struct.trace_print_flags_u64 { i64 549755813888, ptr @.str.38 }, %struct.trace_print_flags_u64 { i64 2199023255552, ptr @.str.39 }, %struct.trace_print_flags_u64 { i64 4398046511104, ptr @.str.40 }, %struct.trace_print_flags_u64 { i64 70368744177664, ptr @.str.41 }, %struct.trace_print_flags_u64 { i64 562949953421312, ptr @.str.42 }, %struct.trace_print_flags_u64 { i64 1125899906842624, ptr @.str.43 }, %struct.trace_print_flags_u64 { i64 2251799813685248, ptr @.str.44 }, %struct.trace_print_flags_u64 { i64 4503599627370496, ptr @.str.45 }, %struct.trace_print_flags_u64 { i64 72057594037927936, ptr @.str.46 }, %struct.trace_print_flags_u64 { i64 144115188075855872, ptr @.str.47 }, %struct.trace_print_flags_u64 { i64 288230376151711744, ptr @.str.48 }, %struct.trace_print_flags_u64 { i64 576460752303423488, ptr @.str.49 }, %struct.trace_print_flags_u64 { i64 -1, ptr null }], [176 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PD_SOFT_RESET\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HARD_RESET\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PLUG_EVENT\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PR_SWAP_COMPLETE\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DR_SWAP_COMPLETE\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RDO_RECEIVED_FROM_SINK\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BIST\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OVERCURRENT\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ATTENTION_RECEIVED\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VDM_RECEIVED\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NEW_CONTRACT_AS_CONSUMER\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NEW_CONTRACT_AS_PROVIDER\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SOURCE_CAP_MESSAGE_READY\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SINK_CAP_MESSAGE_READY\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PR_SWAP_REQUESTED\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GOTO_MIN_RECEIVED\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB_HOST_PRESENT\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USB_HOST_PRESENT_NO_LONGER\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HIGH_VOLTAGE_WARNING\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PP_SWITCH_CHANGED\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"POWER_STATUS_UPDATE\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DATA_STATUS_UPDATE\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STATUS_UPDATE\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PD_STATUS_UPDATE\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC_LOW_THRESHOLD\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC_HIGH_THRESHOLD\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CMD1_COMPLETE\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CMD2_COMPLETE\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR_DEVICE_INCOMPATIBLE\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ERROR_CANNOT_PROVIDE_PWR\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERROR_CAN_PROVIDE_PWR_LATER\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ERROR_POWER_EVENT_OCCURRED\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ERROR_MISSING_GET_CAP_MESSAGE\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ERROR_PROTOCOL_ERROR\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ERROR_MESSAGE_DATA\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ERROR_DISCHARGE_FAILED\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SRC_TRANSITION\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ERROR_UNABLE_TO_SOURCE\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VDM_ENTERED_MODE\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VDM_MSG_SENT\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DISCOVER_MODES_COMPLETE\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXIT_MODES_COMPLETE\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USER_VID_ALT_MODE_ENTERED\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USER_VID_ALT_MODE_EXIT\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"USER_VID_ALT_MODE_ATTN_VDM\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"USER_VID_ALT_MODE_OTHER_VDM\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_irq.__flags.51 = internal constant { [47 x %struct.trace_print_flags_u64], [176 x i8] } { [47 x %struct.trace_print_flags_u64] [%struct.trace_print_flags_u64 { i64 1, ptr @.str.4 }, %struct.trace_print_flags_u64 { i64 2, ptr @.str.5 }, %struct.trace_print_flags_u64 { i64 8, ptr @.str.6 }, %struct.trace_print_flags_u64 { i64 16, ptr @.str.7 }, %struct.trace_print_flags_u64 { i64 32, ptr @.str.8 }, %struct.trace_print_flags_u64 { i64 128, ptr @.str.9 }, %struct.trace_print_flags_u64 { i64 256, ptr @.str.10 }, %struct.trace_print_flags_u64 { i64 512, ptr @.str.11 }, %struct.trace_print_flags_u64 { i64 1024, ptr @.str.12 }, %struct.trace_print_flags_u64 { i64 2048, ptr @.str.13 }, %struct.trace_print_flags_u64 { i64 4096, ptr @.str.14 }, %struct.trace_print_flags_u64 { i64 8192, ptr @.str.15 }, %struct.trace_print_flags_u64 { i64 16384, ptr @.str.16 }, %struct.trace_print_flags_u64 { i64 32768, ptr @.str.17 }, %struct.trace_print_flags_u64 { i64 131072, ptr @.str.18 }, %struct.trace_print_flags_u64 { i64 524288, ptr @.str.19 }, %struct.trace_print_flags_u64 { i64 1048576, ptr @.str.20 }, %struct.trace_print_flags_u64 { i64 2097152, ptr @.str.21 }, %struct.trace_print_flags_u64 { i64 4194304, ptr @.str.22 }, %struct.trace_print_flags_u64 { i64 8388608, ptr @.str.23 }, %struct.trace_print_flags_u64 { i64 16777216, ptr @.str.24 }, %struct.trace_print_flags_u64 { i64 33554432, ptr @.str.25 }, %struct.trace_print_flags_u64 { i64 67108864, ptr @.str.26 }, %struct.trace_print_flags_u64 { i64 134217728, ptr @.str.27 }, %struct.trace_print_flags_u64 { i64 268435456, ptr @.str.28 }, %struct.trace_print_flags_u64 { i64 536870912, ptr @.str.29 }, %struct.trace_print_flags_u64 { i64 1073741824, ptr @.str.30 }, %struct.trace_print_flags_u64 { i64 2147483648, ptr @.str.31 }, %struct.trace_print_flags_u64 { i64 4294967296, ptr @.str.32 }, %struct.trace_print_flags_u64 { i64 8589934592, ptr @.str.33 }, %struct.trace_print_flags_u64 { i64 17179869184, ptr @.str.34 }, %struct.trace_print_flags_u64 { i64 34359738368, ptr @.str.35 }, %struct.trace_print_flags_u64 { i64 68719476736, ptr @.str.36 }, %struct.trace_print_flags_u64 { i64 274877906944, ptr @.str.37 }, %struct.trace_print_flags_u64 { i64 549755813888, ptr @.str.38 }, %struct.trace_print_flags_u64 { i64 2199023255552, ptr @.str.39 }, %struct.trace_print_flags_u64 { i64 4398046511104, ptr @.str.40 }, %struct.trace_print_flags_u64 { i64 70368744177664, ptr @.str.41 }, %struct.trace_print_flags_u64 { i64 562949953421312, ptr @.str.42 }, %struct.trace_print_flags_u64 { i64 1125899906842624, ptr @.str.43 }, %struct.trace_print_flags_u64 { i64 2251799813685248, ptr @.str.44 }, %struct.trace_print_flags_u64 { i64 4503599627370496, ptr @.str.45 }, %struct.trace_print_flags_u64 { i64 72057594037927936, ptr @.str.46 }, %struct.trace_print_flags_u64 { i64 144115188075855872, ptr @.str.47 }, %struct.trace_print_flags_u64 { i64 288230376151711744, ptr @.str.48 }, %struct.trace_print_flags_u64 { i64 576460752303423488, ptr @.str.49 }, %struct.trace_print_flags_u64 { i64 -1, ptr null }], [176 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"event=%s\0A\00", [22 x i8] zeroinitializer }, align 32
@trace_raw_output_cd321x_irq.__flags = internal constant { [5 x %struct.trace_print_flags_u64], [48 x i8] } { [5 x %struct.trace_print_flags_u64] [%struct.trace_print_flags_u64 { i64 2, ptr @.str.6 }, %struct.trace_print_flags_u64 { i64 512, ptr @.str.24 }, %struct.trace_print_flags_u64 { i64 1024, ptr @.str.25 }, %struct.trace_print_flags_u64 { i64 256, ptr @.str.26 }, %struct.trace_print_flags_u64 { i64 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"conn: %s, pp_5v0: %s, pp_hv: %s, pp_ext: %s, pp_cable: %s, pwr-src: %s, vbus: %s, usb-host: %s, legacy: %s, flags: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 7, ptr @.str.57 }, %struct.trace_print_flags { i32 6, ptr @.str.58 }, %struct.trace_print_flags { i32 4, ptr @.str.59 }, %struct.trace_print_flags { i32 3, ptr @.str.60 }, %struct.trace_print_flags { i32 2, ptr @.str.61 }, %struct.trace_print_flags { i32 1, ptr @.str.62 }, %struct.trace_print_flags { i32 0, ptr @.str.63 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"conn-Ra\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"conn-no-Ra\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no-conn-Ra\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no-conn\00", [24 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.symbols.64 = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.65 }, %struct.trace_print_flags { i32 2, ptr @.str.66 }, %struct.trace_print_flags { i32 1, ptr @.str.67 }, %struct.trace_print_flags { i32 0, ptr @.str.68 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fault\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.symbols.69 = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.65 }, %struct.trace_print_flags { i32 2, ptr @.str.66 }, %struct.trace_print_flags { i32 1, ptr @.str.67 }, %struct.trace_print_flags { i32 0, ptr @.str.68 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.symbols.70 = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.65 }, %struct.trace_print_flags { i32 2, ptr @.str.66 }, %struct.trace_print_flags { i32 1, ptr @.str.67 }, %struct.trace_print_flags { i32 0, ptr @.str.68 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.symbols.71 = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.65 }, %struct.trace_print_flags { i32 2, ptr @.str.66 }, %struct.trace_print_flags { i32 1, ptr @.str.67 }, %struct.trace_print_flags { i32 0, ptr @.str.68 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.symbols.72 = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.73 }, %struct.trace_print_flags { i32 1, ptr @.str.74 }, %struct.trace_print_flags { i32 2, ptr @.str.75 }, %struct.trace_print_flags { i32 0, ptr @.str.76 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin-3p3\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dead-battery\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.symbols.77 = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.78 }, %struct.trace_print_flags { i32 1, ptr @.str.79 }, %struct.trace_print_flags { i32 2, ptr @.str.80 }, %struct.trace_print_flags { i32 3, ptr @.str.67 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vSafe0V\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vSafe5V\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pd\00", [29 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.symbols.81 = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.82 }, %struct.trace_print_flags { i32 2, ptr @.str.83 }, %struct.trace_print_flags { i32 1, ptr @.str.84 }, %struct.trace_print_flags { i32 0, ptr @.str.85 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pd-usb\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"no-pd\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pd-no-usb\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.symbols.86 = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 2, ptr @.str.87 }, %struct.trace_print_flags { i32 1, ptr @.str.88 }, %struct.trace_print_flags { i32 0, ptr @.str.85 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sink\00", [27 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_status.__flags = internal constant { [11 x %struct.trace_print_flags], [40 x i8] } { [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.89 }, %struct.trace_print_flags { i32 16, ptr @.str.90 }, %struct.trace_print_flags { i32 32, ptr @.str.91 }, %struct.trace_print_flags { i32 64, ptr @.str.92 }, %struct.trace_print_flags { i32 128, ptr @.str.93 }, %struct.trace_print_flags { i32 65536, ptr @.str.11 }, %struct.trace_print_flags { i32 67108864, ptr @.str.94 }, %struct.trace_print_flags { i32 134217728, ptr @.str.10 }, %struct.trace_print_flags { i32 268435456, ptr @.str.95 }, %struct.trace_print_flags { i32 536870912, ptr @.str.96 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PLUG_PRESENT\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UPSIDE_DOWN\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PORTROLE\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DATAROLE\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VCONN\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GOTO_MIN_ACTIVE\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HIGH_VOLAGE_WARNING\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HIGH_LOW_VOLTAGE_WARNING\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power_status\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"conn: %d, pwr-role: %s, typec: %s, bc: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_power_status.symbols = internal constant { [3 x %struct.trace_print_flags], [40 x i8] } { [3 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.88 }, %struct.trace_print_flags { i32 0, ptr @.str.87 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_power_status.symbols.100 = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.80 }, %struct.trace_print_flags { i32 2, ptr @.str.101 }, %struct.trace_print_flags { i32 1, ptr @.str.102 }, %struct.trace_print_flags { i32 0, ptr @.str.103 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.0A\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.5A\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_power_status.symbols.104 = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.105 }, %struct.trace_print_flags { i32 2, ptr @.str.106 }, %struct.trace_print_flags { i32 0, ptr @.str.107 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dcp\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cdp\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdp\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"data_status\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%s%s\0A\00", [24 x i8] zeroinitializer }, align 32
@trace_raw_output_tps6598x_data_status.__flags = internal constant { [16 x %struct.trace_print_flags], [32 x i8] } { [16 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.110 }, %struct.trace_print_flags { i32 2, ptr @.str.111 }, %struct.trace_print_flags { i32 4, ptr @.str.112 }, %struct.trace_print_flags { i32 16, ptr @.str.113 }, %struct.trace_print_flags { i32 32, ptr @.str.114 }, %struct.trace_print_flags { i32 64, ptr @.str.115 }, %struct.trace_print_flags { i32 128, ptr @.str.116 }, %struct.trace_print_flags { i32 256, ptr @.str.117 }, %struct.trace_print_flags { i32 512, ptr @.str.118 }, %struct.trace_print_flags { i32 65536, ptr @.str.119 }, %struct.trace_print_flags { i32 131072, ptr @.str.120 }, %struct.trace_print_flags { i32 262144, ptr @.str.121 }, %struct.trace_print_flags { i32 1048576, ptr @.str.122 }, %struct.trace_print_flags { i32 8388608, ptr @.str.123 }, %struct.trace_print_flags { i32 16777216, ptr @.str.124 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DATA_CONNECTION\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DATA_UPSIDE_DOWN\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACTIVE_CABLE\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB2_CONNECTION\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB3_CONNECTION\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"USB3_GEN2\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB_DATA_ROLE\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DP_CONNECTION\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DP_SINK\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TBT_CONNECTION\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TBT_TYPE\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OPTICAL_CABLE\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ACTIVE_LINK_TRAIN\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FORCE_LSX\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"POWER_MISMATCH\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", DP pinout \00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@trace_raw_output_tps6598x_data_status.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.127 }, %struct.trace_print_flags { i32 1, ptr @.str.128 }, %struct.trace_print_flags { i32 2, ptr @.str.129 }, %struct.trace_print_flags { i32 3, ptr @.str.130 }, %struct.trace_print_flags { i32 4, ptr @.str.131 }, %struct.trace_print_flags { i32 6, ptr @.str.132 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [34 x i8] c"../drivers/usb/typec/tipd/trace.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [33 x i8] c"str__tps6598x__trace_system_name\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 36, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant [32 x i8] c"trace_event_fields_tps6598x_irq\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_tps6598x_irq\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"print_fmt_tps6598x_irq\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"event_tps6598x_irq\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [30 x i8] c"trace_event_fields_cd321x_irq\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_cd321x_irq\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"print_fmt_cd321x_irq\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"event_cd321x_irq\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [35 x i8] c"trace_event_fields_tps6598x_status\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_tps6598x_status\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"print_fmt_tps6598x_status\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"event_tps6598x_status\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [41 x i8] c"trace_event_fields_tps6598x_power_status\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_tps6598x_power_status\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [32 x i8] c"print_fmt_tps6598x_power_status\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [28 x i8] c"event_tps6598x_power_status\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [40 x i8] c"trace_event_fields_tps6598x_data_status\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_tps6598x_data_status\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [31 x i8] c"print_fmt_tps6598x_data_status\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"event_tps6598x_data_status\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 197, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 217, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 233, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 260, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@___asan_gen_.595 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.613 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [36 x i8] c"../drivers/usb/typec/tipd/./trace.h\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.614, i32 280, i32 1 }
@llvm.compiler.used = appending global [186 x ptr] [ptr @__bpf_trace_tp_map_cd321x_irq, ptr @__bpf_trace_tp_map_tps6598x_data_status, ptr @__bpf_trace_tp_map_tps6598x_irq, ptr @__bpf_trace_tp_map_tps6598x_power_status, ptr @__bpf_trace_tp_map_tps6598x_status, ptr @__event_cd321x_irq, ptr @__event_tps6598x_data_status, ptr @__event_tps6598x_irq, ptr @__event_tps6598x_power_status, ptr @__event_tps6598x_status, ptr @__tracepoint_cd321x_irq, ptr @__tracepoint_ptr_cd321x_irq, ptr @__tracepoint_ptr_tps6598x_data_status, ptr @__tracepoint_ptr_tps6598x_irq, ptr @__tracepoint_ptr_tps6598x_power_status, ptr @__tracepoint_ptr_tps6598x_status, ptr @__tracepoint_tps6598x_data_status, ptr @__tracepoint_tps6598x_irq, ptr @__tracepoint_tps6598x_power_status, ptr @__tracepoint_tps6598x_status, ptr @event_cd321x_irq, ptr @event_class_cd321x_irq, ptr @event_class_tps6598x_data_status, ptr @event_class_tps6598x_irq, ptr @event_class_tps6598x_power_status, ptr @event_class_tps6598x_status, ptr @event_tps6598x_data_status, ptr @event_tps6598x_irq, ptr @event_tps6598x_power_status, ptr @event_tps6598x_status, ptr @str__tps6598x__trace_system_name, ptr @trace_event_fields_tps6598x_irq, ptr @trace_event_type_funcs_tps6598x_irq, ptr @print_fmt_tps6598x_irq, ptr @trace_event_fields_cd321x_irq, ptr @trace_event_type_funcs_cd321x_irq, ptr @print_fmt_cd321x_irq, ptr @trace_event_fields_tps6598x_status, ptr @trace_event_type_funcs_tps6598x_status, ptr @print_fmt_tps6598x_status, ptr @trace_event_fields_tps6598x_power_status, ptr @trace_event_type_funcs_tps6598x_power_status, ptr @print_fmt_tps6598x_power_status, ptr @trace_event_fields_tps6598x_data_status, ptr @trace_event_type_funcs_tps6598x_data_status, ptr @print_fmt_tps6598x_data_status, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @trace_raw_output_tps6598x_irq.__flags, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @trace_raw_output_tps6598x_irq.__flags.51, ptr @.str.52, ptr @.str.53, ptr @trace_raw_output_cd321x_irq.__flags, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @trace_raw_output_tps6598x_status.symbols, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @trace_raw_output_tps6598x_status.symbols.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @trace_raw_output_tps6598x_status.symbols.69, ptr @trace_raw_output_tps6598x_status.symbols.70, ptr @trace_raw_output_tps6598x_status.symbols.71, ptr @trace_raw_output_tps6598x_status.symbols.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @trace_raw_output_tps6598x_status.symbols.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @trace_raw_output_tps6598x_status.symbols.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @trace_raw_output_tps6598x_status.symbols.86, ptr @.str.87, ptr @.str.88, ptr @trace_raw_output_tps6598x_status.__flags, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @trace_raw_output_tps6598x_power_status.symbols, ptr @trace_raw_output_tps6598x_power_status.symbols.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @trace_raw_output_tps6598x_power_status.symbols.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @trace_raw_output_tps6598x_data_status.__flags, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @trace_raw_output_tps6598x_data_status.symbols, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__tps6598x__trace_system_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tps6598x_irq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tps6598x_irq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tps6598x_irq to i32), i32 4815, i32 6016, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tps6598x_irq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cd321x_irq to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cd321x_irq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cd321x_irq to i32), i32 326, i32 416, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cd321x_irq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tps6598x_status to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tps6598x_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tps6598x_status to i32), i32 10850, i32 13568, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tps6598x_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tps6598x_power_status to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tps6598x_power_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tps6598x_power_status to i32), i32 2039, i32 2528, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tps6598x_power_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tps6598x_data_status to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tps6598x_data_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tps6598x_data_status to i32), i32 2903, i32 3616, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tps6598x_data_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_irq.__flags to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_irq.__flags.51 to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cd321x_irq.__flags to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.symbols.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.symbols.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.symbols.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.symbols.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.symbols.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.symbols.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.symbols.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.symbols.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_status.__flags to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_power_status.symbols to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_power_status.symbols.100 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_power_status.symbols.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_data_status.__flags to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tps6598x_data_status.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tps6598x_irq(ptr nocapture readnone %__data, i64 noundef %event1, i64 noundef %event2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tps6598x_irq, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %event1, i64 noundef %event2) #5
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
define dso_local i32 @__traceiter_cd321x_irq(ptr nocapture readnone %__data, i64 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cd321x_irq, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %event) #5
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
define dso_local i32 @__traceiter_tps6598x_status(ptr nocapture readnone %__data, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tps6598x_status, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %status) #5
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
define dso_local i32 @__traceiter_tps6598x_power_status(ptr nocapture readnone %__data, i16 noundef zeroext %power_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tps6598x_power_status, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i16 noundef zeroext %power_status) #5
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
define dso_local i32 @__traceiter_tps6598x_data_status(ptr nocapture readnone %__data, i32 noundef %data_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tps6598x_data_status, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %data_status) #5
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
define internal void @trace_event_raw_event_tps6598x_irq(ptr noundef %__data, i64 noundef %event1, i64 noundef %event2) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !212

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !213

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %event16 = getelementptr inbounds %struct.trace_event_raw_tps6598x_irq, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %event16 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %event1, ptr %event16, align 8
  %event27 = getelementptr inbounds %struct.trace_event_raw_tps6598x_irq, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %event27 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %event2, ptr %event27, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tps6598x_irq(ptr noundef %__data, i64 noundef %event1, i64 noundef %event2) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !214
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !202) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !202) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %event117 = getelementptr inbounds %struct.trace_event_raw_tps6598x_irq, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %event117 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %event1, ptr %event117, align 8
  %event218 = getelementptr inbounds %struct.trace_event_raw_tps6598x_irq, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %event218 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %event2, ptr %event218, align 8
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #5
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
define internal void @trace_event_raw_event_cd321x_irq(ptr noundef %__data, i64 noundef %event) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !212

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !213

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
  %event6 = getelementptr inbounds %struct.trace_event_raw_cd321x_irq, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %event6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %event, ptr %event6, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cd321x_irq(ptr noundef %__data, i64 noundef %event) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !214
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !202) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !202) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %event17 = getelementptr inbounds %struct.trace_event_raw_cd321x_irq, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %event17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %event, ptr %event17, align 8
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tps6598x_status(ptr noundef %__data, i32 noundef %status) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !212

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !213

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
  %status6 = getelementptr inbounds %struct.trace_event_raw_tps6598x_status, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %status6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %status, ptr %status6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tps6598x_status(ptr noundef %__data, i32 noundef %status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !214
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !202) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !202) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %status17 = getelementptr inbounds %struct.trace_event_raw_tps6598x_status, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %status17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %status, ptr %status17, align 4
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
define internal void @trace_event_raw_event_tps6598x_power_status(ptr noundef %__data, i16 noundef zeroext %power_status) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !212

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !213

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
  %power_status6 = getelementptr inbounds %struct.trace_event_raw_tps6598x_power_status, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %power_status6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %power_status, ptr %power_status6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tps6598x_power_status(ptr noundef %__data, i16 noundef zeroext %power_status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !214
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !202) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !202) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %power_status17 = getelementptr inbounds %struct.trace_event_raw_tps6598x_power_status, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %power_status17 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %power_status, ptr %power_status17, align 4
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
define internal void @trace_event_raw_event_tps6598x_data_status(ptr noundef %__data, i32 noundef %data_status) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !212

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !213

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
  %data_status6 = getelementptr inbounds %struct.trace_event_raw_tps6598x_data_status, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %data_status6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %data_status, ptr %data_status6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tps6598x_data_status(ptr noundef %__data, i32 noundef %data_status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !214
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !202) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !202) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %data_status17 = getelementptr inbounds %struct.trace_event_raw_tps6598x_data_status, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %data_status17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %data_status, ptr %data_status17, align 4
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
define internal void @__bpf_trace_tps6598x_irq(ptr noundef %__data, i64 noundef %event1, i64 noundef %event2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %event1, i64 noundef %event2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cd321x_irq(ptr noundef %__data, i64 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %event) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tps6598x_status(ptr noundef %__data, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %status to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tps6598x_power_status(ptr noundef %__data, i16 noundef zeroext %power_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %power_status to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tps6598x_data_status(ptr noundef %__data, i32 noundef %data_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %data_status to i64
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
define internal i32 @trace_raw_output_tps6598x_irq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %event1 = getelementptr inbounds %struct.trace_event_raw_tps6598x_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %event1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %event1, align 8
  %call1 = tail call ptr @trace_print_flags_seq_u64(ptr noundef %tmp_seq, ptr noundef nonnull @.str.50, i64 noundef %3, ptr noundef nonnull @trace_raw_output_tps6598x_irq.__flags) #5
  %event2 = getelementptr inbounds %struct.trace_event_raw_tps6598x_irq, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %event2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %event2, align 8
  %call3 = tail call ptr @trace_print_flags_seq_u64(ptr noundef %tmp_seq, ptr noundef nonnull @.str.50, i64 noundef %5, ptr noundef nonnull @trace_raw_output_tps6598x_irq.__flags.51) #5
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.3, ptr noundef %call1, ptr noundef %call3) #5
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
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
declare dso_local ptr @trace_print_flags_seq_u64(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cd321x_irq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %event = getelementptr inbounds %struct.trace_event_raw_cd321x_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %event, align 8
  %call1 = tail call ptr @trace_print_flags_seq_u64(ptr noundef %tmp_seq, ptr noundef nonnull @.str.50, i64 noundef %3, ptr noundef nonnull @trace_raw_output_cd321x_irq.__flags) #5
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.53, ptr noundef %call1) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tps6598x_status(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %status = getelementptr inbounds %struct.trace_event_raw_tps6598x_status, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = lshr i32 %3, 1
  %shr = and i32 %and, 7
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr, ptr noundef nonnull @trace_raw_output_tps6598x_status.symbols) #5
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and4 = lshr i32 %5, 8
  %shr5 = and i32 %and4, 3
  %call6 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr5, ptr noundef nonnull @trace_raw_output_tps6598x_status.symbols.64) #5
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %and9 = lshr i32 %7, 10
  %shr10 = and i32 %and9, 3
  %call11 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr10, ptr noundef nonnull @trace_raw_output_tps6598x_status.symbols.69) #5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %and14 = lshr i32 %9, 12
  %shr15 = and i32 %and14, 3
  %call16 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr15, ptr noundef nonnull @trace_raw_output_tps6598x_status.symbols.70) #5
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %and19 = lshr i32 %11, 14
  %shr20 = and i32 %and19, 3
  %call21 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr20, ptr noundef nonnull @trace_raw_output_tps6598x_status.symbols.71) #5
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %and24 = lshr i32 %13, 18
  %shr25 = and i32 %and24, 3
  %call26 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr25, ptr noundef nonnull @trace_raw_output_tps6598x_status.symbols.72) #5
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %and29 = lshr i32 %15, 20
  %shr30 = and i32 %and29, 3
  %call31 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr30, ptr noundef nonnull @trace_raw_output_tps6598x_status.symbols.77) #5
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  %and34 = lshr i32 %17, 22
  %shr35 = and i32 %and34, 3
  %call36 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr35, ptr noundef nonnull @trace_raw_output_tps6598x_status.symbols.81) #5
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %and39 = lshr i32 %19, 24
  %shr40 = and i32 %and39, 3
  %call41 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr40, ptr noundef nonnull @trace_raw_output_tps6598x_status.symbols.86) #5
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  %and44 = and i32 %21, -66912015
  %call45 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.50, i32 noundef %and44, ptr noundef nonnull @trace_raw_output_tps6598x_status.__flags) #5
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.56, ptr noundef %call1, ptr noundef %call6, ptr noundef %call11, ptr noundef %call16, ptr noundef %call21, ptr noundef %call26, ptr noundef %call31, ptr noundef %call36, ptr noundef %call41, ptr noundef %call45) #5
  %call46 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tps6598x_power_status(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %power_status = getelementptr inbounds %struct.trace_event_raw_tps6598x_power_status, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %power_status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %power_status, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 1
  %and4 = lshr i32 %conv, 1
  %shr5 = and i32 %and4, 1
  %call6 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr5, ptr noundef nonnull @trace_raw_output_tps6598x_power_status.symbols) #5
  %4 = ptrtoint ptr %power_status to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %power_status, align 4
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 3
  %shr11 = zext i16 %7 to i32
  %call12 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr11, ptr noundef nonnull @trace_raw_output_tps6598x_power_status.symbols.100) #5
  %8 = ptrtoint ptr %power_status to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %power_status, align 4
  %10 = lshr i16 %9, 5
  %11 = and i16 %10, 3
  %shr17 = zext i16 %11 to i32
  %call18 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %shr17, ptr noundef nonnull @trace_raw_output_tps6598x_power_status.symbols.104) #5
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.99, i32 noundef %and, ptr noundef %call6, ptr noundef %call12, ptr noundef %call18) #5
  %call19 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tps6598x_data_status(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
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
  %data_status = getelementptr inbounds %struct.trace_event_raw_tps6598x_data_status, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_status, align 4
  %and = and i32 %3, -1040190465
  %call1 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.50, i32 noundef %and, ptr noundef nonnull @trace_raw_output_tps6598x_data_status.__flags) #5
  %4 = ptrtoint ptr %data_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_status, align 4
  %and3 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool.not, ptr @.str.126, ptr @.str.125
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = lshr i32 %5, 9
  %shl = and i32 %6, 6
  %and11 = lshr i32 %5, 5
  %shr12 = and i32 %and11, 1
  %or = or i32 %shl, %shr12
  %call13 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %or, ptr noundef nonnull @trace_raw_output_tps6598x_data_status.symbols) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond14 = phi ptr [ %call13, %cond.true ], [ @.str.126, %if.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.109, ptr noundef %call1, ptr noundef nonnull %cond, ptr noundef %cond14) #5
  %call15 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201}
!llvm.named.register.sp = !{!202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__tracepoint_tps6598x_irq, !1, !"__tracepoint_tps6598x_irq", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/tipd/./trace.h", i32 197, i32 1}
!2 = !{ptr @__tracepoint_ptr_tps6598x_irq, !1, !"__tracepoint_ptr_tps6598x_irq", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_tps6598x_irq, !1, !"__SCK__tp_func_tps6598x_irq", i1 false, i1 false}
!4 = !{ptr @__tracepoint_cd321x_irq, !5, !"__tracepoint_cd321x_irq", i1 false, i1 false}
!5 = !{!"../drivers/usb/typec/tipd/./trace.h", i32 217, i32 1}
!6 = !{ptr @__tracepoint_ptr_cd321x_irq, !5, !"__tracepoint_ptr_cd321x_irq", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_cd321x_irq, !5, !"__SCK__tp_func_cd321x_irq", i1 false, i1 false}
!8 = !{ptr @__tracepoint_tps6598x_status, !9, !"__tracepoint_tps6598x_status", i1 false, i1 false}
!9 = !{!"../drivers/usb/typec/tipd/./trace.h", i32 233, i32 1}
!10 = !{ptr @__tracepoint_ptr_tps6598x_status, !9, !"__tracepoint_ptr_tps6598x_status", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_tps6598x_status, !9, !"__SCK__tp_func_tps6598x_status", i1 false, i1 false}
!12 = !{ptr @__tracepoint_tps6598x_power_status, !13, !"__tracepoint_tps6598x_power_status", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/tipd/./trace.h", i32 260, i32 1}
!14 = !{ptr @__tracepoint_ptr_tps6598x_power_status, !13, !"__tracepoint_ptr_tps6598x_power_status", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_tps6598x_power_status, !13, !"__SCK__tp_func_tps6598x_power_status", i1 false, i1 false}
!16 = !{ptr @__tracepoint_tps6598x_data_status, !17, !"__tracepoint_tps6598x_data_status", i1 false, i1 false}
!17 = !{!"../drivers/usb/typec/tipd/./trace.h", i32 280, i32 1}
!18 = !{ptr @__tracepoint_ptr_tps6598x_data_status, !17, !"__tracepoint_ptr_tps6598x_data_status", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_tps6598x_data_status, !17, !"__SCK__tp_func_tps6598x_data_status", i1 false, i1 false}
!20 = !{ptr @event_class_tps6598x_irq, !1, !"event_class_tps6598x_irq", i1 false, i1 false}
!21 = !{ptr @event_tps6598x_irq, !1, !"event_tps6598x_irq", i1 false, i1 false}
!22 = !{ptr @__event_tps6598x_irq, !1, !"__event_tps6598x_irq", i1 false, i1 false}
!23 = !{ptr @event_class_cd321x_irq, !5, !"event_class_cd321x_irq", i1 false, i1 false}
!24 = !{ptr @event_cd321x_irq, !5, !"event_cd321x_irq", i1 false, i1 false}
!25 = !{ptr @__event_cd321x_irq, !5, !"__event_cd321x_irq", i1 false, i1 false}
!26 = !{ptr @event_class_tps6598x_status, !9, !"event_class_tps6598x_status", i1 false, i1 false}
!27 = !{ptr @event_tps6598x_status, !9, !"event_tps6598x_status", i1 false, i1 false}
!28 = !{ptr @__event_tps6598x_status, !9, !"__event_tps6598x_status", i1 false, i1 false}
!29 = !{ptr @event_class_tps6598x_power_status, !13, !"event_class_tps6598x_power_status", i1 false, i1 false}
!30 = !{ptr @event_tps6598x_power_status, !13, !"event_tps6598x_power_status", i1 false, i1 false}
!31 = !{ptr @__event_tps6598x_power_status, !13, !"__event_tps6598x_power_status", i1 false, i1 false}
!32 = !{ptr @event_class_tps6598x_data_status, !17, !"event_class_tps6598x_data_status", i1 false, i1 false}
!33 = !{ptr @event_tps6598x_data_status, !17, !"event_tps6598x_data_status", i1 false, i1 false}
!34 = !{ptr @__event_tps6598x_data_status, !17, !"__event_tps6598x_data_status", i1 false, i1 false}
!35 = !{ptr @__bpf_trace_tp_map_tps6598x_irq, !1, !"__bpf_trace_tp_map_tps6598x_irq", i1 false, i1 false}
!36 = !{ptr @__bpf_trace_tp_map_cd321x_irq, !5, !"__bpf_trace_tp_map_cd321x_irq", i1 false, i1 false}
!37 = !{ptr @__bpf_trace_tp_map_tps6598x_status, !9, !"__bpf_trace_tp_map_tps6598x_status", i1 false, i1 false}
!38 = !{ptr @__bpf_trace_tp_map_tps6598x_power_status, !13, !"__bpf_trace_tp_map_tps6598x_power_status", i1 false, i1 false}
!39 = !{ptr @__bpf_trace_tp_map_tps6598x_data_status, !17, !"__bpf_trace_tp_map_tps6598x_data_status", i1 false, i1 false}
!40 = !{ptr @__tpstrtab_tps6598x_irq, !1, !"__tpstrtab_tps6598x_irq", i1 false, i1 false}
!41 = !{ptr @__tpstrtab_cd321x_irq, !5, !"__tpstrtab_cd321x_irq", i1 false, i1 false}
!42 = !{ptr @__tpstrtab_tps6598x_status, !9, !"__tpstrtab_tps6598x_status", i1 false, i1 false}
!43 = !{ptr @__tpstrtab_tps6598x_power_status, !13, !"__tpstrtab_tps6598x_power_status", i1 false, i1 false}
!44 = !{ptr @__tpstrtab_tps6598x_data_status, !17, !"__tpstrtab_tps6598x_data_status", i1 false, i1 false}
!45 = !{ptr @str__tps6598x__trace_system_name, !46, !"str__tps6598x__trace_system_name", i1 false, i1 false}
!46 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!47 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @trace_event_fields_tps6598x_irq, !1, !"trace_event_fields_tps6598x_irq", i1 false, i1 false}
!51 = !{ptr @trace_event_type_funcs_tps6598x_irq, !1, !"trace_event_type_funcs_tps6598x_irq", i1 false, i1 false}
!52 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.30, !1, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !1, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !1, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.39, !1, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.40, !1, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.41, !1, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.42, !1, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.43, !1, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.44, !1, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.45, !1, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.47, !1, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.48, !1, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.49, !1, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @trace_raw_output_tps6598x_irq.__flags, !1, !"__flags", i1 false, i1 false}
!100 = !{ptr @.str.50, !1, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @trace_raw_output_tps6598x_irq.__flags.51, !1, !"__flags", i1 false, i1 false}
!102 = !{ptr @print_fmt_tps6598x_irq, !1, !"print_fmt_tps6598x_irq", i1 false, i1 false}
!103 = !{ptr @.str.52, !5, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @trace_event_fields_cd321x_irq, !5, !"trace_event_fields_cd321x_irq", i1 false, i1 false}
!105 = !{ptr @trace_event_type_funcs_cd321x_irq, !5, !"trace_event_type_funcs_cd321x_irq", i1 false, i1 false}
!106 = !{ptr @.str.53, !5, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @trace_raw_output_cd321x_irq.__flags, !5, !"__flags", i1 false, i1 false}
!108 = !{ptr @print_fmt_cd321x_irq, !5, !"print_fmt_cd321x_irq", i1 false, i1 false}
!109 = !{ptr @.str.54, !9, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.55, !9, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @trace_event_fields_tps6598x_status, !9, !"trace_event_fields_tps6598x_status", i1 false, i1 false}
!112 = !{ptr @trace_event_type_funcs_tps6598x_status, !9, !"trace_event_type_funcs_tps6598x_status", i1 false, i1 false}
!113 = !{ptr @.str.56, !9, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.57, !9, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.58, !9, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.59, !9, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.60, !9, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.61, !9, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.62, !9, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.63, !9, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @trace_raw_output_tps6598x_status.symbols, !9, !"symbols", i1 false, i1 false}
!122 = !{ptr @.str.65, !9, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.66, !9, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.67, !9, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.68, !9, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @trace_raw_output_tps6598x_status.symbols.64, !9, !"symbols", i1 false, i1 false}
!127 = !{ptr @trace_raw_output_tps6598x_status.symbols.69, !9, !"symbols", i1 false, i1 false}
!128 = !{ptr @trace_raw_output_tps6598x_status.symbols.70, !9, !"symbols", i1 false, i1 false}
!129 = !{ptr @trace_raw_output_tps6598x_status.symbols.71, !9, !"symbols", i1 false, i1 false}
!130 = !{ptr @.str.73, !9, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.74, !9, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.75, !9, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.76, !9, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @trace_raw_output_tps6598x_status.symbols.72, !9, !"symbols", i1 false, i1 false}
!135 = !{ptr @.str.78, !9, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.79, !9, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.80, !9, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @trace_raw_output_tps6598x_status.symbols.77, !9, !"symbols", i1 false, i1 false}
!139 = !{ptr @.str.82, !9, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.83, !9, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.84, !9, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.85, !9, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @trace_raw_output_tps6598x_status.symbols.81, !9, !"symbols", i1 false, i1 false}
!144 = !{ptr @.str.87, !9, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.88, !9, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @trace_raw_output_tps6598x_status.symbols.86, !9, !"symbols", i1 false, i1 false}
!147 = !{ptr @.str.89, !9, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.90, !9, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.91, !9, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.92, !9, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.93, !9, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.94, !9, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.95, !9, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.96, !9, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @trace_raw_output_tps6598x_status.__flags, !9, !"__flags", i1 false, i1 false}
!156 = !{ptr @print_fmt_tps6598x_status, !9, !"print_fmt_tps6598x_status", i1 false, i1 false}
!157 = !{ptr @.str.97, !13, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.98, !13, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @trace_event_fields_tps6598x_power_status, !13, !"trace_event_fields_tps6598x_power_status", i1 false, i1 false}
!160 = !{ptr @trace_event_type_funcs_tps6598x_power_status, !13, !"trace_event_type_funcs_tps6598x_power_status", i1 false, i1 false}
!161 = !{ptr @.str.99, !13, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @trace_raw_output_tps6598x_power_status.symbols, !13, !"symbols", i1 false, i1 false}
!163 = !{ptr @.str.101, !13, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.102, !13, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.103, !13, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @trace_raw_output_tps6598x_power_status.symbols.100, !13, !"symbols", i1 false, i1 false}
!167 = !{ptr @.str.105, !13, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.106, !13, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.107, !13, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @trace_raw_output_tps6598x_power_status.symbols.104, !13, !"symbols", i1 false, i1 false}
!171 = !{ptr @print_fmt_tps6598x_power_status, !13, !"print_fmt_tps6598x_power_status", i1 false, i1 false}
!172 = !{ptr @.str.108, !17, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @trace_event_fields_tps6598x_data_status, !17, !"trace_event_fields_tps6598x_data_status", i1 false, i1 false}
!174 = !{ptr @trace_event_type_funcs_tps6598x_data_status, !17, !"trace_event_type_funcs_tps6598x_data_status", i1 false, i1 false}
!175 = !{ptr @.str.109, !17, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.110, !17, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.111, !17, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.112, !17, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.113, !17, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.114, !17, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.115, !17, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.116, !17, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.117, !17, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.118, !17, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.119, !17, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.120, !17, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.121, !17, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.122, !17, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.123, !17, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.124, !17, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @trace_raw_output_tps6598x_data_status.__flags, !17, !"__flags", i1 false, i1 false}
!192 = !{ptr @.str.125, !17, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.126, !17, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.127, !17, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.128, !17, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.129, !17, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.130, !17, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.131, !17, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.132, !17, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @trace_raw_output_tps6598x_data_status.symbols, !17, !"symbols", i1 false, i1 false}
!201 = !{ptr @print_fmt_tps6598x_data_status, !17, !"print_fmt_tps6598x_data_status", i1 false, i1 false}
!202 = !{!"sp"}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"branch_weights", i32 2000, i32 1}
!213 = !{!"branch_weights", i32 1, i32 2000}
!214 = !{!"auto-init"}
