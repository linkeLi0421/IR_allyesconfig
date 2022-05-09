; ModuleID = '/llk/IR_all_yes/drivers/fsi/fsi-master-gpio.c_pt.bc'
source_filename = "../drivers/fsi/fsi-master-gpio.c"
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
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.trace_event_raw_fsi_master_gpio_in = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_fsi_master_gpio_out = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_clock_zeros = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_break = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_crc_cmd_error = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_crc_rsp_error = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_poll_response_busy = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_cmd_same_addr = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsi_master_gpio = type { %struct.fsi_master, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i8, i8 }
%struct.fsi_gpio_msg = type { i64, i8 }

@__tpstrtab_fsi_master_gpio_in = internal constant [19 x i8] c"fsi_master_gpio_in\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_in = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_in }, align 4
@__tracepoint_fsi_master_gpio_in = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_in, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_in, ptr null, ptr @__traceiter_fsi_master_gpio_in, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_in = internal constant ptr @__tracepoint_fsi_master_gpio_in, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_out = internal constant [20 x i8] c"fsi_master_gpio_out\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_out = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_out }, align 4
@__tracepoint_fsi_master_gpio_out = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_out, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_out, ptr null, ptr @__traceiter_fsi_master_gpio_out, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_out = internal constant ptr @__tracepoint_fsi_master_gpio_out, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_clock_zeros = internal constant [28 x i8] c"fsi_master_gpio_clock_zeros\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_clock_zeros = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_clock_zeros }, align 4
@__tracepoint_fsi_master_gpio_clock_zeros = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_clock_zeros, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_clock_zeros, ptr null, ptr @__traceiter_fsi_master_gpio_clock_zeros, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_clock_zeros = internal constant ptr @__tracepoint_fsi_master_gpio_clock_zeros, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_break = internal constant [22 x i8] c"fsi_master_gpio_break\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_break = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_break }, align 4
@__tracepoint_fsi_master_gpio_break = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_break, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_break, ptr null, ptr @__traceiter_fsi_master_gpio_break, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_break = internal constant ptr @__tracepoint_fsi_master_gpio_break, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_crc_cmd_error = internal constant [30 x i8] c"fsi_master_gpio_crc_cmd_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_crc_cmd_error = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_crc_cmd_error }, align 4
@__tracepoint_fsi_master_gpio_crc_cmd_error = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_crc_cmd_error, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_crc_cmd_error, ptr null, ptr @__traceiter_fsi_master_gpio_crc_cmd_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_crc_cmd_error = internal constant ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_crc_rsp_error = internal constant [30 x i8] c"fsi_master_gpio_crc_rsp_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_crc_rsp_error = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_crc_rsp_error }, align 4
@__tracepoint_fsi_master_gpio_crc_rsp_error = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_crc_rsp_error, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_crc_rsp_error, ptr null, ptr @__traceiter_fsi_master_gpio_crc_rsp_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_crc_rsp_error = internal constant ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_poll_response_busy = internal constant [35 x i8] c"fsi_master_gpio_poll_response_busy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_poll_response_busy = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_poll_response_busy }, align 4
@__tracepoint_fsi_master_gpio_poll_response_busy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_poll_response_busy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_poll_response_busy, ptr null, ptr @__traceiter_fsi_master_gpio_poll_response_busy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_poll_response_busy = internal constant ptr @__tracepoint_fsi_master_gpio_poll_response_busy, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_cmd_abs_addr = internal constant [29 x i8] c"fsi_master_gpio_cmd_abs_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_cmd_abs_addr = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_cmd_abs_addr }, align 4
@__tracepoint_fsi_master_gpio_cmd_abs_addr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_cmd_abs_addr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_cmd_abs_addr, ptr null, ptr @__traceiter_fsi_master_gpio_cmd_abs_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_cmd_abs_addr = internal constant ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_cmd_rel_addr = internal constant [29 x i8] c"fsi_master_gpio_cmd_rel_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_cmd_rel_addr = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_cmd_rel_addr }, align 4
@__tracepoint_fsi_master_gpio_cmd_rel_addr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_cmd_rel_addr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_cmd_rel_addr, ptr null, ptr @__traceiter_fsi_master_gpio_cmd_rel_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_cmd_rel_addr = internal constant ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_cmd_same_addr = internal constant [30 x i8] c"fsi_master_gpio_cmd_same_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_cmd_same_addr = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_cmd_same_addr }, align 4
@__tracepoint_fsi_master_gpio_cmd_same_addr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_gpio_cmd_same_addr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_cmd_same_addr, ptr null, ptr @__traceiter_fsi_master_gpio_cmd_same_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_cmd_same_addr = internal constant ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, section "__tracepoints_ptrs", align 4
@str__fsi_master_gpio__trace_system_name = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsi_master_gpio\00", [16 x i8] zeroinitializer }, align 32
@trace_event_fields_fsi_master_gpio_in = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.95 { %struct.anon.96 { ptr @.str.4, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_in = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_in, ptr @perf_trace_fsi_master_gpio_in, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_in, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_in, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_in, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_in = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_in, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_in = internal global { [86 x i8], [42 x i8] } { [86 x i8] c"\22fsi-gpio%d => %0*llx[%d]\22, REC->master_idx, (REC->bits + 3) / 4, REC->msg, REC->bits\00", [42 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_in = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_in, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_in }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_in }, ptr @print_fmt_fsi_master_gpio_in, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_in = internal global ptr @event_fsi_master_gpio_in, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_out = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.95 { %struct.anon.96 { ptr @.str.4, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_out = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_out, ptr @perf_trace_fsi_master_gpio_out, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_out, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_out, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_out, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_out = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_out, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_out = internal global { [86 x i8], [42 x i8] } { [86 x i8] c"\22fsi-gpio%d <= %0*llx[%d]\22, REC->master_idx, (REC->bits + 3) / 4, REC->msg, REC->bits\00", [42 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_out = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_out, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_out }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_out }, ptr @print_fmt_fsi_master_gpio_out, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_out = internal global ptr @event_fsi_master_gpio_out, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_clock_zeros = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_clock_zeros = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_clock_zeros, ptr @perf_trace_fsi_master_gpio_clock_zeros, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_clock_zeros, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_clock_zeros, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_clock_zeros, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_clock_zeros = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_clock_zeros, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_clock_zeros = internal global { [58 x i8], [38 x i8] } { [58 x i8] c"\22fsi-gpio%d clock %d zeros\22, REC->master_idx, REC->clocks\00", [38 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_clock_zeros = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_clock_zeros, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_clock_zeros }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_clock_zeros }, ptr @print_fmt_fsi_master_gpio_clock_zeros, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_clock_zeros = internal global ptr @event_fsi_master_gpio_clock_zeros, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_break = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_break = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_break, ptr @perf_trace_fsi_master_gpio_break, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_break, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_break, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_break, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_break = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_break, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_break = internal global { [43 x i8], [53 x i8] } { [43 x i8] c"\22fsi-gpio%d ----break---\22, REC->master_idx\00", [53 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_break = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_break, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_break }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_break }, ptr @print_fmt_fsi_master_gpio_break, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_break = internal global ptr @event_fsi_master_gpio_break, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_crc_cmd_error = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_crc_cmd_error = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_crc_cmd_error, ptr @perf_trace_fsi_master_gpio_crc_cmd_error, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_crc_cmd_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_crc_cmd_error, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_crc_cmd_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_crc_cmd_error = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_crc_cmd_error, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_crc_cmd_error = internal global { [55 x i8], [41 x i8] } { [55 x i8] c"\22fsi-gpio%d ----CRC command retry---\22, REC->master_idx\00", [41 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_crc_cmd_error = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_crc_cmd_error, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_crc_cmd_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_crc_cmd_error }, ptr @print_fmt_fsi_master_gpio_crc_cmd_error, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_crc_cmd_error = internal global ptr @event_fsi_master_gpio_crc_cmd_error, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_crc_rsp_error = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_crc_rsp_error = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_crc_rsp_error, ptr @perf_trace_fsi_master_gpio_crc_rsp_error, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_crc_rsp_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_crc_rsp_error, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_crc_rsp_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_crc_rsp_error = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_crc_rsp_error, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_crc_rsp_error = internal global { [50 x i8], [46 x i8] } { [50 x i8] c"\22fsi-gpio%d ----CRC response---\22, REC->master_idx\00", [46 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_crc_rsp_error = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_crc_rsp_error, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_crc_rsp_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_crc_rsp_error }, ptr @print_fmt_fsi_master_gpio_crc_rsp_error, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_crc_rsp_error = internal global ptr @event_fsi_master_gpio_crc_rsp_error, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_poll_response_busy = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_poll_response_busy = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_poll_response_busy, ptr @perf_trace_fsi_master_gpio_poll_response_busy, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_poll_response_busy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_poll_response_busy, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_poll_response_busy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_poll_response_busy = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_poll_response_busy, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_poll_response_busy = internal global { [72 x i8], [56 x i8] } { [72 x i8] c"\22fsi-gpio%d: device reported busy %d times\22, REC->master_idx, REC->busy\00", [56 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_poll_response_busy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_poll_response_busy, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_poll_response_busy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_poll_response_busy }, ptr @print_fmt_fsi_master_gpio_poll_response_busy, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_poll_response_busy = internal global ptr @event_fsi_master_gpio_poll_response_busy, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_cmd_abs_addr = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_cmd_abs_addr = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_cmd_abs_addr, ptr @perf_trace_fsi_master_gpio_cmd_abs_addr, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_cmd_abs_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_abs_addr, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_abs_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_cmd_abs_addr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_cmd_abs_addr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_cmd_abs_addr = internal global { [63 x i8], [33 x i8] } { [63 x i8] c"\22fsi-gpio%d: Sending ABS_ADR %06x\22, REC->master_idx, REC->addr\00", [33 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_cmd_abs_addr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_cmd_abs_addr, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_cmd_abs_addr }, ptr @print_fmt_fsi_master_gpio_cmd_abs_addr, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_cmd_abs_addr = internal global ptr @event_fsi_master_gpio_cmd_abs_addr, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_cmd_rel_addr = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_cmd_rel_addr = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_cmd_rel_addr, ptr @perf_trace_fsi_master_gpio_cmd_rel_addr, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_cmd_rel_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_rel_addr, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_rel_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_cmd_rel_addr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_cmd_rel_addr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_cmd_rel_addr = internal global { [67 x i8], [61 x i8] } { [67 x i8] c"\22fsi-gpio%d: Sending REL_ADR %03x\22, REC->master_idx, REC->rel_addr\00", [61 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_cmd_rel_addr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_cmd_rel_addr, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_cmd_rel_addr }, ptr @print_fmt_fsi_master_gpio_cmd_rel_addr, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_cmd_rel_addr = internal global ptr @event_fsi_master_gpio_cmd_rel_addr, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_cmd_same_addr = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_fsi_master_gpio_cmd_same_addr = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_cmd_same_addr, ptr @perf_trace_fsi_master_gpio_cmd_same_addr, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_cmd_same_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_same_addr, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_same_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_cmd_same_addr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_cmd_same_addr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_gpio_cmd_same_addr = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\22fsi-gpio%d: Sending SAME_ADR\22, REC->master_idx\00", [48 x i8] zeroinitializer }, align 32
@event_fsi_master_gpio_cmd_same_addr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_cmd_same_addr, %union.anon.97 { ptr @__tracepoint_fsi_master_gpio_cmd_same_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_cmd_same_addr }, ptr @print_fmt_fsi_master_gpio_cmd_same_addr, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_gpio_cmd_same_addr = internal global ptr @event_fsi_master_gpio_cmd_same_addr, section "_ftrace_events", align 4
@__bpf_trace_tp_map_fsi_master_gpio_in = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_in, ptr @__bpf_trace_fsi_master_gpio_in, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_gpio_out = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_out, ptr @__bpf_trace_fsi_master_gpio_out, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_gpio_clock_zeros = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_clock_zeros, ptr @__bpf_trace_fsi_master_gpio_clock_zeros, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_gpio_break = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_break, ptr @__bpf_trace_fsi_master_gpio_break, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_gpio_crc_cmd_error = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, ptr @__bpf_trace_fsi_master_gpio_crc_cmd_error, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_gpio_crc_rsp_error = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, ptr @__bpf_trace_fsi_master_gpio_crc_rsp_error, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_gpio_poll_response_busy = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_poll_response_busy, ptr @__bpf_trace_fsi_master_gpio_poll_response_busy, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_gpio_cmd_abs_addr = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, ptr @__bpf_trace_fsi_master_gpio_cmd_abs_addr, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_gpio_cmd_rel_addr = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, ptr @__bpf_trace_fsi_master_gpio_cmd_rel_addr, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_gpio_cmd_same_addr = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, ptr @__bpf_trace_fsi_master_gpio_cmd_same_addr, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__initcall__kmod_fsi_master_gpio__308_896_fsi_master_gpio_driver_init6 = internal global ptr @fsi_master_gpio_driver_init, section ".initcall6.init", align 4
@fsi_master_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsi_master_gpio_probe, ptr @fsi_master_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.20, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsi_master_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsi_master_gpio_driver_exit = internal global ptr @fsi_master_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file309 = internal constant [49 x i8] c"fsi_master_gpio.file=drivers/fsi/fsi-master-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [28 x i8] c"fsi_master_gpio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"master_idx\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bits\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint64_t\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fsi-gpio%d => %0*llx[%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fsi-gpio%d <= %0*llx[%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fsi-gpio%d clock %d zeros\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsi-gpio%d ----break---\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fsi-gpio%d ----CRC command retry---\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fsi-gpio%d ----CRC response---\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fsi-gpio%d: device reported busy %d times\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fsi-gpio%d: Sending ABS_ADR %06x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rel_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fsi-gpio%d: Sending REL_ADR %03x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fsi-gpio%d: Sending SAME_ADR\0A\00", [34 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsi-master-gpio\00", [16 x i8] zeroinitializer }, align 32
@fsi_master_gpio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsi-master-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 789, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsi_master_gpio_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/fsi/fsi-master-gpio.c\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry_ptr = internal global ptr @fsi_master_gpio_probe._entry, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.24, i32 797, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get data gpio\0A\00", [39 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry_ptr.30 = internal global ptr @fsi_master_gpio_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trans\00", [26 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.24, i32 806, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get trans gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry_ptr.34 = internal global ptr @fsi_master_gpio_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.24, i32 814, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get enable gpio\0A\00", [37 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry_ptr.38 = internal global ptr @fsi_master_gpio_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mux\00", [28 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.23, ptr @.str.24, i32 822, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get mux gpio\0A\00", [40 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe._entry_ptr.42 = internal global ptr @fsi_master_gpio_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no-gpio-delays\00", [17 x i8] zeroinitializer }, align 32
@fsi_master_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&master->cmd_lock\00", [46 x i8] zeroinitializer }, align 32
@dev_attr_external_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @external_mode_show, ptr @external_mode_store }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"include/trace/events/fsi_master_gpio.h\00", [57 x i8] zeroinitializer }, align 32
@trace_fsi_master_gpio_cmd_same_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_fsi_master_gpio_cmd_rel_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_fsi_master_gpio_cmd_abs_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fsi_master_gpio_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.24, i32 552, ptr @.str.50, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ECRC retry %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsi_master_gpio_xfer\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsi_master_gpio_xfer._entry_ptr = internal global ptr @fsi_master_gpio_xfer._entry, section ".printk_index", align 4
@serial_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.24, i32 141, ptr @.str.50, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trying to output 0 bits\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"serial_out\00", [21 x i8] zeroinitializer }, align 32
@serial_out._entry_ptr = internal global ptr @serial_out._entry, section ".printk_index", align 4
@trace_fsi_master_gpio_out.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@trace_fsi_master_gpio_clock_zeros.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@poll_for_response.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.24, ptr @.str.55, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsi_master_gpio\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"poll_for_response\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CRC error retry %d\0A\00", [44 x i8] zeroinitializer }, align 32
@poll_for_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.24, i32 490, ptr @.str.50, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ERR slave is stuck in busy state, issuing TERM\0A\00", [48 x i8] zeroinitializer }, align 32
@poll_for_response._entry_ptr = internal global ptr @poll_for_response._entry, section ".printk_index", align 4
@poll_for_response.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.24, ptr @.str.57, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ERRA received: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@poll_for_response.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.24, ptr @.str.58, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ERRC received: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@read_one_response.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.59, ptr @.str.24, ptr @.str.60, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read_one_response\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Master time out waiting for response\0A\00", [58 x i8] zeroinitializer }, align 32
@read_one_response.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.59, ptr @.str.24, ptr @.str.61, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ERR response CRC msg: 0x%016llx (%d bits)\0A\00", [53 x i8] zeroinitializer }, align 32
@trace_fsi_master_gpio_in.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_fsi_master_gpio_crc_rsp_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@issue_term._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.24, i32 414, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TERM failed; lost communication with slave\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"issue_term\00", [21 x i8] zeroinitializer }, align 32
@issue_term._entry_ptr = internal global ptr @issue_term._entry, section ".printk_index", align 4
@issue_term._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.24, i32 417, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TERM failed; response %d\0A\00", [38 x i8] zeroinitializer }, align 32
@issue_term._entry_ptr.66 = internal global ptr @issue_term._entry.64, section ".printk_index", align 4
@trace_fsi_master_gpio_crc_cmd_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_fsi_master_gpio_poll_response_busy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_fsi_master_gpio_break.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"external_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.70 = private unnamed_addr constant [40 x i8] c"str__fsi_master_gpio__trace_system_name\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 36, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [38 x i8] c"trace_event_fields_fsi_master_gpio_in\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_fsi_master_gpio_in\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [29 x i8] c"print_fmt_fsi_master_gpio_in\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [25 x i8] c"event_fsi_master_gpio_in\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [39 x i8] c"trace_event_fields_fsi_master_gpio_out\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_fsi_master_gpio_out\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [30 x i8] c"print_fmt_fsi_master_gpio_out\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"event_fsi_master_gpio_out\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [47 x i8] c"trace_event_fields_fsi_master_gpio_clock_zeros\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_fsi_master_gpio_clock_zeros\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [38 x i8] c"print_fmt_fsi_master_gpio_clock_zeros\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [34 x i8] c"event_fsi_master_gpio_clock_zeros\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [41 x i8] c"trace_event_fields_fsi_master_gpio_break\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_fsi_master_gpio_break\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [32 x i8] c"print_fmt_fsi_master_gpio_break\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [28 x i8] c"event_fsi_master_gpio_break\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [49 x i8] c"trace_event_fields_fsi_master_gpio_crc_cmd_error\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_fsi_master_gpio_crc_cmd_error\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [40 x i8] c"print_fmt_fsi_master_gpio_crc_cmd_error\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [36 x i8] c"event_fsi_master_gpio_crc_cmd_error\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [49 x i8] c"trace_event_fields_fsi_master_gpio_crc_rsp_error\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_fsi_master_gpio_crc_rsp_error\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [40 x i8] c"print_fmt_fsi_master_gpio_crc_rsp_error\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [36 x i8] c"event_fsi_master_gpio_crc_rsp_error\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [54 x i8] c"trace_event_fields_fsi_master_gpio_poll_response_busy\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [58 x i8] c"trace_event_type_funcs_fsi_master_gpio_poll_response_busy\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [45 x i8] c"print_fmt_fsi_master_gpio_poll_response_busy\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [41 x i8] c"event_fsi_master_gpio_poll_response_busy\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [48 x i8] c"trace_event_fields_fsi_master_gpio_cmd_abs_addr\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_fsi_master_gpio_cmd_abs_addr\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [39 x i8] c"print_fmt_fsi_master_gpio_cmd_abs_addr\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [35 x i8] c"event_fsi_master_gpio_cmd_abs_addr\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [48 x i8] c"trace_event_fields_fsi_master_gpio_cmd_rel_addr\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_fsi_master_gpio_cmd_rel_addr\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [39 x i8] c"print_fmt_fsi_master_gpio_cmd_rel_addr\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [35 x i8] c"event_fsi_master_gpio_cmd_rel_addr\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [49 x i8] c"trace_event_fields_fsi_master_gpio_cmd_same_addr\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_fsi_master_gpio_cmd_same_addr\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [40 x i8] c"print_fmt_fsi_master_gpio_cmd_same_addr\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [36 x i8] c"event_fsi_master_gpio_cmd_same_addr\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [23 x i8] c"fsi_master_gpio_driver\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 887, i32 31 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 11, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 32, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 53, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 69, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 83, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 97, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 111, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 126, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 141, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 889, i32 12 }
@___asan_gen_.259 = private unnamed_addr constant [22 x i8] c"fsi_master_gpio_match\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 881, i32 34 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 787, i32 36 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 789, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 795, i32 36 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 797, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 804, i32 45 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 806, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 812, i32 45 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 814, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 820, i32 45 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 822, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 833, i32 58 }
@___asan_gen_.322 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 848, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [23 x i8] c"dev_attr_external_mode\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [42 x i8] c"../include/trace/events/fsi_master_gpio.h\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 156, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 108, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 552, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 141, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 447, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 489, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 499, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 503, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 354, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 384, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 413, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 417, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 759, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private constant [33 x i8] c"../drivers/fsi/fsi-master-gpio.c\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 721, i32 38 }
@llvm.compiler.used = appending global [179 x ptr] [ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__bpf_trace_tp_map_fsi_master_gpio_break, ptr @__bpf_trace_tp_map_fsi_master_gpio_clock_zeros, ptr @__bpf_trace_tp_map_fsi_master_gpio_cmd_abs_addr, ptr @__bpf_trace_tp_map_fsi_master_gpio_cmd_rel_addr, ptr @__bpf_trace_tp_map_fsi_master_gpio_cmd_same_addr, ptr @__bpf_trace_tp_map_fsi_master_gpio_crc_cmd_error, ptr @__bpf_trace_tp_map_fsi_master_gpio_crc_rsp_error, ptr @__bpf_trace_tp_map_fsi_master_gpio_in, ptr @__bpf_trace_tp_map_fsi_master_gpio_out, ptr @__bpf_trace_tp_map_fsi_master_gpio_poll_response_busy, ptr @__event_fsi_master_gpio_break, ptr @__event_fsi_master_gpio_clock_zeros, ptr @__event_fsi_master_gpio_cmd_abs_addr, ptr @__event_fsi_master_gpio_cmd_rel_addr, ptr @__event_fsi_master_gpio_cmd_same_addr, ptr @__event_fsi_master_gpio_crc_cmd_error, ptr @__event_fsi_master_gpio_crc_rsp_error, ptr @__event_fsi_master_gpio_in, ptr @__event_fsi_master_gpio_out, ptr @__event_fsi_master_gpio_poll_response_busy, ptr @__exitcall_fsi_master_gpio_driver_exit, ptr @__initcall__kmod_fsi_master_gpio__308_896_fsi_master_gpio_driver_init6, ptr @__tracepoint_fsi_master_gpio_break, ptr @__tracepoint_fsi_master_gpio_clock_zeros, ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, ptr @__tracepoint_fsi_master_gpio_in, ptr @__tracepoint_fsi_master_gpio_out, ptr @__tracepoint_fsi_master_gpio_poll_response_busy, ptr @__tracepoint_ptr_fsi_master_gpio_break, ptr @__tracepoint_ptr_fsi_master_gpio_clock_zeros, ptr @__tracepoint_ptr_fsi_master_gpio_cmd_abs_addr, ptr @__tracepoint_ptr_fsi_master_gpio_cmd_rel_addr, ptr @__tracepoint_ptr_fsi_master_gpio_cmd_same_addr, ptr @__tracepoint_ptr_fsi_master_gpio_crc_cmd_error, ptr @__tracepoint_ptr_fsi_master_gpio_crc_rsp_error, ptr @__tracepoint_ptr_fsi_master_gpio_in, ptr @__tracepoint_ptr_fsi_master_gpio_out, ptr @__tracepoint_ptr_fsi_master_gpio_poll_response_busy, ptr @event_class_fsi_master_gpio_break, ptr @event_class_fsi_master_gpio_clock_zeros, ptr @event_class_fsi_master_gpio_cmd_abs_addr, ptr @event_class_fsi_master_gpio_cmd_rel_addr, ptr @event_class_fsi_master_gpio_cmd_same_addr, ptr @event_class_fsi_master_gpio_crc_cmd_error, ptr @event_class_fsi_master_gpio_crc_rsp_error, ptr @event_class_fsi_master_gpio_in, ptr @event_class_fsi_master_gpio_out, ptr @event_class_fsi_master_gpio_poll_response_busy, ptr @event_fsi_master_gpio_break, ptr @event_fsi_master_gpio_clock_zeros, ptr @event_fsi_master_gpio_cmd_abs_addr, ptr @event_fsi_master_gpio_cmd_rel_addr, ptr @event_fsi_master_gpio_cmd_same_addr, ptr @event_fsi_master_gpio_crc_cmd_error, ptr @event_fsi_master_gpio_crc_rsp_error, ptr @event_fsi_master_gpio_in, ptr @event_fsi_master_gpio_out, ptr @event_fsi_master_gpio_poll_response_busy, ptr @fsi_master_gpio_driver_exit, ptr @fsi_master_gpio_probe._entry, ptr @fsi_master_gpio_probe._entry.28, ptr @fsi_master_gpio_probe._entry.32, ptr @fsi_master_gpio_probe._entry.36, ptr @fsi_master_gpio_probe._entry.40, ptr @fsi_master_gpio_probe._entry_ptr, ptr @fsi_master_gpio_probe._entry_ptr.30, ptr @fsi_master_gpio_probe._entry_ptr.34, ptr @fsi_master_gpio_probe._entry_ptr.38, ptr @fsi_master_gpio_probe._entry_ptr.42, ptr @fsi_master_gpio_xfer._entry, ptr @fsi_master_gpio_xfer._entry_ptr, ptr @issue_term._entry, ptr @issue_term._entry.64, ptr @issue_term._entry_ptr, ptr @issue_term._entry_ptr.66, ptr @poll_for_response._entry, ptr @poll_for_response._entry_ptr, ptr @serial_out._entry, ptr @serial_out._entry_ptr, ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_fields_fsi_master_gpio_in, ptr @trace_event_type_funcs_fsi_master_gpio_in, ptr @print_fmt_fsi_master_gpio_in, ptr @trace_event_fields_fsi_master_gpio_out, ptr @trace_event_type_funcs_fsi_master_gpio_out, ptr @print_fmt_fsi_master_gpio_out, ptr @trace_event_fields_fsi_master_gpio_clock_zeros, ptr @trace_event_type_funcs_fsi_master_gpio_clock_zeros, ptr @print_fmt_fsi_master_gpio_clock_zeros, ptr @trace_event_fields_fsi_master_gpio_break, ptr @trace_event_type_funcs_fsi_master_gpio_break, ptr @print_fmt_fsi_master_gpio_break, ptr @trace_event_fields_fsi_master_gpio_crc_cmd_error, ptr @trace_event_type_funcs_fsi_master_gpio_crc_cmd_error, ptr @print_fmt_fsi_master_gpio_crc_cmd_error, ptr @trace_event_fields_fsi_master_gpio_crc_rsp_error, ptr @trace_event_type_funcs_fsi_master_gpio_crc_rsp_error, ptr @print_fmt_fsi_master_gpio_crc_rsp_error, ptr @trace_event_fields_fsi_master_gpio_poll_response_busy, ptr @trace_event_type_funcs_fsi_master_gpio_poll_response_busy, ptr @print_fmt_fsi_master_gpio_poll_response_busy, ptr @trace_event_fields_fsi_master_gpio_cmd_abs_addr, ptr @trace_event_type_funcs_fsi_master_gpio_cmd_abs_addr, ptr @print_fmt_fsi_master_gpio_cmd_abs_addr, ptr @trace_event_fields_fsi_master_gpio_cmd_rel_addr, ptr @trace_event_type_funcs_fsi_master_gpio_cmd_rel_addr, ptr @print_fmt_fsi_master_gpio_cmd_rel_addr, ptr @trace_event_fields_fsi_master_gpio_cmd_same_addr, ptr @trace_event_type_funcs_fsi_master_gpio_cmd_same_addr, ptr @print_fmt_fsi_master_gpio_cmd_same_addr, ptr @fsi_master_gpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @fsi_master_gpio_match, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @fsi_master_gpio_probe.__key, ptr @.str.44, ptr @dev_attr_external_mode, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__fsi_master_gpio__trace_system_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_in to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_in to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_in to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_in to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_out to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_out to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_out to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_out to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_clock_zeros to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_clock_zeros to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_clock_zeros to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_clock_zeros to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_break to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_break to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_break to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_break to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_crc_cmd_error to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_crc_cmd_error to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_crc_cmd_error to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_crc_cmd_error to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_crc_rsp_error to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_crc_rsp_error to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_crc_rsp_error to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_crc_rsp_error to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_poll_response_busy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_poll_response_busy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_poll_response_busy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_poll_response_busy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_cmd_abs_addr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_cmd_abs_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_cmd_abs_addr to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_cmd_abs_addr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_cmd_rel_addr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_cmd_rel_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_cmd_rel_addr to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_cmd_rel_addr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_gpio_cmd_same_addr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_gpio_cmd_same_addr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_gpio_cmd_same_addr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_gpio_cmd_same_addr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_gpio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_gpio_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_gpio_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_gpio_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_gpio_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_external_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_gpio_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_for_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @issue_term._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @issue_term._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_in(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %bits, i64 noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_in, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %bits, i64 noundef %msg) #12
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
define dso_local i32 @__traceiter_fsi_master_gpio_out(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %bits, i64 noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_out, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %bits, i64 noundef %msg) #12
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
define dso_local i32 @__traceiter_fsi_master_gpio_clock_zeros(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_clock_zeros, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %clocks) #12
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
define dso_local i32 @__traceiter_fsi_master_gpio_break(ptr nocapture readnone %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_break, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_fsi_master_gpio_crc_cmd_error(ptr nocapture readnone %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_fsi_master_gpio_crc_rsp_error(ptr nocapture readnone %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_fsi_master_gpio_poll_response_busy(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %busy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_poll_response_busy, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %master, i32 noundef %busy) #12
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
define dso_local i32 @__traceiter_fsi_master_gpio_cmd_abs_addr(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_fsi_master_gpio_cmd_rel_addr(ptr nocapture readnone %__data, ptr noundef %master, i32 noundef %rel_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_fsi_master_gpio_cmd_same_addr(ptr nocapture readnone %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, i32 0, i32 7), align 4
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
define internal void @trace_event_raw_event_fsi_master_gpio_in(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %bits, i64 noundef %msg) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 8
  %bits7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %bits7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bits, ptr %bits7, align 4
  %sh_prom = zext i32 %bits to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and = and i64 %sub, %msg
  %msg8 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %msg8 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %and, ptr %msg8, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_in(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %bits, i64 noundef %msg) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 8
  %bits18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %bits18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bits, ptr %bits18, align 4
  %sh_prom = zext i32 %bits to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub19 = xor i64 %notmask, -1
  %and20 = and i64 %sub19, %msg
  %msg21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %msg21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %and20, ptr %msg21, align 8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #12
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
define internal void @trace_event_raw_event_fsi_master_gpio_out(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %bits, i64 noundef %msg) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 8
  %bits7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %bits7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bits, ptr %bits7, align 4
  %sh_prom = zext i32 %bits to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and = and i64 %sub, %msg
  %msg8 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %msg8 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %and, ptr %msg8, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_out(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %bits, i64 noundef %msg) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 8
  %bits18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %bits18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bits, ptr %bits18, align 4
  %sh_prom = zext i32 %bits to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub19 = xor i64 %notmask, -1
  %and20 = and i64 %sub19, %msg
  %msg21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %msg21 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %and20, ptr %msg21, align 8
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_clock_zeros(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %clocks) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %clocks7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %clocks7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %clocks, ptr %clocks7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_clock_zeros(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %clocks) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %clocks18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %clocks18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %clocks, ptr %clocks18, align 4
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
define internal void @trace_event_raw_event_fsi_master_gpio_break(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_break, ptr %call3, i32 0, i32 1
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
define internal void @perf_trace_fsi_master_gpio_break(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_break, ptr %call13, i32 0, i32 1
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
define internal void @trace_event_raw_event_fsi_master_gpio_crc_cmd_error(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_cmd_error, ptr %call3, i32 0, i32 1
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
define internal void @perf_trace_fsi_master_gpio_crc_cmd_error(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_cmd_error, ptr %call13, i32 0, i32 1
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
define internal void @trace_event_raw_event_fsi_master_gpio_crc_rsp_error(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_rsp_error, ptr %call3, i32 0, i32 1
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
define internal void @perf_trace_fsi_master_gpio_crc_rsp_error(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_rsp_error, ptr %call13, i32 0, i32 1
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
define internal void @trace_event_raw_event_fsi_master_gpio_poll_response_busy(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %busy) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %busy7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %busy7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %busy, ptr %busy7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_poll_response_busy(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %busy) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %busy18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %busy18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %busy, ptr %busy18, align 4
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
define internal void @trace_event_raw_event_fsi_master_gpio_cmd_abs_addr(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %addr7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %call3, i32 0, i32 2
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
define internal void @perf_trace_fsi_master_gpio_cmd_abs_addr(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %addr18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %call13, i32 0, i32 2
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
define internal void @trace_event_raw_event_fsi_master_gpio_cmd_rel_addr(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %rel_addr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %master_idx, align 4
  %rel_addr7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %call3, i32 0, i32 2
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
define internal void @perf_trace_fsi_master_gpio_cmd_rel_addr(ptr noundef %__data, ptr nocapture noundef readonly %master, i32 noundef %rel_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %master_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %master_idx, align 4
  %rel_addr18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %call13, i32 0, i32 2
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
define internal void @trace_event_raw_event_fsi_master_gpio_cmd_same_addr(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !275

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !276

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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_same_addr, ptr %call3, i32 0, i32 1
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
define internal void @perf_trace_fsi_master_gpio_cmd_same_addr(ptr noundef %__data, ptr nocapture noundef readonly %master) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !277
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !265) #12
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_same_addr, ptr %call13, i32 0, i32 1
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
define internal void @__bpf_trace_fsi_master_gpio_in(ptr noundef %__data, ptr noundef %master, i32 noundef %bits, i64 noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %bits to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %msg) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_gpio_out(ptr noundef %__data, ptr noundef %master, i32 noundef %bits, i64 noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %bits to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %msg) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_gpio_clock_zeros(ptr noundef %__data, ptr noundef %master, i32 noundef %clocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %clocks to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_gpio_break(ptr noundef %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_gpio_crc_cmd_error(ptr noundef %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_gpio_crc_rsp_error(ptr noundef %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_gpio_poll_response_busy(ptr noundef %__data, ptr noundef %master, i32 noundef %busy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %busy to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_gpio_cmd_abs_addr(ptr noundef %__data, ptr noundef %master, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %addr to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_gpio_cmd_rel_addr(ptr noundef %__data, ptr noundef %master, i32 noundef %rel_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %rel_addr to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_gpio_cmd_same_addr(ptr noundef %__data, ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %master to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsi_master_gpio_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsi_master_gpio_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsi_master_gpio_driver) #12
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
define internal i32 @trace_raw_output_fsi_master_gpio_in(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 8
  %bits = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits, align 4
  %add = add i32 %5, 3
  %div = sdiv i32 %add, 4
  %msg = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %msg, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %div, i64 noundef %7, i32 noundef %5) #12
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_out(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 8
  %bits = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits, align 4
  %add = add i32 %5, 3
  %div = sdiv i32 %add, 4
  %msg = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %msg, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, i32 noundef %3, i32 noundef %div, i64 noundef %7, i32 noundef %5) #12
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_clock_zeros(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %clocks = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clocks, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.8, i32 noundef %3, i32 noundef %5) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_break(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_break, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_crc_cmd_error(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_cmd_error, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.10, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_crc_rsp_error(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_rsp_error, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.11, i32 noundef %3) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_poll_response_busy(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %busy = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %5) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_cmd_abs_addr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %5) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_cmd_rel_addr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  %rel_addr = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rel_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rel_addr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %5) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_cmd_same_addr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %master_idx = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_same_addr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_idx, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, i32 noundef %3) #12
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
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1184) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 8
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.dev_of_node.exit_crit_edge, label %if.end.i

if.end.dev_of_node.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %if.end.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ null, %if.end.dev_of_node.exit_crit_edge ]
  %call7 = tail call ptr @of_node_get(ptr noundef %retval.0.i) #12
  %of_node = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %of_node, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fsi_master_gpio_release, ptr %release, align 4
  %last_addr = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %last_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %last_addr, align 8
  %call13 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dev_of_node.exit.err_free.sink.split_crit_edge, label %if.end18

dev_of_node.exit.err_free.sink.split_crit_edge:   ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free.sink.split

if.end18:                                         ; preds = %dev_of_node.exit
  %gpio_clk = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %gpio_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %gpio_clk, align 8
  %call20 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef 0) #12
  %cmp.i147 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.end18.err_free.sink.split_crit_edge, label %if.end28

if.end18.err_free.sink.split_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free.sink.split

if.end28:                                         ; preds = %if.end18
  %gpio_data = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20, ptr %gpio_data, align 4
  %call30 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef 0) #12
  %cmp.i148 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.end28.err_free.sink.split_crit_edge, label %if.end38

if.end28.err_free.sink.split_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free.sink.split

if.end38:                                         ; preds = %if.end28
  %gpio_trans = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %gpio_trans to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call30, ptr %gpio_trans, align 8
  %call40 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef 0) #12
  %cmp.i149 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.end38.err_free.sink.split_crit_edge, label %if.end48

if.end38.err_free.sink.split_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free.sink.split

if.end48:                                         ; preds = %if.end38
  %gpio_enable = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %gpio_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call40, ptr %gpio_enable, align 4
  %call50 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef 0) #12
  %cmp.i150 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.end48.err_free.sink.split_crit_edge, label %if.end58

if.end48.err_free.sink.split_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free.sink.split

if.end58:                                         ; preds = %if.end48
  %gpio_mux = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %gpio_mux to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call50, ptr %gpio_mux, align 8
  %call60 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.43) #12
  %no_delays = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 9
  %frombool = zext i1 %call60 to i8
  %13 = ptrtoint ptr %no_delays to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %no_delays, align 1
  %t_send_delay = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %t_send_delay, align 4
  %t_echo_delay = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %t_echo_delay to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %t_echo_delay, align 1
  %n_links = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %n_links to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %n_links, align 4
  %flags = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %flags, align 8
  %read = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @fsi_master_gpio_read, ptr %read, align 8
  %write = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @fsi_master_gpio_write, ptr %write, align 4
  %term = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %term to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @fsi_master_gpio_term, ptr %term, align 8
  %send_break = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %send_break to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @fsi_master_gpio_break, ptr %send_break, align 4
  %link_enable = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %link_enable to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @fsi_master_gpio_link_enable, ptr %link_enable, align 8
  %link_config = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %link_config to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @fsi_master_gpio_link_config, ptr %link_config, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %cmd_lock = getelementptr inbounds %struct.fsi_master_gpio, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.44, ptr noundef nonnull @fsi_master_gpio_probe.__key) #12
  tail call fastcc void @fsi_master_gpio_init(ptr noundef nonnull %call7.i.i)
  %call73 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_external_mode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end58.err_free_crit_edge

if.end58.err_free_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

if.end76:                                         ; preds = %if.end58
  %call78 = tail call i32 @fsi_master_register(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end76.cleanup_crit_edge, label %if.then80

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then80:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_external_mode) #12
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

err_free.sink.split:                              ; preds = %if.end48.err_free.sink.split_crit_edge, %if.end38.err_free.sink.split_crit_edge, %if.end28.err_free.sink.split_crit_edge, %if.end18.err_free.sink.split_crit_edge, %dev_of_node.exit.err_free.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.22, %dev_of_node.exit.err_free.sink.split_crit_edge ], [ @.str.29, %if.end18.err_free.sink.split_crit_edge ], [ @.str.33, %if.end28.err_free.sink.split_crit_edge ], [ @.str.37, %if.end38.err_free.sink.split_crit_edge ], [ @.str.41, %if.end48.err_free.sink.split_crit_edge ]
  %call50.sink = phi ptr [ %call13, %dev_of_node.exit.err_free.sink.split_crit_edge ], [ %call20, %if.end18.err_free.sink.split_crit_edge ], [ %call30, %if.end28.err_free.sink.split_crit_edge ], [ %call40, %if.end38.err_free.sink.split_crit_edge ], [ %call50, %if.end48.err_free.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.41.sink) #16
  %25 = ptrtoint ptr %call50.sink to i32
  br label %err_free

err_free:                                         ; preds = %err_free.sink.split, %if.end58.err_free_crit_edge
  %rc.0 = phi i32 [ %call73, %if.end58.err_free_crit_edge ], [ %25, %err_free.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.then80, %if.end76.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_free ], [ %call78, %if.then80 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_external_mode) #12
  tail call void @fsi_master_unregister(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_master_gpio_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev4 = getelementptr inbounds %struct.fsi_master_gpio, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev4, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  tail call void @of_node_put(ptr noundef %retval.0.i) #12
  tail call void @kfree(ptr noundef %dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_read(ptr noundef %_master, i32 noundef %link, i8 noundef zeroext %id, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #0 align 64 {
entry:
  %cmd = alloca %struct.fsi_gpio_msg, align 8
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
  call void @__sanitizer_cov_trace_pc() #14
  %cmd_lock = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #12
  call fastcc void @build_ar_command(ptr noundef %_master, ptr noundef nonnull %cmd, i8 noundef zeroext %id, i32 noundef %addr, i32 noundef %size, ptr noundef null)
  %call = call fastcc i32 @fsi_master_gpio_xfer(ptr noundef %_master, i8 noundef zeroext %id, ptr noundef nonnull %cmd, i32 noundef %size, ptr noundef %val)
  %conv = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  %and.i = shl nuw nsw i32 %conv, 21
  %shl.i = and i32 %and.i, 6291456
  %and1.i = and i32 %addr, -4
  %or.i = or i32 %shl.i, %and1.i
  %.sink.i = select i1 %cmp1, i32 %or.i, i32 1
  %1 = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink.i, ptr %1, align 8
  call void @mutex_unlock(ptr noundef %cmd_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_write(ptr noundef %_master, i32 noundef %link, i8 noundef zeroext %id, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #0 align 64 {
entry:
  %cmd = alloca %struct.fsi_gpio_msg, align 8
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
  call void @__sanitizer_cov_trace_pc() #14
  %cmd_lock = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #12
  call fastcc void @build_ar_command(ptr noundef %_master, ptr noundef nonnull %cmd, i8 noundef zeroext %id, i32 noundef %addr, i32 noundef %size, ptr noundef %val)
  %call = call fastcc i32 @fsi_master_gpio_xfer(ptr noundef %_master, i8 noundef zeroext %id, ptr noundef nonnull %cmd, i32 noundef 0, ptr noundef null)
  %conv = zext i8 %id to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  %and.i = shl nuw nsw i32 %conv, 21
  %shl.i = and i32 %and.i, 6291456
  %and1.i = and i32 %addr, -4
  %or.i = or i32 %shl.i, %and1.i
  %.sink.i = select i1 %cmp1, i32 %or.i, i32 1
  %1 = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink.i, ptr %1, align 8
  call void @mutex_unlock(ptr noundef %cmd_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_term(ptr noundef %_master, i32 noundef %link, i8 noundef zeroext %id) #0 align 64 {
entry:
  %cmd = alloca %struct.fsi_gpio_msg, align 8
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
  call void @__sanitizer_cov_trace_pc() #14
  %cmd_lock = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #12
  %bits.i = getelementptr inbounds %struct.fsi_gpio_msg, ptr %cmd, i32 0, i32 1
  %2 = shl i8 %id, 6
  %3 = or i8 %2, 63
  %or.i6.i = zext i8 %3 to i64
  %call.i.i = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef 1, i32 noundef 1) #12
  %call9.i.i = tail call zeroext i8 @crc4(i8 noundef zeroext %call.i.i, i64 noundef %or.i6.i, i32 noundef 8) #12
  %shl.i.i.i = shl nuw nsw i64 %or.i6.i, 4
  %4 = and i8 %call9.i.i, 15
  %and.i.i.i = zext i8 %4 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %and.i.i.i
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %or.i.i.i, ptr %cmd, align 8
  %6 = ptrtoint ptr %bits.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %bits.i, align 8
  %call = call fastcc i32 @fsi_master_gpio_xfer(ptr noundef %_master, i8 noundef zeroext %id, ptr noundef nonnull %cmd, i32 noundef 0, ptr noundef null)
  %7 = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %7, align 8
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_break(ptr noundef %_master, i32 noundef %link) #0 align 64 {
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
  tail call fastcc void @trace_fsi_master_gpio_break(ptr noundef %_master)
  %cmd_lock = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #12
  %external_mode = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 8
  %0 = ptrtoint ptr %external_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %external_mode, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body4, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #12
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not = icmp eq i32 %and.i, 0
  br i1 %tobool14.not, label %if.then15, label %do.body4.do.end18_crit_edge

do.body4.do.end18_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

if.then15:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body4.do.end18_crit_edge
  %gpio_trans.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 5
  %3 = ptrtoint ptr %gpio_trans.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpio_trans.i, align 8
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 1) #12
  %gpio_data.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 4
  %5 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpio_data.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %6, i32 noundef 1) #12
  %7 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_data.i, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #12
  %no_delays.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 9
  %gpio_clk.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %do.end18
  %i.011.i = phi i32 [ 0, %do.end18 ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #12
  %14 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i = icmp eq i8 %15, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %17 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 1) #12
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %clock_toggle.exit, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

clock_toggle.exit:                                ; preds = %if.end4.i
  %19 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpio_data.i, align 4
  tail call void @gpiod_set_value(ptr noundef %20, i32 noundef 0) #12
  br label %for.body.i73

for.body.i73:                                     ; preds = %if.end4.i80.for.body.i73_crit_edge, %clock_toggle.exit
  %i.011.i71 = phi i32 [ 0, %clock_toggle.exit ], [ %inc.i78, %if.end4.i80.for.body.i73_crit_edge ]
  %21 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i72 = icmp eq i8 %22, 0
  br i1 %tobool.not.i72, label %if.then.i74, label %for.body.i73.if.end.i76_crit_edge

for.body.i73.if.end.i76_crit_edge:                ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i76

if.then.i74:                                      ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #12
  br label %if.end.i76

if.end.i76:                                       ; preds = %if.then.i74, %for.body.i73.if.end.i76_crit_edge
  %24 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %25, i32 noundef 0) #12
  %26 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool2.not.i75 = icmp eq i8 %27, 0
  br i1 %tobool2.not.i75, label %if.then3.i77, label %if.end.i76.if.end4.i80_crit_edge

if.end.i76.if.end4.i80_crit_edge:                 ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i80

if.then3.i77:                                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #12
  br label %if.end4.i80

if.end4.i80:                                      ; preds = %if.then3.i77, %if.end.i76.if.end4.i80_crit_edge
  %29 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %30, i32 noundef 1) #12
  %inc.i78 = add nuw nsw i32 %i.011.i71, 1
  %exitcond.not.i79 = icmp eq i32 %inc.i78, 256
  br i1 %exitcond.not.i79, label %clock_toggle.exit81, label %if.end4.i80.for.body.i73_crit_edge

if.end4.i80.for.body.i73_crit_edge:               ; preds = %if.end4.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i73

clock_toggle.exit81:                              ; preds = %if.end4.i80
  %t_echo_delay.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 12
  %31 = ptrtoint ptr %t_echo_delay.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %t_echo_delay.i, align 1
  %conv.i = zext i8 %32 to i32
  tail call fastcc void @clock_zeros(ptr noundef %_master, i32 noundef %conv.i) #12
  %33 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gpio_data.i, align 4
  tail call void @gpiod_set_value(ptr noundef %34, i32 noundef 1) #12
  br label %for.body.i87

for.body.i87:                                     ; preds = %if.end4.i94.for.body.i87_crit_edge, %clock_toggle.exit81
  %i.011.i85 = phi i32 [ 0, %clock_toggle.exit81 ], [ %inc.i92, %if.end4.i94.for.body.i87_crit_edge ]
  %35 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i86 = icmp eq i8 %36, 0
  br i1 %tobool.not.i86, label %if.then.i88, label %for.body.i87.if.end.i90_crit_edge

for.body.i87.if.end.i90_crit_edge:                ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i90

if.then.i88:                                      ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #12
  br label %if.end.i90

if.end.i90:                                       ; preds = %if.then.i88, %for.body.i87.if.end.i90_crit_edge
  %38 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %39, i32 noundef 0) #12
  %40 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool2.not.i89 = icmp eq i8 %41, 0
  br i1 %tobool2.not.i89, label %if.then3.i91, label %if.end.i90.if.end4.i94_crit_edge

if.end.i90.if.end4.i94_crit_edge:                 ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i94

if.then3.i91:                                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #12
  br label %if.end4.i94

if.end4.i94:                                      ; preds = %if.then3.i91, %if.end.i90.if.end4.i94_crit_edge
  %43 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %44, i32 noundef 1) #12
  %inc.i92 = add nuw nsw i32 %i.011.i85, 1
  %exitcond.not.i93 = icmp eq i32 %inc.i92, 16000
  br i1 %exitcond.not.i93, label %clock_toggle.exit95, label %if.end4.i94.for.body.i87_crit_edge

if.end4.i94.for.body.i87_crit_edge:               ; preds = %if.end4.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i87

clock_toggle.exit95:                              ; preds = %if.end4.i94
  br i1 %tobool14.not, label %if.then28, label %clock_toggle.exit95.do.body30_crit_edge

clock_toggle.exit95.do.body30_crit_edge:          ; preds = %clock_toggle.exit95
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

if.then28:                                        ; preds = %clock_toggle.exit95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body30

do.body30:                                        ; preds = %if.then28, %clock_toggle.exit95.do.body30_crit_edge
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool38.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool38.not, label %if.then42, label %do.body30.do.end45_crit_edge, !prof !276

do.body30.do.end45_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %do.body30.do.end45_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !281
  %46 = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 10
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %46, align 8
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 42949600) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then1 ], [ 0, %do.end45 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_link_enable(ptr noundef %_master, i32 noundef %link, i1 noundef zeroext %enable) #0 align 64 {
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
  %cmd_lock = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #12
  %external_mode = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 8
  %0 = ptrtoint ptr %external_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %external_mode, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %gpio_enable = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 6
  %2 = ptrtoint ptr %gpio_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_enable, align 4
  %cond = zext i1 %enable to i32
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef %cond) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %rc.0 = phi i32 [ -16, %if.end.if.end3_crit_edge ], [ 0, %if.then1 ]
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end3 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_link_config(ptr noundef %_master, i32 noundef %link, i8 noundef zeroext %t_send_delay, i8 noundef zeroext %t_echo_delay) #0 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #14
  %cmd_lock = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #12
  %t_send_delay1 = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 11
  %0 = ptrtoint ptr %t_send_delay1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %t_send_delay, ptr %t_send_delay1, align 4
  %t_echo_delay2 = getelementptr inbounds %struct.fsi_master_gpio, ptr %_master, i32 0, i32 12
  %1 = ptrtoint ptr %t_echo_delay2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %t_echo_delay, ptr %t_echo_delay2, align 1
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsi_master_gpio_init(ptr noundef %master) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_mux = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 7
  %0 = ptrtoint ptr %gpio_mux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_mux, align 8
  %call = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 1) #12
  %gpio_trans = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_trans, align 8
  %call1 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 1) #12
  %gpio_enable = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 6
  %4 = ptrtoint ptr %gpio_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_enable, align 4
  %call2 = tail call i32 @gpiod_direction_output(ptr noundef %5, i32 noundef 1) #12
  %gpio_clk = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 3
  %6 = ptrtoint ptr %gpio_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_clk, align 8
  %call3 = tail call i32 @gpiod_direction_output(ptr noundef %7, i32 noundef 1) #12
  %gpio_data = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 4
  %8 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_data, align 4
  %call4 = tail call i32 @gpiod_direction_output(ptr noundef %9, i32 noundef 1) #12
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then25, label %do.end15

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @clock_zeros(ptr noundef %master, i32 noundef 5000)
  br label %do.body27

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  tail call fastcc void @clock_zeros(ptr noundef %master, i32 noundef 5000)
  tail call void @trace_hardirqs_on() #12
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %do.end15
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body27.do.end43_crit_edge, !prof !276

do.body27.do.end43_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then40:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body27.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #12, !srcloc !281
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_ar_command(ptr noundef %master, ptr noundef %cmd, i8 noundef zeroext %id, i32 noundef %addr, i32 noundef %size, ptr noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %bits = getelementptr inbounds %struct.fsi_gpio_msg, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %bits to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bits, align 8
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %cmd, align 8
  %and = and i32 %addr, 2097151
  %conv = zext i8 %id to i32
  %last_addr.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 10
  %2 = ptrtoint ptr %last_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_addr.i, align 8
  %and.i = shl nuw nsw i32 %conv, 21
  %shl.i = and i32 %and.i, 6291456
  %and1.i = and i32 %addr, 2097148
  %or.i = or i32 %shl.i, %and1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %or.i)
  %cmp.i = icmp eq i32 %3, %or.i
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @trace_fsi_master_gpio_cmd_same_addr(ptr noundef %master)
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i54 = icmp ne i32 %3, 1
  %shr.i = lshr i32 %3, 21
  %and.i55 = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i55, i32 %conv)
  %cmp2.not.i = icmp eq i32 %and.i55, %conv
  %or.cond16.i = select i1 %cmp.i54, i1 %cmp2.not.i, i1 false
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
  tail call fastcc void @trace_fsi_master_gpio_cmd_rel_addr(ptr noundef %master, i32 noundef %sub.i)
  br label %if.end6

if.else5:                                         ; preds = %if.end4.i.if.else5_crit_edge, %if.else.if.else5_crit_edge
  tail call fastcc void @trace_fsi_master_gpio_cmd_abs_addr(ptr noundef %master, i32 noundef %and)
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
  %shl.i56 = shl i64 %7, 2
  %8 = and i8 %id, 3
  %and.i57 = zext i8 %8 to i64
  %or.i58 = or i64 %shl.i56, %and.i57
  %9 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bits, align 8
  %conv6.i = add i8 %10, 2
  %conv15 = zext i8 %opcode.0 to i64
  %sh_prom.i = zext i32 %opcode_bits.0 to i64
  %shl.i59 = shl i64 %or.i58, %sh_prom.i
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i60 = xor i64 %notmask.i, -1
  %and.i61 = and i64 %sub.i60, %conv15
  %or.i62 = or i64 %shl.i59, %and.i61
  %11 = trunc i32 %opcode_bits.0 to i8
  %conv6.i64 = add i8 %conv6.i, %11
  %12 = zext i1 %tobool.not to i64
  %shl.i65 = shl i64 %or.i62, 1
  %or.i67 = or i64 %shl.i65, %12
  %conv6.i69 = add i8 %conv6.i64, 1
  %conv20 = zext i32 %spec.select to i64
  %sh_prom.i70 = zext i32 %addr_bits.0 to i64
  %shl.i71 = shl i64 %or.i67, %sh_prom.i70
  %notmask.i72 = shl nsw i64 -1, %sh_prom.i70
  %sub.i73 = xor i64 %notmask.i72, -1
  %and.i74 = and i64 %sub.i73, %conv20
  %or.i75 = or i64 %shl.i71, %and.i74
  %13 = trunc i32 %addr_bits.0 to i8
  %conv6.i77 = add i8 %conv6.i69, %13
  %conv21 = zext i1 %cmp to i64
  %shl.i78 = shl i64 %or.i75, 1
  %or.i80 = or i64 %shl.i78, %conv21
  store i64 %or.i80, ptr %cmd, align 8
  %conv6.i82 = add i8 %conv6.i77, 1
  store i8 %conv6.i82, ptr %bits, align 8
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp2496 = icmp eq i32 %size, 0
  %14 = or i1 %tobool.not, %cmp2496
  br i1 %14, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.098
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv26 = zext i8 %16 to i64
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cmd, align 8
  %shl.i83 = shl i64 %18, 8
  %or.i85 = or i64 %shl.i83, %conv26
  store i64 %or.i85, ptr %cmd, align 8
  %19 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bits, align 8
  %conv6.i87 = add i8 %20, 8
  store i8 %conv6.i87, ptr %bits, align 8
  %inc = add nuw i32 %i.098, 1
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
  %and.i88 = and i32 %conv.i, 3
  %shl.i89 = shl nuw nsw i32 1, %and.i88
  %23 = zext i32 %shl.i89 to i64
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cmd, align 8
  %sub.i90 = and i32 %conv.i, 252
  %sh_prom.i91 = zext i32 %sub.i90 to i64
  %shr.i92 = lshr i64 %25, %sh_prom.i91
  %or.i93 = or i64 %shr.i92, %23
  %add.i = add nuw nsw i32 %and.i88, 1
  %call.i = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %or.i93, i32 noundef %add.i) #12
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %cmd, align 8
  %28 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bits, align 8
  %conv7.i = zext i8 %29 to i32
  %sub8.i = sub nsw i32 %conv7.i, %and.i88
  %call9.i = tail call zeroext i8 @crc4(i8 noundef zeroext %call.i, i64 noundef %27, i32 noundef %sub8.i) #12
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cmd, align 8
  %shl.i.i = shl i64 %31, 4
  %32 = and i8 %call9.i, 15
  %and.i.i = zext i8 %32 to i64
  %or.i.i = or i64 %shl.i.i, %and.i.i
  store i64 %or.i.i, ptr %cmd, align 8
  %33 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bits, align 8
  %conv6.i.i = add i8 %34, 4
  store i8 %conv6.i.i, ptr %bits, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_master_gpio_xfer(ptr noundef %master, i8 noundef zeroext %slave, ptr nocapture noundef readonly %cmd, i32 noundef %resp_len, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %external_mode.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 8
  %t_echo_delay.i.c51.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 12
  %conv = trunc i32 %resp_len to i8
  %dev = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %entry
  %inc13 = phi i32 [ 1, %entry ], [ %inc, %if.end5.while.body_crit_edge ]
  %0 = ptrtoint ptr %external_mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %external_mode.i, align 4, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %do.body1.i, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.body1.i:                                       ; preds = %while.body
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %do.body26.critedge.i

if.then11.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  tail call fastcc void @serial_out(ptr noundef %master, ptr noundef %cmd) #12
  %3 = ptrtoint ptr %t_echo_delay.i.c51.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %t_echo_delay.i.c51.i, align 1
  %conv.i.c.i = zext i8 %4 to i32
  tail call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv.i.c.i) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body26.i

do.body26.critedge.i:                             ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @serial_out(ptr noundef %master, ptr noundef %cmd) #12
  %5 = ptrtoint ptr %t_echo_delay.i.c51.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %t_echo_delay.i.c51.i, align 1
  %conv.i.c52.i = zext i8 %6 to i32
  tail call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv.i.c52.i) #12
  br label %do.body26.i

do.body26.i:                                      ; preds = %do.body26.critedge.i, %if.then11.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool34.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool34.not.i, label %if.then38.i, label %do.body26.i.if.end_crit_edge, !prof !276

do.body26.i.if.end_crit_edge:                     ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then38.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %if.end

if.end:                                           ; preds = %if.then38.i, %do.body26.i.if.end_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !281
  %call1 = tail call fastcc i32 @poll_for_response(ptr noundef %master, i8 noundef zeroext %slave, i8 noundef zeroext %conv, ptr noundef %resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, -11
  br i1 %cmp2.not, label %if.end5, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.48, i32 noundef %inc13) #16
  tail call void @msleep(i32 noundef 1) #12
  %inc = add nuw nsw i32 %inc13, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %rc.1 = phi i32 [ %call1, %if.end.while.end_crit_edge ], [ -5, %if.end5.while.end_crit_edge ], [ -16, %while.body.while.end_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_gpio_cmd_same_addr(ptr noundef %master) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_cmd_same_addr, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !283
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, i32 0, i32 7), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !284
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !284
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_cmd_same_addr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_cmd_same_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 167, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
define internal fastcc void @trace_fsi_master_gpio_cmd_rel_addr(ptr noundef %master, i32 noundef %rel_addr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_cmd_rel_addr, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !287
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, i32 0, i32 7), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !288
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !288
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_cmd_rel_addr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_cmd_rel_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 154, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
define internal fastcc void @trace_fsi_master_gpio_cmd_abs_addr(ptr noundef %master, i32 noundef %addr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_cmd_abs_addr, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !289
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, i32 0, i32 7), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !290
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !290
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_cmd_abs_addr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_cmd_abs_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 139, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
define internal fastcc i32 @poll_for_response(ptr noundef %master, i8 noundef zeroext %slave, i8 noundef zeroext %size, ptr noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  %response = alloca %struct.fsi_gpio_msg, align 8
  %cmd = alloca %struct.fsi_gpio_msg, align 8
  %tag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %response) #12
  %0 = call ptr @memset(ptr %response, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #12
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tag) #12
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tag, align 1, !annotation !277
  %bits.i366 = getelementptr inbounds %struct.fsi_gpio_msg, ptr %cmd, i32 0, i32 1
  %3 = and i8 %slave, 3
  %and.i.i367 = zext i8 %3 to i64
  %shl.i5.i368 = shl nuw nsw i64 %and.i.i367, 3
  %or.i6.i369 = or i64 %shl.i5.i368, 2
  %shr.i.i370 = lshr i64 %and.i.i367, 1
  %or.i11.i371 = or i64 %shr.i.i370, 2
  %shl.i.i.i376 = shl nuw nsw i64 %or.i6.i369, 4
  %t_echo_delay.i381.c398 = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 12
  %dev = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 1
  %or.i6.i = or i64 %shl.i5.i368, 3
  %shl.i.i.i = shl nuw nsw i64 %or.i6.i, 4
  br label %retry.outer

retry.outer:                                      ; preds = %do.end58, %entry
  %crc_err_retries.0.ph = phi i32 [ %inc, %do.end58 ], [ 0, %entry ]
  %busy_count.0.ph = phi i32 [ %busy_count.0, %do.end58 ], [ 0, %entry ]
  %smax = call i32 @llvm.smax.i32(i32 %busy_count.0.ph, i32 200)
  br label %retry

retry:                                            ; preds = %do.end141, %retry.outer
  %busy_count.0 = phi i32 [ %inc84, %do.end141 ], [ %busy_count.0.ph, %retry.outer ]
  %call = call fastcc i32 @read_one_response(ptr noundef %master, i8 noundef zeroext %size, ptr noundef nonnull %response, ptr noundef nonnull %tag)
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %retry.do.body255_crit_edge [
    i32 -11, label %if.then
    i32 0, label %if.end66
  ]

retry.do.body255_crit_edge:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body255

if.then:                                          ; preds = %retry
  %inc = add nuw nsw i32 %crc_err_retries.0.ph, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %crc_err_retries.0.ph)
  %exitcond431 = icmp eq i32 %crc_err_retries.0.ph, 11
  br i1 %exitcond431, label %if.then.do.body255_crit_edge, label %do.body

if.then.do.body255_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body255

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_for_response.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_for_response, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !282

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @poll_for_response.__UNIQUE_ID_ddebug305, ptr noundef %6, ptr noundef nonnull @.str.55, i32 noundef %inc) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  call fastcc void @trace_fsi_master_gpio_crc_rsp_error(ptr noundef %master)
  %call.i.i = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %or.i11.i371, i32 noundef 2) #12
  %call9.i.i = call zeroext i8 @crc4(i8 noundef zeroext %call.i.i, i64 noundef %or.i6.i, i32 noundef 4) #12
  %7 = and i8 %call9.i.i, 15
  %and.i.i.i = zext i8 %7 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %and.i.i.i
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or.i.i.i, ptr %cmd, align 8
  %9 = ptrtoint ptr %bits.i366 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 9, ptr %bits.i366, align 8
  %10 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not = icmp eq i32 %and.i, 0
  br i1 %tobool22.not, label %if.then23, label %do.body38.critedge

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef 50)
  call fastcc void @serial_out(ptr noundef %master, ptr noundef nonnull %cmd)
  %11 = ptrtoint ptr %t_echo_delay.i381.c398 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %t_echo_delay.i381.c398, align 1
  %conv.i.c = zext i8 %12 to i32
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv.i.c) #12
  call void @trace_hardirqs_on() #12
  br label %do.body38

do.body38.critedge:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef 50)
  call fastcc void @serial_out(ptr noundef %master, ptr noundef nonnull %cmd)
  %13 = ptrtoint ptr %t_echo_delay.i381.c398 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %t_echo_delay.i381.c398, align 1
  %conv.i.c397 = zext i8 %14 to i32
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv.i.c397) #12
  br label %do.body38

do.body38:                                        ; preds = %do.body38.critedge, %if.then23
  %15 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i365 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i365)
  %tobool46.not = icmp eq i32 %and.i.i365, 0
  br i1 %tobool46.not, label %if.then55, label %do.body38.do.end58_crit_edge, !prof !276

do.body38.do.end58_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.then55:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %do.body38.do.end58_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #12, !srcloc !281
  br label %retry.outer

if.end66:                                         ; preds = %retry
  %16 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tag, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %17, label %if.end66.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb83
    i8 2, label %do.body211
    i8 3, label %do.body231
  ]

if.end66.sw.epilog_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end66
  %conv68 = zext i8 %size to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %size)
  %tobool69.not = icmp eq i8 %size, 0
  %tobool70.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool69.not, %tobool70.not
  br i1 %or.cond, label %sw.bb.sw.epilog_crit_edge, label %for.body.preheader

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

