; ModuleID = '/llk/IR_all_yes/drivers/fsi/fsi-master-ast-cf.c_pt.bc'
source_filename = "../drivers/fsi/fsi-master-ast-cf.c"
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
%union.anon.103 = type { %struct.bpf_raw_event_map }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aspeed_gpio_copro_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.fsi_master = type { %struct.device, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_event_raw_fsi_master_acf_copro_command = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_fsi_master_acf_send_request = type { %struct.trace_entry, i32, i64, i8, i8, [0 x i8] }
%struct.fsi_msg = type { i64, i8 }
%struct.trace_event_raw_fsi_master_acf_copro_response = type { %struct.trace_entry, i32, i8, i8, i32, i8, [0 x i8] }
%struct.trace_event_raw_fsi_master_acf_crc_rsp_error = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_acf_poll_response_busy = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_acf_cmd_abs_addr = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_acf_cmd_rel_addr = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_acf_cmd_same_addr = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.genpool_data_fixed = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsi_master_acf = type { %struct.fsi_master, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i32, i8, i8, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__tpstrtab_fsi_master_acf_copro_command = internal constant [29 x i8] c"fsi_master_acf_copro_command\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_acf_copro_command = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_acf_copro_command }, align 4
@__tracepoint_fsi_master_acf_copro_command = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_acf_copro_command, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_acf_copro_command, ptr null, ptr @__traceiter_fsi_master_acf_copro_command, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_acf_copro_command = internal constant ptr @__tracepoint_fsi_master_acf_copro_command, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_acf_send_request = internal constant [28 x i8] c"fsi_master_acf_send_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_acf_send_request = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_acf_send_request }, align 4
@__tracepoint_fsi_master_acf_send_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_acf_send_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_acf_send_request, ptr null, ptr @__traceiter_fsi_master_acf_send_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_acf_send_request = internal constant ptr @__tracepoint_fsi_master_acf_send_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_acf_copro_response = internal constant [30 x i8] c"fsi_master_acf_copro_response\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_acf_copro_response = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_acf_copro_response }, align 4
@__tracepoint_fsi_master_acf_copro_response = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_acf_copro_response, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_acf_copro_response, ptr null, ptr @__traceiter_fsi_master_acf_copro_response, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_acf_copro_response = internal constant ptr @__tracepoint_fsi_master_acf_copro_response, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_acf_crc_rsp_error = internal constant [29 x i8] c"fsi_master_acf_crc_rsp_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_acf_crc_rsp_error = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_acf_crc_rsp_error }, align 4
@__tracepoint_fsi_master_acf_crc_rsp_error = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_acf_crc_rsp_error, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_acf_crc_rsp_error, ptr null, ptr @__traceiter_fsi_master_acf_crc_rsp_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_acf_crc_rsp_error = internal constant ptr @__tracepoint_fsi_master_acf_crc_rsp_error, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_acf_poll_response_busy = internal constant [34 x i8] c"fsi_master_acf_poll_response_busy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_acf_poll_response_busy = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_acf_poll_response_busy }, align 4
@__tracepoint_fsi_master_acf_poll_response_busy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_acf_poll_response_busy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_acf_poll_response_busy, ptr null, ptr @__traceiter_fsi_master_acf_poll_response_busy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_acf_poll_response_busy = internal constant ptr @__tracepoint_fsi_master_acf_poll_response_busy, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_acf_cmd_abs_addr = internal constant [28 x i8] c"fsi_master_acf_cmd_abs_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_acf_cmd_abs_addr = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_acf_cmd_abs_addr }, align 4
@__tracepoint_fsi_master_acf_cmd_abs_addr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_acf_cmd_abs_addr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_acf_cmd_abs_addr, ptr null, ptr @__traceiter_fsi_master_acf_cmd_abs_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_acf_cmd_abs_addr = internal constant ptr @__tracepoint_fsi_master_acf_cmd_abs_addr, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_acf_cmd_rel_addr = internal constant [28 x i8] c"fsi_master_acf_cmd_rel_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_acf_cmd_rel_addr = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_acf_cmd_rel_addr }, align 4
@__tracepoint_fsi_master_acf_cmd_rel_addr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_acf_cmd_rel_addr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_acf_cmd_rel_addr, ptr null, ptr @__traceiter_fsi_master_acf_cmd_rel_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_acf_cmd_rel_addr = internal constant ptr @__tracepoint_fsi_master_acf_cmd_rel_addr, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_acf_cmd_same_addr = internal constant [29 x i8] c"fsi_master_acf_cmd_same_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_acf_cmd_same_addr = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_acf_cmd_same_addr }, align 4
@__tracepoint_fsi_master_acf_cmd_same_addr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_acf_cmd_same_addr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_acf_cmd_same_addr, ptr null, ptr @__traceiter_fsi_master_acf_cmd_same_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_acf_cmd_same_addr = internal constant ptr @__tracepoint_fsi_master_acf_cmd_same_addr, section "__tracepoints_ptrs", align 4
@str__fsi_master_ast_cf__trace_system_name = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsi_master_ast_cf\00", [46 x i8] zeroinitializer }, align 32
@trace_event_fields_fsi_master_acf_copro_command = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.95 { %struct.anon.96 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_acf_copro_command = internal global %struct.trace_event_class { ptr @str__fsi_master_ast_cf__trace_system_name, ptr @trace_event_raw_event_fsi_master_acf_copro_command, ptr @perf_trace_fsi_master_acf_copro_command, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_acf_copro_command, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_acf_copro_command, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_acf_copro_command, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_acf_copro_command = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_acf_copro_command, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_acf_copro_command = internal global { [51 x i8], [45 x i8] } { [51 x i8] c"\22fsi-acf%d command %08x\22, REC->master_idx, REC->op\00", [45 x i8] zeroinitializer }, align 32
@event_fsi_master_acf_copro_command = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_acf_copro_command, %union.anon.97 { ptr @__tracepoint_fsi_master_acf_copro_command }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_acf_copro_command }, ptr @print_fmt_fsi_master_acf_copro_command, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_acf_copro_command = internal global ptr @event_fsi_master_acf_copro_command, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_acf_send_request = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_fsi_master_acf_send_request = internal global %struct.trace_event_class { ptr @str__fsi_master_ast_cf__trace_system_name, ptr @trace_event_raw_event_fsi_master_acf_send_request, ptr @perf_trace_fsi_master_acf_send_request, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_acf_send_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_acf_send_request, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_acf_send_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_acf_send_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_acf_send_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_acf_send_request = internal global { [101 x i8], [59 x i8] } { [101 x i8] c"\22fsi-acf%d cmd: %016llx/%d/%d\22, REC->master_idx, (unsigned long long)REC->msg, REC->bits, REC->rbits\00", [59 x i8] zeroinitializer }, align 32
@event_fsi_master_acf_send_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_acf_send_request, %union.anon.97 { ptr @__tracepoint_fsi_master_acf_send_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_acf_send_request }, ptr @print_fmt_fsi_master_acf_send_request, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_acf_send_request = internal global ptr @event_fsi_master_acf_send_request, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_acf_copro_response = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.16, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_fsi_master_acf_copro_response = internal global %struct.trace_event_class { ptr @str__fsi_master_ast_cf__trace_system_name, ptr @trace_event_raw_event_fsi_master_acf_copro_response, ptr @perf_trace_fsi_master_acf_copro_response, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_acf_copro_response, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_acf_copro_response, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_acf_copro_response, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_acf_copro_response = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_acf_copro_response, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_acf_copro_response = internal global { [125 x i8], [35 x i8] } { [125 x i8] c"\22fsi-acf%d rsp: tag=%04x crc=%04x data=%08x %c\0A\22, REC->master_idx, REC->rtag, REC->rcrc, REC->rdata, REC->crc_ok ? ' ' : '!'\00", [35 x i8] zeroinitializer }, align 32
@event_fsi_master_acf_copro_response = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_acf_copro_response, %union.anon.97 { ptr @__tracepoint_fsi_master_acf_copro_response }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_acf_copro_response }, ptr @print_fmt_fsi_master_acf_copro_response, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_acf_copro_response = internal global ptr @event_fsi_master_acf_copro_response, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_acf_crc_rsp_error = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_acf_crc_rsp_error = internal global %struct.trace_event_class { ptr @str__fsi_master_ast_cf__trace_system_name, ptr @trace_event_raw_event_fsi_master_acf_crc_rsp_error, ptr @perf_trace_fsi_master_acf_crc_rsp_error, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_acf_crc_rsp_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_acf_crc_rsp_error, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_acf_crc_rsp_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_acf_crc_rsp_error = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_acf_crc_rsp_error, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_acf_crc_rsp_error = internal global { [74 x i8], [54 x i8] } { [74 x i8] c"\22fsi-acf%d CRC error in response retry %d\22, REC->master_idx, REC->retries\00", [54 x i8] zeroinitializer }, align 32
@event_fsi_master_acf_crc_rsp_error = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_acf_crc_rsp_error, %union.anon.97 { ptr @__tracepoint_fsi_master_acf_crc_rsp_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_acf_crc_rsp_error }, ptr @print_fmt_fsi_master_acf_crc_rsp_error, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_acf_crc_rsp_error = internal global ptr @event_fsi_master_acf_crc_rsp_error, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_acf_poll_response_busy = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_acf_poll_response_busy = internal global %struct.trace_event_class { ptr @str__fsi_master_ast_cf__trace_system_name, ptr @trace_event_raw_event_fsi_master_acf_poll_response_busy, ptr @perf_trace_fsi_master_acf_poll_response_busy, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_acf_poll_response_busy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_acf_poll_response_busy, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_acf_poll_response_busy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_acf_poll_response_busy = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_acf_poll_response_busy, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_acf_poll_response_busy = internal global { [77 x i8], [51 x i8] } { [77 x i8] c"\22fsi-acf%d: device reported busy %d times\22, REC->master_idx, REC->busy_count\00", [51 x i8] zeroinitializer }, align 32
@event_fsi_master_acf_poll_response_busy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_acf_poll_response_busy, %union.anon.97 { ptr @__tracepoint_fsi_master_acf_poll_response_busy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_acf_poll_response_busy }, ptr @print_fmt_fsi_master_acf_poll_response_busy, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_acf_poll_response_busy = internal global ptr @event_fsi_master_acf_poll_response_busy, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_acf_cmd_abs_addr = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_acf_cmd_abs_addr = internal global %struct.trace_event_class { ptr @str__fsi_master_ast_cf__trace_system_name, ptr @trace_event_raw_event_fsi_master_acf_cmd_abs_addr, ptr @perf_trace_fsi_master_acf_cmd_abs_addr, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_acf_cmd_abs_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_acf_cmd_abs_addr, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_acf_cmd_abs_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_acf_cmd_abs_addr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_acf_cmd_abs_addr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_acf_cmd_abs_addr = internal global { [62 x i8], [34 x i8] } { [62 x i8] c"\22fsi-acf%d: Sending ABS_ADR %06x\22, REC->master_idx, REC->addr\00", [34 x i8] zeroinitializer }, align 32
@event_fsi_master_acf_cmd_abs_addr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_acf_cmd_abs_addr, %union.anon.97 { ptr @__tracepoint_fsi_master_acf_cmd_abs_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_acf_cmd_abs_addr }, ptr @print_fmt_fsi_master_acf_cmd_abs_addr, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_acf_cmd_abs_addr = internal global ptr @event_fsi_master_acf_cmd_abs_addr, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_acf_cmd_rel_addr = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_acf_cmd_rel_addr = internal global %struct.trace_event_class { ptr @str__fsi_master_ast_cf__trace_system_name, ptr @trace_event_raw_event_fsi_master_acf_cmd_rel_addr, ptr @perf_trace_fsi_master_acf_cmd_rel_addr, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_acf_cmd_rel_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_acf_cmd_rel_addr, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_acf_cmd_rel_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_acf_cmd_rel_addr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_acf_cmd_rel_addr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_acf_cmd_rel_addr = internal global { [66 x i8], [62 x i8] } { [66 x i8] c"\22fsi-acf%d: Sending REL_ADR %03x\22, REC->master_idx, REC->rel_addr\00", [62 x i8] zeroinitializer }, align 32
@event_fsi_master_acf_cmd_rel_addr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_acf_cmd_rel_addr, %union.anon.97 { ptr @__tracepoint_fsi_master_acf_cmd_rel_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_acf_cmd_rel_addr }, ptr @print_fmt_fsi_master_acf_cmd_rel_addr, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_acf_cmd_rel_addr = internal global ptr @event_fsi_master_acf_cmd_rel_addr, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_acf_cmd_same_addr = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_fsi_master_acf_cmd_same_addr = internal global %struct.trace_event_class { ptr @str__fsi_master_ast_cf__trace_system_name, ptr @trace_event_raw_event_fsi_master_acf_cmd_same_addr, ptr @perf_trace_fsi_master_acf_cmd_same_addr, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_acf_cmd_same_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_acf_cmd_same_addr, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_acf_cmd_same_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_acf_cmd_same_addr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_acf_cmd_same_addr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_acf_cmd_same_addr = internal global { [47 x i8], [49 x i8] } { [47 x i8] c"\22fsi-acf%d: Sending SAME_ADR\22, REC->master_idx\00", [49 x i8] zeroinitializer }, align 32
@event_fsi_master_acf_cmd_same_addr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_acf_cmd_same_addr, %union.anon.97 { ptr @__tracepoint_fsi_master_acf_cmd_same_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_acf_cmd_same_addr }, ptr @print_fmt_fsi_master_acf_cmd_same_addr, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_acf_cmd_same_addr = internal global ptr @event_fsi_master_acf_cmd_same_addr, section "_ftrace_events", align 4
@__bpf_trace_tp_map_fsi_master_acf_copro_command = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_acf_copro_command, ptr @__bpf_trace_fsi_master_acf_copro_command, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_acf_send_request = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_acf_send_request, ptr @__bpf_trace_fsi_master_acf_send_request, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_acf_copro_response = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_acf_copro_response, ptr @__bpf_trace_fsi_master_acf_copro_response, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_acf_crc_rsp_error = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_acf_crc_rsp_error, ptr @__bpf_trace_fsi_master_acf_crc_rsp_error, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_acf_poll_response_busy = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_acf_poll_response_busy, ptr @__bpf_trace_fsi_master_acf_poll_response_busy, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_acf_cmd_abs_addr = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_acf_cmd_abs_addr, ptr @__bpf_trace_fsi_master_acf_cmd_abs_addr, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_acf_cmd_rel_addr = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_acf_cmd_rel_addr, ptr @__bpf_trace_fsi_master_acf_cmd_rel_addr, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_acf_cmd_same_addr = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_acf_cmd_same_addr, ptr @__bpf_trace_fsi_master_acf_cmd_same_addr, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__initcall__kmod_fsi_master_ast_cf__313_1440_fsi_master_acf_init6 = internal global ptr @fsi_master_acf_init, section ".initcall6.init", align 4
@fsi_master_acf = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsi_master_acf_probe, ptr @fsi_master_acf_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.27, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsi_master_acf_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsi_master_acf_exit = internal global ptr @fsi_master_acf_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file314 = internal constant [53 x i8] c"fsi_master_ast_cf.file=drivers/fsi/fsi-master-ast-cf\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [30 x i8] c"fsi_master_ast_cf.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"master_idx\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint32_t\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"op\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsi-acf%d command %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint64_t\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bits\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rbits\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fsi-acf%d cmd: %016llx/%d/%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtag\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rcrc\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdata\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crc_ok\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fsi-acf%d rsp: tag=%04x crc=%04x data=%08x %c\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"retries\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fsi-acf%d CRC error in response retry %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"busy_count\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fsi-acf%d: device reported busy %d times\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fsi-acf%d: Sending ABS_ADR %06x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rel_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fsi-acf%d: Sending REL_ADR %03x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fsi-acf%d: Sending SAME_ADR\0A\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsi-master-acf\00", [17 x i8] zeroinitializer }, align 32
@fsi_master_acf_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-cf-fsi-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-cf-fsi-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aspeed,ast2500-cf-fsi-master\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed,ast2500-scu\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed,ast2400-scu\00", [45 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.33, i32 1240, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to find SCU regmap\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsi_master_acf_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/fsi/fsi-master-ast-cf.c\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr = internal global ptr @fsi_master_acf_probe._entry, section ".printk_index", align 4
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.33, i32 1248, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.39 = internal global ptr @fsi_master_acf_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.32, ptr @.str.33, i32 1256, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get data gpio\0A\00", [39 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.43 = internal global ptr @fsi_master_acf_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trans\00", [26 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.33, i32 1265, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get trans gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.47 = internal global ptr @fsi_master_acf_probe._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.32, ptr @.str.33, i32 1273, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get enable gpio\0A\00", [37 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.51 = internal global ptr @fsi_master_acf_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mux\00", [28 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.32, ptr @.str.33, i32 1281, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get mux gpio\0A\00", [40 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.55 = internal global ptr @fsi_master_acf_probe._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.32, ptr @.str.33, i32 1290, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Didn't find reserved memory\0A\00", [35 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.59 = internal global ptr @fsi_master_acf_probe._entry.57, section ".printk_index", align 4
@fsi_master_acf_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.32, ptr @.str.33, i32 1297, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Couldn't address to resource for reserved memory\0A\00", [46 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.62 = internal global ptr @fsi_master_acf_probe._entry.60, section ".printk_index", align 4
@fsi_master_acf_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.32, ptr @.str.33, i32 1305, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Reserved memory has insufficient alignment\0A\00", [52 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.65 = internal global ptr @fsi_master_acf_probe._entry.63, section ".printk_index", align 4
@fsi_master_acf_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.32, ptr @.str.33, ptr @.str.67, i8 1, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsi_master_ast_cf\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DRAM allocation @%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspeed,cvic\00", [20 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.32, ptr @.str.33, i32 1321, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Didn't find CVIC\0A\00", [46 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.71 = internal global ptr @fsi_master_acf_probe._entry.69, section ".printk_index", align 4
@fsi_master_acf_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.32, ptr @.str.33, i32 1328, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error %d mapping CVIC\0A\00", [41 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.74 = internal global ptr @fsi_master_acf_probe._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"copro-sw-interrupts\00", [44 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.32, ptr @.str.33, i32 1334, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't find coprocessor SW interrupt\0A\00", [59 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.78 = internal global ptr @fsi_master_acf_probe._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspeed,sram\00", [20 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.32, ptr @.str.33, i32 1343, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't find sram pool\0A\00", [42 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.82 = internal global ptr @fsi_master_acf_probe._entry.80, section ".printk_index", align 4
@fsi_master_acf_probe._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.32, ptr @.str.33, i32 1353, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate sram from pool\0A\00", [61 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe._entry_ptr.85 = internal global ptr @fsi_master_acf_probe._entry.83, section ".printk_index", align 4
@fsi_master_acf_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.32, ptr @.str.33, ptr @.str.86, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SRAM allocation @%lx\0A\00", [42 x i8] zeroinitializer }, align 32
@fsi_master_acf_gpio_ops = internal constant { %struct.aspeed_gpio_copro_ops, [24 x i8] } { %struct.aspeed_gpio_copro_ops { ptr @fsi_master_acf_gpio_request, ptr @fsi_master_acf_gpio_release }, [24 x i8] zeroinitializer }, align 32
@fsi_master_acf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&master->lock\00", [18 x i8] zeroinitializer }, align 32
@dev_attr_external_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @external_mode_show, ptr @external_mode_store }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsi_master_acf_gpio_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.33, i32 1172, ptr @.str.90, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"GPIO request arbitration timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fsi_master_acf_gpio_request\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsi_master_acf_gpio_request._entry_ptr = internal global ptr @fsi_master_acf_gpio_request._entry, section ".printk_index", align 4
@fsi_master_acf_read.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.91, ptr @.str.33, ptr @.str.92, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsi_master_acf_read\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"read id %d addr %x size %zd\0A\00", [35 x i8] zeroinitializer }, align 32
@fsi_master_acf_read.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.91, ptr @.str.33, ptr @.str.93, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"read id %d addr 0x%08x err: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"include/trace/events/fsi_master_ast_cf.h\00", [55 x i8] zeroinitializer }, align 32
@trace_fsi_master_acf_cmd_same_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_fsi_master_acf_cmd_rel_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_fsi_master_acf_cmd_abs_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fsi_master_acf_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.33, i32 581, ptr @.str.90, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error %d sending command\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsi_master_acf_xfer\00", [44 x i8] zeroinitializer }, align 32
@fsi_master_acf_xfer._entry_ptr = internal global ptr @fsi_master_acf_xfer._entry, section ".printk_index", align 4
@fsi_master_acf_xfer.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.98, ptr @.str.33, ptr @.str.99, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ECRC retry %d\0A\00", [17 x i8] zeroinitializer }, align 32
@trace_fsi_master_acf_send_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@do_copro_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.33, i32 325, ptr @.str.90, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Timeout waiting for coprocessor completion\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_copro_command\00", [47 x i8] zeroinitializer }, align 32
@do_copro_command._entry_ptr = internal global ptr @do_copro_command._entry, section ".printk_index", align 4
@trace_fsi_master_acf_copro_command.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@handle_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.33, i32 495, ptr @.str.90, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error %d clocking zeros for E_POLL\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"handle_response\00", [16 x i8] zeroinitializer }, align 32
@handle_response._entry_ptr = internal global ptr @handle_response._entry, section ".printk_index", align 4
@handle_response._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.33, i32 501, ptr @.str.90, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error %d sending E_POLL\0A\00", [39 x i8] zeroinitializer }, align 32
@handle_response._entry_ptr.106 = internal global ptr @handle_response._entry.104, section ".printk_index", align 4
@handle_response.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.103, ptr @.str.33, ptr @.str.107, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Busy, retrying...\0A\00", [45 x i8] zeroinitializer }, align 32
@handle_response._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.103, ptr @.str.33, i32 532, ptr @.str.90, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error %d clocking zeros for D_POLL\0A\00", [60 x i8] zeroinitializer }, align 32
@handle_response._entry_ptr.110 = internal global ptr @handle_response._entry.108, section ".printk_index", align 4
@handle_response._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.103, ptr @.str.33, i32 539, ptr @.str.90, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error %d sending D_POLL\0A\00", [39 x i8] zeroinitializer }, align 32
@handle_response._entry_ptr.113 = internal global ptr @handle_response._entry.111, section ".printk_index", align 4
@handle_response.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.103, ptr @.str.33, ptr @.str.114, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ERR slave is stuck in busy state, issuing TERM\0A\00", [48 x i8] zeroinitializer }, align 32
@handle_response.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.103, ptr @.str.33, ptr @.str.115, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ERRA received\0A\00", [17 x i8] zeroinitializer }, align 32
@handle_response.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.103, ptr @.str.33, ptr @.str.116, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ERRC received\0A\00", [17 x i8] zeroinitializer }, align 32
@read_copro_response.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.117, ptr @.str.33, ptr @.str.118, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read_copro_response\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad response CRC !\0A\00", [44 x i8] zeroinitializer }, align 32
@trace_fsi_master_acf_copro_response.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_fsi_master_acf_crc_rsp_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dump_ucode_trace.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.119, ptr @.str.33, ptr @.str.120, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dump_ucode_trace\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CMDSTAT:%08x RTAG=%02x RCRC=%02x RDATA=%02x #INT=%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@dump_ucode_trace.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.119, ptr @.str.33, ptr @.str.122, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@send_term._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.33, i32 424, ptr @.str.90, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error %d sending term\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_term\00", [22 x i8] zeroinitializer }, align 32
@send_term._entry_ptr = internal global ptr @send_term._entry, section ".printk_index", align 4
@send_term._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.33, i32 431, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TERM failed; lost communication with slave\0A\00", [52 x i8] zeroinitializer }, align 32
@send_term._entry_ptr.127 = internal global ptr @send_term._entry.125, section ".printk_index", align 4
@send_term._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.33, i32 434, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TERM failed; response %d\0A\00", [38 x i8] zeroinitializer }, align 32
@send_term._entry_ptr.130 = internal global ptr @send_term._entry.128, section ".printk_index", align 4
@trace_fsi_master_acf_poll_response_busy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fsi_master_acf_write.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.131, ptr @.str.33, ptr @.str.132, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsi_master_acf_write\00", [43 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"write id %d addr %x size %zd raw_data: %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@fsi_master_acf_write.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.131, ptr @.str.33, ptr @.str.133, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"write id %d addr 0x%08x err: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@fsi_master_acf_term.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.134, ptr @.str.33, ptr @.str.135, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsi_master_acf_term\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"term id %d\0A\00", [20 x i8] zeroinitializer }, align 32
@fsi_master_acf_break.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.136, ptr @.str.33, ptr @.str.137, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsi_master_acf_break\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sending BREAK\0A\00", [17 x i8] zeroinitializer }, align 32
@fsi_master_acf_link_config.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.138, ptr @.str.33, ptr @.str.139, i8 1, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fsi_master_acf_link_config\00", [37 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Changing delays: send=%d echo=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@fsi_master_acf_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.33, i32 976, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Coprocessor startup timeout !\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsi_master_acf_setup\00", [43 x i8] zeroinitializer }, align 32
@fsi_master_acf_setup._entry_ptr = internal global ptr @fsi_master_acf_setup._entry, section ".printk_index", align 4
@setup_gpios_for_copro._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.33, i32 801, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to assign clock gpio to coprocessor\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"setup_gpios_for_copro\00", [42 x i8] zeroinitializer }, align 32
@setup_gpios_for_copro._entry_ptr = internal global ptr @setup_gpios_for_copro._entry, section ".printk_index", align 4
@setup_gpios_for_copro._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.33, i32 807, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to assign data gpio to coprocessor\0A\00", [53 x i8] zeroinitializer }, align 32
@setup_gpios_for_copro._entry_ptr.146 = internal global ptr @setup_gpios_for_copro._entry.144, section ".printk_index", align 4
@setup_gpios_for_copro._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.33, i32 814, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to assign trans gpio to coprocessor\0A\00", [52 x i8] zeroinitializer }, align 32
@setup_gpios_for_copro._entry_ptr.149 = internal global ptr @setup_gpios_for_copro._entry.147, section ".printk_index", align 4
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cf-fsi-fw.bin\00", [18 x i8] zeroinitializer }, align 32
@load_copro_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.33, i32 842, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error %d to load firmware '%s' !\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"load_copro_firmware\00", [44 x i8] zeroinitializer }, align 32
@load_copro_firmware._entry_ptr = internal global ptr @load_copro_firmware._entry, section ".printk_index", align 4
@load_copro_firmware.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.152, ptr @.str.33, ptr @.str.153, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Looking for image sig %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@load_copro_firmware._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.152, ptr @.str.33, i32 863, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to locate image sig %04x in FW blob\0A\00", [52 x i8] zeroinitializer }, align 32
@load_copro_firmware._entry_ptr.156 = internal global ptr @load_copro_firmware._entry.154, section ".printk_index", align 4
@load_copro_firmware._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.152, ptr @.str.33, i32 869, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"FW size (%zd) bigger than memory reserve (%zd)\0A\00", [48 x i8] zeroinitializer }, align 32
@load_copro_firmware._entry_ptr.159 = internal global ptr @load_copro_firmware._entry.157, section ".printk_index", align 4
@check_firmware_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.33, i32 892, ptr @.str.162, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ColdFire initialized, firmware v%d API v%d.%d (trace %s)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check_firmware_image\00", [43 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@check_firmware_image._entry_ptr = internal global ptr @check_firmware_image._entry, section ".printk_index", align 4
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@check_firmware_image._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.161, ptr @.str.33, i32 895, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unsupported coprocessor API version !\0A\00", [57 x i8] zeroinitializer }, align 32
@check_firmware_image._entry_ptr.167 = internal global ptr @check_firmware_image._entry.165, section ".printk_index", align 4
@copro_enable_sw_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.33, i32 919, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to enable coprocessor interrupt !\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"copro_enable_sw_irq\00", [44 x i8] zeroinitializer }, align 32
@copro_enable_sw_irq._entry_ptr = internal global ptr @copro_enable_sw_irq._entry, section ".printk_index", align 4
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"external_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.174 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.176 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 128, i64 129, i64 130, i64 255]
@___asan_gen_.177 = private unnamed_addr constant [42 x i8] c"str__fsi_master_ast_cf__trace_system_name\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 36, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant [48 x i8] c"trace_event_fields_fsi_master_acf_copro_command\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_fsi_master_acf_copro_command\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [39 x i8] c"print_fmt_fsi_master_acf_copro_command\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [35 x i8] c"event_fsi_master_acf_copro_command\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [47 x i8] c"trace_event_fields_fsi_master_acf_send_request\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_fsi_master_acf_send_request\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [38 x i8] c"print_fmt_fsi_master_acf_send_request\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [34 x i8] c"event_fsi_master_acf_send_request\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [49 x i8] c"trace_event_fields_fsi_master_acf_copro_response\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_fsi_master_acf_copro_response\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [40 x i8] c"print_fmt_fsi_master_acf_copro_response\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [36 x i8] c"event_fsi_master_acf_copro_response\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [48 x i8] c"trace_event_fields_fsi_master_acf_crc_rsp_error\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_fsi_master_acf_crc_rsp_error\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [39 x i8] c"print_fmt_fsi_master_acf_crc_rsp_error\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [35 x i8] c"event_fsi_master_acf_crc_rsp_error\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [53 x i8] c"trace_event_fields_fsi_master_acf_poll_response_busy\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [57 x i8] c"trace_event_type_funcs_fsi_master_acf_poll_response_busy\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [44 x i8] c"print_fmt_fsi_master_acf_poll_response_busy\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [40 x i8] c"event_fsi_master_acf_poll_response_busy\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [47 x i8] c"trace_event_fields_fsi_master_acf_cmd_abs_addr\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_fsi_master_acf_cmd_abs_addr\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [38 x i8] c"print_fmt_fsi_master_acf_cmd_abs_addr\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [34 x i8] c"event_fsi_master_acf_cmd_abs_addr\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [47 x i8] c"trace_event_fields_fsi_master_acf_cmd_rel_addr\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_fsi_master_acf_cmd_rel_addr\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [38 x i8] c"print_fmt_fsi_master_acf_cmd_rel_addr\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [34 x i8] c"event_fsi_master_acf_cmd_rel_addr\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [48 x i8] c"trace_event_fields_fsi_master_acf_cmd_same_addr\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_fsi_master_acf_cmd_same_addr\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [39 x i8] c"print_fmt_fsi_master_acf_cmd_same_addr\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [35 x i8] c"event_fsi_master_acf_cmd_same_addr\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [15 x i8] c"fsi_master_acf\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1431, i32 31 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 10, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 26, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 47, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 70, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 86, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 102, i32 1 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 118, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1433, i32 12 }
@___asan_gen_.363 = private unnamed_addr constant [21 x i8] c"fsi_master_acf_match\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1424, i32 34 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1232, i32 54 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1236, i32 52 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1238, i32 52 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1240, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1246, i32 36 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1248, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1254, i32 36 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1256, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1263, i32 45 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1265, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1271, i32 45 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1273, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1279, i32 45 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1281, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1288, i32 31 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1290, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1297, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1305, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1314, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1319, i32 32 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1321, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1328, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1331, i32 33 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1334, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1340, i32 63 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1343, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1353, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1356, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [24 x i8] c"fsi_master_acf_gpio_ops\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1208, i32 43 }
@___asan_gen_.510 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1381, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [23 x i8] c"dev_attr_external_mode\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1172, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 609, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 614, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant [44 x i8] c"../include/trace/events/fsi_master_ast_cf.h\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 134, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.547, i32 108, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 581, i32 5 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 588, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 324, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 494, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 501, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 526, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 531, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 539, i32 5 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 544, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 551, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 557, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 408, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 446, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 459, i32 19 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 461, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 424, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 430, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 434, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 634, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 639, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 658, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 679, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1072, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 976, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 801, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 807, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 814, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 838, i32 29 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 840, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 851, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 862, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 868, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 890, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 895, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 919, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1125, i32 8 }
@___asan_gen_.768 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.769 = private constant [35 x i8] c"../drivers/fsi/fsi-master-ast-cf.c\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.769, i32 1086, i32 38 }
@llvm.compiler.used = appending global [277 x ptr] [ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__bpf_trace_tp_map_fsi_master_acf_cmd_abs_addr, ptr @__bpf_trace_tp_map_fsi_master_acf_cmd_rel_addr, ptr @__bpf_trace_tp_map_fsi_master_acf_cmd_same_addr, ptr @__bpf_trace_tp_map_fsi_master_acf_copro_command, ptr @__bpf_trace_tp_map_fsi_master_acf_copro_response, ptr @__bpf_trace_tp_map_fsi_master_acf_crc_rsp_error, ptr @__bpf_trace_tp_map_fsi_master_acf_poll_response_busy, ptr @__bpf_trace_tp_map_fsi_master_acf_send_request, ptr @__event_fsi_master_acf_cmd_abs_addr, ptr @__event_fsi_master_acf_cmd_rel_addr, ptr @__event_fsi_master_acf_cmd_same_addr, ptr @__event_fsi_master_acf_copro_command, ptr @__event_fsi_master_acf_copro_response, ptr @__event_fsi_master_acf_crc_rsp_error, ptr @__event_fsi_master_acf_poll_response_busy, ptr @__event_fsi_master_acf_send_request, ptr @__exitcall_fsi_master_acf_exit, ptr @__initcall__kmod_fsi_master_ast_cf__313_1440_fsi_master_acf_init6, ptr @__tracepoint_fsi_master_acf_cmd_abs_addr, ptr @__tracepoint_fsi_master_acf_cmd_rel_addr, ptr @__tracepoint_fsi_master_acf_cmd_same_addr, ptr @__tracepoint_fsi_master_acf_copro_command, ptr @__tracepoint_fsi_master_acf_copro_response, ptr @__tracepoint_fsi_master_acf_crc_rsp_error, ptr @__tracepoint_fsi_master_acf_poll_response_busy, ptr @__tracepoint_fsi_master_acf_send_request, ptr @__tracepoint_ptr_fsi_master_acf_cmd_abs_addr, ptr @__tracepoint_ptr_fsi_master_acf_cmd_rel_addr, ptr @__tracepoint_ptr_fsi_master_acf_cmd_same_addr, ptr @__tracepoint_ptr_fsi_master_acf_copro_command, ptr @__tracepoint_ptr_fsi_master_acf_copro_response, ptr @__tracepoint_ptr_fsi_master_acf_crc_rsp_error, ptr @__tracepoint_ptr_fsi_master_acf_poll_response_busy, ptr @__tracepoint_ptr_fsi_master_acf_send_request, ptr @check_firmware_image._entry, ptr @check_firmware_image._entry.165, ptr @check_firmware_image._entry_ptr, ptr @check_firmware_image._entry_ptr.167, ptr @copro_enable_sw_irq._entry, ptr @copro_enable_sw_irq._entry_ptr, ptr @do_copro_command._entry, ptr @do_copro_command._entry_ptr, ptr @event_class_fsi_master_acf_cmd_abs_addr, ptr @event_class_fsi_master_acf_cmd_rel_addr, ptr @event_class_fsi_master_acf_cmd_same_addr, ptr @event_class_fsi_master_acf_copro_command, ptr @event_class_fsi_master_acf_copro_response, ptr @event_class_fsi_master_acf_crc_rsp_error, ptr @event_class_fsi_master_acf_poll_response_busy, ptr @event_class_fsi_master_acf_send_request, ptr @event_fsi_master_acf_cmd_abs_addr, ptr @event_fsi_master_acf_cmd_rel_addr, ptr @event_fsi_master_acf_cmd_same_addr, ptr @event_fsi_master_acf_copro_command, ptr @event_fsi_master_acf_copro_response, ptr @event_fsi_master_acf_crc_rsp_error, ptr @event_fsi_master_acf_poll_response_busy, ptr @event_fsi_master_acf_send_request, ptr @fsi_master_acf_exit, ptr @fsi_master_acf_gpio_request._entry, ptr @fsi_master_acf_gpio_request._entry_ptr, ptr @fsi_master_acf_probe._entry, ptr @fsi_master_acf_probe._entry.37, ptr @fsi_master_acf_probe._entry.41, ptr @fsi_master_acf_probe._entry.45, ptr @fsi_master_acf_probe._entry.49, ptr @fsi_master_acf_probe._entry.53, ptr @fsi_master_acf_probe._entry.57, ptr @fsi_master_acf_probe._entry.60, ptr @fsi_master_acf_probe._entry.63, ptr @fsi_master_acf_probe._entry.69, ptr @fsi_master_acf_probe._entry.72, ptr @fsi_master_acf_probe._entry.76, ptr @fsi_master_acf_probe._entry.80, ptr @fsi_master_acf_probe._entry.83, ptr @fsi_master_acf_probe._entry_ptr, ptr @fsi_master_acf_probe._entry_ptr.39, ptr @fsi_master_acf_probe._entry_ptr.43, ptr @fsi_master_acf_probe._entry_ptr.47, ptr @fsi_master_acf_probe._entry_ptr.51, ptr @fsi_master_acf_probe._entry_ptr.55, ptr @fsi_master_acf_probe._entry_ptr.59, ptr @fsi_master_acf_probe._entry_ptr.62, ptr @fsi_master_acf_probe._entry_ptr.65, ptr @fsi_master_acf_probe._entry_ptr.71, ptr @fsi_master_acf_probe._entry_ptr.74, ptr @fsi_master_acf_probe._entry_ptr.78, ptr @fsi_master_acf_probe._entry_ptr.82, ptr @fsi_master_acf_probe._entry_ptr.85, ptr @fsi_master_acf_setup._entry, ptr @fsi_master_acf_setup._entry_ptr, ptr @fsi_master_acf_xfer._entry, ptr @fsi_master_acf_xfer._entry_ptr, ptr @handle_response._entry, ptr @handle_response._entry.104, ptr @handle_response._entry.108, ptr @handle_response._entry.111, ptr @handle_response._entry_ptr, ptr @handle_response._entry_ptr.106, ptr @handle_response._entry_ptr.110, ptr @handle_response._entry_ptr.113, ptr @load_copro_firmware._entry, ptr @load_copro_firmware._entry.154, ptr @load_copro_firmware._entry.157, ptr @load_copro_firmware._entry_ptr, ptr @load_copro_firmware._entry_ptr.156, ptr @load_copro_firmware._entry_ptr.159, ptr @send_term._entry, ptr @send_term._entry.125, ptr @send_term._entry.128, ptr @send_term._entry_ptr, ptr @send_term._entry_ptr.127, ptr @send_term._entry_ptr.130, ptr @setup_gpios_for_copro._entry, ptr @setup_gpios_for_copro._entry.144, ptr @setup_gpios_for_copro._entry.147, ptr @setup_gpios_for_copro._entry_ptr, ptr @setup_gpios_for_copro._entry_ptr.146, ptr @setup_gpios_for_copro._entry_ptr.149, ptr @str__fsi_master_ast_cf__trace_system_name, ptr @trace_event_fields_fsi_master_acf_copro_command, ptr @trace_event_type_funcs_fsi_master_acf_copro_command, ptr @print_fmt_fsi_master_acf_copro_command, ptr @trace_event_fields_fsi_master_acf_send_request, ptr @trace_event_type_funcs_fsi_master_acf_send_request, ptr @print_fmt_fsi_master_acf_send_request, ptr @trace_event_fields_fsi_master_acf_copro_response, ptr @trace_event_type_funcs_fsi_master_acf_copro_response, ptr @print_fmt_fsi_master_acf_copro_response, ptr @trace_event_fields_fsi_master_acf_crc_rsp_error, ptr @trace_event_type_funcs_fsi_master_acf_crc_rsp_error, ptr @print_fmt_fsi_master_acf_crc_rsp_error, ptr @trace_event_fields_fsi_master_acf_poll_response_busy, ptr @trace_event_type_funcs_fsi_master_acf_poll_response_busy, ptr @print_fmt_fsi_master_acf_poll_response_busy, ptr @trace_event_fields_fsi_master_acf_cmd_abs_addr, ptr @trace_event_type_funcs_fsi_master_acf_cmd_abs_addr, ptr @print_fmt_fsi_master_acf_cmd_abs_addr, ptr @trace_event_fields_fsi_master_acf_cmd_rel_addr, ptr @trace_event_type_funcs_fsi_master_acf_cmd_rel_addr, ptr @print_fmt_fsi_master_acf_cmd_rel_addr, ptr @trace_event_fields_fsi_master_acf_cmd_same_addr, ptr @trace_event_type_funcs_fsi_master_acf_cmd_same_addr, ptr @print_fmt_fsi_master_acf_cmd_same_addr, ptr @fsi_master_acf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @fsi_master_acf_match, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @fsi_master_acf_gpio_ops, ptr @fsi_master_acf_probe.__key, ptr @.str.87, ptr @dev_attr_external_mode, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171], section "llvm.metadata"
@0 = internal global [198 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__fsi_master_ast_cf__trace_system_name to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_acf_copro_command to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_acf_copro_command to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_acf_copro_command to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_acf_copro_command to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_acf_send_request to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_acf_send_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_acf_send_request to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_acf_send_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_acf_copro_response to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_acf_copro_response to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_acf_copro_response to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_acf_copro_response to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_acf_crc_rsp_error to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_acf_crc_rsp_error to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_acf_crc_rsp_error to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_acf_crc_rsp_error to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_acf_poll_response_busy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_acf_poll_response_busy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_acf_poll_response_busy to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_acf_poll_response_busy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_acf_cmd_abs_addr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_acf_cmd_abs_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_acf_cmd_abs_addr to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_acf_cmd_abs_addr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_acf_cmd_rel_addr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_acf_cmd_rel_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_acf_cmd_rel_addr to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_acf_cmd_rel_addr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_acf_cmd_same_addr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_acf_cmd_same_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_acf_cmd_same_addr to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_acf_cmd_same_addr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_gpio_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_external_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_gpio_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_copro_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_response._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_response._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_response._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_term._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_term._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_term._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_acf_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_gpios_for_copro._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_gpios_for_copro._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_gpios_for_copro._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_copro_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_copro_firmware._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_copro_firmware._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware_image._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copro_enable_sw_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_acf_copro_command(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_copro_command, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %op) #12
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
define dso_local i32 @__traceiter_fsi_master_acf_send_request(ptr nocapture readnone %__data, ptr noundef %master, ptr noundef %cmd, i8 noundef zeroext %rbits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_send_request, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, ptr noundef %cmd, i8 noundef zeroext %rbits) #12
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
define dso_local i32 @__traceiter_fsi_master_acf_copro_response(ptr nocapture readnone %__data, ptr noundef %master, i8 noundef zeroext %rtag, i8 noundef zeroext %rcrc, i32 noundef %rdata, i1 noundef zeroext %crc_ok) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_copro_response, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i8 noundef zeroext %rtag, i8 noundef zeroext %rcrc, i32 noundef %rdata, i1 noundef zeroext %crc_ok) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_fsi_master_acf_crc_rsp_error(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %retries) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_crc_rsp_error, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %retries) #12
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
define dso_local i32 @__traceiter_fsi_master_acf_poll_response_busy(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %busy_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_poll_response_busy, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %busy_count) #12
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
define dso_local i32 @__traceiter_fsi_master_acf_cmd_abs_addr(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_abs_addr, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %addr) #12
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
define dso_local i32 @__traceiter_fsi_master_acf_cmd_rel_addr(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %rel_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_rel_addr, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %rel_addr) #12
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
define dso_local i32 @__traceiter_fsi_master_acf_cmd_same_addr(ptr nocapture readnone %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_same_addr, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master) #12
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
define internal void @trace_event_raw_event_fsi_master_acf_copro_command(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %op) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

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
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_command, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %op7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_command, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %op7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %op, ptr %op7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_acf_copro_command(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %op) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !412) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_command, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %op18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_command, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %op18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %op, ptr %op18, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #12
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
define internal void @trace_event_raw_event_fsi_master_acf_send_request(ptr noundef %__data, ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %cmd, i8 noundef zeroext %rbits) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 8
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cmd, align 8
  %msg7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %msg7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %msg7, align 8
  %bits = getelementptr inbounds %struct.fsi_msg, ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bits, align 8
  %bits8 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %bits8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %bits8, align 8
  %rbits9 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %rbits9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %rbits, ptr %rbits9, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_acf_send_request(ptr noundef %__data, ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %cmd, i8 noundef zeroext %rbits) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !412) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 8
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cmd, align 8
  %msg18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %msg18 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %msg18, align 8
  %bits = getelementptr inbounds %struct.fsi_msg, ptr %cmd, i32 0, i32 1
  %33 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bits, align 8
  %bits19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %bits19 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %bits19, align 8
  %rbits20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %rbits20 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %rbits, ptr %rbits20, align 1
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_acf_copro_response(ptr noundef %__data, ptr nocapture noundef readonly %master, i8 noundef zeroext %rtag, i8 noundef zeroext %rcrc, i32 noundef %rdata, i1 noundef zeroext %crc_ok) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %frombool = zext i1 %crc_ok to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %rtag8 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %rtag8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %rtag, ptr %rtag8, align 4
  %rcrc9 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %rcrc9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %rcrc, ptr %rcrc9, align 1
  %rdata10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %rdata10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rdata, ptr %rdata10, align 4
  %crc_ok12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %crc_ok12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %crc_ok12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_acf_copro_response(ptr noundef %__data, ptr nocapture noundef readonly %master, i8 noundef zeroext %rtag, i8 noundef zeroext %rcrc, i32 noundef %rdata, i1 noundef zeroext %crc_ok) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %frombool = zext i1 %crc_ok to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !412) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call14, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %rtag19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call14, i32 0, i32 2
  %30 = ptrtoint ptr %rtag19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %rtag, ptr %rtag19, align 4
  %rcrc20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call14, i32 0, i32 3
  %31 = ptrtoint ptr %rcrc20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %rcrc, ptr %rcrc20, align 1
  %rdata21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call14, i32 0, i32 4
  %32 = ptrtoint ptr %rdata21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rdata, ptr %rdata21, align 4
  %crc_ok23 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %call14, i32 0, i32 5
  %33 = ptrtoint ptr %crc_ok23 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %crc_ok23, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 28, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_acf_crc_rsp_error(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %retries) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

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
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_crc_rsp_error, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %retries7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_crc_rsp_error, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %retries7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retries, ptr %retries7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_acf_crc_rsp_error(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %retries) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !412) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_crc_rsp_error, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %retries18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_crc_rsp_error, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %retries18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retries, ptr %retries18, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_acf_poll_response_busy(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %busy_count) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

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
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_poll_response_busy, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %busy_count7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_poll_response_busy, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %busy_count7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %busy_count, ptr %busy_count7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_acf_poll_response_busy(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %busy_count) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !412) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_poll_response_busy, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %busy_count18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_poll_response_busy, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %busy_count18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %busy_count, ptr %busy_count18, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_acf_cmd_abs_addr(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

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
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_abs_addr, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %addr7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_abs_addr, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %addr7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %addr, ptr %addr7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_acf_cmd_abs_addr(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !412) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_abs_addr, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %addr18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_abs_addr, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %addr18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %addr, ptr %addr18, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_acf_cmd_rel_addr(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %rel_addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

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
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_rel_addr, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %rel_addr7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_rel_addr, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %rel_addr7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rel_addr, ptr %rel_addr7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_acf_cmd_rel_addr(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %rel_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !412) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_rel_addr, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %rel_addr18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_rel_addr, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %rel_addr18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %rel_addr, ptr %rel_addr18, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_acf_cmd_same_addr(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !422

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !423

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_same_addr, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_acf_cmd_same_addr(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !424
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !412) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %idx = getelementptr inbounds %struct.fsi_master, ptr %master, i32 0, i32 1
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 8
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_same_addr, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_acf_copro_command(ptr noundef %__data, ptr noundef %master, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %op to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_acf_send_request(ptr noundef %__data, ptr noundef %master, ptr noundef %cmd, i8 noundef zeroext %rbits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %cmd to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i8 %rbits to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_acf_copro_response(ptr noundef %__data, ptr noundef %master, i8 noundef zeroext %rtag, i8 noundef zeroext %rcrc, i32 noundef %rdata, i1 noundef zeroext %crc_ok) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %rtag to i64
  %conv8 = zext i8 %rcrc to i64
  %conv12 = zext i32 %rdata to i64
  %conv17 = zext i1 %crc_ok to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv17) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_acf_crc_rsp_error(ptr noundef %__data, ptr noundef %master, i32 noundef %retries) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %retries to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_acf_poll_response_busy(ptr noundef %__data, ptr noundef %master, i32 noundef %busy_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %busy_count to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_acf_cmd_abs_addr(ptr noundef %__data, ptr noundef %master, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %addr to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_acf_cmd_rel_addr(ptr noundef %__data, ptr noundef %master, i32 noundef %rel_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %rel_addr to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_acf_cmd_same_addr(ptr noundef %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsi_master_acf, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsi_master_acf_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsi_master_acf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_acf_copro_command(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_command, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %op = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_command, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %5) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
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
define internal i32 @trace_raw_output_fsi_master_acf_send_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 8
  %msg = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %msg, align 8
  %bits = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits, align 8
  %conv = zext i8 %7 to i32
  %rbits = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_send_request, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rbits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rbits, align 1
  %conv1 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.10, i32 noundef %3, i64 noundef %5, i32 noundef %conv, i32 noundef %conv1) #12
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_acf_copro_response(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %rtag = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rtag to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rtag, align 4
  %conv = zext i8 %5 to i32
  %rcrc = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rcrc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rcrc, align 1
  %conv1 = zext i8 %7 to i32
  %rdata = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdata, align 4
  %crc_ok = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_copro_response, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %crc_ok to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %crc_ok, align 4, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool.not, i32 33, i32 32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, i32 noundef %3, i32 noundef %conv, i32 noundef %conv1, i32 noundef %9, i32 noundef %cond) #12
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_acf_crc_rsp_error(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_crc_rsp_error, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %retries = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_crc_rsp_error, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %retries, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %5) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_acf_poll_response_busy(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_poll_response_busy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %busy_count = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_poll_response_busy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %busy_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy_count, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.21, i32 noundef %3, i32 noundef %5) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_acf_cmd_abs_addr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_abs_addr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_abs_addr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef %5) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_acf_cmd_rel_addr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_rel_addr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %rel_addr = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_rel_addr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rel_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rel_addr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.25, i32 noundef %3, i32 noundef %5) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_acf_cmd_same_addr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_acf_cmd_same_addr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.26, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i378 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %gpdf = alloca %struct.genpool_data_fixed, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i368 = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpdf) #12
  %2 = ptrtoint ptr %gpdf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gpdf, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #12
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %4 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1232) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %dev_of_node.exit.cleanup_crit_edge, label %if.end

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %dev3 = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev3, align 8
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %last_addr = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 27
  %8 = ptrtoint ptr %last_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %last_addr, align 4
  %call7 = tail call i32 @of_device_is_compatible(ptr noundef %retval.0.i368, ptr noundef nonnull @.str.28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8 = icmp ne i32 %call7, 0
  %is_ast2500 = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 24
  %frombool = zext i1 %tobool8 to i8
  %9 = ptrtoint ptr %is_ast2500 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %is_ast2500, align 8
  %.str.29..str.30 = select i1 %tobool8, ptr @.str.29, ptr @.str.30
  %call13 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull %.str.29..str.30) #12
  %10 = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %10, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #16
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %err_free

if.end22:                                         ; preds = %if.end
  %call24 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef 0) #12
  %cmp.i369 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i369, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #16
  %15 = ptrtoint ptr %call24 to i32
  br label %err_free

if.end32:                                         ; preds = %if.end22
  %gpio_clk = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %gpio_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call24, ptr %gpio_clk, align 4
  %call34 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef 0) #12
  %cmp.i370 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i370, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42) #16
  %17 = ptrtoint ptr %call34 to i32
  br label %err_free