for.body.preheader:                               ; preds = %sw.bb
  %19 = ptrtoint ptr %response to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %response, align 8
  %shr = lshr i64 %20, 4
  %mul = shl nuw nsw i32 %conv68, 3
  %sh_prom = zext i32 %mul to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and = and i64 %shr, %sub
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0416 = phi i32 [ %inc81, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %val.0415 = phi i64 [ %shr80, %for.body.for.body_crit_edge ], [ %and, %for.body.preheader ]
  %conv76 = trunc i64 %val.0415 to i8
  %21 = xor i32 %i.0416, -1
  %sub79 = add nsw i32 %21, %conv68
  %arrayidx = getelementptr i8, ptr %data, i32 %sub79
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv76, ptr %arrayidx, align 1
  %shr80 = lshr i64 %val.0415, 8
  %inc81 = add nuw nsw i32 %i.0416, 1
  %exitcond432.not = icmp eq i32 %inc81, %conv68
  br i1 %exitcond432.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end66
  %inc84 = add i32 %busy_count.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %busy_count.0, i32 %smax)
  %exitcond.not = icmp eq i32 %busy_count.0, %smax
  br i1 %exitcond.not, label %do.end149, label %if.then87

if.then87:                                        ; preds = %sw.bb83
  %call.i.i372 = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %or.i11.i371, i32 noundef 2) #12
  %call9.i.i375 = call zeroext i8 @crc4(i8 noundef zeroext %call.i.i372, i64 noundef %or.i6.i369, i32 noundef 4) #12
  %23 = and i8 %call9.i.i375, 15
  %and.i.i.i377 = zext i8 %23 to i64
  %or.i.i.i378 = or i64 %shl.i.i.i376, %and.i.i.i377
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %or.i.i.i378, ptr %cmd, align 8
  %25 = ptrtoint ptr %bits.i366 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %bits.i366, align 8
  %26 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i380 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i380)
  %tobool105.not = icmp eq i32 %and.i380, 0
  br i1 %tobool105.not, label %if.then106, label %do.body121.critedge

if.then106:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef 50)
  call fastcc void @serial_out(ptr noundef %master, ptr noundef nonnull %cmd)
  %27 = ptrtoint ptr %t_echo_delay.i381.c398 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %t_echo_delay.i381.c398, align 1
  %conv.i382.c = zext i8 %28 to i32
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv.i382.c) #12
  call void @trace_hardirqs_on() #12
  br label %do.body121

do.body121.critedge:                              ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef 50)
  call fastcc void @serial_out(ptr noundef %master, ptr noundef nonnull %cmd)
  %29 = ptrtoint ptr %t_echo_delay.i381.c398 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %t_echo_delay.i381.c398, align 1
  %conv.i382.c399 = zext i8 %30 to i32
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv.i382.c399) #12
  br label %do.body121

do.body121:                                       ; preds = %do.body121.critedge, %if.then106
  %31 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i384 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i384)
  %tobool129.not = icmp eq i32 %and.i.i384, 0
  br i1 %tobool129.not, label %if.then138, label %do.body121.do.end141_crit_edge, !prof !276

do.body121.do.end141_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end141

if.then138:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end141

do.end141:                                        ; preds = %if.then138, %do.body121.do.end141_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #12, !srcloc !281
  br label %retry

do.end149:                                        ; preds = %sw.bb83
  %32 = add nuw i32 %smax, 1
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.56) #16
  %35 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i385 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i385)
  %tobool168.not = icmp eq i32 %and.i385, 0
  br i1 %tobool168.not, label %if.then182, label %do.end172