if.end42:                                         ; preds = %if.end32
  %gpio_data = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call34, ptr %gpio_data, align 8
  %call44 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef 0) #12
  %cmp.i371 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i371, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #16
  %19 = ptrtoint ptr %call44 to i32
  br label %err_free

if.end52:                                         ; preds = %if.end42
  %gpio_trans = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %gpio_trans to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call44, ptr %gpio_trans, align 4
  %call54 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef 0) #12
  %cmp.i372 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i372, label %do.end59, label %if.end62

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #16
  %21 = ptrtoint ptr %call54 to i32
  br label %err_free

if.end62:                                         ; preds = %if.end52
  %gpio_enable = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %gpio_enable to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call54, ptr %gpio_enable, align 8
  %call64 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef 0) #12
  %cmp.i373 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i373, label %do.end69, label %if.end72

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #16
  %23 = ptrtoint ptr %call64 to i32
  br label %err_free

if.end72:                                         ; preds = %if.end62
  %gpio_mux = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %gpio_mux to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call64, ptr %gpio_mux, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #12
  %25 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %retval.0.i368, ptr noundef nonnull @.str.56, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i374 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i374, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #12
  br label %do.end78

of_parse_phandle.exit:                            ; preds = %if.end72
  %26 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #12
  %tobool74.not = icmp eq ptr %27, null
  br i1 %tobool74.not, label %of_parse_phandle.exit.do.end78_crit_edge, label %if.end80

of_parse_phandle.exit.do.end78_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

do.end78:                                         ; preds = %of_parse_phandle.exit.do.end78_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #16
  br label %err_free

if.end80:                                         ; preds = %of_parse_phandle.exit
  %call81 = call i32 @of_address_to_resource(ptr noundef nonnull %27, i32 noundef 0, ptr noundef nonnull %res) #12
  call void @of_node_put(ptr noundef nonnull %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end88, label %do.end86

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #16
  br label %err_free

if.end88:                                         ; preds = %if.end80
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %30 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %res, align 4
  %sub.i = add i32 %29, 1
  %add.i = sub i32 %sub.i, %31
  %cf_mem_size = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 19
  %32 = ptrtoint ptr %cf_mem_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i, ptr %cf_mem_size, align 4
  %cf_mem_addr = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 18
  %33 = ptrtoint ptr %cf_mem_addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %cf_mem_addr, align 8
  %34 = ptrtoint ptr %is_ast2500 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_ast2500, align 8, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool91.not = icmp eq i8 %35, 0
  %sub = select i1 %tobool91.not, i32 2097151, i32 1048575
  %and = and i32 %sub, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  br i1 %tobool93.not, label %if.end99, label %do.end97

do.end97:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64) #16
  br label %err_free

if.end99:                                         ; preds = %if.end88
  %call101 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %res) #12
  %cf_mem = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 20
  %36 = ptrtoint ptr %cf_mem to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call101, ptr %cf_mem, align 8
  %cmp.i377 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i377, label %if.then104, label %do.body108

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %call101 to i32
  br label %err_free

do.body108:                                       ; preds = %if.end99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_probe, %if.then114)) #12
          to label %do.end119 [label %if.then114], !srcloc !426

if.then114:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %cf_mem_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cf_mem_addr, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_probe.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %39) #12
  br label %do.end119

do.end119:                                        ; preds = %if.then114, %do.body108
  %40 = ptrtoint ptr %is_ast2500 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_ast2500, align 8, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool121.not = icmp eq i8 %41, 0
  br i1 %tobool121.not, label %do.end119.if.end151_crit_edge, label %if.then122

do.end119.if.end151_crit_edge:                    ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then122:                                       ; preds = %do.end119
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i378) #12
  %42 = call ptr @memset(ptr %args.i378, i32 255, i32 72)
  %call.i379 = call i32 @__of_parse_phandle_with_args(ptr noundef %retval.0.i368, ptr noundef nonnull @.str.68, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i378) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379)
  %tobool.not.i380 = icmp eq i32 %call.i379, 0
  br i1 %tobool.not.i380, label %of_parse_phandle.exit383, label %of_parse_phandle.exit383.thread

of_parse_phandle.exit383.thread:                  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i378) #12
  br label %do.end128

of_parse_phandle.exit383:                         ; preds = %if.then122
  %43 = ptrtoint ptr %args.i378 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %args.i378, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i378) #12
  %tobool124.not = icmp eq ptr %44, null
  br i1 %tobool124.not, label %of_parse_phandle.exit383.do.end128_crit_edge, label %if.end130

of_parse_phandle.exit383.do.end128_crit_edge:     ; preds = %of_parse_phandle.exit383
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end128

do.end128:                                        ; preds = %of_parse_phandle.exit383.do.end128_crit_edge, %of_parse_phandle.exit383.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70) #16
  br label %err_free

if.end130:                                        ; preds = %of_parse_phandle.exit383
  %call132 = call ptr @devm_of_iomap(ptr noundef %dev, ptr noundef nonnull %44, i32 noundef 0, ptr noundef null) #12
  %cvic = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 21
  %45 = ptrtoint ptr %cvic to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call132, ptr %cvic, align 4
  %cmp.i384 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i384, label %if.then135, label %if.end142

if.then135:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %call132 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %46) #16
  br label %err_free

if.end142:                                        ; preds = %if.end130
  %cvic_sw_irq = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 30
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %44, ptr noundef nonnull @.str.75, ptr noundef %cvic_sw_irq, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool144.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool144.not, label %if.end142.if.end151_crit_edge, label %do.end148

if.end142.if.end151_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

do.end148:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77) #16
  br label %err_free

if.end151:                                        ; preds = %if.end142.if.end151_crit_edge, %do.end119.if.end151_crit_edge
  br i1 %tobool.not.i, label %if.end151.dev_of_node.exit389_crit_edge, label %if.end.i387

if.end151.dev_of_node.exit389_crit_edge:          ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_of_node.exit389

if.end.i387:                                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  %of_node.i386 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %47 = ptrtoint ptr %of_node.i386 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node.i386, align 8
  br label %dev_of_node.exit389

dev_of_node.exit389:                              ; preds = %if.end.i387, %if.end151.dev_of_node.exit389_crit_edge
  %retval.0.i388 = phi ptr [ %48, %if.end.i387 ], [ null, %if.end151.dev_of_node.exit389_crit_edge ]
  %call154 = call ptr @of_gen_pool_get(ptr noundef %retval.0.i388, ptr noundef nonnull @.str.79, i32 noundef 0) #12
  %sram_pool = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 22
  %49 = ptrtoint ptr %sram_pool to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call154, ptr %sram_pool, align 8
  %tobool156.not = icmp eq ptr %call154, null
  br i1 %tobool156.not, label %if.then157, label %if.end162

if.then157:                                       ; preds = %dev_of_node.exit389
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81) #16
  br label %err_free

if.end162:                                        ; preds = %dev_of_node.exit389
  %50 = ptrtoint ptr %gpdf to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %gpdf, align 4
  %call.i390 = call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call154, i32 noundef 4096, ptr noundef nonnull @gen_pool_fixed_alloc, ptr noundef nonnull %gpdf, ptr noundef null) #12
  %51 = inttoptr i32 %call.i390 to ptr
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 23
  %52 = ptrtoint ptr %sram to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %sram, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i390)
  %tobool166.not = icmp eq i32 %call.i390, 0
  br i1 %tobool166.not, label %if.then167, label %do.body173

if.then167:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84) #16
  br label %err_free

do.body173:                                       ; preds = %if.end162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_probe, %if.then185)) #12
          to label %do.end192 [label %if.then185], !srcloc !426

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %sram_pool to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sram_pool, align 8
  %55 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sram, align 4
  %57 = ptrtoint ptr %56 to i32
  %call189 = call i32 @gen_pool_virt_to_phys(ptr noundef %54, i32 noundef %57) #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_probe.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.86, i32 noundef %call189) #12
  br label %do.end192

do.end192:                                        ; preds = %if.then185, %do.body173
  %call193 = call i32 @aspeed_gpio_copro_set_ops(ptr noundef nonnull @fsi_master_acf_gpio_ops, ptr noundef nonnull %call7.i.i) #12
  %t_send_delay = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 28
  %58 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 16, ptr %t_send_delay, align 8
  %t_echo_delay = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 29
  %59 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 16, ptr %t_echo_delay, align 1
  %n_links = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %n_links to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %n_links, align 4
  %61 = ptrtoint ptr %is_ast2500 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_ast2500, align 8, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool196.not = icmp eq i8 %62, 0
  br i1 %tobool196.not, label %do.end192.if.end199_crit_edge, label %if.then197

do.end192.if.end199_crit_edge:                    ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end199

if.then197:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %flags, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %do.end192.if.end199_crit_edge
  %read = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 5
  %64 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @fsi_master_acf_read, ptr %read, align 8
  %write = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 6
  %65 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @fsi_master_acf_write, ptr %write, align 4
  %term = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 7
  %66 = ptrtoint ptr %term to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @fsi_master_acf_term, ptr %term, align 8
  %send_break = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %send_break to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @fsi_master_acf_break, ptr %send_break, align 4
  %link_enable = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 9
  %68 = ptrtoint ptr %link_enable to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @fsi_master_acf_link_enable, ptr %link_enable, align 8
  %link_config = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 10
  %69 = ptrtoint ptr %link_config to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @fsi_master_acf_link_config, ptr %link_config, align 4
  %70 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev3, align 8
  %tobool.not.i391 = icmp eq ptr %71, null
  br i1 %tobool.not.i391, label %if.end199.dev_of_node.exit395_crit_edge, label %if.end.i393

if.end199.dev_of_node.exit395_crit_edge:          ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_of_node.exit395

if.end.i393:                                      ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  %of_node.i392 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 27
  %72 = ptrtoint ptr %of_node.i392 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %of_node.i392, align 8
  br label %dev_of_node.exit395

dev_of_node.exit395:                              ; preds = %if.end.i393, %if.end199.dev_of_node.exit395_crit_edge
  %retval.0.i394 = phi ptr [ %73, %if.end.i393 ], [ null, %if.end199.dev_of_node.exit395_crit_edge ]
  %call208 = call ptr @of_node_get(ptr noundef %retval.0.i394) #12
  %of_node = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %74 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call208, ptr %of_node, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %75 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @fsi_master_acf_release, ptr %release, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.fsi_master_acf, ptr %call7.i.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.87, ptr noundef nonnull @fsi_master_acf_probe.__key) #12
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %call217 = call fastcc i32 @fsi_master_acf_setup(ptr noundef nonnull %call7.i.i)
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool219.not = icmp eq i32 %call217, 0
  br i1 %tobool219.not, label %if.end221, label %dev_of_node.exit395.release_of_dev_crit_edge