do.end172:                                        ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef 50)
  br label %do.body184

if.then182:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef 50)
  call void @trace_hardirqs_on() #12
  br label %do.body184

do.body184:                                       ; preds = %if.then182, %do.end172
  %36 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i387 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i387)
  %tobool192.not = icmp eq i32 %and.i.i387, 0
  br i1 %tobool192.not, label %if.then201, label %do.body184.do.end204_crit_edge, !prof !276

do.body184.do.end204_crit_edge:                   ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end204

if.then201:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end204

do.end204:                                        ; preds = %if.then201, %do.body184.do.end204_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #12, !srcloc !281
  call fastcc void @issue_term(ptr noundef %master, i8 noundef zeroext %slave)
  br label %sw.epilog

do.body211:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_for_response.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_for_response, %if.then223)) #12
          to label %sw.epilog [label %if.then223], !srcloc !282

if.then223:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %39 = ptrtoint ptr %response to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %response, align 8
  %conv226 = trunc i64 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @poll_for_response.__UNIQUE_ID_ddebug306, ptr noundef %38, ptr noundef nonnull @.str.57, i32 noundef %conv226) #12
  br label %sw.epilog

do.body231:                                       ; preds = %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_for_response.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_for_response, %if.then243)) #12
          to label %do.end249 [label %if.then243], !srcloc !282