dev_of_node.exit395.release_of_dev_crit_edge:     ; preds = %dev_of_node.exit395
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_of_dev

if.end221:                                        ; preds = %dev_of_node.exit395
  %call223 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_external_mode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.end226, label %stop_copro

if.end226:                                        ; preds = %if.end221
  %call228 = call i32 @fsi_master_register(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.end226.cleanup_crit_edge, label %if.end231

if.end226.cleanup_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end231:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev3, align 8
  call void @device_remove_file(ptr noundef %78, ptr noundef nonnull @dev_attr_external_mode) #12
  call void @put_device(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

stop_copro:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @fsi_master_acf_terminate(ptr noundef nonnull %call7.i.i)
  br label %release_of_dev

release_of_dev:                                   ; preds = %stop_copro, %dev_of_node.exit395.release_of_dev_crit_edge
  %rc.0 = phi i32 [ %call217, %dev_of_node.exit395.release_of_dev_crit_edge ], [ %call223, %stop_copro ]
  %call235 = call i32 @aspeed_gpio_copro_set_ops(ptr noundef null, ptr noundef null) #12
  %79 = ptrtoint ptr %sram_pool to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sram_pool, align 8
  %81 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sram, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @gen_pool_free_owner(ptr noundef %80, i32 noundef %83, i32 noundef 4096, ptr noundef null) #12
  %84 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev3, align 8
  %tobool.not.i396 = icmp eq ptr %85, null
  br i1 %tobool.not.i396, label %release_of_dev.dev_of_node.exit400_crit_edge, label %if.end.i398

release_of_dev.dev_of_node.exit400_crit_edge:     ; preds = %release_of_dev
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_of_node.exit400

if.end.i398:                                      ; preds = %release_of_dev
  call void @__sanitizer_cov_trace_pc() #14
  %of_node.i397 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 27
  %86 = ptrtoint ptr %of_node.i397 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %of_node.i397, align 8
  br label %dev_of_node.exit400

dev_of_node.exit400:                              ; preds = %if.end.i398, %release_of_dev.dev_of_node.exit400_crit_edge
  %retval.0.i399 = phi ptr [ %87, %if.end.i398 ], [ null, %release_of_dev.dev_of_node.exit400_crit_edge ]
  call void @of_node_put(ptr noundef %retval.0.i399) #12
  br label %err_free

err_free:                                         ; preds = %dev_of_node.exit400, %if.then167, %if.then157, %do.end148, %if.then135, %do.end128, %if.then104, %do.end97, %do.end86, %do.end78, %do.end69, %do.end59, %do.end49, %do.end39, %do.end29, %do.end
  %rc.1 = phi i32 [ %14, %do.end ], [ %15, %do.end29 ], [ %17, %do.end39 ], [ %19, %do.end49 ], [ %21, %do.end59 ], [ %23, %do.end69 ], [ -12, %do.end86 ], [ -12, %do.end97 ], [ %37, %if.then104 ], [ %46, %if.then135 ], [ %call.i.i, %do.end148 ], [ %rc.0, %dev_of_node.exit400 ], [ -12, %if.then167 ], [ -19, %if.then157 ], [ -22, %do.end128 ], [ -22, %do.end78 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end231, %if.end226.cleanup_crit_edge, %dev_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %err_free ], [ %call228, %if.end231 ], [ -12, %dev_of_node.exit.cleanup_crit_edge ], [ 0, %if.end226.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpdf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @dev_attr_external_mode) #12
  tail call void @fsi_master_unregister(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_iomap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_fixed_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aspeed_gpio_copro_set_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_read(ptr noundef %_master, i32 noundef %link, i8 noundef zeroext %id, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #0 align 64 {
entry:
  %cmd = alloca %struct.fsi_msg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #12
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link)
  %cmp.not = icmp eq i32 %link, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_read.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_read, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !426

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %conv = zext i8 %id to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_read.__UNIQUE_ID_ddebug303, ptr noundef %2, ptr noundef nonnull @.str.92, i32 noundef %conv, i32 noundef %addr, i32 noundef %size) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  call fastcc void @build_ar_command(ptr noundef %_master, ptr noundef nonnull %cmd, i8 noundef zeroext %id, i32 noundef %addr, i32 noundef %size, ptr noundef null)
  %call6 = call fastcc i32 @fsi_master_acf_xfer(ptr noundef %_master, i8 noundef zeroext %id, ptr noundef nonnull %cmd, i32 noundef %size, ptr noundef %val)
  %conv7 = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp eq i32 %call6, 0
  %and.i = shl nuw nsw i32 %conv7, 21
  %shl.i = and i32 %and.i, 6291456
  %and1.i = and i32 %addr, -4
  %or.i = or i32 %shl.i, %and1.i
  %.sink.i = select i1 %cmp8, i32 %or.i, i32 1
  %3 = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 27
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink.i, ptr %3, align 4
  br i1 %cmp8, label %do.end.if.end30_crit_edge, label %do.body12

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_read.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_read, %if.then24)) #12
          to label %if.end30 [label %if.then24], !srcloc !426

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %dev25 = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 1
  %5 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev25, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_read.__UNIQUE_ID_ddebug304, ptr noundef %6, ptr noundef nonnull @.str.93, i32 noundef %conv7, i32 noundef %addr, i32 noundef %call6) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %do.body12, %do.end.if.end30_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end30 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_write(ptr noundef %_master, i32 noundef %link, i8 noundef zeroext %id, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #0 align 64 {
entry:
  %cmd = alloca %struct.fsi_msg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #12
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link)
  %cmp.not = icmp eq i32 %link, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  call fastcc void @build_ar_command(ptr noundef %_master, ptr noundef nonnull %cmd, i8 noundef zeroext %id, i32 noundef %addr, i32 noundef %size, ptr noundef %val)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_write.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_write, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !426

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %conv = zext i8 %id to i32
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_write.__UNIQUE_ID_ddebug305, ptr noundef %2, ptr noundef nonnull @.str.132, i32 noundef %conv, i32 noundef %addr, i32 noundef %size, i32 noundef %4) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %call6 = call fastcc i32 @fsi_master_acf_xfer(ptr noundef %_master, i8 noundef zeroext %id, ptr noundef nonnull %cmd, i32 noundef 0, ptr noundef null)
  %conv7 = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8 = icmp eq i32 %call6, 0
  %and.i = shl nuw nsw i32 %conv7, 21
  %shl.i = and i32 %and.i, 6291456
  %and1.i = and i32 %addr, -4
  %or.i = or i32 %shl.i, %and1.i
  %.sink.i = select i1 %cmp8, i32 %or.i, i32 1
  %5 = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 27
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink.i, ptr %5, align 4
  br i1 %cmp8, label %do.end.if.end30_crit_edge, label %do.body12

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_write.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_write, %if.then24)) #12
          to label %if.end30 [label %if.then24], !srcloc !426

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %dev25 = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 1
  %7 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev25, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_write.__UNIQUE_ID_ddebug306, ptr noundef %8, ptr noundef nonnull @.str.133, i32 noundef %conv7, i32 noundef %addr, i32 noundef %call6) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %do.body12, %do.end.if.end30_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end30 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_term(ptr noundef %_master, i32 noundef %link, i8 noundef zeroext %id) #0 align 64 {
entry:
  %cmd = alloca %struct.fsi_msg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #12
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link)
  %cmp.not = icmp eq i32 %link, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %bits.i = getelementptr inbounds %struct.fsi_msg, ptr %cmd, i32 0, i32 1
  %2 = shl i8 %id, 6
  %3 = or i8 %2, 63
  %or.i7.i = zext i8 %3 to i64
  %call.i.i = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef 1, i32 noundef 1) #12
  %call9.i.i = tail call zeroext i8 @crc4(i8 noundef zeroext %call.i.i, i64 noundef %or.i7.i, i32 noundef 8) #12
  %4 = and i8 %call9.i.i, 15
  %and.i.i.i = zext i8 %4 to i64
  %5 = ptrtoint ptr %bits.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 12, ptr %bits.i, align 8
  %6 = shl nuw i64 %or.i7.i, 56
  %7 = shl nuw nsw i64 %and.i.i.i, 52
  %shl.i17.i = or i64 %6, %7
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shl.i17.i, ptr %cmd, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_term.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_term, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !426

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %conv = zext i8 %id to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_term.__UNIQUE_ID_ddebug307, ptr noundef %10, ptr noundef nonnull @.str.135, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %call6 = call fastcc i32 @fsi_master_acf_xfer(ptr noundef %_master, i8 noundef zeroext %id, ptr noundef nonnull %cmd, i32 noundef 0, ptr noundef null)
  %11 = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 27
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %11, align 4
  call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_break(ptr noundef %_master, i32 noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link)
  %cmp.not = icmp eq i32 %link, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %external_mode = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 25
  %0 = ptrtoint ptr %external_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %external_mode, align 1, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_break.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_break, %if.then8)) #12
          to label %do.end [label %if.then8], !srcloc !426

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_break.__UNIQUE_ID_ddebug308, ptr noundef %3, ptr noundef nonnull @.str.137) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call10 = tail call fastcc i32 @do_copro_command(ptr noundef %_master, i32 noundef 2)
  %4 = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 27
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 42949600) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then1 ], [ %call10, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_link_enable(ptr noundef %_master, i32 noundef %link, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link)
  %cmp.not = icmp eq i32 %link, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %external_mode = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 25
  %0 = ptrtoint ptr %external_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %external_mode, align 1, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %gpio_enable = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 7
  %2 = ptrtoint ptr %gpio_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_enable, align 8
  %cond = zext i1 %enable to i32
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef %cond) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %rc.0 = phi i32 [ -16, %if.end.if.end3_crit_edge ], [ 0, %if.then1 ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end3 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_link_config(ptr noundef %_master, i32 noundef %link, i8 noundef zeroext %t_send_delay, i8 noundef zeroext %t_echo_delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link)
  %cmp.not = icmp eq i32 %link, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %t_send_delay1 = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 28
  %0 = ptrtoint ptr %t_send_delay1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %t_send_delay, ptr %t_send_delay1, align 8
  %t_echo_delay2 = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 29
  %1 = ptrtoint ptr %t_echo_delay2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %t_echo_delay, ptr %t_echo_delay2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_link_config.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_link_config, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !426

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %conv = zext i8 %t_send_delay to i32
  %conv7 = zext i8 %t_echo_delay to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_link_config.__UNIQUE_ID_ddebug310, ptr noundef %3, ptr noundef nonnull @.str.139, i32 noundef %conv, i32 noundef %conv7) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %4 = ptrtoint ptr %t_send_delay1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %t_send_delay1, align 8
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %_master, i32 0, i32 23
  %6 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sram, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 %5) #12, !srcloc !428
  %8 = ptrtoint ptr %t_echo_delay2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %t_echo_delay2, align 1
  %10 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sram, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 %9) #12, !srcloc !428
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_master_acf_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fsi_master_acf, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  tail call fastcc void @fsi_master_acf_terminate(ptr noundef %dev)
  %call = tail call i32 @aspeed_gpio_copro_set_ops(ptr noundef null, ptr noundef null) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %sram_pool = getelementptr inbounds %struct.fsi_master_acf, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %sram_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram_pool, align 8
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %dev, i32 0, i32 23
  %2 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call void @gen_pool_free_owner(ptr noundef %1, i32 noundef %4, i32 noundef 4096, ptr noundef null) #12
  %dev5 = getelementptr inbounds %struct.fsi_master_acf, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %of_node.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  tail call void @of_node_put(ptr noundef %retval.0.i) #12
  tail call void @kfree(ptr noundef %dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_master_acf_setup(ptr noundef %master) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %scu.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 2
  %0 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scu.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 256, i32 noundef 2) #12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 20, i32 noundef 2) #12
  %2 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scu.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 256, i32 noundef 0) #12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 20, i32 noundef 2) #12
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 23
  %4 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram, align 4
  tail call void @mmioset(ptr noundef %5, i32 noundef 0, i32 noundef 4096) #12
  %gpio_mux.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 8
  %6 = ptrtoint ptr %gpio_mux.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_mux.i, align 4
  %call.i62 = tail call i32 @gpiod_direction_output(ptr noundef %7, i32 noundef 1) #12
  %gpio_enable.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 7
  %8 = ptrtoint ptr %gpio_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_enable.i, align 8
  %call1.i = tail call i32 @gpiod_direction_output(ptr noundef %9, i32 noundef 1) #12
  %gpio_clk.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 4
  %10 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_clk.i, align 4
  %gpio_clk_vreg.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 9
  %gpio_clk_dreg.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 10
  %gpio_clk_bit.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 15
  %call2.i63 = tail call i32 @aspeed_gpio_copro_grab_gpio(ptr noundef %11, ptr noundef %gpio_clk_vreg.i, ptr noundef %gpio_clk_dreg.i, ptr noundef %gpio_clk_bit.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i63)
  %tobool.not.i = icmp eq i32 %call2.i63, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.142) #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %gpio_data.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 5
  %14 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_data.i, align 8
  %gpio_dat_vreg.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 11
  %gpio_dat_dreg.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 12
  %gpio_dat_bit.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 16
  %call3.i = tail call i32 @aspeed_gpio_copro_grab_gpio(ptr noundef %15, ptr noundef %gpio_dat_vreg.i, ptr noundef %gpio_dat_dreg.i, ptr noundef %gpio_dat_bit.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end12.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev9.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  %16 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.145) #16
  %18 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio_clk.i, align 4
  %call11.i = tail call i32 @aspeed_gpio_copro_release_gpio(ptr noundef %19) #12
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  %gpio_trans.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 6
  %20 = ptrtoint ptr %gpio_trans.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpio_trans.i, align 4
  %gpio_tra_vreg.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 13
  %gpio_tra_dreg.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 14
  %gpio_tra_bit.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 17
  %call13.i = tail call i32 @aspeed_gpio_copro_grab_gpio(ptr noundef %21, ptr noundef %gpio_tra_vreg.i, ptr noundef %gpio_tra_dreg.i, ptr noundef %gpio_tra_bit.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end, label %do.end18.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev19.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  %22 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev19.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.148) #16
  %24 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpio_clk.i, align 4
  %call21.i = tail call i32 @aspeed_gpio_copro_release_gpio(ptr noundef %25) #12
  %26 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gpio_data.i, align 8
  %call23.i = tail call i32 @aspeed_gpio_copro_release_gpio(ptr noundef %27) #12
  br label %cleanup

if.end:                                           ; preds = %if.end12.i
  %call1 = tail call fastcc i32 @load_copro_firmware(ptr noundef %master)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cf_mem.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 20
  %28 = ptrtoint ptr %cf_mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cf_mem.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %29, i32 1026
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !430
  %conv.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %cf_mem.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cf_mem.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %32, i32 1028
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i) #12, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !431
  %conv8.i = zext i16 %33 to i32
  %34 = ptrtoint ptr %cf_mem.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cf_mem.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %35, i32 1032
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #12, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !433
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i64 = icmp eq i32 %and.i, 0
  %trace_enabled.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 26
  %37 = trunc i32 %and.i to i8
  %38 = ptrtoint ptr %trace_enabled.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %trace_enabled.i, align 2
  %dev.i65 = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  %39 = ptrtoint ptr %dev.i65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i65, align 8
  %shr.i = lshr i32 %conv8.i, 8
  %and16.i = and i32 %conv8.i, 255
  %cond.i = select i1 %tobool.not.i64, ptr @.str.164, ptr @.str.163
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.160, i32 noundef %conv.i, i32 noundef %shr.i, i32 noundef %and16.i, ptr noundef nonnull %cond.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp.not.i = icmp eq i32 %shr.i, 2
  br i1 %cmp.not.i, label %if.end8, label %check_firmware_image.exit

check_firmware_image.exit:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %dev.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i65, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.166) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %is_ast2500 = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 24
  %43 = ptrtoint ptr %is_ast2500 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_ast2500, align 8, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool9.not = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scu.i, align 4
  %cf_mem_addr.i73 = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 18
  %47 = ptrtoint ptr %cf_mem_addr.i73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cf_mem_addr.i73, align 8
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %48, 1
  %call.i68 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 260, i32 noundef %or.i) #12
  %49 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %scu.i, align 4
  %call2.i69 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 268, i32 noundef 509607937) #12
  %51 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scu.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 272, i32 noundef 510656513) #12
  %53 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %scu.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 284, i32 noundef 509607936) #12
  %55 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %scu.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 288, i32 noundef 510656512) #12
  %57 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %scu.i, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 296, i32 noundef 3) #12
  %59 = ptrtoint ptr %cf_mem.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cf_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %60, i32 1024
  tail call fastcc void @setup_common_fw_config(ptr noundef %master, ptr noundef %add.ptr.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !434
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i71 = getelementptr i8, ptr %60, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i71, i32 8) #12, !srcloc !435
  br label %if.end11

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %or.i74 = or i32 %48, -2147483648
  %call.i75 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 260, i32 noundef %or.i74) #12
  %61 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %scu.i, align 4
  %call2.i76 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 264, i32 noundef -1637875712) #12
  %63 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %scu.i, align 4
  %call4.i77 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 272, i32 noundef 509607936) #12
  %65 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %scu.i, align 4
  %call6.i78 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 280, i32 noundef 3) #12
  %67 = ptrtoint ptr %cf_mem.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cf_mem.i, align 8
  %add.ptr.i80 = getelementptr i8, ptr %68, i32 1024
  tail call fastcc void @setup_common_fw_config(ptr noundef %master, ptr noundef %add.ptr.i80) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !436
  tail call void @arm_heavy_mb() #12
  %add.ptr1.i81 = getelementptr i8, ptr %68, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i81, i32 6) #12, !srcloc !435
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %69 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %scu.i, align 4
  %call.i83 = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 256, i32 noundef 1) #12
  %71 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %72, i32 56
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool14.not = icmp eq i8 %73, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end16:                                         ; preds = %if.end11
  tail call void @msleep(i32 noundef 1) #12
  %74 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sram, align 4
  %add.ptr.1 = getelementptr i8, ptr %75, i32 56
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.1) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool14.not.1 = icmp eq i8 %76, 0
  br i1 %tobool14.not.1, label %if.end16.1, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end16.1:                                       ; preds = %if.end16
  tail call void @msleep(i32 noundef 1) #12
  %77 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sram, align 4
  %add.ptr.2 = getelementptr i8, ptr %78, i32 56
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.2) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool14.not.2 = icmp eq i8 %79, 0
  br i1 %tobool14.not.2, label %if.end16.2, label %if.end16.1.if.end19_crit_edge

if.end16.1.if.end19_crit_edge:                    ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end16.2:                                       ; preds = %if.end16.1
  tail call void @msleep(i32 noundef 1) #12
  %80 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sram, align 4
  %add.ptr.3 = getelementptr i8, ptr %81, i32 56
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.3) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool14.not.3 = icmp eq i8 %82, 0
  br i1 %tobool14.not.3, label %if.end16.3, label %if.end16.2.if.end19_crit_edge

if.end16.2.if.end19_crit_edge:                    ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end16.3:                                       ; preds = %if.end16.2
  tail call void @msleep(i32 noundef 1) #12
  %83 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sram, align 4
  %add.ptr.4 = getelementptr i8, ptr %84, i32 56
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.4) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool14.not.4 = icmp eq i8 %85, 0
  br i1 %tobool14.not.4, label %if.end16.4, label %if.end16.3.if.end19_crit_edge

if.end16.3.if.end19_crit_edge:                    ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end16.4:                                       ; preds = %if.end16.3
  tail call void @msleep(i32 noundef 1) #12
  %86 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sram, align 4
  %add.ptr.5 = getelementptr i8, ptr %87, i32 56
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.5) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool14.not.5 = icmp eq i8 %88, 0
  br i1 %tobool14.not.5, label %if.end16.5, label %if.end16.4.if.end19_crit_edge

if.end16.4.if.end19_crit_edge:                    ; preds = %if.end16.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end16.5:                                       ; preds = %if.end16.4
  tail call void @msleep(i32 noundef 1) #12
  %89 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sram, align 4
  %add.ptr.6 = getelementptr i8, ptr %90, i32 56
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.6) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool14.not.6 = icmp eq i8 %91, 0
  br i1 %tobool14.not.6, label %if.end16.6, label %if.end16.5.if.end19_crit_edge

if.end16.5.if.end19_crit_edge:                    ; preds = %if.end16.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end16.6:                                       ; preds = %if.end16.5
  tail call void @msleep(i32 noundef 1) #12
  %92 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sram, align 4
  %add.ptr.7 = getelementptr i8, ptr %93, i32 56
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.7) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool14.not.7 = icmp eq i8 %94, 0
  br i1 %tobool14.not.7, label %if.end16.7, label %if.end16.6.if.end19_crit_edge

if.end16.6.if.end19_crit_edge:                    ; preds = %if.end16.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end16.7:                                       ; preds = %if.end16.6
  tail call void @msleep(i32 noundef 1) #12
  %95 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sram, align 4
  %add.ptr.8 = getelementptr i8, ptr %96, i32 56
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.8) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool14.not.8 = icmp eq i8 %97, 0
  br i1 %tobool14.not.8, label %if.end16.8, label %if.end16.7.if.end19_crit_edge

if.end16.7.if.end19_crit_edge:                    ; preds = %if.end16.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end16.8:                                       ; preds = %if.end16.7
  tail call void @msleep(i32 noundef 1) #12
  %98 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sram, align 4
  %add.ptr.9 = getelementptr i8, ptr %99, i32 56
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.9) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool14.not.9 = icmp eq i8 %100, 0
  br i1 %tobool14.not.9, label %do.end, label %if.end16.8.if.end19_crit_edge

if.end16.8.if.end19_crit_edge:                    ; preds = %if.end16.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end:                                           ; preds = %if.end16.8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 1) #12
  br label %err

if.end19:                                         ; preds = %if.end16.8.if.end19_crit_edge, %if.end16.7.if.end19_crit_edge, %if.end16.6.if.end19_crit_edge, %if.end16.5.if.end19_crit_edge, %if.end16.4.if.end19_crit_edge, %if.end16.3.if.end19_crit_edge, %if.end16.2.if.end19_crit_edge, %if.end16.1.if.end19_crit_edge, %if.end16.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %t_send_delay = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 28
  %101 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %t_send_delay, align 8
  %103 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sram, align 4
  %add.ptr21 = getelementptr i8, ptr %104, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 %102) #12, !srcloc !428
  %t_echo_delay = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 29
  %105 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %t_echo_delay, align 1
  %107 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sram, align 4
  %add.ptr23 = getelementptr i8, ptr %108, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 %106) #12, !srcloc !428
  %cvic = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 21
  %109 = ptrtoint ptr %cvic to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cvic, align 4
  %tobool24.not = icmp eq ptr %110, null
  br i1 %tobool24.not, label %if.end19.cleanup_crit_edge, label %if.end19.for.body.i_crit_edge

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i86.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %timeout.012.i = phi i32 [ %inc.i, %if.end.i86.for.body.i_crit_edge ], [ 0, %if.end19.for.body.i_crit_edge ]
  %111 = ptrtoint ptr %cvic to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cvic, align 4
  %add.ptr.i84 = getelementptr i8, ptr %112, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 33554432) #12, !srcloc !435
  %113 = ptrtoint ptr %cvic to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cvic, align 4
  %add.ptr2.i = getelementptr i8, ptr %114, i32 16
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  %116 = and i32 %115, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i85 = icmp eq i32 %116, 0
  br i1 %tobool.not.i85, label %if.end.i86, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i86:                                       ; preds = %for.body.i
  tail call void @msleep(i32 noundef 1) #12
  %inc.i = add nuw nsw i32 %timeout.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end.i86.err_crit_edge, label %if.end.i86.for.body.i_crit_edge

if.end.i86.for.body.i_crit_edge:                  ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i86.err_crit_edge:                         ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

err:                                              ; preds = %if.end.i86.err_crit_edge, %do.end
  %.str.168.sink = phi ptr [ @.str.140, %do.end ], [ @.str.168, %if.end.i86.err_crit_edge ]
  %117 = ptrtoint ptr %dev.i65 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i65, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull %.str.168.sink) #16
  %119 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %scu.i, align 4
  %call.i91 = tail call i32 @regmap_write(ptr noundef %120, i32 noundef 256, i32 noundef 2) #12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 20, i32 noundef 2) #12
  %121 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %scu.i, align 4
  %call2.i92 = tail call i32 @regmap_write(ptr noundef %122, i32 noundef 256, i32 noundef 0) #12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 20, i32 noundef 2) #12
  %123 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %gpio_clk.i, align 4
  %call.i94 = tail call i32 @aspeed_gpio_copro_release_gpio(ptr noundef %124) #12
  %125 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %gpio_data.i, align 8
  %call1.i96 = tail call i32 @aspeed_gpio_copro_release_gpio(ptr noundef %126) #12
  %127 = ptrtoint ptr %gpio_trans.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %gpio_trans.i, align 4
  %call2.i98 = tail call i32 @aspeed_gpio_copro_release_gpio(ptr noundef %128) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %for.body.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %check_firmware_image.exit, %if.end.cleanup_crit_edge, %do.end18.i, %do.end8.i, %do.end.i
  %retval.0 = phi i32 [ -19, %err ], [ %call1, %if.end.cleanup_crit_edge ], [ -19, %check_firmware_image.exit ], [ 0, %if.end19.cleanup_crit_edge ], [ %call13.i, %do.end18.i ], [ %call3.i, %do.end8.i ], [ %call2.i63, %do.end.i ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsi_master_acf_terminate(ptr nocapture noundef readonly %master) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !441
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %scu.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 2
  %1 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scu.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 256, i32 noundef 2) #12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 20, i32 noundef 2) #12
  %3 = ptrtoint ptr %scu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scu.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 256, i32 noundef 0) #12
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 20, i32 noundef 2) #12
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 23
  %5 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !435
  %7 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sram, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 2) #12, !srcloc !428
  br i1 %tobool.not, label %if.then23, label %do.end11.do.body25_crit_edge

do.end11.do.body25_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

if.then23:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body25

do.body25:                                        ; preds = %if.then23, %do.end11.do.body25_crit_edge
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !442
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool33.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool33.not, label %if.then37, label %do.body25.do.end40_crit_edge, !prof !423

do.body25.do.end40_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25.do.end40_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !443
  %gpio_clk.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 4
  %10 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_clk.i, align 4
  %call.i51 = tail call i32 @aspeed_gpio_copro_release_gpio(ptr noundef %11) #12
  %gpio_data.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 5
  %12 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_data.i, align 8
  %call1.i = tail call i32 @aspeed_gpio_copro_release_gpio(ptr noundef %13) #12
  %gpio_trans.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 6
  %14 = ptrtoint ptr %gpio_trans.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_trans.i, align 4
  %call2.i52 = tail call i32 @aspeed_gpio_copro_release_gpio(ptr noundef %15) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_gpio_request(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %data, i32 0, i32 23
  %0 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #12, !srcloc !428
  %2 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #12, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #12
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reg, align 4
  %scu = getelementptr inbounds %struct.fsi_master_acf, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %scu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scu, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 256, ptr noundef nonnull %reg) #12
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #12
  br i1 %tobool.not, label %if.then.cleanup24_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then.cleanup24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %cvic = getelementptr inbounds %struct.fsi_master_acf, ptr %data, i32 0, i32 21
  %10 = ptrtoint ptr %cvic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cvic, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end5.for.body.preheader_crit_edge, label %if.then7

if.end5.for.body.preheader_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr9 = getelementptr i8, ptr %11, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 33554432) #12, !srcloc !435
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then7, %if.end5.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.preheader
  %timeout.037 = phi i32 [ %inc, %if.end18.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %12 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sram, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 64
  %14 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13) #12, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %for.body.do.end_crit_edge [
    i8 1, label %if.end18
    i8 2, label %for.body.cleanup24_crit_edge
  ]

for.body.cleanup24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup24

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end18:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748) #12
  %inc = add nuw nsw i32 %timeout.037, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %if.end18.do.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.end18.do.end_crit_edge, %for.body.do.end_crit_edge
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.88) #16
  br label %cleanup24

cleanup24:                                        ; preds = %do.end, %for.body.cleanup24_crit_edge, %if.then.cleanup24_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_acf_gpio_release(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %data, i32 0, i32 23
  %0 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #12, !srcloc !428
  %cvic = getelementptr inbounds %struct.fsi_master_acf, ptr %data, i32 0, i32 21
  %2 = ptrtoint ptr %cvic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cvic, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr2 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 33554432) #12, !srcloc !435
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_ar_command(ptr noundef %master, ptr noundef %cmd, i8 noundef zeroext %id, i32 noundef %addr, i32 noundef %size, ptr noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %bits = getelementptr inbounds %struct.fsi_msg, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %bits to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bits, align 8
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %cmd, align 8
  %and = and i32 %addr, 2097151
  %conv = zext i8 %id to i32
  %last_addr.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 27
  %2 = ptrtoint ptr %last_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_addr.i, align 4
  %and.i = shl nuw nsw i32 %conv, 21
  %shl.i = and i32 %and.i, 6291456
  %and1.i = and i32 %addr, 2097148
  %or.i = or i32 %shl.i, %and1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or.i)
  %cmp.i = icmp eq i32 %3, %or.i
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_fsi_master_acf_cmd_same_addr(ptr noundef %master)
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i55 = icmp ne i32 %3, 1
  %shr.i = lshr i32 %3, 21
  %and.i56 = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i56, i32 %conv)
  %cmp2.not.i = icmp eq i32 %and.i56, %conv
  %or.cond16.i = select i1 %cmp.i55, i1 %cmp2.not.i, i1 false
  br i1 %or.cond16.i, label %if.end4.i, label %if.else.if.else5_crit_edge

if.else.if.else5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else5

if.end4.i:                                        ; preds = %if.else
  %and5.i = and i32 %3, 2097151
  %sub.i = sub nsw i32 %and, %and5.i
  %4 = add nsw i32 %sub.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %4)
  %5 = icmp ult i32 %4, -512
  br i1 %5, label %if.end4.i.if.else5_crit_edge, label %if.then4

if.end4.i.if.else5_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else5

if.then4:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_fsi_master_acf_cmd_rel_addr(ptr noundef %master, i32 noundef %sub.i)
  br label %if.end6

if.else5:                                         ; preds = %if.end4.i.if.else5_crit_edge, %if.else.if.else5_crit_edge
  tail call fastcc void @trace_fsi_master_acf_cmd_abs_addr(ptr noundef %master, i32 noundef %and)
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then4, %if.then
  %addr.addr.0 = phi i32 [ %and, %if.then ], [ %sub.i, %if.then4 ], [ %and, %if.else5 ]
  %addr_bits.0 = phi i32 [ 2, %if.then ], [ 9, %if.then4 ], [ 21, %if.else5 ]
  %opcode_bits.0 = phi i32 [ 2, %if.then ], [ 3, %if.then4 ], [ 3, %if.else5 ]
  %opcode.0 = phi i8 [ 3, %if.then ], [ 5, %if.then4 ], [ 4, %if.else5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp = icmp ugt i32 %size, 1
  %neg = sub i32 0, %size
  %and9 = and i32 %addr.addr.0, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp10 = icmp eq i32 %size, 4
  %or = zext i1 %cmp10 to i32
  %spec.select = or i32 %and9, %or
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %cmd, align 8
  %shl.i57 = shl i64 %7, 2
  %8 = and i8 %id, 3
  %and.i58 = zext i8 %8 to i64
  %or.i59 = or i64 %shl.i57, %and.i58
  %9 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bits, align 8
  %conv6.i = add i8 %10, 2
  %conv15 = zext i8 %opcode.0 to i64
  %sh_prom.i = zext i32 %opcode_bits.0 to i64
  %shl.i60 = shl i64 %or.i59, %sh_prom.i
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i61 = xor i64 %notmask.i, -1
  %and.i62 = and i64 %sub.i61, %conv15
  %or.i63 = or i64 %shl.i60, %and.i62
  %11 = trunc i32 %opcode_bits.0 to i8
  %conv6.i65 = add i8 %conv6.i, %11
  %12 = zext i1 %tobool.not to i64
  %shl.i66 = shl i64 %or.i63, 1
  %or.i68 = or i64 %shl.i66, %12
  %conv6.i70 = add i8 %conv6.i65, 1
  %conv20 = zext i32 %spec.select to i64
  %sh_prom.i71 = zext i32 %addr_bits.0 to i64
  %shl.i72 = shl i64 %or.i68, %sh_prom.i71
  %notmask.i73 = shl nsw i64 -1, %sh_prom.i71
  %sub.i74 = xor i64 %notmask.i73, -1
  %and.i75 = and i64 %sub.i74, %conv20
  %or.i76 = or i64 %shl.i72, %and.i75
  %13 = trunc i32 %addr_bits.0 to i8
  %conv6.i78 = add i8 %conv6.i70, %13
  %conv21 = zext i1 %cmp to i64
  %shl.i79 = shl i64 %or.i76, 1
  %or.i81 = or i64 %shl.i79, %conv21
  store i64 %or.i81, ptr %cmd, align 8
  %conv6.i83 = add i8 %conv6.i78, 1
  store i8 %conv6.i83, ptr %bits, align 8
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp24102 = icmp eq i32 %size, 0
  %14 = or i1 %tobool.not, %cmp24102
  br i1 %14, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.0104 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.0104
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv26 = zext i8 %16 to i64
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cmd, align 8
  %shl.i84 = shl i64 %18, 8
  %or.i86 = or i64 %shl.i84, %conv26
  store i64 %or.i86, ptr %cmd, align 8
  %19 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bits, align 8
  %conv6.i88 = add i8 %20, 8
  store i8 %conv6.i88, ptr %bits, align 8
  %inc = add nuw i32 %i.0104, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %size)
  %cmp24 = icmp ult i32 %inc, %size
  %or.cond = select i1 %tobool.not.not, i1 %cmp24, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bits, align 8
  %conv.i = zext i8 %22 to i32
  %and.i89 = and i32 %conv.i, 3
  %shl.i90 = shl nuw nsw i32 1, %and.i89
  %23 = zext i32 %shl.i90 to i64
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cmd, align 8
  %sub.i91 = and i32 %conv.i, 252
  %sh_prom.i92 = zext i32 %sub.i91 to i64
  %shr.i93 = lshr i64 %25, %sh_prom.i92
  %or.i94 = or i64 %shr.i93, %23
  %add.i = add nuw nsw i32 %and.i89, 1
  %call.i = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %or.i94, i32 noundef %add.i) #12
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cmd, align 8
  %28 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bits, align 8
  %conv7.i = zext i8 %29 to i32
  %sub8.i = sub nsw i32 %conv7.i, %and.i89
  %call9.i = tail call zeroext i8 @crc4(i8 noundef zeroext %call.i, i64 noundef %27, i32 noundef %sub8.i) #12
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cmd, align 8
  %shl.i.i = shl i64 %31, 4
  %32 = and i8 %call9.i, 15
  %and.i.i = zext i8 %32 to i64
  %or.i.i = or i64 %shl.i.i, %and.i.i
  %33 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bits, align 8
  %conv6.i.i = add i8 %34, 4
  store i8 %conv6.i.i, ptr %bits, align 8
  %conv.i96 = zext i8 %conv6.i.i to i32
  %sub.i97 = sub nsw i32 64, %conv.i96
  %sh_prom.i98 = zext i32 %sub.i97 to i64
  %shl.i99 = shl i64 %or.i.i, %sh_prom.i98
  store i64 %shl.i99, ptr %cmd, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_master_acf_xfer(ptr noundef %master, i8 noundef zeroext %slave, ptr noundef %cmd, i32 noundef %resp_len, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resp_len.tr = trunc i32 %resp_len to i8
  %conv.i = shl i8 %resp_len.tr, 3
  %sram.i = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 23
  %bits.i = getelementptr inbounds %struct.fsi_msg, ptr %cmd, i32 0, i32 1
  %shl11.i = shl i32 %resp_len, 19
  %dev15 = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %do.end18.while.body_crit_edge, %entry
  %inc30 = phi i32 [ 1, %entry ], [ %inc, %do.end18.while.body_crit_edge ]
  tail call fastcc void @trace_fsi_master_acf_send_request(ptr noundef %master, ptr noundef %cmd, i8 noundef zeroext %conv.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  tail call void @arm_heavy_mb() #12
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cmd, align 8
  %shr.i = lshr i64 %1, 32
  %conv1.i = trunc i64 %shr.i to i32
  %2 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv1.i) #12, !srcloc !435
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cmd, align 8
  %conv6.i = trunc i64 %5 to i32
  %6 = ptrtoint ptr %sram.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sram.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %conv6.i) #12, !srcloc !435
  %8 = ptrtoint ptr %bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bits.i, align 8
  %conv10.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv10.i, 8
  %or.i = or i32 %shl.i, %shl11.i
  %op.0.i = or i32 %or.i, 1
  %call.i = tail call fastcc i32 @do_copro_command(ptr noundef %master, i32 noundef %op.0.i) #12
  %10 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %call.i, label %do.end [
    i32 0, label %if.end3
    i32 -108, label %while.body.while.end_crit_edge
  ]

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.97, i32 noundef %call.i) #16
  br label %while.end

if.end3:                                          ; preds = %while.body
  %call4 = tail call fastcc i32 @handle_response(ptr noundef %master, i8 noundef zeroext %slave, i8 noundef zeroext %conv.i, ptr noundef %resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, -11
  br i1 %cmp5.not, label %if.end8, label %if.end3.while.end_crit_edge

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end8:                                          ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_master_acf_xfer.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsi_master_acf_xfer, %if.then14)) #12
          to label %do.end18 [label %if.then14], !srcloc !426

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_master_acf_xfer.__UNIQUE_ID_ddebug302, ptr noundef %14, ptr noundef nonnull @.str.99, i32 noundef %inc30) #12
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %if.end8
  tail call void @msleep(i32 noundef 1) #12
  %inc = add nuw nsw i32 %inc30, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %do.end18.while.end_crit_edge, label %do.end18.while.body_crit_edge

do.end18.while.body_crit_edge:                    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

do.end18.while.end_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end18.while.end_crit_edge, %if.end3.while.end_crit_edge, %do.end, %while.body.while.end_crit_edge
  %rc.1 = phi i32 [ %call.i, %do.end ], [ %call.i, %while.body.while.end_crit_edge ], [ -5, %do.end18.while.end_crit_edge ], [ %call4, %if.end3.while.end_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_acf_cmd_same_addr(ptr noundef %master) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_same_addr, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_acf_cmd_same_addr, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !426

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !446
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_same_addr, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !447
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !447
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !422

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_same_addr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_acf_cmd_same_addr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_acf_cmd_same_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.94, i32 noundef 146, ptr noundef nonnull @.str.95) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !449
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
define internal fastcc void @trace_fsi_master_acf_cmd_rel_addr(ptr noundef %master, i32 noundef %rel_addr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_rel_addr, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_acf_cmd_rel_addr, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !426

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !450
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_rel_addr, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %rel_addr) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !451
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !451
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !422

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_rel_addr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_acf_cmd_rel_addr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_acf_cmd_rel_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.94, i32 noundef 132, ptr noundef nonnull @.str.95) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !449
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
define internal fastcc void @trace_fsi_master_acf_cmd_abs_addr(ptr noundef %master, i32 noundef %addr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_abs_addr, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_acf_cmd_abs_addr, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !426

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !452
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_abs_addr, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %addr) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !453
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !453
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !422

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_cmd_abs_addr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_acf_cmd_abs_addr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_acf_cmd_abs_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.94, i32 noundef 116, ptr noundef nonnull @.str.95) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !449
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc4(i8 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_response(ptr noundef %master, i8 noundef zeroext %slave, i8 noundef zeroext %size, ptr noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.fsi_msg, align 8
  %tag.i = alloca i8, align 1
  %cmd = alloca %struct.fsi_msg, align 8
  %response = alloca i32, align 4
  %tag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #12
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response) #12
  %1 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %response, align 4, !annotation !424
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tag) #12
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tag, align 1, !annotation !424
  %dev47 = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  %trace_enabled51 = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 26
  %bits.i208 = getelementptr inbounds %struct.fsi_msg, ptr %cmd, i32 0, i32 1
  %3 = and i8 %slave, 3
  %and.i.i209 = zext i8 %3 to i64
  %shl.i6.i210 = shl nuw nsw i64 %and.i.i209, 3
  %or.i7.i211 = or i64 %shl.i6.i210, 2
  %shr.i.i212 = lshr i64 %and.i.i209, 1
  %or.i12.i213 = or i64 %shr.i.i212, 2
  %conv67 = zext i8 %size to i32
  %sram.i228 = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 23
  %shl11.i235 = shl nuw nsw i32 %conv67, 16
  %or.i7.i = or i64 %shl.i6.i210, 3
  br label %retry.outer

retry.outer:                                      ; preds = %if.end8.retry.outer_crit_edge, %entry
  %crc_err_retries.0.ph = phi i32 [ %inc, %if.end8.retry.outer_crit_edge ], [ 0, %entry ]
  %busy_count.0.ph = phi i32 [ %busy_count.0, %if.end8.retry.outer_crit_edge ], [ 0, %entry ]
  %smax = call i32 @llvm.smax.i32(i32 %busy_count.0.ph, i32 200)
  br label %retry