if.then243:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %43 = ptrtoint ptr %response to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %response, align 8
  %conv246 = trunc i64 %44 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @poll_for_response.__UNIQUE_ID_ddebug307, ptr noundef %42, ptr noundef nonnull @.str.58, i32 noundef %conv246) #12
  br label %do.end249

do.end249:                                        ; preds = %if.then243, %do.body231
  call fastcc void @trace_fsi_master_gpio_crc_cmd_error(ptr noundef %master)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end249, %if.then223, %do.body211, %do.end204, %for.body.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end66.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -11, %do.end249 ], [ -5, %do.end204 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ -5, %if.then223 ], [ -5, %do.body211 ], [ 0, %for.body.sw.epilog_crit_edge ], [ 0, %if.end66.sw.epilog_crit_edge ]
  %busy_count.1 = phi i32 [ %busy_count.0, %do.end249 ], [ %32, %do.end204 ], [ %busy_count.0, %sw.bb.sw.epilog_crit_edge ], [ %busy_count.0, %if.then223 ], [ %busy_count.0, %do.body211 ], [ %busy_count.0, %for.body.sw.epilog_crit_edge ], [ %busy_count.0, %if.end66.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %busy_count.1)
  %cmp250 = icmp sgt i32 %busy_count.1, 0
  br i1 %cmp250, label %if.then252, label %sw.epilog.do.body255_crit_edge