retry:                                            ; preds = %if.then66.retry_crit_edge, %retry.outer
  %busy_count.0 = phi i32 [ %inc63, %if.then66.retry_crit_edge ], [ %busy_count.0.ph, %retry.outer ]
  %call = call fastcc i32 @read_copro_response(ptr noundef %master, i8 noundef zeroext %size, ptr noundef nonnull %response, ptr noundef nonnull %tag)
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %call, label %retry.cleanup_crit_edge [
    i32 -11, label %if.then
    i32 0, label %if.end20
  ]

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %retry
  %inc = add nuw nsw i32 %crc_err_retries.0.ph, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %crc_err_retries.0.ph)
  %exitcond292 = icmp eq i32 %crc_err_retries.0.ph, 11
  br i1 %exitcond292, label %if.then.bail_crit_edge, label %if.end

if.then.bail_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.end:                                           ; preds = %if.then
  call fastcc void @trace_fsi_master_acf_crc_rsp_error(ptr noundef %master, i32 noundef %inc)
  %5 = ptrtoint ptr %trace_enabled51 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %trace_enabled51, align 2, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dump_ucode_trace(ptr noundef %master)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call.i = call fastcc i32 @do_copro_command(ptr noundef %master, i32 noundef 12803) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.102, i32 noundef %call.i) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %or.i7.i, ptr %cmd, align 8
  %10 = ptrtoint ptr %bits.i208 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %bits.i208, align 8
  %call.i.i = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %or.i12.i213, i32 noundef 2) #12
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cmd, align 8
  %13 = ptrtoint ptr %bits.i208 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bits.i208, align 8
  %conv7.i.i = zext i8 %14 to i32
  %sub8.i.i = add nsw i32 %conv7.i.i, -1
  %call9.i.i = call zeroext i8 @crc4(i8 noundef zeroext %call.i.i, i64 noundef %12, i32 noundef %sub8.i.i) #12
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cmd, align 8
  %shl.i.i.i = shl i64 %16, 4
  %17 = and i8 %call9.i.i, 15
  %and.i.i.i = zext i8 %17 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %and.i.i.i
  %18 = ptrtoint ptr %bits.i208 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bits.i208, align 8
  %conv6.i.i.i = add i8 %19, 4
  store i8 %conv6.i.i.i, ptr %bits.i208, align 8
  %conv.i14.i = zext i8 %conv6.i.i.i to i32
  %sub.i15.i = sub nsw i32 64, %conv.i14.i
  %sh_prom.i16.i = zext i32 %sub.i15.i to i64
  %shl.i17.i = shl i64 %or.i.i.i, %sh_prom.i16.i
  store i64 %shl.i17.i, ptr %cmd, align 8
  call fastcc void @trace_fsi_master_acf_send_request(ptr noundef %master, ptr noundef nonnull %cmd, i8 noundef zeroext %size) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %cmd, align 8
  %shr.i = lshr i64 %21, 32
  %conv1.i = trunc i64 %shr.i to i32
  %22 = ptrtoint ptr %sram.i228 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sram.i228, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv1.i) #12, !srcloc !435
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cmd, align 8
  %conv6.i = trunc i64 %25 to i32
  %26 = ptrtoint ptr %sram.i228 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sram.i228, align 4
  %add.ptr9.i = getelementptr i8, ptr %27, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %conv6.i) #12, !srcloc !435
  %28 = ptrtoint ptr %bits.i208 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bits.i208, align 8
  %conv10.i = zext i8 %29 to i32
  %shl.i = shl nuw nsw i32 %conv10.i, 8
  %or.i = or i32 %shl.i, %shl11.i235
  %op.0.i = or i32 %or.i, 1
  %call.i206 = call fastcc i32 @do_copro_command(ptr noundef %master, i32 noundef %op.0.i) #12
  %tobool10.not = icmp eq i32 %call.i206, 0
  br i1 %tobool10.not, label %if.end8.retry.outer_crit_edge, label %do.end14

if.end8.retry.outer_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry.outer

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.105, i32 noundef %call.i206) #16
  br label %cleanup

if.end20:                                         ; preds = %retry
  %32 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tag, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %33, label %if.end20.bail_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.body41
    i8 2, label %do.body96
    i8 3, label %do.body118
  ]

if.end20.bail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %size)
  %tobool23.not = icmp eq i8 %size, 0
  %tobool24.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool23.not, %tobool24.not
  br i1 %or.cond, label %sw.bb.bail_crit_edge, label %if.then25

sw.bb.bail_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then25:                                        ; preds = %sw.bb
  %35 = zext i8 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.175)
  switch i8 %size, label %if.else35 [
    i8 32, label %if.then29
    i8 16, label %if.then33
  ]

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %response, align 4
  %38 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %data, align 4
  br label %bail

if.then33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %response, align 4
  %conv34 = trunc i32 %40 to i16
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv34, ptr %data, align 2
  br label %bail

if.else35:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %response, align 4
  %conv36 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv36, ptr %data, align 1
  br label %bail

do.body41:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_response.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_response, %if.then46)) #12
          to label %do.end50 [label %if.then46], !srcloc !426

if.then46:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_response.__UNIQUE_ID_ddebug298, ptr noundef %46, ptr noundef nonnull @.str.107) #12
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body41
  %47 = ptrtoint ptr %trace_enabled51 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %trace_enabled51, align 2, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool52.not = icmp eq i8 %48, 0
  br i1 %tobool52.not, label %do.end50.if.end54_crit_edge, label %if.then53

do.end50.if.end54_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dump_ucode_trace(ptr noundef %master)
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %do.end50.if.end54_crit_edge
  %call.i207 = call fastcc i32 @do_copro_command(ptr noundef %master, i32 noundef 12803) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %tobool56.not = icmp eq i32 %call.i207, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.109, i32 noundef %call.i207) #16
  br label %bail

if.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_cmp4(i32 %busy_count.0, i32 %smax)
  %exitcond.not = icmp eq i32 %busy_count.0, %smax
  br i1 %exitcond.not, label %do.body77, label %if.then66

if.then66:                                        ; preds = %if.end62
  %inc63 = add i32 %busy_count.0, 1
  %51 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %or.i7.i211, ptr %cmd, align 8
  %52 = ptrtoint ptr %bits.i208 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 5, ptr %bits.i208, align 8
  %call.i.i214 = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %or.i12.i213, i32 noundef 2) #12
  %53 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %cmd, align 8
  %55 = ptrtoint ptr %bits.i208 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bits.i208, align 8
  %conv7.i.i215 = zext i8 %56 to i32
  %sub8.i.i216 = add nsw i32 %conv7.i.i215, -1
  %call9.i.i217 = call zeroext i8 @crc4(i8 noundef zeroext %call.i.i214, i64 noundef %54, i32 noundef %sub8.i.i216) #12
  %57 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %cmd, align 8
  %shl.i.i.i218 = shl i64 %58, 4
  %59 = and i8 %call9.i.i217, 15
  %and.i.i.i219 = zext i8 %59 to i64
  %or.i.i.i220 = or i64 %shl.i.i.i218, %and.i.i.i219
  %60 = ptrtoint ptr %bits.i208 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bits.i208, align 8
  %conv6.i.i.i221 = add i8 %61, 4
  store i8 %conv6.i.i.i221, ptr %bits.i208, align 8
  %conv.i14.i222 = zext i8 %conv6.i.i.i221 to i32
  %sub.i15.i223 = sub nsw i32 64, %conv.i14.i222
  %sh_prom.i16.i224 = zext i32 %sub.i15.i223 to i64
  %shl.i17.i225 = shl i64 %or.i.i.i220, %sh_prom.i16.i224
  store i64 %shl.i17.i225, ptr %cmd, align 8
  call fastcc void @trace_fsi_master_acf_send_request(ptr noundef %master, ptr noundef nonnull %cmd, i8 noundef zeroext %size) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  call void @arm_heavy_mb() #12
  %62 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %cmd, align 8
  %shr.i226 = lshr i64 %63, 32
  %conv1.i227 = trunc i64 %shr.i226 to i32
  %64 = ptrtoint ptr %sram.i228 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sram.i228, align 4
  %add.ptr.i229 = getelementptr i8, ptr %65, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229, i32 %conv1.i227) #12, !srcloc !435
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  call void @arm_heavy_mb() #12
  %66 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %cmd, align 8
  %conv6.i230 = trunc i64 %67 to i32
  %68 = ptrtoint ptr %sram.i228 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sram.i228, align 4
  %add.ptr9.i231 = getelementptr i8, ptr %69, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i231, i32 %conv6.i230) #12, !srcloc !435
  %70 = ptrtoint ptr %bits.i208 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bits.i208, align 8
  %conv10.i233 = zext i8 %71 to i32
  %shl.i234 = shl nuw nsw i32 %conv10.i233, 8
  %or.i236 = or i32 %shl.i234, %shl11.i235
  %op.0.i237 = or i32 %or.i236, 1
  %call.i238 = call fastcc i32 @do_copro_command(ptr noundef %master, i32 noundef %op.0.i237) #12
  %tobool69.not = icmp eq i32 %call.i238, 0
  br i1 %tobool69.not, label %if.then66.retry_crit_edge, label %do.end73

if.then66.retry_crit_edge:                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

do.end73:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.112, i32 noundef %call.i238) #16
  br label %bail

do.body77:                                        ; preds = %if.end62
  %74 = add nuw i32 %smax, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_response.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_response, %if.then89)) #12
          to label %do.end93 [label %if.then89], !srcloc !426

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_response.__UNIQUE_ID_ddebug299, ptr noundef %76, ptr noundef nonnull @.str.114) #12
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %do.body77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #12
  %77 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 936748722493063167, ptr %77, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tag.i) #12
  %79 = ptrtoint ptr %tag.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %tag.i, align 1, !annotation !424
  %80 = shl i8 %slave, 6
  %81 = or i8 %80, 63
  %or.i7.i.i = zext i8 %81 to i64
  %call.i.i.i = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef 1, i32 noundef 1) #12
  %call9.i.i.i = call zeroext i8 @crc4(i8 noundef zeroext %call.i.i.i, i64 noundef %or.i7.i.i, i32 noundef 8) #12
  %and.i.i.i.i = zext i8 %call9.i.i.i to i64
  %82 = shl nuw i64 %or.i7.i.i, 56
  %83 = shl nuw nsw i64 %and.i.i.i.i, 52
  %shl.i17.i.i = or i64 %83, %82
  %84 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %shl.i17.i.i, ptr %cmd.i, align 8
  call fastcc void @trace_fsi_master_acf_send_request(ptr noundef %master, ptr noundef nonnull %cmd.i, i8 noundef zeroext 0) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  call void @arm_heavy_mb() #12
  %85 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %cmd.i, align 8
  %shr.i.i239 = lshr i64 %86, 32
  %conv1.i.i = trunc i64 %shr.i.i239 to i32
  %87 = ptrtoint ptr %sram.i228 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sram.i228, align 4
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv1.i.i) #12, !srcloc !435
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  call void @arm_heavy_mb() #12
  %89 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %cmd.i, align 8
  %conv6.i.i = trunc i64 %90 to i32
  %91 = ptrtoint ptr %sram.i228 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sram.i228, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %92, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %conv6.i.i) #12, !srcloc !435
  %93 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %77, align 8
  %conv10.i.i = zext i8 %94 to i32
  %shl.i.i = shl nuw nsw i32 %conv10.i.i, 8
  %op.0.i.i = or i32 %shl.i.i, 1
  %call.i.i240 = call fastcc i32 @do_copro_command(ptr noundef %master, i32 noundef %op.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i240)
  %tobool.not.i = icmp eq i32 %call.i.i240, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.123, i32 noundef %call.i.i240) #16
  br label %send_term.exit

if.end.i:                                         ; preds = %do.end93
  %call1.i = call fastcc i32 @read_copro_response(ptr noundef %master, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %tag.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end5.i, label %if.else.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.126) #16
  br label %send_term.exit

if.else.i:                                        ; preds = %if.end.i
  %99 = ptrtoint ptr %tag.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %tag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp7.not.i = icmp eq i8 %100, 0
  br i1 %cmp7.not.i, label %if.else.i.send_term.exit_crit_edge, label %do.end12.i

if.else.i.send_term.exit_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_term.exit

do.end12.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %100 to i32
  %101 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.129, i32 noundef %conv.i) #16
  br label %send_term.exit

send_term.exit:                                   ; preds = %do.end12.i, %if.else.i.send_term.exit_crit_edge, %do.end5.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tag.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #12
  br label %bail

do.body96:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_response.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_response, %if.then108)) #12
          to label %do.end112 [label %if.then108], !srcloc !426

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_response.__UNIQUE_ID_ddebug300, ptr noundef %104, ptr noundef nonnull @.str.115) #12
  br label %do.end112

do.end112:                                        ; preds = %if.then108, %do.body96
  %105 = ptrtoint ptr %trace_enabled51 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %trace_enabled51, align 2, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool114.not = icmp eq i8 %106, 0
  br i1 %tobool114.not, label %do.end112.bail_crit_edge, label %if.then115

do.end112.bail_crit_edge:                         ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then115:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dump_ucode_trace(ptr noundef %master)
  br label %bail

do.body118:                                       ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_response.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_response, %if.then130)) #12
          to label %do.end134 [label %if.then130], !srcloc !426

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev47, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_response.__UNIQUE_ID_ddebug301, ptr noundef %108, ptr noundef nonnull @.str.116) #12
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %do.body118
  %109 = ptrtoint ptr %trace_enabled51 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %trace_enabled51, align 2, !range !425
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool136.not = icmp eq i8 %110, 0
  br i1 %tobool136.not, label %do.end134.bail_crit_edge, label %if.then137

do.end134.bail_crit_edge:                         ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %bail

if.then137:                                       ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dump_ucode_trace(ptr noundef %master)
  br label %bail

bail:                                             ; preds = %if.then137, %do.end134.bail_crit_edge, %if.then115, %do.end112.bail_crit_edge, %send_term.exit, %do.end73, %do.end60, %if.else35, %if.then33, %if.then29, %sw.bb.bail_crit_edge, %if.end20.bail_crit_edge, %if.then.bail_crit_edge
  %rc.0 = phi i32 [ %call.i207, %do.end60 ], [ %call.i238, %do.end73 ], [ -5, %send_term.exit ], [ 0, %if.then29 ], [ 0, %if.then33 ], [ 0, %if.else35 ], [ 0, %sw.bb.bail_crit_edge ], [ -5, %if.then115 ], [ -5, %do.end112.bail_crit_edge ], [ -11, %if.then137 ], [ -11, %do.end134.bail_crit_edge ], [ 0, %if.end20.bail_crit_edge ], [ -5, %if.then.bail_crit_edge ]
  %busy_count.1 = phi i32 [ %busy_count.0, %do.end60 ], [ %inc63, %do.end73 ], [ %74, %send_term.exit ], [ %busy_count.0, %if.then29 ], [ %busy_count.0, %if.then33 ], [ %busy_count.0, %if.else35 ], [ %busy_count.0, %sw.bb.bail_crit_edge ], [ %busy_count.0, %if.then115 ], [ %busy_count.0, %do.end112.bail_crit_edge ], [ %busy_count.0, %if.then137 ], [ %busy_count.0, %do.end134.bail_crit_edge ], [ %busy_count.0, %if.end20.bail_crit_edge ], [ %busy_count.0, %if.then.bail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %busy_count.1)
  %cmp139 = icmp sgt i32 %busy_count.1, 0
  br i1 %cmp139, label %if.then141, label %bail.cleanup_crit_edge

bail.cleanup_crit_edge:                           ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then141:                                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_fsi_master_acf_poll_response_busy(ptr noundef %master, i32 noundef %busy_count.1)
  br label %cleanup

cleanup:                                          ; preds = %if.then141, %bail.cleanup_crit_edge, %do.end14, %do.end, %retry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -5, %do.end14 ], [ %rc.0, %if.then141 ], [ %rc.0, %bail.cleanup_crit_edge ], [ %call, %retry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tag) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_acf_send_request(ptr noundef %master, ptr noundef %cmd, i8 noundef zeroext %rbits) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_send_request, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_acf_send_request, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !426

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !454
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_send_request, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, ptr noundef %cmd, i8 noundef zeroext %rbits) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !455
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !455
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !422

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_send_request, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_acf_send_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_acf_send_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.94, i32 noundef 45, ptr noundef nonnull @.str.95) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !449
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
define internal fastcc i32 @do_copro_command(ptr noundef %master, i32 noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_fsi_master_acf_copro_command(ptr noundef %master, i32 noundef %op)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !456
  tail call void @arm_heavy_mb() #12
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 23
  %0 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %op) #12, !srcloc !435
  %cvic = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 21
  %2 = ptrtoint ptr %cvic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cvic, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8.preheader_crit_edge, label %if.then

entry.if.end8.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.preheader

if.end8.preheader:                                ; preds = %if.then, %entry.if.end8.preheader_crit_edge
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr2 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 33554432) #12, !srcloc !435
  br label %if.end8.preheader

do.end7:                                          ; preds = %do.body3.backedge
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.100) #16
  br label %cleanup

if.end8:                                          ; preds = %do.body3.backedge.if.end8_crit_edge, %if.end8.preheader
  %timeout.036 = phi i32 [ %dec, %do.body3.backedge.if.end8_crit_edge ], [ 10000000, %if.end8.preheader ]
  %6 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sram, align 4
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.176)
  switch i8 %8, label %cleanup.loopexit40 [
    i8 0, label %if.end8.do.body3.backedge_crit_edge
    i8 -1, label %if.end8.do.body3.backedge_crit_edge41
    i8 1, label %if.end8.cleanup_crit_edge
    i8 -128, label %cleanup.loopexit37
    i8 -127, label %cleanup.loopexit38
    i8 -126, label %cleanup.loopexit39
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.do.body3.backedge_crit_edge41:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.backedge

if.end8.do.body3.backedge_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.backedge

do.body3.backedge:                                ; preds = %if.end8.do.body3.backedge_crit_edge, %if.end8.do.body3.backedge_crit_edge41
  %dec = add nsw i32 %timeout.036, -1
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.end7, label %do.body3.backedge.if.end8_crit_edge

do.body3.backedge.if.end8_crit_edge:              ; preds = %do.body3.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

cleanup.loopexit37:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.loopexit38:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.loopexit39:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.loopexit40:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit40, %cleanup.loopexit39, %cleanup.loopexit38, %cleanup.loopexit37, %if.end8.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -110, %do.end7 ], [ -22, %cleanup.loopexit37 ], [ -5, %cleanup.loopexit38 ], [ -108, %cleanup.loopexit39 ], [ -6, %cleanup.loopexit40 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_acf_copro_command(ptr noundef %master, i32 noundef %op) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_copro_command, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_acf_copro_command, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !426

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !457
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_copro_command, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %op) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !458
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !458
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !422

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_copro_command, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_acf_copro_command.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_acf_copro_command.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.94, i32 noundef 24, ptr noundef nonnull @.str.95) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !449
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
define internal fastcc i32 @read_copro_response(ptr noundef %master, i8 noundef zeroext %size, ptr noundef writeonly %response, ptr nocapture noundef writeonly %tag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 23
  %0 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  %3 = and i8 %2, 15
  %4 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 5
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  %7 = and i8 %6, 15
  %and9 = and i8 %2, 3
  %8 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and9, ptr %tag, align 1
  %call11 = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef 1, i32 noundef 1) #12
  %conv14 = zext i8 %3 to i64
  %call15 = tail call zeroext i8 @crc4(i8 noundef zeroext %call11, i64 noundef %conv14, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and9)
  %cmp = icmp ne i8 %and9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %size)
  %tobool.not = icmp eq i8 %size, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %entry
  %conv19 = zext i8 %size to i32
  %9 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sram, align 4
  %add.ptr21 = getelementptr i8, ptr %10, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #12, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !459
  %conv24 = zext i32 %11 to i64
  %call26 = tail call zeroext i8 @crc4(i8 noundef zeroext %call15, i64 noundef %conv24, i32 noundef %conv19) #12
  %tobool28.not = icmp eq ptr %response, null
  br i1 %tobool28.not, label %if.then.if.end30_crit_edge, label %if.then29

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then29:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %response, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then.if.end30_crit_edge, %entry.if.end30_crit_edge
  %crc.0.in = phi i8 [ %call26, %if.then29 ], [ %call26, %if.then.if.end30_crit_edge ], [ %call15, %entry.if.end30_crit_edge ]
  %rdata.0 = phi i32 [ %11, %if.then29 ], [ %11, %if.then.if.end30_crit_edge ], [ 0, %entry.if.end30_crit_edge ]
  %conv32 = zext i8 %7 to i64
  %call33 = tail call zeroext i8 @crc4(i8 noundef zeroext %crc.0.in, i64 noundef %conv32, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33)
  %cmp35 = icmp eq i8 %call33, 0
  tail call fastcc void @trace_fsi_master_acf_copro_response(ptr noundef %master, i8 noundef zeroext %3, i8 noundef zeroext %7, i32 noundef %rdata.0, i1 noundef zeroext %cmp35)
  br i1 %cmp35, label %if.end30.cleanup_crit_edge, label %if.then38

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp40 = icmp eq i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %7)
  %cmp44 = icmp eq i8 %7, 15
  %or.cond86 = select i1 %cmp40, i1 %cmp44, i1 false
  br i1 %or.cond86, label %if.then38.cleanup_crit_edge, label %lor.lhs.false

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp47 = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp51 = icmp eq i8 %7, 0
  %or.cond87 = select i1 %cmp47, i1 %cmp51, i1 false
  br i1 %or.cond87, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_copro_response.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_copro_response, %if.then60)) #12
          to label %cleanup [label %if.then60], !srcloc !426

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_copro_response.__UNIQUE_ID_ddebug295, ptr noundef %14, ptr noundef nonnull @.str.118) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body, %lor.lhs.false.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.then38.cleanup_crit_edge ], [ -11, %if.then60 ], [ 0, %if.end30.cleanup_crit_edge ], [ -11, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_acf_crc_rsp_error(ptr noundef %master, i32 noundef %retries) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_crc_rsp_error, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_acf_crc_rsp_error, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !426

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !460
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_crc_rsp_error, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %retries) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !461
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !461
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !422

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_crc_rsp_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_acf_crc_rsp_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_acf_crc_rsp_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.94, i32 noundef 84, ptr noundef nonnull @.str.95) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !449
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
define internal fastcc void @dump_ucode_trace(ptr nocapture noundef readonly %master) unnamed_addr #0 align 64 {
entry:
  %trbuf = alloca [52 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %trbuf) #12
  %0 = call ptr @memset(ptr %trbuf, i32 255, i32 52)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_ucode_trace.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_ucode_trace, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !426

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %sram = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 23
  %3 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sram, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !462
  %6 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sram, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sram, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 5
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #12, !srcloc !437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  %conv11 = zext i8 %11 to i32
  %12 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sram, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #12, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !463
  %15 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sram, align 4
  %add.ptr19 = getelementptr i8, ptr %16, i32 48
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #12, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_ucode_trace.__UNIQUE_ID_ddebug296, ptr noundef %2, ptr noundef nonnull @.str.120, i32 noundef %5, i32 noundef %conv, i32 noundef %conv11, i32 noundef %14, i32 noundef %17) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sram27 = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 23
  %dev54 = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end59.for.body_crit_edge, %do.end
  %p.085 = phi ptr [ inttoptr (i32 -1 to ptr), %do.end ], [ %add.ptr33, %if.end59.for.body_crit_edge ]
  %i.084 = phi i32 [ 0, %do.end ], [ %inc, %if.end59.for.body_crit_edge ]
  %rem = and i32 %i.084, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp23 = icmp eq i32 %rem, 0
  %spec.select = select i1 %cmp23, ptr %trbuf, ptr %p.085
  %18 = ptrtoint ptr %sram27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sram27, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 256
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %i.084
  %20 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #12, !srcloc !437
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  %conv31 = zext i8 %20 to i32
  %call32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %spec.select, ptr noundef nonnull @.str.121, i32 noundef %conv31)
  %add.ptr33 = getelementptr i8, ptr %spec.select, i32 %call32
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem)
  %cmp35 = icmp eq i32 %rem, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp38 = icmp eq i8 %20, -1
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp38
  br i1 %or.cond, label %do.body41, label %for.body.if.end59_crit_edge

for.body.if.end59_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

do.body41:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_ucode_trace.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_ucode_trace, %if.then53)) #12
          to label %if.end59 [label %if.then53], !srcloc !426

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev54, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_ucode_trace.__UNIQUE_ID_ddebug297, ptr noundef %22, ptr noundef nonnull @.str.122, ptr noundef nonnull %trbuf) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %do.body41, %for.body.if.end59_crit_edge
  %inc = add nuw nsw i32 %i.084, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 512
  %or.cond86 = select i1 %cmp38, i1 true, i1 %exitcond.not
  br i1 %or.cond86, label %for.end, label %if.end59.for.body_crit_edge

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %trbuf) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_acf_poll_response_busy(ptr noundef %master, i32 noundef %busy_count) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_poll_response_busy, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_acf_poll_response_busy, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !426

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !465
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_poll_response_busy, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %busy_count) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !466
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !466
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !422

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_poll_response_busy, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_acf_poll_response_busy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_acf_poll_response_busy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.94, i32 noundef 100, ptr noundef nonnull @.str.95) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !449
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
define internal fastcc void @trace_fsi_master_acf_copro_response(ptr noundef %master, i8 noundef zeroext %rtag, i8 noundef zeroext %rcrc, i32 noundef %rdata, i1 noundef zeroext %crc_ok) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_copro_response, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_acf_copro_response, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !426

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !412) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !422

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %if.end31

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !467
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_copro_response, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end49.critedge, label %if.end31.do.body2.i_crit_edge

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
  tail call void %15(ptr noundef %17, ptr noundef %master, i8 noundef zeroext %rtag, i8 noundef zeroext %rcrc, i32 noundef %rdata, i1 noundef zeroext %crc_ok) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !468
  br label %if.end49.sink.split

if.end49.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !468
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end49.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i74.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i74.c to ptr
  %preempt_count.i.i75.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i75.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i75.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75.c, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !422

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.96, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %27, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %29 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i84
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i85.not = icmp eq i32 %32, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %33 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !448
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_acf_copro_response, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_fsi_master_acf_copro_response.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_acf_copro_response.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.94, i32 noundef 68, ptr noundef nonnull @.str.95) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !449
  %38 = tail call i32 @llvm.read_register.i32(metadata !412) #12
  %and.i.i.i.i87 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_copro_firmware(ptr nocapture noundef readonly %master) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #12
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !424
  %dev = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.150, ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.151, i32 noundef %call, ptr noundef nonnull @.str.150) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_clk_vreg = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 9
  %5 = ptrtoint ptr %gpio_clk_vreg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %gpio_clk_vreg, align 8
  %gpio_dat_vreg = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 11
  %7 = ptrtoint ptr %gpio_dat_vreg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %gpio_dat_vreg, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp = icmp eq i16 %6, %8
  %. = select i1 %cmp, i32 21320, i32 21328
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_copro_firmware.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_copro_firmware, %if.then11)) #12
          to label %do.end16 [label %if.then11], !srcloc !426

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_copro_firmware.__UNIQUE_ID_ddebug309, ptr noundef %10, ptr noundef nonnull @.str.153, i32 noundef %.) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %if.end
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %data17 = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data17, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  %cmp2085 = icmp ult ptr %14, %add.ptr
  br i1 %cmp2085, label %do.end16.for.body_crit_edge, label %do.end16.do.end42_crit_edge

do.end16.do.end42_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42

do.end16.for.body_crit_edge:                      ; preds = %do.end16
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %do.end16.for.body_crit_edge
  %data.086 = phi ptr [ %add.ptr34, %if.end33.for.body_crit_edge ], [ %14, %do.end16.for.body_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %data.086, i32 1024
  %17 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr22, align 2
  %add.ptr26 = getelementptr i8, ptr %data.086, i32 1040
  %19 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr26, align 4
  %conv28 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %conv28)
  %cmp30 = icmp eq i32 %., %conv28
  br i1 %cmp30, label %for.body.for.end_crit_edge, label %if.end33

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end33:                                         ; preds = %for.body
  %add.ptr34 = getelementptr i8, ptr %data.086, i32 %20
  %cmp20 = icmp ult ptr %add.ptr34, %add.ptr
  br i1 %cmp20, label %if.end33.for.body_crit_edge, label %if.end33.for.end_crit_edge

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %for.body.for.end_crit_edge
  %data.0.lcssa.ph = phi ptr [ %add.ptr34, %if.end33.for.end_crit_edge ], [ %data.086, %for.body.for.end_crit_edge ]
  %phi.cast = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %phi.cast)
  %cmp37.not = icmp eq i32 %., %phi.cast
  br i1 %cmp37.not, label %if.end45, label %for.end.do.end42_crit_edge

for.end.do.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42

do.end42:                                         ; preds = %for.end.do.end42_crit_edge, %do.end16.do.end42_crit_edge
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.155, i32 noundef %.) #16
  br label %release_fw

if.end45:                                         ; preds = %for.end
  %cf_mem_size = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 19
  %23 = ptrtoint ptr %cf_mem_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cf_mem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp46 = icmp ugt i32 %20, %24
  br i1 %cmp46, label %do.end51, label %if.else55

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.158, i32 noundef %16, i32 noundef %24) #16
  br label %release_fw

if.else55:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %cf_mem = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 20
  %27 = ptrtoint ptr %cf_mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cf_mem, align 8
  call void @mmiocpy(ptr noundef %28, ptr noundef %data.0.lcssa.ph, i32 noundef %20) #12
  br label %release_fw

release_fw:                                       ; preds = %if.else55, %do.end51, %do.end42
  %rc.0 = phi i32 [ -19, %do.end42 ], [ -12, %do.end51 ], [ 0, %if.else55 ]
  %29 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %30) #12
  br label %cleanup

cleanup:                                          ; preds = %release_fw, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %rc.0, %release_fw ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aspeed_gpio_copro_grab_gpio(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aspeed_gpio_copro_release_gpio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_common_fw_config(ptr nocapture noundef readonly %master, ptr noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !469
  tail call void @arm_heavy_mb() #12
  %gpio_clk_vreg = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 9
  %0 = ptrtoint ptr %gpio_clk_vreg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %gpio_clk_vreg, align 8
  %add.ptr = getelementptr i8, ptr %base, i32 144
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %1) #12, !srcloc !470
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !471
  tail call void @arm_heavy_mb() #12
  %gpio_clk_dreg = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 10
  %2 = ptrtoint ptr %gpio_clk_dreg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gpio_clk_dreg, align 2
  %add.ptr3 = getelementptr i8, ptr %base, i32 146
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 %3) #12, !srcloc !470
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !472
  tail call void @arm_heavy_mb() #12
  %gpio_dat_vreg = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 11
  %4 = ptrtoint ptr %gpio_dat_vreg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gpio_dat_vreg, align 4
  %add.ptr6 = getelementptr i8, ptr %base, i32 148
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %5) #12, !srcloc !470
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void @arm_heavy_mb() #12
  %gpio_dat_dreg = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 12
  %6 = ptrtoint ptr %gpio_dat_dreg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gpio_dat_dreg, align 2
  %add.ptr9 = getelementptr i8, ptr %base, i32 150
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %7) #12, !srcloc !470
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !474
  tail call void @arm_heavy_mb() #12
  %gpio_tra_vreg = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 13
  %8 = ptrtoint ptr %gpio_tra_vreg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gpio_tra_vreg, align 8
  %add.ptr12 = getelementptr i8, ptr %base, i32 152
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 %9) #12, !srcloc !470
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !475
  tail call void @arm_heavy_mb() #12
  %gpio_tra_dreg = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 14
  %10 = ptrtoint ptr %gpio_tra_dreg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gpio_tra_dreg, align 2
  %add.ptr15 = getelementptr i8, ptr %base, i32 154
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 %11) #12, !srcloc !470
  %gpio_clk_bit = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 15
  %12 = ptrtoint ptr %gpio_clk_bit to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %gpio_clk_bit, align 4
  %add.ptr16 = getelementptr i8, ptr %base, i32 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %13) #12, !srcloc !428
  %gpio_dat_bit = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 16
  %14 = ptrtoint ptr %gpio_dat_bit to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gpio_dat_bit, align 1
  %add.ptr17 = getelementptr i8, ptr %base, i32 157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %15) #12, !srcloc !428
  %gpio_tra_bit = getelementptr inbounds %struct.fsi_master_acf, ptr %master, i32 0, i32 17
  %16 = ptrtoint ptr %gpio_tra_bit to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %gpio_tra_bit, align 2
  %add.ptr18 = getelementptr i8, ptr %base, i32 158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 %17) #12, !srcloc !428
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @external_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %external_mode = getelementptr inbounds %struct.fsi_master_acf, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %external_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %external_mode, align 1, !range !425
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull @.str.171, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @external_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !424
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2 = icmp ne i32 %4, 0
  %lock = getelementptr inbounds %struct.fsi_master_acf, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %external_mode5 = getelementptr inbounds %struct.fsi_master_acf, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %external_mode5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %external_mode5, align 1, !range !425
  %7 = zext i1 %tobool2 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %7)
  %cmp = icmp eq i8 %6, %7
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %8 = ptrtoint ptr %external_mode5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %external_mode5, align 1
  br i1 %tobool2, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @fsi_master_acf_terminate(ptr noundef %1)
  %gpio_mux.i = getelementptr inbounds %struct.fsi_master_acf, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %gpio_mux.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_mux.i, align 4
  %call.i38 = call i32 @gpiod_direction_output(ptr noundef %10, i32 noundef 0) #12
  %gpio_trans.i = getelementptr inbounds %struct.fsi_master_acf, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %gpio_trans.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_trans.i, align 4
  %call1.i = call i32 @gpiod_direction_output(ptr noundef %12, i32 noundef 0) #12
  %gpio_enable.i = getelementptr inbounds %struct.fsi_master_acf, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %gpio_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_enable.i, align 8
  %call2.i = call i32 @gpiod_direction_output(ptr noundef %14, i32 noundef 1) #12
  %gpio_clk.i = getelementptr inbounds %struct.fsi_master_acf, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpio_clk.i, align 4
  %call3.i = call i32 @gpiod_direction_input(ptr noundef %16) #12
  %gpio_data.i = getelementptr inbounds %struct.fsi_master_acf, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_data.i, align 8
  %call4.i = call i32 @gpiod_direction_input(ptr noundef %18) #12
  br label %if.end19

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = call fastcc i32 @fsi_master_acf_setup(ptr noundef %1)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  call void @mutex_unlock(ptr noundef %lock) #12
  %call22 = call i32 @fsi_master_rescan(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then9 ], [ %count, %if.end19 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_master_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !147, !148, !149, !151, !153, !154, !155, !157, !159, !160, !161, !163, !165, !166, !167, !169, !171, !172, !173, !175, !177, !178, !179, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !201, !202, !203, !205, !206, !207, !209, !211, !212, !213, !215, !217, !218, !219, !221, !222, !223, !225, !226, !228, !229, !231, !233, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !247, !248, !250, !251, !252, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !270, !271, !272, !274, !275, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !297, !298, !300, !301, !303, !304, !305, !306, !307, !308, !309, !311, !312, !313, !315, !317, !318, !320, !321, !322, !323, !325, !326, !327, !329, !330, !331, !332, !333, !335, !336, !337, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !357, !359, !360, !361, !362, !364, !365, !366, !368, !369, !370, !372, !374, !375, !376, !377, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !393, !394, !395, !396, !398, !399, !400, !402, !403, !404, !405, !407, !408, !410}
!llvm.named.register.sp = !{!412}
!llvm.module.flags = !{!413, !414, !415, !416, !417, !418, !419, !420}
!llvm.ident = !{!421}