sw.epilog.do.body255_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body255

if.then252:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_fsi_master_gpio_poll_response_busy(ptr noundef %master, i32 noundef %busy_count.1)
  br label %do.body255

do.body255:                                       ; preds = %if.then252, %sw.epilog.do.body255_crit_edge, %if.then.do.body255_crit_edge, %retry.do.body255_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.then252 ], [ %rc.0, %sw.epilog.do.body255_crit_edge ], [ %call, %retry.do.body255_crit_edge ], [ -5, %if.then.do.body255_crit_edge ]
  %45 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i388 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i388)
  %tobool271.not = icmp eq i32 %and.i388, 0
  br i1 %tobool271.not, label %if.then286, label %do.end275

do.end275:                                        ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #14
  %t_send_delay = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 11
  %46 = ptrtoint ptr %t_send_delay to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %t_send_delay, align 4
  %conv276 = zext i8 %47 to i32
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv276)
  br label %do.body288

if.then286:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  %t_send_delay394 = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 11
  %48 = ptrtoint ptr %t_send_delay394 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %t_send_delay394, align 4
  %conv276395 = zext i8 %49 to i32
  call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv276395)
  call void @trace_hardirqs_on() #12
  br label %do.body288

do.body288:                                       ; preds = %if.then286, %do.end275
  %50 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i390 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i390)
  %tobool296.not = icmp eq i32 %and.i.i390, 0
  br i1 %tobool296.not, label %if.then305, label %do.body288.do.end308_crit_edge, !prof !276

do.body288.do.end308_crit_edge:                   ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end308

if.then305:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end308

do.end308:                                        ; preds = %if.then305, %do.body288.do.end308_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #12, !srcloc !281
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tag) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %response) #12
  ret i32 %rc.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serial_out(ptr noundef %master, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cmd, align 8
  %bits = getelementptr inbounds %struct.fsi_gpio_msg, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits, align 8
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -1
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  tail call fastcc void @trace_fsi_master_gpio_out(ptr noundef %master, i32 noundef %conv, i64 noundef %1)
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.51) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_trans.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 5
  %8 = ptrtoint ptr %gpio_trans.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_trans.i, align 8
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #12
  %gpio_data.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 4
  %10 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_data.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %11, i32 noundef 0) #12
  %12 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_data.i, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #12
  %no_delays.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 9
  %gpio_clk.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 3
  %14 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %17 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 0) #12
  %19 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool2.not.i = icmp eq i8 %20, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %22 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %23, i32 noundef 1) #12
  %24 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bits, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp56.not = icmp eq i8 %25, 0
  br i1 %cmp56.not, label %if.end4.i.cleanup_crit_edge, label %for.body.preheader

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %if.end4.i
  %neg = xor i64 %1, -1
  br label %for.body

for.body:                                         ; preds = %if.end4.i54.for.body_crit_edge, %for.body.preheader
  %26 = phi i8 [ %40, %if.end4.i54.for.body_crit_edge ], [ %25, %for.body.preheader ]
  %last_bit.059 = phi i64 [ %last_bit.1, %if.end4.i54.for.body_crit_edge ], [ -1, %for.body.preheader ]
  %msg.058 = phi i64 [ %shl20, %if.end4.i54.for.body_crit_edge ], [ %neg, %for.body.preheader ]
  %bit.057 = phi i8 [ %inc, %if.end4.i54.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %conv8 = zext i8 %26 to i32
  %and = and i64 %msg.058, %shl
  %sub12 = add nsw i32 %conv8, -1
  %sh_prom13 = zext i32 %sub12 to i64
  %shr = lshr i64 %and, %sh_prom13
  %conv14 = trunc i64 %shr to i32
  %conv15 = sext i32 %conv14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %last_bit.059, i64 %conv15)
  %tobool16.not = icmp eq i64 %last_bit.059, %conv15
  br i1 %tobool16.not, label %for.body.if.end19_crit_edge, label %if.then17

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpio_data.i, align 4
  tail call void @gpiod_set_value(ptr noundef %28, i32 noundef %conv14) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body.if.end19_crit_edge
  %last_bit.1 = phi i64 [ %conv15, %if.then17 ], [ %last_bit.059, %for.body.if.end19_crit_edge ]
  %29 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i46 = icmp eq i8 %30, 0
  br i1 %tobool.not.i46, label %if.then.i48, label %if.end19.if.end.i50_crit_edge

if.end19.if.end.i50_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i50

if.then.i48:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #12
  br label %if.end.i50

if.end.i50:                                       ; preds = %if.then.i48, %if.end19.if.end.i50_crit_edge
  %32 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %33, i32 noundef 0) #12
  %34 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool2.not.i49 = icmp eq i8 %35, 0
  br i1 %tobool2.not.i49, label %if.then3.i51, label %if.end.i50.if.end4.i54_crit_edge

if.end.i50.if.end4.i54_crit_edge:                 ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i54

if.then3.i51:                                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #12
  br label %if.end4.i54

if.end4.i54:                                      ; preds = %if.then3.i51, %if.end.i50.if.end4.i54_crit_edge
  %37 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %38, i32 noundef 1) #12
  %shl20 = shl i64 %msg.058, 1
  %inc = add nuw i8 %bit.057, 1
  %39 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bits, align 8
  %cmp = icmp ult i8 %inc, %40
  br i1 %cmp, label %if.end4.i54.for.body_crit_edge, label %if.end4.i54.cleanup_crit_edge

if.end4.i54.cleanup_crit_edge:                    ; preds = %if.end4.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i54.for.body_crit_edge:                   ; preds = %if.end4.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %if.end4.i54.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_gpio_out(ptr noundef %master, i32 noundef %bits, i64 noundef %msg) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_out, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_out, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !291
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_out, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %bits, i64 noundef %msg) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !292
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !292
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_out, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_out.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_out.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 51, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clock_zeros(ptr noundef %master, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_fsi_master_gpio_clock_zeros(ptr noundef %master, i32 noundef %count)
  %gpio_trans.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 5
  %0 = ptrtoint ptr %gpio_trans.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_trans.i, align 8
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #12
  %gpio_data.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_data.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp10.i = icmp sgt i32 %count, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %entry.clock_toggle.exit_crit_edge

entry.clock_toggle.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clock_toggle.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %no_delays.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 9
  %gpio_clk.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %7 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #12
  %9 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i = icmp eq i8 %10, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %12 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 1) #12
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %if.end4.i.clock_toggle.exit_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end4.i.clock_toggle.exit_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clock_toggle.exit

clock_toggle.exit:                                ; preds = %if.end4.i.clock_toggle.exit_crit_edge, %entry.clock_toggle.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_gpio_clock_zeros(ptr noundef %master, i32 noundef %clocks) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_clock_zeros, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_clock_zeros, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !293
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_clock_zeros, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %clocks) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !294
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !294
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_clock_zeros, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_clock_zeros.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_clock_zeros.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 67, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
define internal fastcc i32 @read_one_response(ptr noundef %master, i8 noundef zeroext %data_size, ptr noundef writeonly %msgp, ptr noundef writeonly %tagp) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.fsi_gpio_msg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #12
  %0 = getelementptr inbounds i8, ptr %msg, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i = and i32 %2, 128
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
  %bits = getelementptr inbounds %struct.fsi_gpio_msg, ptr %msg, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end11
  %i.0193 = phi i32 [ 0, %do.end11 ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %bits to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bits, align 8
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %msg, align 8
  call fastcc void @serial_in(ptr noundef %master, ptr noundef nonnull %msg, i8 noundef zeroext 1)
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %msg, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool16.not = icmp eq i64 %6, 0
  br i1 %tobool16.not, label %for.inc, label %if.end68

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0193, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.body22, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body22:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_one_response.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_one_response, %if.then28)) #12
          to label %do.body32 [label %if.then28], !srcloc !282

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_one_response.__UNIQUE_ID_ddebug303, ptr noundef %8, ptr noundef nonnull @.str.60) #12
  br label %do.body32

do.body32:                                        ; preds = %if.then28, %do.body22
  br i1 %tobool.not, label %if.then41, label %do.body32.do.body43_crit_edge

do.body32.do.body43_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

if.then41:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body43

do.body43:                                        ; preds = %if.then41, %do.body32.do.body43_crit_edge
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool51.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool51.not, label %if.then60, label %do.body43.do.end63_crit_edge, !prof !276

do.body43.do.end63_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

if.then60:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.body43.do.end63_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !281
  br label %cleanup

if.end68:                                         ; preds = %for.body
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bits, align 8
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %msg, align 8
  call fastcc void @serial_in(ptr noundef %master, ptr noundef nonnull %msg, i8 noundef zeroext 4)
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %msg, align 8
  %14 = trunc i64 %13 to i8
  %conv72 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv72)
  %cmp74 = icmp ne i8 %conv72, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data_size)
  %tobool77.not = icmp eq i8 %data_size, 0
  %or.cond = or i1 %tobool77.not, %cmp74
  br i1 %or.cond, label %if.end68.if.end81_crit_edge, label %if.then78

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then78:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %mul = shl i8 %data_size, 3
  call fastcc void @serial_in(ptr noundef %master, ptr noundef nonnull %msg, i8 noundef zeroext %mul)
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end68.if.end81_crit_edge
  call fastcc void @serial_in(ptr noundef %master, ptr noundef nonnull %msg, i8 noundef zeroext 4)
  br i1 %tobool.not, label %if.then91, label %if.end81.do.body93_crit_edge

if.end81.do.body93_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body93

if.then91:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body93

do.body93:                                        ; preds = %if.then91, %if.end81.do.body93_crit_edge
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i188 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i188)
  %tobool101.not = icmp eq i32 %and.i.i188, 0
  br i1 %tobool101.not, label %if.then110, label %do.body93.do.end113_crit_edge, !prof !276

do.body93.do.end113_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end113

if.then110:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end113

do.end113:                                        ; preds = %if.then110, %do.body93.do.end113_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !281
  %call118 = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef 1, i32 noundef 1) #12
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %msg, align 8
  %18 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bits, align 8
  %conv123 = zext i8 %19 to i32
  %call124 = tail call zeroext i8 @crc4(i8 noundef zeroext %call118, i64 noundef %17, i32 noundef %conv123) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call124)
  %tobool126.not = icmp eq i8 %call124, 0
  br i1 %tobool126.not, label %if.end156, label %if.then127

if.then127:                                       ; preds = %do.end113
  %sh_prom = zext i8 %19 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %and131.demorgan = or i64 %notmask, %17
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %and131.demorgan)
  %cmp132 = icmp eq i64 %and131.demorgan, -1
  br i1 %cmp132, label %if.then127.cleanup_crit_edge, label %do.body136

if.then127.cleanup_crit_edge:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body136:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_one_response.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_one_response, %if.then148)) #12
          to label %cleanup [label %if.then148], !srcloc !282

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  %dev149 = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 1
  %20 = ptrtoint ptr %dev149 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev149, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_one_response.__UNIQUE_ID_ddebug304, ptr noundef %21, ptr noundef nonnull @.str.61, i64 noundef %17, i32 noundef %conv123) #12
  br label %cleanup

if.end156:                                        ; preds = %do.end113
  %tobool157.not = icmp eq ptr %msgp, null
  br i1 %tobool157.not, label %if.end156.if.end159_crit_edge, label %if.then158

if.end156.if.end159_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

if.then158:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  %22 = call ptr @memcpy(ptr %msgp, ptr %msg, i32 16)
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.end156.if.end159_crit_edge
  %tobool160.not = icmp eq ptr %tagp, null
  br i1 %tobool160.not, label %if.end159.cleanup_crit_edge, label %if.then161

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then161:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %tagp to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv72, ptr %tagp, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then161, %if.end159.cleanup_crit_edge, %if.then148, %do.body136, %if.then127.cleanup_crit_edge, %do.end63
  %retval.0 = phi i32 [ -110, %do.end63 ], [ -19, %if.then127.cleanup_crit_edge ], [ -11, %if.then148 ], [ 0, %if.then161 ], [ 0, %if.end159.cleanup_crit_edge ], [ -11, %do.body136 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_gpio_crc_rsp_error(ptr noundef %master) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_crc_rsp_error, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !295
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, i32 0, i32 7), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !296
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !296
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_crc_rsp_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_crc_rsp_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 109, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
define internal fastcc void @issue_term(ptr noundef %master, i8 noundef zeroext %slave) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.fsi_gpio_msg, align 8
  %tag = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #12
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tag) #12
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tag, align 1, !annotation !277
  %bits.i = getelementptr inbounds %struct.fsi_gpio_msg, ptr %cmd, i32 0, i32 1
  %3 = shl i8 %slave, 6
  %4 = or i8 %3, 63
  %or.i6.i = zext i8 %4 to i64
  %call.i.i = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef 1, i32 noundef 1) #12
  %call9.i.i = tail call zeroext i8 @crc4(i8 noundef zeroext %call.i.i, i64 noundef %or.i6.i, i32 noundef 8) #12
  %shl.i.i.i = shl nuw nsw i64 %or.i6.i, 4
  %5 = and i8 %call9.i.i, 15
  %and.i.i.i = zext i8 %5 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %and.i.i.i
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %or.i.i.i, ptr %cmd, align 8
  %7 = ptrtoint ptr %bits.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %bits.i, align 8
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !279
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body23.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  call fastcc void @serial_out(ptr noundef %master, ptr noundef nonnull %cmd)
  %t_echo_delay.i.c = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 12
  %9 = ptrtoint ptr %t_echo_delay.i.c to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %t_echo_delay.i.c, align 1
  %conv.i.c = zext i8 %10 to i32
  tail call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv.i.c) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body23

do.body23.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @serial_out(ptr noundef %master, ptr noundef nonnull %cmd)
  %t_echo_delay.i.c2 = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 12
  %11 = ptrtoint ptr %t_echo_delay.i.c2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %t_echo_delay.i.c2, align 1
  %conv.i.c3 = zext i8 %12 to i32
  tail call fastcc void @clock_zeros(ptr noundef %master, i32 noundef %conv.i.c3) #12
  br label %do.body23

do.body23:                                        ; preds = %do.body23.critedge, %if.then
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !280
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body23.do.end39_crit_edge, !prof !276

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #12, !srcloc !281
  %call44 = call fastcc i32 @read_one_response(ptr noundef %master, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %tag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end50, label %if.else

do.end50:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.62) #16
  br label %cleanup

if.else:                                          ; preds = %do.end39
  %16 = ptrtoint ptr %tag to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp52.not = icmp eq i8 %17, 0
  br i1 %cmp52.not, label %if.else.cleanup_crit_edge, label %do.end57

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %conv51 = zext i8 %17 to i32
  %dev58 = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 1
  %18 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev58, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.65, i32 noundef %conv51) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.else.cleanup_crit_edge, %do.end50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tag) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_gpio_crc_cmd_error(ptr noundef %master) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_crc_cmd_error, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !297
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, i32 0, i32 7), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !298
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !298
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_crc_cmd_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_crc_cmd_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 95, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
define internal fastcc void @trace_fsi_master_gpio_poll_response_busy(ptr noundef %master, i32 noundef %busy) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_poll_response_busy, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_poll_response_busy, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !299
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_poll_response_busy, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %busy) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !300
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !300
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_poll_response_busy, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_poll_response_busy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_poll_response_busy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 124, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
define internal fastcc void @serial_in(ptr noundef %master, ptr nocapture noundef %msg, i8 noundef zeroext %num_bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_data.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 4
  %0 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_data.i, align 4
  %call.i = tail call i32 @gpiod_direction_input(ptr noundef %1) #12
  %gpio_trans.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_trans.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_trans.i, align 8
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_bits)
  %cmp23.not = icmp eq i8 %num_bits, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %no_delays.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 9
  %gpio_clk.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %master, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %sda_clock_in.exit.for.body_crit_edge, %for.body.lr.ph
  %bit.024 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %sda_clock_in.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %7 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #12
  %9 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_data.i, align 4
  %call.i22 = tail call i32 @gpiod_get_value(ptr noundef %10) #12
  %11 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_data.i, align 4
  %call2.i = tail call i32 @gpiod_get_value(ptr noundef %12) #12
  %13 = ptrtoint ptr %no_delays.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %no_delays.i, align 1, !range !278
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.sda_clock_in.exit_crit_edge

if.end.i.sda_clock_in.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sda_clock_in.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #12
  br label %sda_clock_in.exit

sda_clock_in.exit:                                ; preds = %if.then5.i, %if.end.i.sda_clock_in.exit_crit_edge
  %16 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_clk.i, align 8
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool8.not.i = icmp eq i32 %call2.i, 0
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %msg, align 8
  %shl = shl i64 %19, 1
  %20 = zext i1 %tobool8.not.i to i64
  %or = or i64 %shl, %20
  store i64 %or, ptr %msg, align 8
  %inc = add nuw i8 %bit.024, 1
  %cmp = icmp ult i8 %inc, %num_bits
  br i1 %cmp, label %sda_clock_in.exit.for.body_crit_edge, label %sda_clock_in.exit.for.end_crit_edge

sda_clock_in.exit.for.end_crit_edge:              ; preds = %sda_clock_in.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

sda_clock_in.exit.for.body_crit_edge:             ; preds = %sda_clock_in.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %sda_clock_in.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %conv1 = zext i8 %num_bits to i32
  %bits = getelementptr inbounds %struct.fsi_gpio_msg, ptr %msg, i32 0, i32 1
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bits, align 8
  %add = add i8 %22, %num_bits
  store i8 %add, ptr %bits, align 8
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %msg, align 8
  tail call fastcc void @trace_fsi_master_gpio_in(ptr noundef %master, i32 noundef %conv1, i64 noundef %24)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_gpio_in(ptr noundef %master, i32 noundef %bits, i64 noundef %msg) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_in, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_in, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !301
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_in, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %master, i32 noundef %bits, i64 noundef %msg) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !302
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !302
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_in, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_in.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_in.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 30, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_gpio_break(ptr noundef %master) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_break, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_gpio_break, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !282

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !275

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !303
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_break, i32 0, i32 7), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !304
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !304
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !275

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !265) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !285
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_gpio_break, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_fsi_master_gpio_break.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_fsi_master_gpio_break.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.45, i32 noundef 81, ptr noundef nonnull @.str.46) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %38 = tail call i32 @llvm.read_register.i32(metadata !265) #12
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

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @external_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %external_mode = getelementptr inbounds %struct.fsi_master_gpio, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %external_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %external_mode, align 4, !range !278
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull @.str.68, i32 noundef %4)
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
  store i32 -1, ptr %val, align 4, !annotation !277
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
  %cmd_lock = getelementptr inbounds %struct.fsi_master_gpio, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #12
  %external_mode5 = getelementptr inbounds %struct.fsi_master_gpio, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %external_mode5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %external_mode5, align 4, !range !278
  %7 = zext i1 %tobool2 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %7)
  %cmp = icmp eq i8 %6, %7
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %cmd_lock) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %8 = ptrtoint ptr %external_mode5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %external_mode5, align 4
  br i1 %tobool2, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %gpio_mux.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %gpio_mux.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_mux.i, align 8
  %call.i36 = call i32 @gpiod_direction_output(ptr noundef %10, i32 noundef 0) #12
  %gpio_trans.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %gpio_trans.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_trans.i, align 8
  %call1.i = call i32 @gpiod_direction_output(ptr noundef %12, i32 noundef 0) #12
  %gpio_enable.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %gpio_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_enable.i, align 4
  %call2.i = call i32 @gpiod_direction_output(ptr noundef %14, i32 noundef 1) #12
  %gpio_clk.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpio_clk.i, align 8
  %call3.i = call i32 @gpiod_direction_input(ptr noundef %16) #12
  %gpio_data.i = getelementptr inbounds %struct.fsi_master_gpio, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_data.i, align 4
  %call4.i = call i32 @gpiod_direction_input(ptr noundef %18) #12
  br label %if.end18

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @fsi_master_gpio_init(ptr noundef %1)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then17
  call void @mutex_unlock(ptr noundef %cmd_lock) #12
  %call21 = call i32 @fsi_master_rescan(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then9 ], [ %count, %if.end18 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_master_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
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
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !150, !152, !154, !156, !157, !158, !159, !160, !161, !162, !164, !166, !167, !168, !170, !172, !173, !174, !176, !178, !179, !180, !182, !184, !185, !186, !188, !190, !191, !192, !193, !194, !195, !197, !198, !199, !200, !201, !202, !204, !205, !206, !207, !208, !210, !211, !212, !213, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !231, !232, !234, !235, !236, !238, !239, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !253, !254, !255, !256, !257, !258, !260, !261, !263}
!llvm.named.register.sp = !{!265}
!llvm.module.flags = !{!266, !267, !268, !269, !270, !271, !272, !273}
!llvm.ident = !{!274}