!0 = !{ptr @__tracepoint_fsi_master_acf_copro_command, !1, !"__tracepoint_fsi_master_acf_copro_command", i1 false, i1 false}
!1 = !{!"../include/trace/events/fsi_master_ast_cf.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_fsi_master_acf_copro_command, !1, !"__tracepoint_ptr_fsi_master_acf_copro_command", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_fsi_master_acf_copro_command, !1, !"__SCK__tp_func_fsi_master_acf_copro_command", i1 false, i1 false}
!4 = !{ptr @__tracepoint_fsi_master_acf_send_request, !5, !"__tracepoint_fsi_master_acf_send_request", i1 false, i1 false}
!5 = !{!"../include/trace/events/fsi_master_ast_cf.h", i32 26, i32 1}
!6 = !{ptr @__tracepoint_ptr_fsi_master_acf_send_request, !5, !"__tracepoint_ptr_fsi_master_acf_send_request", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_fsi_master_acf_send_request, !5, !"__SCK__tp_func_fsi_master_acf_send_request", i1 false, i1 false}
!8 = !{ptr @__tracepoint_fsi_master_acf_copro_response, !9, !"__tracepoint_fsi_master_acf_copro_response", i1 false, i1 false}
!9 = !{!"../include/trace/events/fsi_master_ast_cf.h", i32 47, i32 1}
!10 = !{ptr @__tracepoint_ptr_fsi_master_acf_copro_response, !9, !"__tracepoint_ptr_fsi_master_acf_copro_response", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_fsi_master_acf_copro_response, !9, !"__SCK__tp_func_fsi_master_acf_copro_response", i1 false, i1 false}
!12 = !{ptr @__tracepoint_fsi_master_acf_crc_rsp_error, !13, !"__tracepoint_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!13 = !{!"../include/trace/events/fsi_master_ast_cf.h", i32 70, i32 1}
!14 = !{ptr @__tracepoint_ptr_fsi_master_acf_crc_rsp_error, !13, !"__tracepoint_ptr_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_fsi_master_acf_crc_rsp_error, !13, !"__SCK__tp_func_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!16 = !{ptr @__tracepoint_fsi_master_acf_poll_response_busy, !17, !"__tracepoint_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!17 = !{!"../include/trace/events/fsi_master_ast_cf.h", i32 86, i32 1}
!18 = !{ptr @__tracepoint_ptr_fsi_master_acf_poll_response_busy, !17, !"__tracepoint_ptr_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_fsi_master_acf_poll_response_busy, !17, !"__SCK__tp_func_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!20 = !{ptr @__tracepoint_fsi_master_acf_cmd_abs_addr, !21, !"__tracepoint_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!21 = !{!"../include/trace/events/fsi_master_ast_cf.h", i32 102, i32 1}
!22 = !{ptr @__tracepoint_ptr_fsi_master_acf_cmd_abs_addr, !21, !"__tracepoint_ptr_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_fsi_master_acf_cmd_abs_addr, !21, !"__SCK__tp_func_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!24 = !{ptr @__tracepoint_fsi_master_acf_cmd_rel_addr, !25, !"__tracepoint_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!25 = !{!"../include/trace/events/fsi_master_ast_cf.h", i32 118, i32 1}
!26 = !{ptr @__tracepoint_ptr_fsi_master_acf_cmd_rel_addr, !25, !"__tracepoint_ptr_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_fsi_master_acf_cmd_rel_addr, !25, !"__SCK__tp_func_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!28 = !{ptr @__tracepoint_fsi_master_acf_cmd_same_addr, !29, !"__tracepoint_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!29 = !{!"../include/trace/events/fsi_master_ast_cf.h", i32 134, i32 1}
!30 = !{ptr @__tracepoint_ptr_fsi_master_acf_cmd_same_addr, !29, !"__tracepoint_ptr_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_fsi_master_acf_cmd_same_addr, !29, !"__SCK__tp_func_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!32 = !{ptr @event_class_fsi_master_acf_copro_command, !1, !"event_class_fsi_master_acf_copro_command", i1 false, i1 false}
!33 = !{ptr @event_fsi_master_acf_copro_command, !1, !"event_fsi_master_acf_copro_command", i1 false, i1 false}
!34 = !{ptr @__event_fsi_master_acf_copro_command, !1, !"__event_fsi_master_acf_copro_command", i1 false, i1 false}
!35 = !{ptr @event_class_fsi_master_acf_send_request, !5, !"event_class_fsi_master_acf_send_request", i1 false, i1 false}
!36 = !{ptr @event_fsi_master_acf_send_request, !5, !"event_fsi_master_acf_send_request", i1 false, i1 false}
!37 = !{ptr @__event_fsi_master_acf_send_request, !5, !"__event_fsi_master_acf_send_request", i1 false, i1 false}
!38 = !{ptr @event_class_fsi_master_acf_copro_response, !9, !"event_class_fsi_master_acf_copro_response", i1 false, i1 false}
!39 = !{ptr @event_fsi_master_acf_copro_response, !9, !"event_fsi_master_acf_copro_response", i1 false, i1 false}
!40 = !{ptr @__event_fsi_master_acf_copro_response, !9, !"__event_fsi_master_acf_copro_response", i1 false, i1 false}
!41 = !{ptr @event_class_fsi_master_acf_crc_rsp_error, !13, !"event_class_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!42 = !{ptr @event_fsi_master_acf_crc_rsp_error, !13, !"event_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!43 = !{ptr @__event_fsi_master_acf_crc_rsp_error, !13, !"__event_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!44 = !{ptr @event_class_fsi_master_acf_poll_response_busy, !17, !"event_class_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!45 = !{ptr @event_fsi_master_acf_poll_response_busy, !17, !"event_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!46 = !{ptr @__event_fsi_master_acf_poll_response_busy, !17, !"__event_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!47 = !{ptr @event_class_fsi_master_acf_cmd_abs_addr, !21, !"event_class_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!48 = !{ptr @event_fsi_master_acf_cmd_abs_addr, !21, !"event_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!49 = !{ptr @__event_fsi_master_acf_cmd_abs_addr, !21, !"__event_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!50 = !{ptr @event_class_fsi_master_acf_cmd_rel_addr, !25, !"event_class_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!51 = !{ptr @event_fsi_master_acf_cmd_rel_addr, !25, !"event_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!52 = !{ptr @__event_fsi_master_acf_cmd_rel_addr, !25, !"__event_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!53 = !{ptr @event_class_fsi_master_acf_cmd_same_addr, !29, !"event_class_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!54 = !{ptr @event_fsi_master_acf_cmd_same_addr, !29, !"event_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!55 = !{ptr @__event_fsi_master_acf_cmd_same_addr, !29, !"__event_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!56 = !{ptr @__bpf_trace_tp_map_fsi_master_acf_copro_command, !1, !"__bpf_trace_tp_map_fsi_master_acf_copro_command", i1 false, i1 false}
!57 = !{ptr @__bpf_trace_tp_map_fsi_master_acf_send_request, !5, !"__bpf_trace_tp_map_fsi_master_acf_send_request", i1 false, i1 false}
!58 = !{ptr @__bpf_trace_tp_map_fsi_master_acf_copro_response, !9, !"__bpf_trace_tp_map_fsi_master_acf_copro_response", i1 false, i1 false}
!59 = !{ptr @__bpf_trace_tp_map_fsi_master_acf_crc_rsp_error, !13, !"__bpf_trace_tp_map_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!60 = !{ptr @__bpf_trace_tp_map_fsi_master_acf_poll_response_busy, !17, !"__bpf_trace_tp_map_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!61 = !{ptr @__bpf_trace_tp_map_fsi_master_acf_cmd_abs_addr, !21, !"__bpf_trace_tp_map_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!62 = !{ptr @__bpf_trace_tp_map_fsi_master_acf_cmd_rel_addr, !25, !"__bpf_trace_tp_map_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!63 = !{ptr @__bpf_trace_tp_map_fsi_master_acf_cmd_same_addr, !29, !"__bpf_trace_tp_map_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!64 = !{ptr @__initcall__kmod_fsi_master_ast_cf__313_1440_fsi_master_acf_init6, !65, !"__initcall__kmod_fsi_master_ast_cf__313_1440_fsi_master_acf_init6", i1 false, i1 false}
!65 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1440, i32 1}
!66 = !{ptr @__exitcall_fsi_master_acf_exit, !65, !"__exitcall_fsi_master_acf_exit", i1 false, i1 false}
!67 = !{ptr @__UNIQUE_ID_file314, !68, !"__UNIQUE_ID_file314", i1 false, i1 false}
!68 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1441, i32 1}
!69 = !{ptr @__UNIQUE_ID_license315, !68, !"__UNIQUE_ID_license315", i1 false, i1 false}
!70 = !{ptr @__tpstrtab_fsi_master_acf_copro_command, !1, !"__tpstrtab_fsi_master_acf_copro_command", i1 false, i1 false}
!71 = !{ptr @__tpstrtab_fsi_master_acf_send_request, !5, !"__tpstrtab_fsi_master_acf_send_request", i1 false, i1 false}
!72 = !{ptr @__tpstrtab_fsi_master_acf_copro_response, !9, !"__tpstrtab_fsi_master_acf_copro_response", i1 false, i1 false}
!73 = !{ptr @__tpstrtab_fsi_master_acf_crc_rsp_error, !13, !"__tpstrtab_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!74 = !{ptr @__tpstrtab_fsi_master_acf_poll_response_busy, !17, !"__tpstrtab_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!75 = !{ptr @__tpstrtab_fsi_master_acf_cmd_abs_addr, !21, !"__tpstrtab_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!76 = !{ptr @__tpstrtab_fsi_master_acf_cmd_rel_addr, !25, !"__tpstrtab_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!77 = !{ptr @__tpstrtab_fsi_master_acf_cmd_same_addr, !29, !"__tpstrtab_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!78 = !{ptr @str__fsi_master_ast_cf__trace_system_name, !79, !"str__fsi_master_ast_cf__trace_system_name", i1 false, i1 false}
!79 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!80 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @trace_event_fields_fsi_master_acf_copro_command, !1, !"trace_event_fields_fsi_master_acf_copro_command", i1 false, i1 false}
!85 = !{ptr @trace_event_type_funcs_fsi_master_acf_copro_command, !1, !"trace_event_type_funcs_fsi_master_acf_copro_command", i1 false, i1 false}
!86 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @print_fmt_fsi_master_acf_copro_command, !1, !"print_fmt_fsi_master_acf_copro_command", i1 false, i1 false}
!88 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @trace_event_fields_fsi_master_acf_send_request, !5, !"trace_event_fields_fsi_master_acf_send_request", i1 false, i1 false}
!94 = !{ptr @trace_event_type_funcs_fsi_master_acf_send_request, !5, !"trace_event_type_funcs_fsi_master_acf_send_request", i1 false, i1 false}
!95 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @print_fmt_fsi_master_acf_send_request, !5, !"print_fmt_fsi_master_acf_send_request", i1 false, i1 false}
!97 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @trace_event_fields_fsi_master_acf_copro_response, !9, !"trace_event_fields_fsi_master_acf_copro_response", i1 false, i1 false}
!104 = !{ptr @trace_event_type_funcs_fsi_master_acf_copro_response, !9, !"trace_event_type_funcs_fsi_master_acf_copro_response", i1 false, i1 false}
!105 = !{ptr @.str.17, !9, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @print_fmt_fsi_master_acf_copro_response, !9, !"print_fmt_fsi_master_acf_copro_response", i1 false, i1 false}
!107 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @trace_event_fields_fsi_master_acf_crc_rsp_error, !13, !"trace_event_fields_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!109 = !{ptr @trace_event_type_funcs_fsi_master_acf_crc_rsp_error, !13, !"trace_event_type_funcs_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!110 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @print_fmt_fsi_master_acf_crc_rsp_error, !13, !"print_fmt_fsi_master_acf_crc_rsp_error", i1 false, i1 false}
!112 = !{ptr @.str.20, !17, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @trace_event_fields_fsi_master_acf_poll_response_busy, !17, !"trace_event_fields_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!114 = !{ptr @trace_event_type_funcs_fsi_master_acf_poll_response_busy, !17, !"trace_event_type_funcs_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!115 = !{ptr @.str.21, !17, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @print_fmt_fsi_master_acf_poll_response_busy, !17, !"print_fmt_fsi_master_acf_poll_response_busy", i1 false, i1 false}
!117 = !{ptr @.str.22, !21, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @trace_event_fields_fsi_master_acf_cmd_abs_addr, !21, !"trace_event_fields_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!119 = !{ptr @trace_event_type_funcs_fsi_master_acf_cmd_abs_addr, !21, !"trace_event_type_funcs_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!120 = !{ptr @.str.23, !21, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @print_fmt_fsi_master_acf_cmd_abs_addr, !21, !"print_fmt_fsi_master_acf_cmd_abs_addr", i1 false, i1 false}
!122 = !{ptr @.str.24, !25, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @trace_event_fields_fsi_master_acf_cmd_rel_addr, !25, !"trace_event_fields_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!124 = !{ptr @trace_event_type_funcs_fsi_master_acf_cmd_rel_addr, !25, !"trace_event_type_funcs_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!125 = !{ptr @.str.25, !25, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @print_fmt_fsi_master_acf_cmd_rel_addr, !25, !"print_fmt_fsi_master_acf_cmd_rel_addr", i1 false, i1 false}
!127 = !{ptr @trace_event_fields_fsi_master_acf_cmd_same_addr, !29, !"trace_event_fields_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!128 = !{ptr @trace_event_type_funcs_fsi_master_acf_cmd_same_addr, !29, !"trace_event_type_funcs_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!129 = !{ptr @.str.26, !29, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @print_fmt_fsi_master_acf_cmd_same_addr, !29, !"print_fmt_fsi_master_acf_cmd_same_addr", i1 false, i1 false}
!131 = !{ptr @.str.27, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1433, i32 12}
!133 = !{ptr @fsi_master_acf, !134, !"fsi_master_acf", i1 false, i1 false}
!134 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1431, i32 31}
!135 = !{ptr @.str.28, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1232, i32 54}
!137 = !{ptr @.str.29, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1236, i32 52}
!139 = !{ptr @.str.30, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1238, i32 52}
!141 = !{ptr @.str.31, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1240, i32 3}
!143 = !{ptr @.str.32, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.33, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.34, !142, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.35, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @fsi_master_acf_probe._entry, !142, !"_entry", i1 false, i1 false}
!148 = !{ptr @fsi_master_acf_probe._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.36, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1246, i32 36}
!151 = !{ptr @.str.38, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1248, i32 3}
!153 = !{ptr @fsi_master_acf_probe._entry.37, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @fsi_master_acf_probe._entry_ptr.39, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.40, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1254, i32 36}
!157 = !{ptr @.str.42, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1256, i32 3}
!159 = !{ptr @fsi_master_acf_probe._entry.41, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @fsi_master_acf_probe._entry_ptr.43, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.44, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1263, i32 45}
!163 = !{ptr @.str.46, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1265, i32 3}
!165 = !{ptr @fsi_master_acf_probe._entry.45, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @fsi_master_acf_probe._entry_ptr.47, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.48, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1271, i32 45}
!169 = !{ptr @.str.50, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1273, i32 3}
!171 = !{ptr @fsi_master_acf_probe._entry.49, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @fsi_master_acf_probe._entry_ptr.51, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.52, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1279, i32 45}
!175 = !{ptr @.str.54, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1281, i32 3}
!177 = !{ptr @fsi_master_acf_probe._entry.53, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @fsi_master_acf_probe._entry_ptr.55, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.56, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1288, i32 31}
!181 = !{ptr @.str.58, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1290, i32 3}
!183 = !{ptr @fsi_master_acf_probe._entry.57, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @fsi_master_acf_probe._entry_ptr.59, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.61, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1297, i32 3}
!187 = !{ptr @fsi_master_acf_probe._entry.60, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @fsi_master_acf_probe._entry_ptr.62, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.64, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1305, i32 3}
!191 = !{ptr @fsi_master_acf_probe._entry.63, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @fsi_master_acf_probe._entry_ptr.65, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.66, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1314, i32 2}
!195 = !{ptr @.str.67, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @fsi_master_acf_probe.__UNIQUE_ID_ddebug311, !194, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!197 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1319, i32 32}
!199 = !{ptr @.str.70, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1321, i32 4}
!201 = !{ptr @fsi_master_acf_probe._entry.69, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @fsi_master_acf_probe._entry_ptr.71, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.73, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1328, i32 4}
!205 = !{ptr @fsi_master_acf_probe._entry.72, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @fsi_master_acf_probe._entry_ptr.74, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.75, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1331, i32 33}
!209 = !{ptr @.str.77, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1334, i32 4}
!211 = !{ptr @fsi_master_acf_probe._entry.76, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @fsi_master_acf_probe._entry_ptr.78, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.79, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1340, i32 63}
!215 = !{ptr @.str.81, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1343, i32 3}
!217 = !{ptr @fsi_master_acf_probe._entry.80, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @fsi_master_acf_probe._entry_ptr.82, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1353, i32 3}
!221 = !{ptr @fsi_master_acf_probe._entry.83, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @fsi_master_acf_probe._entry_ptr.85, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.86, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1356, i32 2}
!225 = !{ptr @fsi_master_acf_probe.__UNIQUE_ID_ddebug312, !224, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!226 = !{ptr @fsi_master_acf_probe.__key, !227, !"__key", i1 false, i1 false}
!227 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1381, i32 2}
!228 = !{ptr @.str.87, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @fsi_master_acf_gpio_ops, !230, !"fsi_master_acf_gpio_ops", i1 false, i1 false}
!230 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1208, i32 43}
!231 = !{ptr @.str.88, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1172, i32 3}
!233 = !{ptr @.str.89, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.90, !232, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @fsi_master_acf_gpio_request._entry, !232, !"_entry", i1 false, i1 false}
!236 = !{ptr @fsi_master_acf_gpio_request._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.91, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 609, i32 2}
!239 = !{ptr @.str.92, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @fsi_master_acf_read.__UNIQUE_ID_ddebug303, !238, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!241 = !{ptr @.str.93, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 614, i32 3}
!243 = !{ptr @fsi_master_acf_read.__UNIQUE_ID_ddebug304, !242, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!244 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!245 = !{ptr @.str.94, !29, !"<string literal>", i1 false, i1 false}
!246 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!247 = !{ptr @.str.95, !29, !"<string literal>", i1 false, i1 false}
!248 = distinct !{null, !249, !"__already_done", i1 false, i1 false}
!249 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!250 = !{ptr @.str.96, !249, !"<string literal>", i1 false, i1 false}
!251 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!252 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!253 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!254 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!255 = !{ptr @.str.97, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 581, i32 5}
!257 = !{ptr @.str.98, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @fsi_master_acf_xfer._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @fsi_master_acf_xfer._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.99, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 588, i32 3}
!262 = !{ptr @fsi_master_acf_xfer.__UNIQUE_ID_ddebug302, !261, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!263 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!264 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!265 = !{ptr @.str.100, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 324, i32 4}
!267 = !{ptr @.str.101, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @do_copro_command._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @do_copro_command._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!271 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!272 = !{ptr @.str.102, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 494, i32 4}
!274 = !{ptr @.str.103, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @handle_response._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @handle_response._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.105, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 501, i32 4}
!279 = !{ptr @handle_response._entry.104, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @handle_response._entry_ptr.106, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.107, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 526, i32 3}
!283 = !{ptr @handle_response.__UNIQUE_ID_ddebug298, !282, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!284 = !{ptr @.str.109, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 531, i32 4}
!286 = !{ptr @handle_response._entry.108, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @handle_response._entry_ptr.110, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.112, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 539, i32 5}
!290 = !{ptr @handle_response._entry.111, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @handle_response._entry_ptr.113, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.114, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 544, i32 3}
!294 = !{ptr @handle_response.__UNIQUE_ID_ddebug299, !293, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!295 = !{ptr @.str.115, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 551, i32 3}
!297 = !{ptr @handle_response.__UNIQUE_ID_ddebug300, !296, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!298 = !{ptr @.str.116, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 557, i32 3}
!300 = !{ptr @handle_response.__UNIQUE_ID_ddebug301, !299, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!301 = !{ptr @.str.117, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 408, i32 3}
!303 = !{ptr @.str.118, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @read_copro_response.__UNIQUE_ID_ddebug295, !302, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!305 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!306 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!307 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!308 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!309 = !{ptr @.str.119, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 446, i32 2}
!311 = !{ptr @.str.120, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @dump_ucode_trace.__UNIQUE_ID_ddebug296, !310, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!313 = !{ptr @.str.121, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 459, i32 19}
!315 = !{ptr @.str.122, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 461, i32 4}
!317 = !{ptr @dump_ucode_trace.__UNIQUE_ID_ddebug297, !316, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!318 = !{ptr @.str.123, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 424, i32 3}
!320 = !{ptr @.str.124, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @send_term._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @send_term._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.126, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 430, i32 3}
!325 = !{ptr @send_term._entry.125, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @send_term._entry_ptr.127, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.129, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 434, i32 3}
!329 = !{ptr @send_term._entry.128, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @send_term._entry_ptr.130, !328, !"_entry_ptr", i1 false, i1 false}
!331 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!332 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!333 = !{ptr @.str.131, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 634, i32 2}
!335 = !{ptr @.str.132, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @fsi_master_acf_write.__UNIQUE_ID_ddebug305, !334, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!337 = !{ptr @.str.133, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 639, i32 3}
!339 = !{ptr @fsi_master_acf_write.__UNIQUE_ID_ddebug306, !338, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!340 = !{ptr @.str.134, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 658, i32 2}
!342 = !{ptr @.str.135, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @fsi_master_acf_term.__UNIQUE_ID_ddebug307, !341, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!344 = !{ptr @.str.136, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 679, i32 2}
!346 = !{ptr @.str.137, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @fsi_master_acf_break.__UNIQUE_ID_ddebug308, !345, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!348 = !{ptr @.str.138, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1072, i32 2}
!350 = !{ptr @.str.139, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @fsi_master_acf_link_config.__UNIQUE_ID_ddebug310, !349, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!352 = !{ptr @.str.140, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 976, i32 3}
!354 = !{ptr @.str.141, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @fsi_master_acf_setup._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @fsi_master_acf_setup._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.142, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 801, i32 3}
!359 = !{ptr @.str.143, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @setup_gpios_for_copro._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @setup_gpios_for_copro._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.145, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 807, i32 3}
!364 = !{ptr @setup_gpios_for_copro._entry.144, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @setup_gpios_for_copro._entry_ptr.146, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.148, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 814, i32 3}
!368 = !{ptr @setup_gpios_for_copro._entry.147, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @setup_gpios_for_copro._entry_ptr.149, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.150, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 838, i32 29}
!372 = !{ptr @.str.151, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 840, i32 3}
!374 = !{ptr @.str.152, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @load_copro_firmware._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @load_copro_firmware._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.153, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 851, i32 2}
!379 = !{ptr @load_copro_firmware.__UNIQUE_ID_ddebug309, !378, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!380 = !{ptr @.str.155, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 862, i32 3}
!382 = !{ptr @load_copro_firmware._entry.154, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @load_copro_firmware._entry_ptr.156, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.158, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 868, i32 3}
!386 = !{ptr @load_copro_firmware._entry.157, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @load_copro_firmware._entry_ptr.159, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.160, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 890, i32 2}
!390 = !{ptr @.str.161, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.162, !389, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @check_firmware_image._entry, !389, !"_entry", i1 false, i1 false}
!393 = !{ptr @check_firmware_image._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.163, !389, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @.str.164, !389, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @.str.166, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 895, i32 3}
!398 = !{ptr @check_firmware_image._entry.165, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @check_firmware_image._entry_ptr.167, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.168, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 919, i32 3}
!402 = !{ptr @.str.169, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @copro_enable_sw_irq._entry, !401, !"_entry", i1 false, i1 false}
!404 = !{ptr @copro_enable_sw_irq._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.170, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1125, i32 8}
!407 = !{ptr @dev_attr_external_mode, !406, !"dev_attr_external_mode", i1 false, i1 false}
!408 = !{ptr @.str.171, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1086, i32 38}
!410 = !{ptr @fsi_master_acf_match, !411, !"fsi_master_acf_match", i1 false, i1 false}
!411 = !{!"../drivers/fsi/fsi-master-ast-cf.c", i32 1424, i32 34}
!412 = !{!"sp"}
!413 = !{i32 1, !"wchar_size", i32 2}
!414 = !{i32 1, !"min_enum_size", i32 4}
!415 = !{i32 8, !"branch-target-enforcement", i32 0}
!416 = !{i32 8, !"sign-return-address", i32 0}
!417 = !{i32 8, !"sign-return-address-all", i32 0}
!418 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!419 = !{i32 7, !"uwtable", i32 1}
!420 = !{i32 7, !"frame-pointer", i32 2}
!421 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!422 = !{!"branch_weights", i32 2000, i32 1}
!423 = !{!"branch_weights", i32 1, i32 2000}
!424 = !{!"auto-init"}
!425 = !{i8 0, i8 2}
!426 = !{i64 2148792879, i64 2148792884, i64 2148792897, i64 2148792941, i64 2148792975, i64 2148792996}
!427 = !{i64 2152384453}
!428 = !{i64 4843108}
!429 = !{i64 4842885}
!430 = !{i64 2155978533}
!431 = !{i64 2155978868}
!432 = !{i64 4843723}
!433 = !{i64 2155979203}
!434 = !{i64 2155964512}
!435 = !{i64 4843305}
!436 = !{i64 2155964867}
!437 = !{i64 4843503}
!438 = !{i64 2152382848}
!439 = !{i64 2152385427}
!440 = !{i64 2152384072}
!441 = !{i64 617695, i64 617756}
!442 = !{i64 620427}
!443 = !{i64 620712}
!444 = !{i64 2155907556}
!445 = !{i64 2155907901}
!446 = !{i64 2153236314}
!447 = !{i64 2153236545}
!448 = !{i64 2149294035}
!449 = !{i64 2149295071}
!450 = !{i64 2153218734}
!451 = !{i64 2153218983}
!452 = !{i64 2153196885}
!453 = !{i64 2153197126}
!454 = !{i64 2153119904}
!455 = !{i64 2153120157}
!456 = !{i64 2155904094}
!457 = !{i64 2153101735}
!458 = !{i64 2153101974}
!459 = !{i64 2155908328}
!460 = !{i64 2153160661}
!461 = !{i64 2153160910}
!462 = !{i64 2155919228}
!463 = !{i64 2155919563}
!464 = !{i64 2155919872}
!465 = !{i64 2153178805}
!466 = !{i64 2153179070}
!467 = !{i64 2153138454}
!468 = !{i64 2153138741}
!469 = !{i64 2155962448}
!470 = !{i64 4842685}
!471 = !{i64 2155962784}
!472 = !{i64 2155963120}
!473 = !{i64 2155963456}
!474 = !{i64 2155963792}
!475 = !{i64 2155964128}