!0 = !{ptr @__tracepoint_fsi_master_gpio_in, !1, !"__tracepoint_fsi_master_gpio_in", i1 false, i1 false}
!1 = !{!"../include/trace/events/fsi_master_gpio.h", i32 11, i32 1}
!2 = !{ptr @__tracepoint_ptr_fsi_master_gpio_in, !1, !"__tracepoint_ptr_fsi_master_gpio_in", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_fsi_master_gpio_in, !1, !"__SCK__tp_func_fsi_master_gpio_in", i1 false, i1 false}
!4 = !{ptr @__tracepoint_fsi_master_gpio_out, !5, !"__tracepoint_fsi_master_gpio_out", i1 false, i1 false}
!5 = !{!"../include/trace/events/fsi_master_gpio.h", i32 32, i32 1}
!6 = !{ptr @__tracepoint_ptr_fsi_master_gpio_out, !5, !"__tracepoint_ptr_fsi_master_gpio_out", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_fsi_master_gpio_out, !5, !"__SCK__tp_func_fsi_master_gpio_out", i1 false, i1 false}
!8 = !{ptr @__tracepoint_fsi_master_gpio_clock_zeros, !9, !"__tracepoint_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!9 = !{!"../include/trace/events/fsi_master_gpio.h", i32 53, i32 1}
!10 = !{ptr @__tracepoint_ptr_fsi_master_gpio_clock_zeros, !9, !"__tracepoint_ptr_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_fsi_master_gpio_clock_zeros, !9, !"__SCK__tp_func_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!12 = !{ptr @__tracepoint_fsi_master_gpio_break, !13, !"__tracepoint_fsi_master_gpio_break", i1 false, i1 false}
!13 = !{!"../include/trace/events/fsi_master_gpio.h", i32 69, i32 1}
!14 = !{ptr @__tracepoint_ptr_fsi_master_gpio_break, !13, !"__tracepoint_ptr_fsi_master_gpio_break", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_fsi_master_gpio_break, !13, !"__SCK__tp_func_fsi_master_gpio_break", i1 false, i1 false}
!16 = !{ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, !17, !"__tracepoint_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!17 = !{!"../include/trace/events/fsi_master_gpio.h", i32 83, i32 1}
!18 = !{ptr @__tracepoint_ptr_fsi_master_gpio_crc_cmd_error, !17, !"__tracepoint_ptr_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_fsi_master_gpio_crc_cmd_error, !17, !"__SCK__tp_func_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!20 = !{ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, !21, !"__tracepoint_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!21 = !{!"../include/trace/events/fsi_master_gpio.h", i32 97, i32 1}
!22 = !{ptr @__tracepoint_ptr_fsi_master_gpio_crc_rsp_error, !21, !"__tracepoint_ptr_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_fsi_master_gpio_crc_rsp_error, !21, !"__SCK__tp_func_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!24 = !{ptr @__tracepoint_fsi_master_gpio_poll_response_busy, !25, !"__tracepoint_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!25 = !{!"../include/trace/events/fsi_master_gpio.h", i32 111, i32 1}
!26 = !{ptr @__tracepoint_ptr_fsi_master_gpio_poll_response_busy, !25, !"__tracepoint_ptr_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_fsi_master_gpio_poll_response_busy, !25, !"__SCK__tp_func_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!28 = !{ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, !29, !"__tracepoint_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!29 = !{!"../include/trace/events/fsi_master_gpio.h", i32 126, i32 1}
!30 = !{ptr @__tracepoint_ptr_fsi_master_gpio_cmd_abs_addr, !29, !"__tracepoint_ptr_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_fsi_master_gpio_cmd_abs_addr, !29, !"__SCK__tp_func_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!32 = !{ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, !33, !"__tracepoint_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!33 = !{!"../include/trace/events/fsi_master_gpio.h", i32 141, i32 1}
!34 = !{ptr @__tracepoint_ptr_fsi_master_gpio_cmd_rel_addr, !33, !"__tracepoint_ptr_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_fsi_master_gpio_cmd_rel_addr, !33, !"__SCK__tp_func_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!36 = !{ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, !37, !"__tracepoint_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!37 = !{!"../include/trace/events/fsi_master_gpio.h", i32 156, i32 1}
!38 = !{ptr @__tracepoint_ptr_fsi_master_gpio_cmd_same_addr, !37, !"__tracepoint_ptr_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_fsi_master_gpio_cmd_same_addr, !37, !"__SCK__tp_func_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!40 = !{ptr @event_class_fsi_master_gpio_in, !1, !"event_class_fsi_master_gpio_in", i1 false, i1 false}
!41 = !{ptr @event_fsi_master_gpio_in, !1, !"event_fsi_master_gpio_in", i1 false, i1 false}
!42 = !{ptr @__event_fsi_master_gpio_in, !1, !"__event_fsi_master_gpio_in", i1 false, i1 false}
!43 = !{ptr @event_class_fsi_master_gpio_out, !5, !"event_class_fsi_master_gpio_out", i1 false, i1 false}
!44 = !{ptr @event_fsi_master_gpio_out, !5, !"event_fsi_master_gpio_out", i1 false, i1 false}
!45 = !{ptr @__event_fsi_master_gpio_out, !5, !"__event_fsi_master_gpio_out", i1 false, i1 false}
!46 = !{ptr @event_class_fsi_master_gpio_clock_zeros, !9, !"event_class_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!47 = !{ptr @event_fsi_master_gpio_clock_zeros, !9, !"event_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!48 = !{ptr @__event_fsi_master_gpio_clock_zeros, !9, !"__event_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!49 = !{ptr @event_class_fsi_master_gpio_break, !13, !"event_class_fsi_master_gpio_break", i1 false, i1 false}
!50 = !{ptr @event_fsi_master_gpio_break, !13, !"event_fsi_master_gpio_break", i1 false, i1 false}
!51 = !{ptr @__event_fsi_master_gpio_break, !13, !"__event_fsi_master_gpio_break", i1 false, i1 false}
!52 = !{ptr @event_class_fsi_master_gpio_crc_cmd_error, !17, !"event_class_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!53 = !{ptr @event_fsi_master_gpio_crc_cmd_error, !17, !"event_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!54 = !{ptr @__event_fsi_master_gpio_crc_cmd_error, !17, !"__event_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!55 = !{ptr @event_class_fsi_master_gpio_crc_rsp_error, !21, !"event_class_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!56 = !{ptr @event_fsi_master_gpio_crc_rsp_error, !21, !"event_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!57 = !{ptr @__event_fsi_master_gpio_crc_rsp_error, !21, !"__event_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!58 = !{ptr @event_class_fsi_master_gpio_poll_response_busy, !25, !"event_class_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!59 = !{ptr @event_fsi_master_gpio_poll_response_busy, !25, !"event_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!60 = !{ptr @__event_fsi_master_gpio_poll_response_busy, !25, !"__event_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!61 = !{ptr @event_class_fsi_master_gpio_cmd_abs_addr, !29, !"event_class_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!62 = !{ptr @event_fsi_master_gpio_cmd_abs_addr, !29, !"event_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!63 = !{ptr @__event_fsi_master_gpio_cmd_abs_addr, !29, !"__event_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!64 = !{ptr @event_class_fsi_master_gpio_cmd_rel_addr, !33, !"event_class_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!65 = !{ptr @event_fsi_master_gpio_cmd_rel_addr, !33, !"event_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!66 = !{ptr @__event_fsi_master_gpio_cmd_rel_addr, !33, !"__event_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!67 = !{ptr @event_class_fsi_master_gpio_cmd_same_addr, !37, !"event_class_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!68 = !{ptr @event_fsi_master_gpio_cmd_same_addr, !37, !"event_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!69 = !{ptr @__event_fsi_master_gpio_cmd_same_addr, !37, !"__event_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!70 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_in, !1, !"__bpf_trace_tp_map_fsi_master_gpio_in", i1 false, i1 false}
!71 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_out, !5, !"__bpf_trace_tp_map_fsi_master_gpio_out", i1 false, i1 false}
!72 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_clock_zeros, !9, !"__bpf_trace_tp_map_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!73 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_break, !13, !"__bpf_trace_tp_map_fsi_master_gpio_break", i1 false, i1 false}
!74 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_crc_cmd_error, !17, !"__bpf_trace_tp_map_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!75 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_crc_rsp_error, !21, !"__bpf_trace_tp_map_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!76 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_poll_response_busy, !25, !"__bpf_trace_tp_map_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!77 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_cmd_abs_addr, !29, !"__bpf_trace_tp_map_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!78 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_cmd_rel_addr, !33, !"__bpf_trace_tp_map_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!79 = !{ptr @__bpf_trace_tp_map_fsi_master_gpio_cmd_same_addr, !37, !"__bpf_trace_tp_map_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!80 = !{ptr @__initcall__kmod_fsi_master_gpio__308_896_fsi_master_gpio_driver_init6, !81, !"__initcall__kmod_fsi_master_gpio__308_896_fsi_master_gpio_driver_init6", i1 false, i1 false}
!81 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 896, i32 1}
!82 = !{ptr @__exitcall_fsi_master_gpio_driver_exit, !81, !"__exitcall_fsi_master_gpio_driver_exit", i1 false, i1 false}
!83 = !{ptr @__UNIQUE_ID_file309, !84, !"__UNIQUE_ID_file309", i1 false, i1 false}
!84 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 897, i32 1}
!85 = !{ptr @__UNIQUE_ID_license310, !84, !"__UNIQUE_ID_license310", i1 false, i1 false}
!86 = !{ptr @__tpstrtab_fsi_master_gpio_in, !1, !"__tpstrtab_fsi_master_gpio_in", i1 false, i1 false}
!87 = !{ptr @__tpstrtab_fsi_master_gpio_out, !5, !"__tpstrtab_fsi_master_gpio_out", i1 false, i1 false}
!88 = !{ptr @__tpstrtab_fsi_master_gpio_clock_zeros, !9, !"__tpstrtab_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!89 = !{ptr @__tpstrtab_fsi_master_gpio_break, !13, !"__tpstrtab_fsi_master_gpio_break", i1 false, i1 false}
!90 = !{ptr @__tpstrtab_fsi_master_gpio_crc_cmd_error, !17, !"__tpstrtab_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!91 = !{ptr @__tpstrtab_fsi_master_gpio_crc_rsp_error, !21, !"__tpstrtab_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!92 = !{ptr @__tpstrtab_fsi_master_gpio_poll_response_busy, !25, !"__tpstrtab_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!93 = !{ptr @__tpstrtab_fsi_master_gpio_cmd_abs_addr, !29, !"__tpstrtab_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!94 = !{ptr @__tpstrtab_fsi_master_gpio_cmd_rel_addr, !33, !"__tpstrtab_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!95 = !{ptr @__tpstrtab_fsi_master_gpio_cmd_same_addr, !37, !"__tpstrtab_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!96 = !{ptr @str__fsi_master_gpio__trace_system_name, !97, !"str__fsi_master_gpio__trace_system_name", i1 false, i1 false}
!97 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!98 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @trace_event_fields_fsi_master_gpio_in, !1, !"trace_event_fields_fsi_master_gpio_in", i1 false, i1 false}
!104 = !{ptr @trace_event_type_funcs_fsi_master_gpio_in, !1, !"trace_event_type_funcs_fsi_master_gpio_in", i1 false, i1 false}
!105 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @print_fmt_fsi_master_gpio_in, !1, !"print_fmt_fsi_master_gpio_in", i1 false, i1 false}
!107 = !{ptr @trace_event_fields_fsi_master_gpio_out, !5, !"trace_event_fields_fsi_master_gpio_out", i1 false, i1 false}
!108 = !{ptr @trace_event_type_funcs_fsi_master_gpio_out, !5, !"trace_event_type_funcs_fsi_master_gpio_out", i1 false, i1 false}
!109 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @print_fmt_fsi_master_gpio_out, !5, !"print_fmt_fsi_master_gpio_out", i1 false, i1 false}
!111 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @trace_event_fields_fsi_master_gpio_clock_zeros, !9, !"trace_event_fields_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!113 = !{ptr @trace_event_type_funcs_fsi_master_gpio_clock_zeros, !9, !"trace_event_type_funcs_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!114 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @print_fmt_fsi_master_gpio_clock_zeros, !9, !"print_fmt_fsi_master_gpio_clock_zeros", i1 false, i1 false}
!116 = !{ptr @trace_event_fields_fsi_master_gpio_break, !13, !"trace_event_fields_fsi_master_gpio_break", i1 false, i1 false}
!117 = !{ptr @trace_event_type_funcs_fsi_master_gpio_break, !13, !"trace_event_type_funcs_fsi_master_gpio_break", i1 false, i1 false}
!118 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @print_fmt_fsi_master_gpio_break, !13, !"print_fmt_fsi_master_gpio_break", i1 false, i1 false}
!120 = !{ptr @trace_event_fields_fsi_master_gpio_crc_cmd_error, !17, !"trace_event_fields_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!121 = !{ptr @trace_event_type_funcs_fsi_master_gpio_crc_cmd_error, !17, !"trace_event_type_funcs_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!122 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @print_fmt_fsi_master_gpio_crc_cmd_error, !17, !"print_fmt_fsi_master_gpio_crc_cmd_error", i1 false, i1 false}
!124 = !{ptr @trace_event_fields_fsi_master_gpio_crc_rsp_error, !21, !"trace_event_fields_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!125 = !{ptr @trace_event_type_funcs_fsi_master_gpio_crc_rsp_error, !21, !"trace_event_type_funcs_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!126 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @print_fmt_fsi_master_gpio_crc_rsp_error, !21, !"print_fmt_fsi_master_gpio_crc_rsp_error", i1 false, i1 false}
!128 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @trace_event_fields_fsi_master_gpio_poll_response_busy, !25, !"trace_event_fields_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!130 = !{ptr @trace_event_type_funcs_fsi_master_gpio_poll_response_busy, !25, !"trace_event_type_funcs_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!131 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @print_fmt_fsi_master_gpio_poll_response_busy, !25, !"print_fmt_fsi_master_gpio_poll_response_busy", i1 false, i1 false}
!133 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @trace_event_fields_fsi_master_gpio_cmd_abs_addr, !29, !"trace_event_fields_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!136 = !{ptr @trace_event_type_funcs_fsi_master_gpio_cmd_abs_addr, !29, !"trace_event_type_funcs_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!137 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @print_fmt_fsi_master_gpio_cmd_abs_addr, !29, !"print_fmt_fsi_master_gpio_cmd_abs_addr", i1 false, i1 false}
!139 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @trace_event_fields_fsi_master_gpio_cmd_rel_addr, !33, !"trace_event_fields_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!141 = !{ptr @trace_event_type_funcs_fsi_master_gpio_cmd_rel_addr, !33, !"trace_event_type_funcs_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!142 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @print_fmt_fsi_master_gpio_cmd_rel_addr, !33, !"print_fmt_fsi_master_gpio_cmd_rel_addr", i1 false, i1 false}
!144 = !{ptr @trace_event_fields_fsi_master_gpio_cmd_same_addr, !37, !"trace_event_fields_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!145 = !{ptr @trace_event_type_funcs_fsi_master_gpio_cmd_same_addr, !37, !"trace_event_type_funcs_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!146 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @print_fmt_fsi_master_gpio_cmd_same_addr, !37, !"print_fmt_fsi_master_gpio_cmd_same_addr", i1 false, i1 false}
!148 = !{ptr @.str.20, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 889, i32 12}
!150 = !{ptr @fsi_master_gpio_driver, !151, !"fsi_master_gpio_driver", i1 false, i1 false}
!151 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 887, i32 31}
!152 = !{ptr @.str.21, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 787, i32 36}
!154 = !{ptr @.str.22, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 789, i32 3}
!156 = !{ptr @.str.23, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.24, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.25, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.26, !155, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @fsi_master_gpio_probe._entry, !155, !"_entry", i1 false, i1 false}
!161 = !{ptr @fsi_master_gpio_probe._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.27, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 795, i32 36}
!164 = !{ptr @.str.29, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 797, i32 3}
!166 = !{ptr @fsi_master_gpio_probe._entry.28, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @fsi_master_gpio_probe._entry_ptr.30, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.31, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 804, i32 45}
!170 = !{ptr @.str.33, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 806, i32 3}
!172 = !{ptr @fsi_master_gpio_probe._entry.32, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @fsi_master_gpio_probe._entry_ptr.34, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.35, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 812, i32 45}
!176 = !{ptr @.str.37, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 814, i32 3}
!178 = !{ptr @fsi_master_gpio_probe._entry.36, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @fsi_master_gpio_probe._entry_ptr.38, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.39, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 820, i32 45}
!182 = !{ptr @.str.41, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 822, i32 3}
!184 = !{ptr @fsi_master_gpio_probe._entry.40, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @fsi_master_gpio_probe._entry_ptr.42, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.43, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 833, i32 58}
!188 = !{ptr @fsi_master_gpio_probe.__key, !189, !"__key", i1 false, i1 false}
!189 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 848, i32 2}
!190 = !{ptr @.str.44, !189, !"<string literal>", i1 false, i1 false}
!191 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!192 = !{ptr @.str.45, !37, !"<string literal>", i1 false, i1 false}
!193 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!194 = !{ptr @.str.46, !37, !"<string literal>", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!197 = !{ptr @.str.47, !196, !"<string literal>", i1 false, i1 false}
!198 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!199 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!200 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!201 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!202 = !{ptr @.str.48, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 552, i32 3}
!204 = !{ptr @.str.49, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.50, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @fsi_master_gpio_xfer._entry, !203, !"_entry", i1 false, i1 false}
!207 = !{ptr @fsi_master_gpio_xfer._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.51, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 141, i32 3}
!210 = !{ptr @.str.52, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @serial_out._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @serial_out._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!214 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!215 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!216 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!217 = !{ptr @.str.53, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 447, i32 3}
!219 = !{ptr @.str.54, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.55, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @poll_for_response.__UNIQUE_ID_ddebug305, !218, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!222 = !{ptr @.str.56, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 489, i32 3}
!224 = !{ptr @poll_for_response._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @poll_for_response._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.57, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 499, i32 3}
!228 = !{ptr @poll_for_response.__UNIQUE_ID_ddebug306, !227, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!229 = !{ptr @.str.58, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 503, i32 3}
!231 = !{ptr @poll_for_response.__UNIQUE_ID_ddebug307, !230, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!232 = !{ptr @.str.59, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 354, i32 3}
!234 = !{ptr @.str.60, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @read_one_response.__UNIQUE_ID_ddebug303, !233, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!236 = !{ptr @.str.61, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 384, i32 3}
!238 = !{ptr @read_one_response.__UNIQUE_ID_ddebug304, !237, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!239 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!240 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!241 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!242 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!243 = !{ptr @.str.62, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 413, i32 3}
!245 = !{ptr @.str.63, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @issue_term._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @issue_term._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.65, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 417, i32 3}
!250 = !{ptr @issue_term._entry.64, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @issue_term._entry_ptr.66, !249, !"_entry_ptr", i1 false, i1 false}
!252 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!253 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!254 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!255 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!256 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!257 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!258 = !{ptr @.str.67, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 759, i32 8}
!260 = !{ptr @dev_attr_external_mode, !259, !"dev_attr_external_mode", i1 false, i1 false}
!261 = !{ptr @.str.68, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 721, i32 38}
!263 = !{ptr @fsi_master_gpio_match, !264, !"fsi_master_gpio_match", i1 false, i1 false}
!264 = !{!"../drivers/fsi/fsi-master-gpio.c", i32 881, i32 34}
!265 = !{!"sp"}
!266 = !{i32 1, !"wchar_size", i32 2}
!267 = !{i32 1, !"min_enum_size", i32 4}
!268 = !{i32 8, !"branch-target-enforcement", i32 0}
!269 = !{i32 8, !"sign-return-address", i32 0}
!270 = !{i32 8, !"sign-return-address-all", i32 0}
!271 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!272 = !{i32 7, !"uwtable", i32 1}
!273 = !{i32 7, !"frame-pointer", i32 2}
!274 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!275 = !{!"branch_weights", i32 2000, i32 1}
!276 = !{!"branch_weights", i32 1, i32 2000}
!277 = !{!"auto-init"}
!278 = !{i8 0, i8 2}
!279 = !{i64 601156, i64 601217}
!280 = !{i64 603888}
!281 = !{i64 604173}
!282 = !{i64 2148776340, i64 2148776345, i64 2148776358, i64 2148776402, i64 2148776436, i64 2148776457}
!283 = !{i64 2153152631}
!284 = !{i64 2153152864}
!285 = !{i64 2149277496}
!286 = !{i64 2149278532}
!287 = !{i64 2153134949}
!288 = !{i64 2153135200}
!289 = !{i64 2153117059}
!290 = !{i64 2153117302}
!291 = !{i64 2153003298}
!292 = !{i64 2153003533}
!293 = !{i64 2153020683}
!294 = !{i64 2153020928}
!295 = !{i64 2153076864}
!296 = !{i64 2153077097}
!297 = !{i64 2153059238}
!298 = !{i64 2153059471}
!299 = !{i64 2153094876}
!300 = !{i64 2153095131}
!301 = !{i64 2152986076}
!302 = !{i64 2152986309}
!303 = !{i64 2153037984}
!304 = !{i64 2153038201}
