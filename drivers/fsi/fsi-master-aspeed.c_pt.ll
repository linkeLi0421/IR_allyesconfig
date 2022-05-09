; ModuleID = '/llk/IR_all_yes/drivers/fsi/fsi-master-aspeed.c_pt.bc'
source_filename = "../drivers/fsi/fsi-master-aspeed.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_fsi_master_aspeed_opb_read = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_fsi_master_aspeed_opb_write = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_aspeed_opb_error = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsi_master_aspeed = type { %struct.fsi_master, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.fsi_master = type { %struct.device, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }

@__tpstrtab_fsi_master_aspeed_opb_read = internal constant [27 x i8] c"fsi_master_aspeed_opb_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_aspeed_opb_read = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_aspeed_opb_read }, align 4
@__tracepoint_fsi_master_aspeed_opb_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_aspeed_opb_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_aspeed_opb_read, ptr null, ptr @__traceiter_fsi_master_aspeed_opb_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_aspeed_opb_read = internal constant ptr @__tracepoint_fsi_master_aspeed_opb_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_aspeed_opb_write = internal constant [28 x i8] c"fsi_master_aspeed_opb_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_aspeed_opb_write = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_aspeed_opb_write }, align 4
@__tracepoint_fsi_master_aspeed_opb_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_aspeed_opb_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_aspeed_opb_write, ptr null, ptr @__traceiter_fsi_master_aspeed_opb_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_aspeed_opb_write = internal constant ptr @__tracepoint_fsi_master_aspeed_opb_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_aspeed_opb_error = internal constant [28 x i8] c"fsi_master_aspeed_opb_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_aspeed_opb_error = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_aspeed_opb_error }, align 4
@__tracepoint_fsi_master_aspeed_opb_error = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_fsi_master_aspeed_opb_error, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_fsi_master_aspeed_opb_error, ptr null, ptr @__traceiter_fsi_master_aspeed_opb_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_aspeed_opb_error = internal constant ptr @__tracepoint_fsi_master_aspeed_opb_error, section "__tracepoints_ptrs", align 4
@str__fsi_master_aspeed__trace_system_name = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsi_master_aspeed\00", [46 x i8] zeroinitializer }, align 32
@trace_event_fields_fsi_master_aspeed_opb_read = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_fsi_master_aspeed_opb_read = internal global %struct.trace_event_class { ptr @str__fsi_master_aspeed__trace_system_name, ptr @trace_event_raw_event_fsi_master_aspeed_opb_read, ptr @perf_trace_fsi_master_aspeed_opb_read, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_aspeed_opb_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_read, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_aspeed_opb_read = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_aspeed_opb_read, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_aspeed_opb_read = internal global { [123 x i8], [37 x i8] } { [123 x i8] c"\22addr %08x size %zu: result %08x sts: %08x irq_sts: %08x\22, REC->addr, REC->size, REC->result, REC->status, REC->irq_status\00", [37 x i8] zeroinitializer }, align 32
@event_fsi_master_aspeed_opb_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_aspeed_opb_read, %union.anon.1 { ptr @__tracepoint_fsi_master_aspeed_opb_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_aspeed_opb_read }, ptr @print_fmt_fsi_master_aspeed_opb_read, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_aspeed_opb_read = internal global ptr @event_fsi_master_aspeed_opb_read, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_aspeed_opb_write = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_fsi_master_aspeed_opb_write = internal global %struct.trace_event_class { ptr @str__fsi_master_aspeed__trace_system_name, ptr @trace_event_raw_event_fsi_master_aspeed_opb_write, ptr @perf_trace_fsi_master_aspeed_opb_write, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_aspeed_opb_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_write, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_aspeed_opb_write = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_aspeed_opb_write, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_aspeed_opb_write = internal global { [119 x i8], [41 x i8] } { [119 x i8] c"\22addr %08x val %08x size %zu status: %08x irq_sts: %08x\22, REC->addr, REC->val, REC->size, REC->status, REC->irq_status\00", [41 x i8] zeroinitializer }, align 32
@event_fsi_master_aspeed_opb_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_aspeed_opb_write, %union.anon.1 { ptr @__tracepoint_fsi_master_aspeed_opb_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_aspeed_opb_write }, ptr @print_fmt_fsi_master_aspeed_opb_write, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_aspeed_opb_write = internal global ptr @event_fsi_master_aspeed_opb_write, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_aspeed_opb_error = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_fsi_master_aspeed_opb_error = internal global %struct.trace_event_class { ptr @str__fsi_master_aspeed__trace_system_name, ptr @trace_event_raw_event_fsi_master_aspeed_opb_error, ptr @perf_trace_fsi_master_aspeed_opb_error, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_aspeed_opb_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_error, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_aspeed_opb_error = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_aspeed_opb_error, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_fsi_master_aspeed_opb_error = internal global { [77 x i8], [51 x i8] } { [77 x i8] c"\22mresp0 %08x mstap0 %08x mesrb0 %08x\22, REC->mresp0, REC->mstap0, REC->mesrb0\00", [51 x i8] zeroinitializer }, align 32
@event_fsi_master_aspeed_opb_error = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_aspeed_opb_error, %union.anon.1 { ptr @__tracepoint_fsi_master_aspeed_opb_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_aspeed_opb_error }, ptr @print_fmt_fsi_master_aspeed_opb_error, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_fsi_master_aspeed_opb_error = internal global ptr @event_fsi_master_aspeed_opb_error, section "_ftrace_events", align 4
@__bpf_trace_tp_map_fsi_master_aspeed_opb_read = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_aspeed_opb_read, ptr @__bpf_trace_fsi_master_aspeed_opb_read, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_aspeed_opb_write = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_aspeed_opb_write, ptr @__bpf_trace_fsi_master_aspeed_opb_write, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_fsi_master_aspeed_opb_error = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_fsi_master_aspeed_opb_error, ptr @__bpf_trace_fsi_master_aspeed_opb_error, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__param_str_bus_div = internal constant [26 x i8] c"fsi_master_aspeed.bus_div\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@aspeed_fsi_divisor = internal global { i16, [30 x i8] } { i16 1, [30 x i8] zeroinitializer }, align 32
@__param_bus_div = internal constant %struct.kernel_param { ptr @__param_str_bus_div, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.74 { ptr @aspeed_fsi_divisor } }, section "__param", align 4
@__UNIQUE_ID_bus_divtype268 = internal constant [42 x i8] c"fsi_master_aspeed.parmtype=bus_div:ushort\00", section ".modinfo", align 1
@__initcall__kmod_fsi_master_aspeed__269_665_fsi_master_aspeed_driver_init6 = internal global ptr @fsi_master_aspeed_driver_init, section ".initcall6.init", align 4
@fsi_master_aspeed_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsi_master_aspeed_probe, ptr @fsi_master_aspeed_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsi_master_aspeed_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsi_master_aspeed_driver_exit = internal global ptr @fsi_master_aspeed_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file270 = internal constant [53 x i8] c"fsi_master_aspeed.file=drivers/fsi/fsi-master-aspeed\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [30 x i8] c"fsi_master_aspeed.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uint32_t\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"irq_status\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"addr %08x size %zu: result %08x sts: %08x irq_sts: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"val\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"addr %08x val %08x size %zu status: %08x irq_sts: %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mresp0\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mstap0\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mesrb0\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mresp0 %08x mstap0 %08x mesrb0 %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsi-master-aspeed\00", [46 x i8] zeroinitializer }, align 32
@fsi_master_aspeed_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-fsi-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fsi_master_aspeed_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 541, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Tacoma FSI cable fixup failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsi_master_aspeed_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/fsi/fsi-master-aspeed.c\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsi_master_aspeed_probe._entry_ptr = internal global ptr @fsi_master_aspeed_probe._entry, section ".printk_index", align 4
@fsi_master_aspeed_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.17, i32 557, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"couldn't get clock\0A\00", [44 x i8] zeroinitializer }, align 32
@fsi_master_aspeed_probe._entry_ptr.22 = internal global ptr @fsi_master_aspeed_probe._entry.20, section ".printk_index", align 4
@fsi_master_aspeed_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.17, i32 562, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't enable clock\0A\00", [41 x i8] zeroinitializer }, align 32
@fsi_master_aspeed_probe._entry_ptr.25 = internal global ptr @fsi_master_aspeed_probe._entry.23, section ".printk_index", align 4
@fsi_master_aspeed_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.17, i32 568, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CFAM reset GPIO setup failed\0A\00", [34 x i8] zeroinitializer }, align 32
@fsi_master_aspeed_probe._entry_ptr.28 = internal global ptr @fsi_master_aspeed_probe._entry.26, section ".printk_index", align 4
@fsi_master_aspeed_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.17, i32 597, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read hub version\0A\00", [36 x i8] zeroinitializer }, align 32
@fsi_master_aspeed_probe._entry_ptr.31 = internal global ptr @fsi_master_aspeed_probe._entry.29, section ".printk_index", align 4
@fsi_master_aspeed_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.17, i32 603, ptr @.str.34, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hub version %08x (%d links)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fsi_master_aspeed_probe._entry_ptr.35 = internal global ptr @fsi_master_aspeed_probe._entry.32, section ".printk_index", align 4
@fsi_master_aspeed_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&aspeed->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsi-routing\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsi-mux\00", [24 x i8] zeroinitializer }, align 32
@tacoma_cabled_fsi_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.17, i32 523, ptr @.str.34, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FSI configured for external cable\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tacoma_cabled_fsi_fixup\00", [40 x i8] zeroinitializer }, align 32
@tacoma_cabled_fsi_fixup._entry_ptr = internal global ptr @tacoma_cabled_fsi_fixup._entry, section ".printk_index", align 4
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cfam-reset\00", [21 x i8] zeroinitializer }, align 32
@dev_attr_cfam_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @cfam_reset_store }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cfam_reset\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"include/trace/events/fsi_master_aspeed.h\00", [55 x i8] zeroinitializer }, align 32
@trace_fsi_master_aspeed_opb_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_fsi_master_aspeed_opb_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_fsi_master_aspeed_opb_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aspeed_master_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.17, i32 416, ptr @.str.34, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mmode set to %08x (divisor %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed_master_init\00", [45 x i8] zeroinitializer }, align 32
@aspeed_master_init._entry_ptr = internal global ptr @aspeed_master_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.50 = private unnamed_addr constant [42 x i8] c"str__fsi_master_aspeed__trace_system_name\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 36, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [46 x i8] c"trace_event_fields_fsi_master_aspeed_opb_read\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [50 x i8] c"trace_event_type_funcs_fsi_master_aspeed_opb_read\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [37 x i8] c"print_fmt_fsi_master_aspeed_opb_read\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [33 x i8] c"event_fsi_master_aspeed_opb_read\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [47 x i8] c"trace_event_fields_fsi_master_aspeed_opb_write\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_fsi_master_aspeed_opb_write\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [38 x i8] c"print_fmt_fsi_master_aspeed_opb_write\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [34 x i8] c"event_fsi_master_aspeed_opb_write\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [47 x i8] c"trace_event_fields_fsi_master_aspeed_opb_error\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_fsi_master_aspeed_opb_error\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [38 x i8] c"print_fmt_fsi_master_aspeed_opb_error\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [34 x i8] c"event_fsi_master_aspeed_opb_error\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"aspeed_fsi_divisor\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 92, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"fsi_master_aspeed_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 656, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 34, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 57, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 658, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [24 x i8] c"fsi_master_aspeed_match\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 650, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 541, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 557, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 562, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 568, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 597, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 603, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 618, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 495, i32 46 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 502, i32 42 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 523, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 469, i32 38 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"dev_attr_cfam_reset\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 461, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant [44 x i8] c"../include/trace/events/fsi_master_aspeed.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 11, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 108, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private constant [35 x i8] c"../drivers/fsi/fsi-master-aspeed.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 415, i32 2 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_bus_divtype268, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__bpf_trace_tp_map_fsi_master_aspeed_opb_error, ptr @__bpf_trace_tp_map_fsi_master_aspeed_opb_read, ptr @__bpf_trace_tp_map_fsi_master_aspeed_opb_write, ptr @__event_fsi_master_aspeed_opb_error, ptr @__event_fsi_master_aspeed_opb_read, ptr @__event_fsi_master_aspeed_opb_write, ptr @__exitcall_fsi_master_aspeed_driver_exit, ptr @__initcall__kmod_fsi_master_aspeed__269_665_fsi_master_aspeed_driver_init6, ptr @__param_bus_div, ptr @__tracepoint_fsi_master_aspeed_opb_error, ptr @__tracepoint_fsi_master_aspeed_opb_read, ptr @__tracepoint_fsi_master_aspeed_opb_write, ptr @__tracepoint_ptr_fsi_master_aspeed_opb_error, ptr @__tracepoint_ptr_fsi_master_aspeed_opb_read, ptr @__tracepoint_ptr_fsi_master_aspeed_opb_write, ptr @aspeed_master_init._entry, ptr @aspeed_master_init._entry_ptr, ptr @event_class_fsi_master_aspeed_opb_error, ptr @event_class_fsi_master_aspeed_opb_read, ptr @event_class_fsi_master_aspeed_opb_write, ptr @event_fsi_master_aspeed_opb_error, ptr @event_fsi_master_aspeed_opb_read, ptr @event_fsi_master_aspeed_opb_write, ptr @fsi_master_aspeed_driver_exit, ptr @fsi_master_aspeed_probe._entry, ptr @fsi_master_aspeed_probe._entry.20, ptr @fsi_master_aspeed_probe._entry.23, ptr @fsi_master_aspeed_probe._entry.26, ptr @fsi_master_aspeed_probe._entry.29, ptr @fsi_master_aspeed_probe._entry.32, ptr @fsi_master_aspeed_probe._entry_ptr, ptr @fsi_master_aspeed_probe._entry_ptr.22, ptr @fsi_master_aspeed_probe._entry_ptr.25, ptr @fsi_master_aspeed_probe._entry_ptr.28, ptr @fsi_master_aspeed_probe._entry_ptr.31, ptr @fsi_master_aspeed_probe._entry_ptr.35, ptr @tacoma_cabled_fsi_fixup._entry, ptr @tacoma_cabled_fsi_fixup._entry_ptr, ptr @str__fsi_master_aspeed__trace_system_name, ptr @trace_event_fields_fsi_master_aspeed_opb_read, ptr @trace_event_type_funcs_fsi_master_aspeed_opb_read, ptr @print_fmt_fsi_master_aspeed_opb_read, ptr @trace_event_fields_fsi_master_aspeed_opb_write, ptr @trace_event_type_funcs_fsi_master_aspeed_opb_write, ptr @print_fmt_fsi_master_aspeed_opb_write, ptr @trace_event_fields_fsi_master_aspeed_opb_error, ptr @trace_event_type_funcs_fsi_master_aspeed_opb_error, ptr @print_fmt_fsi_master_aspeed_opb_error, ptr @aspeed_fsi_divisor, ptr @fsi_master_aspeed_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @fsi_master_aspeed_match, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @fsi_master_aspeed_probe.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @dev_attr_cfam_reset, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__fsi_master_aspeed__trace_system_name to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_aspeed_opb_read to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_aspeed_opb_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_aspeed_opb_read to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_aspeed_opb_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_aspeed_opb_write to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_aspeed_opb_write to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_aspeed_opb_write to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_aspeed_opb_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_fsi_master_aspeed_opb_error to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_fsi_master_aspeed_opb_error to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_fsi_master_aspeed_opb_error to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_fsi_master_aspeed_opb_error to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_fsi_divisor to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_aspeed_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_aspeed_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_aspeed_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_aspeed_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_aspeed_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_aspeed_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_aspeed_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_aspeed_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_master_aspeed_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tacoma_cabled_fsi_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cfam_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_master_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_aspeed_opb_read(ptr nocapture readnone %__data, i32 noundef %addr, i32 noundef %size, i32 noundef %result, i32 noundef %status, i32 noundef %irq_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_read, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, i32 noundef %addr, i32 noundef %size, i32 noundef %result, i32 noundef %status, i32 noundef %irq_status) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_aspeed_opb_write(ptr nocapture readnone %__data, i32 noundef %addr, i32 noundef %val, i32 noundef %size, i32 noundef %status, i32 noundef %irq_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_write, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, i32 noundef %addr, i32 noundef %val, i32 noundef %size, i32 noundef %status, i32 noundef %irq_status) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_aspeed_opb_error(ptr nocapture readnone %__data, i32 noundef %mresp0, i32 noundef %mstap0, i32 noundef %mesrb0) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_error, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, i32 noundef %mresp0, i32 noundef %mstap0, i32 noundef %mesrb0) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_aspeed_opb_read(ptr noundef %__data, i32 noundef %addr, i32 noundef %size, i32 noundef %result, i32 noundef %status, i32 noundef %irq_status) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !142

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !143

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr6 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %addr6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %addr, ptr %addr6, align 4
  %size7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %size7, align 4
  %result8 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %result8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %result, ptr %result8, align 4
  %status9 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %status, ptr %status9, align 4
  %irq_status10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %irq_status10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %irq_status, ptr %irq_status10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_aspeed_opb_read(ptr noundef %__data, i32 noundef %addr, i32 noundef %size, i32 noundef %result, i32 noundef %status, i32 noundef %irq_status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !144
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !132) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %addr17 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %addr17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %addr, ptr %addr17, align 4
  %size18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %size18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %size, ptr %size18, align 4
  %result19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %result19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %result, ptr %result19, align 4
  %status20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %status20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %status, ptr %status20, align 4
  %irq_status21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %irq_status21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %irq_status, ptr %irq_status21, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_aspeed_opb_write(ptr noundef %__data, i32 noundef %addr, i32 noundef %val, i32 noundef %size, i32 noundef %status, i32 noundef %irq_status) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !142

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !143

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %addr6 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %addr6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %addr, ptr %addr6, align 4
  %val7 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %val7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %val, ptr %val7, align 4
  %size8 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %size8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %size8, align 4
  %status9 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %status, ptr %status9, align 4
  %irq_status10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %irq_status10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %irq_status, ptr %irq_status10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_aspeed_opb_write(ptr noundef %__data, i32 noundef %addr, i32 noundef %val, i32 noundef %size, i32 noundef %status, i32 noundef %irq_status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !144
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !132) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %addr17 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %addr17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %addr, ptr %addr17, align 4
  %val18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %val18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %val, ptr %val18, align 4
  %size19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %size19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %size, ptr %size19, align 4
  %status20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %status20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %status, ptr %status20, align 4
  %irq_status21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %irq_status21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %irq_status, ptr %irq_status21, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_aspeed_opb_error(ptr noundef %__data, i32 noundef %mresp0, i32 noundef %mstap0, i32 noundef %mesrb0) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !142

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !143

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mresp06 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %mresp06 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mresp0, ptr %mresp06, align 4
  %mstap07 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %mstap07 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mstap0, ptr %mstap07, align 4
  %mesrb08 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %mesrb08 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mesrb0, ptr %mesrb08, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_aspeed_opb_error(ptr noundef %__data, i32 noundef %mresp0, i32 noundef %mstap0, i32 noundef %mesrb0) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !144
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !132) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %mresp017 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %mresp017 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mresp0, ptr %mresp017, align 4
  %mstap018 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %mstap018 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mstap0, ptr %mstap018, align 4
  %mesrb019 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %mesrb019 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mesrb0, ptr %mesrb019, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_aspeed_opb_read(ptr noundef %__data, i32 noundef %addr, i32 noundef %size, i32 noundef %result, i32 noundef %status, i32 noundef %irq_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %addr to i64
  %conv4 = zext i32 %size to i64
  %conv8 = zext i32 %result to i64
  %conv12 = zext i32 %status to i64
  %conv16 = zext i32 %irq_status to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_aspeed_opb_write(ptr noundef %__data, i32 noundef %addr, i32 noundef %val, i32 noundef %size, i32 noundef %status, i32 noundef %irq_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %addr to i64
  %conv4 = zext i32 %val to i64
  %conv8 = zext i32 %size to i64
  %conv12 = zext i32 %status to i64
  %conv16 = zext i32 %irq_status to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_fsi_master_aspeed_opb_error(ptr noundef %__data, i32 noundef %mresp0, i32 noundef %mstap0, i32 noundef %mesrb0) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %mresp0 to i64
  %conv4 = zext i32 %mstap0 to i64
  %conv8 = zext i32 %mesrb0 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_aspeed_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsi_master_aspeed_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsi_master_aspeed_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsi_master_aspeed_driver) #9
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
define internal i32 @trace_raw_output_fsi_master_aspeed_opb_read(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %addr = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %size = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %result = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %result, align 4
  %status = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %irq_status = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
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
define internal i32 @trace_raw_output_fsi_master_aspeed_opb_write(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %addr = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %val = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %size = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %status = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %irq_status = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_aspeed_opb_error(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %mresp0 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mresp0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mresp0, align 4
  %mstap0 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mstap0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mstap0, align 4
  %mesrb0 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mesrb0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mesrb0, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %5, i32 noundef %7) #9
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
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
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_aspeed_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %raw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw) #9
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %raw, align 4, !annotation !144
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef 17) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.tacoma_cabled_fsi_fixup.exit_crit_edge, label %if.end.i

entry.tacoma_cabled_fsi_fixup.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tacoma_cabled_fsi_fixup.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef 0) #9
  %cmp.i40.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40.i, label %if.end4.i.tacoma_cabled_fsi_fixup.exit_crit_edge, label %if.end9.i

if.end4.i.tacoma_cabled_fsi_fixup.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tacoma_cabled_fsi_fixup.exit

if.end9.i:                                        ; preds = %if.end4.i
  %tobool10.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool10.not.i, label %if.end9.i.if.end_crit_edge, label %if.end12.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end12.i:                                       ; preds = %if.end9.i
  %call13.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp.i = icmp slt i32 %call13.i, 0
  br i1 %cmp.i, label %if.end12.i.do.end_crit_edge, label %if.end15.i

if.end12.i.do.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end15.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool16.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  %1 = load i16, ptr @aspeed_fsi_divisor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp18.i = icmp eq i16 %1, 1
  br i1 %cmp18.i, label %if.then20.i, label %if.then17.i.if.end21.i_crit_edge

if.then17.i.if.end21.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  store i16 2, ptr @aspeed_fsi_divisor, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.then17.i.if.end21.i_crit_edge
  %call22.i = tail call i32 @gpiod_direction_output(ptr noundef nonnull %call5.i, i32 noundef 0) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.39) #12
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %call23.i = tail call i32 @gpiod_direction_output(ptr noundef nonnull %call5.i, i32 noundef 1) #9
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.end21.i
  tail call void @devm_gpiod_put(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  br label %if.end

tacoma_cabled_fsi_fixup.exit:                     ; preds = %if.end4.i.tacoma_cabled_fsi_fixup.exit_crit_edge, %entry.tacoma_cabled_fsi_fixup.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i, %entry.tacoma_cabled_fsi_fixup.exit_crit_edge ], [ %call5.i, %if.end4.i.tacoma_cabled_fsi_fixup.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %do.end

do.end:                                           ; preds = %tacoma_cabled_fsi_fixup.exit, %if.end12.i.do.end_crit_edge
  %retval.0.i203 = phi i32 [ %retval.0.i, %tacoma_cabled_fsi_fixup.exit ], [ %call13.i, %if.end12.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end:                                           ; preds = %if.end24.i, %if.end9.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call.i191 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1168, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i191, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %call.i191, i32 0, i32 2
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev8, align 4
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.fsi_master_aspeed, ptr %call.i191, i32 0, i32 3
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %base, align 8
  %cmp.i192 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev8, align 4
  %call17 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.fsi_master_aspeed, ptr %call.i191, i32 0, i32 4
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %clk, align 4
  %cmp.i193 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21) #12
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %call29 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %call37 = tail call fastcc i32 @setup_cfam_reset(ptr noundef nonnull %call.i191)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.do.body45_crit_edge, label %do.end42

if.end36.do.body45_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %do.body45

do.body45:                                        ; preds = %do.end42, %if.end36.do.body45_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %add.ptr53 = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 768) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %add.ptr58 = getelementptr i8, ptr %16, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 268435456) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %add.ptr63 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 128) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %add.ptr68 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 160) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %add.ptr73 = getelementptr i8, ptr %16, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 453706496) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  %add.ptr78 = getelementptr i8, ptr %16, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 454037760) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %add.ptr83 = getelementptr i8, ptr %16, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 1057960716) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  tail call void @arm_heavy_mb() #9
  %add.ptr88 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 16777216) #9, !srcloc !146
  %call.i194 = call fastcc i32 @__opb_read(ptr noundef nonnull %call.i191, i32 noundef -2147483532, i32 noundef 3, ptr noundef nonnull %raw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool90.not = icmp eq i32 %call.i194, 0
  br i1 %tobool90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.end96:                                         ; preds = %do.body45
  %17 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %raw, align 4
  %19 = lshr i32 %18, 8
  %and = and i32 %19, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %18, i32 noundef %and) #12
  %parent = getelementptr inbounds %struct.device, ptr %call.i191, i32 0, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %call.i191, i32 0, i32 35
  %21 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @aspeed_master_release, ptr %release, align 4
  %tobool.not.i195 = icmp eq ptr %dev, null
  br i1 %tobool.not.i195, label %if.end96.dev_of_node.exit_crit_edge, label %if.end.i196

if.end96.dev_of_node.exit_crit_edge:              ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_of_node.exit

if.end.i196:                                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i196, %if.end96.dev_of_node.exit_crit_edge
  %retval.0.i197 = phi ptr [ %23, %if.end.i196 ], [ null, %if.end96.dev_of_node.exit_crit_edge ]
  %call107 = call ptr @of_node_get(ptr noundef %retval.0.i197) #9
  %of_node = getelementptr inbounds %struct.device, ptr %call.i191, i32 0, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call107, ptr %of_node, align 8
  %n_links = getelementptr inbounds %struct.fsi_master, ptr %call.i191, i32 0, i32 2
  %25 = ptrtoint ptr %n_links to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %n_links, align 4
  %read = getelementptr inbounds %struct.fsi_master, ptr %call.i191, i32 0, i32 5
  %26 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @aspeed_master_read, ptr %read, align 8
  %write = getelementptr inbounds %struct.fsi_master, ptr %call.i191, i32 0, i32 6
  %27 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @aspeed_master_write, ptr %write, align 4
  %send_break = getelementptr inbounds %struct.fsi_master, ptr %call.i191, i32 0, i32 8
  %28 = ptrtoint ptr %send_break to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @aspeed_master_break, ptr %send_break, align 4
  %term = getelementptr inbounds %struct.fsi_master, ptr %call.i191, i32 0, i32 7
  %29 = ptrtoint ptr %term to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @aspeed_master_term, ptr %term, align 8
  %link_enable = getelementptr inbounds %struct.fsi_master, ptr %call.i191, i32 0, i32 9
  %30 = ptrtoint ptr %link_enable to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @aspeed_master_link_enable, ptr %link_enable, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i191, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.fsi_master_aspeed, ptr %call.i191, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @fsi_master_aspeed_probe.__key) #9
  call fastcc void @aspeed_master_init(ptr noundef nonnull %call.i191)
  %call122 = call i32 @fsi_master_register(ptr noundef nonnull %call.i191) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %err_release

if.end125:                                        ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call128 = call ptr @get_device(ptr noundef nonnull %call.i191) #9
  br label %cleanup

err_release:                                      ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %33) #9
  call void @clk_unprepare(ptr noundef %33) #9
  br label %cleanup

cleanup:                                          ; preds = %err_release, %if.end125, %do.end94, %do.end34, %do.end23, %if.then12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i203, %do.end ], [ %4, %if.then12 ], [ %12, %do.end23 ], [ %call29, %do.end34 ], [ %call.i194, %do.end94 ], [ %call122, %err_release ], [ 0, %if.end125 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_master_aspeed_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fsi_master_unregister(ptr noundef %1) #9
  %clk = getelementptr inbounds %struct.fsi_master_aspeed, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %clk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_cfam_reset(ptr nocapture noundef %aspeed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %aspeed, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef 3) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cfam_reset_gpio = getelementptr inbounds %struct.fsi_master_aspeed, ptr %aspeed, i32 0, i32 5
  %3 = ptrtoint ptr %cfam_reset_gpio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %cfam_reset_gpio, align 8
  %call6 = tail call i32 @device_create_file(ptr noundef %1, ptr noundef nonnull @dev_attr_cfam_reset) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_gpiod_put(ptr noundef %1, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call6, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_master_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_master_read(ptr noundef %master, i32 noundef %link, i8 noundef zeroext %id, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %id)
  %cmp = icmp ugt i8 %id, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %id to i32
  %shl = shl nuw nsw i32 %conv, 21
  %or = or i32 %shl, %addr
  %mul = shl i32 %link, 19
  %add = add i32 %or, %mul
  %lock = getelementptr inbounds %struct.fsi_master_aspeed, ptr %master, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %if.end.done_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb4
    i32 4, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb4, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 3, %sw.bb7 ], [ 1, %sw.bb4 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %add8 = add i32 %add, -1610612736
  %call.i27 = tail call fastcc i32 @__opb_read(ptr noundef %master, i32 noundef %add8, i32 noundef %.sink, ptr noundef %val) #9
  %call10 = tail call fastcc i32 @check_errors(ptr noundef %master, i32 noundef %call.i27)
  br label %done

done:                                             ; preds = %sw.epilog, %if.end.done_crit_edge
  %ret.1 = phi i32 [ %call10, %sw.epilog ], [ -22, %if.end.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_master_write(ptr noundef %master, i32 noundef %link, i8 noundef zeroext %id, i32 noundef %addr, ptr nocapture noundef readonly %val, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %id)
  %cmp = icmp ugt i8 %id, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %id to i32
  %shl = shl nuw nsw i32 %conv, 21
  %or = or i32 %shl, %addr
  %mul = shl i32 %link, 19
  %add = add i32 %or, %mul
  %lock = getelementptr inbounds %struct.fsi_master_aspeed, ptr %master, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %0 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %size, label %if.end.done_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb7
  ]

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add3 = add i32 %add, -1610612736
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %conv.i = zext i8 %2 to i32
  %call.i = tail call fastcc i32 @__opb_write(ptr noundef %master, i32 noundef %add3, i32 noundef %conv.i, i32 noundef 0) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add5 = add i32 %add, -1610612736
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val, align 2
  %conv.i26 = zext i16 %4 to i32
  %call.i27 = tail call fastcc i32 @__opb_write(ptr noundef %master, i32 noundef %add5, i32 noundef %conv.i26, i32 noundef 1) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add8 = add i32 %add, -1610612736
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call.i28 = tail call fastcc i32 @__opb_write(ptr noundef %master, i32 noundef %add8, i32 noundef %6, i32 noundef 3) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb4, %sw.bb
  %ret.0 = phi i32 [ %call.i28, %sw.bb7 ], [ %call.i27, %sw.bb4 ], [ %call.i, %sw.bb ]
  %call10 = tail call fastcc i32 @check_errors(ptr noundef %master, i32 noundef %ret.0)
  br label %done

done:                                             ; preds = %sw.epilog, %if.end.done_crit_edge
  %ret.1 = phi i32 [ %call10, %sw.epilog ], [ -22, %if.end.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_master_break(ptr noundef %master, i32 noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %link, 19
  %lock.i = getelementptr inbounds %struct.fsi_master_aspeed, ptr %master, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %add8.i = add i32 %mul.i, -1610612736
  %call.i28.i = tail call fastcc i32 @__opb_write(ptr noundef %master, i32 noundef %add8.i, i32 noundef -1059192832, i32 noundef 3) #9
  %call10.i = tail call fastcc i32 @check_errors(ptr noundef %master, i32 noundef %call.i28.i) #9
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  ret i32 %call10.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_master_term(ptr noundef %master, i32 noundef %link, i8 noundef zeroext %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %id)
  %cmp.i = icmp ugt i8 %id, 3
  br i1 %cmp.i, label %entry.aspeed_master_write.exit_crit_edge, label %if.end.i

entry.aspeed_master_write.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %aspeed_master_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %id to i32
  %shl.i = shl nuw nsw i32 %conv.i, 21
  %mul.i = shl i32 %link, 19
  %lock.i = getelementptr inbounds %struct.fsi_master_aspeed, ptr %master, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %add.i = add i32 %mul.i, -1610612732
  %add8.i = add i32 %add.i, %shl.i
  %call.i28.i = tail call fastcc i32 @__opb_write(ptr noundef %master, i32 noundef %add8.i, i32 noundef -322961408, i32 noundef 3) #9
  %call10.i = tail call fastcc i32 @check_errors(ptr noundef %master, i32 noundef %call.i28.i) #9
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %aspeed_master_write.exit

aspeed_master_write.exit:                         ; preds = %if.end.i, %entry.aspeed_master_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end.i ], [ -22, %entry.aspeed_master_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_master_link_enable(ptr noundef %master, i32 noundef %link, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %link, 32
  %rem16 = and i32 %link, 31
  %shr = lshr i32 -2147483648, %rem16
  %lock = getelementptr inbounds %struct.fsi_master_aspeed, ptr %master, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %mul1 = shl nsw i32 %div, 2
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %mul1, -2147483616
  %call.i = tail call fastcc i32 @__opb_write(ptr noundef %master, i32 noundef %add, i32 noundef %shr, i32 noundef 3) #9
  br label %done

if.end:                                           ; preds = %entry
  %add2 = add i32 %mul1, -2147483624
  %call.i17 = tail call fastcc i32 @__opb_write(ptr noundef %master, i32 noundef %add2, i32 noundef %shr, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool4.not = icmp eq i32 %call.i17, 0
  br i1 %tobool4.not, label %while.body.preheader, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

while.body.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  br label %done

done:                                             ; preds = %while.body.preheader, %if.end.done_crit_edge, %if.then
  %ret.0 = phi i32 [ %call.i17, %if.end.done_crit_edge ], [ %call.i, %if.then ], [ 0, %while.body.preheader ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_master_init(ptr nocapture noundef readonly %aspeed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483440, i32 noundef 1006632960, i32 noundef 3) #9
  %call.i1 = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483440, i32 noundef 1006632960, i32 noundef 3) #9
  %call.i2 = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147482912, i32 noundef 49152, i32 noundef 3) #9
  %0 = load i16, ptr @aspeed_fsi_divisor, align 2
  %conv = zext i16 %0 to i32
  %and.i = shl i32 %conv, 18
  %shl.i = and i32 %and.i, 268173312
  %and.i3 = shl nuw nsw i32 %conv, 8
  %shl.i4 = and i32 %and.i3, 261888
  %or = or i32 %shl.i4, %shl.i
  %or7 = or i32 %or, 1879048208
  %dev = getelementptr inbounds %struct.fsi_master_aspeed, ptr %aspeed, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef %or7, i32 noundef %conv) #12
  %call.i5 = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483648, i32 noundef %or7, i32 noundef 3) #9
  %call.i6 = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483644, i32 noundef -65536, i32 noundef 3) #9
  %call.i7 = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483624, i32 noundef -1, i32 noundef 3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #9
  %call.i8 = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483616, i32 noundef -1, i32 noundef 3) #9
  %call.i9 = tail call fastcc i32 @__opb_read(ptr noundef %aspeed, i32 noundef -2147483536, i32 noundef 3, ptr noundef null) #9
  %call.i10 = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483440, i32 noundef 805306368, i32 noundef 3) #9
  %call.i11 = tail call fastcc i32 @__opb_read(ptr noundef %aspeed, i32 noundef -2147483624, i32 noundef 3, ptr noundef null) #9
  %call.i12 = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483184, i32 noundef -2147483648, i32 noundef 3) #9
  %call.i13 = tail call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483184, i32 noundef 1073741824, i32 noundef 3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfam_reset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.fsi_master_aspeed, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %cfam_reset_gpio = getelementptr inbounds %struct.fsi_master_aspeed, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cfam_reset_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfam_reset_gpio, align 8
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #9
  %4 = ptrtoint ptr %cfam_reset_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfam_reset_gpio, align 8
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__opb_read(ptr nocapture noundef readonly %aspeed, i32 noundef %addr, i32 noundef %transfer_size, ptr noundef writeonly %out) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %aspeed, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !146
  %2 = tail call i32 @llvm.bswap.i32(i32 %transfer_size)
  %add.ptr2 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #9, !srcloc !146
  %3 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %add.ptr3 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !146
  %add.ptr4 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %add.ptr5 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #9, !srcloc !146
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 500000
  %add.ptr16 = getelementptr i8, ptr %1, i32 72
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !156
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19.not = icmp eq i32 %and, 0
  br i1 %cmp19.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call22 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %if.then25, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !156
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %.pre = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br label %for.end

for.end:                                          ; preds = %if.then25, %for.cond.for.end_crit_edge
  %and37.pre-phi = phi i1 [ %phi.cmp, %if.then25 ], [ false, %for.cond.for.end_crit_edge ]
  %reg.0 = phi i32 [ %7, %if.then25 ], [ %5, %for.cond.for.end_crit_edge ]
  %add.ptr41 = getelementptr i8, ptr %1, i32 128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %add.ptr47 = getelementptr i8, ptr %1, i32 132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #9, !srcloc !156
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !156
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call fastcc void @trace_fsi_master_aspeed_opb_read(i32 noundef %addr, i32 noundef %transfer_size, i32 noundef %10, i32 noundef %12, i32 noundef %reg.0)
  br i1 %and37.pre-phi, label %for.end.cleanup_crit_edge, label %if.end59

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %for.end
  %13 = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool61.not = icmp eq i32 %13, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  %tobool64.not = icmp eq ptr %out, null
  br i1 %tobool64.not, label %if.end63.cleanup_crit_edge, label %if.then65

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %if.end63
  %14 = zext i32 %transfer_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %transfer_size, label %if.then65.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb66
    i32 3, label %sw.bb68
  ]

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %10 to i8
  %15 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %out, align 1
  br label %cleanup

sw.bb66:                                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %conv67 = trunc i32 %10 to i16
  %16 = ptrtoint ptr %out to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv67, ptr %out, align 2
  br label %cleanup

sw.bb68:                                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %out, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb68, %sw.bb66, %sw.bb, %if.then65.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.cleanup_crit_edge ], [ -5, %if.end59.cleanup_crit_edge ], [ -22, %if.then65.cleanup_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.bb66 ], [ 0, %sw.bb68 ], [ 0, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_aspeed_opb_read(i32 noundef %addr, i32 noundef %size, i32 noundef %result, i32 noundef %status, i32 noundef %irq_status) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_read, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_aspeed_opb_read, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !142

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !163
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_read, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %addr, i32 noundef %size, i32 noundef %result, i32 noundef %status, i32 noundef %irq_status) #9
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !164
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !164
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !142

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !165
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fsi_master_aspeed_opb_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_fsi_master_aspeed_opb_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 32, ptr noundef nonnull @.str.44) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !166
  %38 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_errors(ptr nocapture noundef readonly %aspeed, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  %mresp0 = alloca i32, align 4
  %mstap0 = alloca i32, align 4
  %mesrb0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_error, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@check_errors, %if.then)) #9
          to label %if.end [label %if.then], !srcloc !162

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mresp0) #9
  %0 = ptrtoint ptr %mresp0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mresp0, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mstap0) #9
  %1 = ptrtoint ptr %mstap0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mstap0, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mesrb0) #9
  %2 = ptrtoint ptr %mesrb0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mesrb0, align 4, !annotation !144
  %call.i = call fastcc i32 @__opb_read(ptr noundef %aspeed, i32 noundef -2147483440, i32 noundef 3, ptr noundef nonnull %mresp0) #9
  %call.i14 = call fastcc i32 @__opb_read(ptr noundef %aspeed, i32 noundef -2147483440, i32 noundef 3, ptr noundef nonnull %mstap0) #9
  %call.i15 = call fastcc i32 @__opb_read(ptr noundef %aspeed, i32 noundef -2147483184, i32 noundef 3, ptr noundef nonnull %mesrb0) #9
  %3 = ptrtoint ptr %mresp0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mresp0, align 4
  %5 = ptrtoint ptr %mstap0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mstap0, align 4
  %7 = ptrtoint ptr %mesrb0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mesrb0, align 4
  call fastcc void @trace_fsi_master_aspeed_opb_error(i32 noundef %4, i32 noundef %6, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mesrb0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mstap0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mresp0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %err)
  %cmp = icmp eq i32 %err, -5
  br i1 %cmp, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %call.i16 = call fastcc i32 @__opb_write(ptr noundef %aspeed, i32 noundef -2147483440, i32 noundef 536870912, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not = icmp eq i32 %call.i16, 0
  br i1 %tobool.not, label %if.then4.if.end8_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ %err, %if.end8 ], [ %call.i16, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_aspeed_opb_error(i32 noundef %mresp0, i32 noundef %mstap0, i32 noundef %mesrb0) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_error, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_aspeed_opb_error, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !142

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !167
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_error, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %mresp0, i32 noundef %mstap0, i32 noundef %mesrb0) #9
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !168
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !168
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !142

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !165
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fsi_master_aspeed_opb_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_fsi_master_aspeed_opb_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 73, ptr noundef nonnull @.str.44) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !166
  %38 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
define internal fastcc i32 @__opb_write(ptr nocapture noundef readonly %aspeed, i32 noundef %addr, i32 noundef %val, i32 noundef %transfer_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %aspeed, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !146
  %2 = tail call i32 @llvm.bswap.i32(i32 %transfer_size)
  %add.ptr2 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #9, !srcloc !146
  %3 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %add.ptr3 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !146
  %4 = tail call i32 @llvm.bswap.i32(i32 %val)
  %add.ptr4 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #9, !srcloc !146
  %add.ptr5 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %add.ptr6 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #9, !srcloc !146
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 500000
  %add.ptr17 = getelementptr i8, ptr %1, i32 72
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !156
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %and = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp20.not = icmp eq i32 %and, 0
  br i1 %cmp20.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call23 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %if.then26, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #9, !srcloc !156
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %.pre = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br label %for.end

for.end:                                          ; preds = %if.then26, %for.cond.for.end_crit_edge
  %and38.pre-phi = phi i1 [ %phi.cmp, %if.then26 ], [ false, %for.cond.for.end_crit_edge ]
  %reg.0 = phi i32 [ %8, %if.then26 ], [ %6, %for.cond.for.end_crit_edge ]
  %add.ptr42 = getelementptr i8, ptr %1, i32 128
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #9, !srcloc !156
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call fastcc void @trace_fsi_master_aspeed_opb_write(i32 noundef %addr, i32 noundef %val, i32 noundef %transfer_size, i32 noundef %10, i32 noundef %reg.0)
  %and49 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %. = select i1 %tobool50.not, i32 0, i32 -5
  %spec.select = select i1 %and38.pre-phi, i32 -110, i32 %.
  ret i32 %spec.select
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_fsi_master_aspeed_opb_write(i32 noundef %addr, i32 noundef %val, i32 noundef %size, i32 noundef %status, i32 noundef %irq_status) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_write, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_fsi_master_aspeed_opb_write, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !162

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !142

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !173
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_write, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %addr, i32 noundef %val, i32 noundef %size, i32 noundef %status, i32 noundef %irq_status) #9
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !174
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !142

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !165
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_fsi_master_aspeed_opb_write, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_fsi_master_aspeed_opb_write.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_fsi_master_aspeed_opb_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 55, ptr noundef nonnull @.str.44) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !166
  %38 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_master_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !102, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !117, !118, !120, !121, !122, !123, !124, !125, !127, !128, !129, !130}
!llvm.named.register.sp = !{!132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__tracepoint_fsi_master_aspeed_opb_read, !1, !"__tracepoint_fsi_master_aspeed_opb_read", i1 false, i1 false}
!1 = !{!"../include/trace/events/fsi_master_aspeed.h", i32 11, i32 1}
!2 = !{ptr @__tracepoint_ptr_fsi_master_aspeed_opb_read, !1, !"__tracepoint_ptr_fsi_master_aspeed_opb_read", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_fsi_master_aspeed_opb_read, !1, !"__SCK__tp_func_fsi_master_aspeed_opb_read", i1 false, i1 false}
!4 = !{ptr @__tracepoint_fsi_master_aspeed_opb_write, !5, !"__tracepoint_fsi_master_aspeed_opb_write", i1 false, i1 false}
!5 = !{!"../include/trace/events/fsi_master_aspeed.h", i32 34, i32 1}
!6 = !{ptr @__tracepoint_ptr_fsi_master_aspeed_opb_write, !5, !"__tracepoint_ptr_fsi_master_aspeed_opb_write", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_fsi_master_aspeed_opb_write, !5, !"__SCK__tp_func_fsi_master_aspeed_opb_write", i1 false, i1 false}
!8 = !{ptr @__tracepoint_fsi_master_aspeed_opb_error, !9, !"__tracepoint_fsi_master_aspeed_opb_error", i1 false, i1 false}
!9 = !{!"../include/trace/events/fsi_master_aspeed.h", i32 57, i32 1}
!10 = !{ptr @__tracepoint_ptr_fsi_master_aspeed_opb_error, !9, !"__tracepoint_ptr_fsi_master_aspeed_opb_error", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_fsi_master_aspeed_opb_error, !9, !"__SCK__tp_func_fsi_master_aspeed_opb_error", i1 false, i1 false}
!12 = !{ptr @event_class_fsi_master_aspeed_opb_read, !1, !"event_class_fsi_master_aspeed_opb_read", i1 false, i1 false}
!13 = !{ptr @event_fsi_master_aspeed_opb_read, !1, !"event_fsi_master_aspeed_opb_read", i1 false, i1 false}
!14 = !{ptr @__event_fsi_master_aspeed_opb_read, !1, !"__event_fsi_master_aspeed_opb_read", i1 false, i1 false}
!15 = !{ptr @event_class_fsi_master_aspeed_opb_write, !5, !"event_class_fsi_master_aspeed_opb_write", i1 false, i1 false}
!16 = !{ptr @event_fsi_master_aspeed_opb_write, !5, !"event_fsi_master_aspeed_opb_write", i1 false, i1 false}
!17 = !{ptr @__event_fsi_master_aspeed_opb_write, !5, !"__event_fsi_master_aspeed_opb_write", i1 false, i1 false}
!18 = !{ptr @event_class_fsi_master_aspeed_opb_error, !9, !"event_class_fsi_master_aspeed_opb_error", i1 false, i1 false}
!19 = !{ptr @event_fsi_master_aspeed_opb_error, !9, !"event_fsi_master_aspeed_opb_error", i1 false, i1 false}
!20 = !{ptr @__event_fsi_master_aspeed_opb_error, !9, !"__event_fsi_master_aspeed_opb_error", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_fsi_master_aspeed_opb_read, !1, !"__bpf_trace_tp_map_fsi_master_aspeed_opb_read", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_fsi_master_aspeed_opb_write, !5, !"__bpf_trace_tp_map_fsi_master_aspeed_opb_write", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_fsi_master_aspeed_opb_error, !9, !"__bpf_trace_tp_map_fsi_master_aspeed_opb_error", i1 false, i1 false}
!24 = !{ptr @__param_bus_div, !25, !"__param_bus_div", i1 false, i1 false}
!25 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 93, i32 1}
!26 = !{ptr @__UNIQUE_ID_bus_divtype268, !25, !"__UNIQUE_ID_bus_divtype268", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_fsi_master_aspeed__269_665_fsi_master_aspeed_driver_init6, !28, !"__initcall__kmod_fsi_master_aspeed__269_665_fsi_master_aspeed_driver_init6", i1 false, i1 false}
!28 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 665, i32 1}
!29 = !{ptr @__exitcall_fsi_master_aspeed_driver_exit, !28, !"__exitcall_fsi_master_aspeed_driver_exit", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_file270, !31, !"__UNIQUE_ID_file270", i1 false, i1 false}
!31 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 666, i32 1}
!32 = !{ptr @__UNIQUE_ID_license271, !31, !"__UNIQUE_ID_license271", i1 false, i1 false}
!33 = !{ptr @__tpstrtab_fsi_master_aspeed_opb_read, !1, !"__tpstrtab_fsi_master_aspeed_opb_read", i1 false, i1 false}
!34 = !{ptr @__tpstrtab_fsi_master_aspeed_opb_write, !5, !"__tpstrtab_fsi_master_aspeed_opb_write", i1 false, i1 false}
!35 = !{ptr @__tpstrtab_fsi_master_aspeed_opb_error, !9, !"__tpstrtab_fsi_master_aspeed_opb_error", i1 false, i1 false}
!36 = !{ptr @str__fsi_master_aspeed__trace_system_name, !37, !"str__fsi_master_aspeed__trace_system_name", i1 false, i1 false}
!37 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!38 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @trace_event_fields_fsi_master_aspeed_opb_read, !1, !"trace_event_fields_fsi_master_aspeed_opb_read", i1 false, i1 false}
!46 = !{ptr @trace_event_type_funcs_fsi_master_aspeed_opb_read, !1, !"trace_event_type_funcs_fsi_master_aspeed_opb_read", i1 false, i1 false}
!47 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @print_fmt_fsi_master_aspeed_opb_read, !1, !"print_fmt_fsi_master_aspeed_opb_read", i1 false, i1 false}
!49 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @trace_event_fields_fsi_master_aspeed_opb_write, !5, !"trace_event_fields_fsi_master_aspeed_opb_write", i1 false, i1 false}
!51 = !{ptr @trace_event_type_funcs_fsi_master_aspeed_opb_write, !5, !"trace_event_type_funcs_fsi_master_aspeed_opb_write", i1 false, i1 false}
!52 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @print_fmt_fsi_master_aspeed_opb_write, !5, !"print_fmt_fsi_master_aspeed_opb_write", i1 false, i1 false}
!54 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @trace_event_fields_fsi_master_aspeed_opb_error, !9, !"trace_event_fields_fsi_master_aspeed_opb_error", i1 false, i1 false}
!58 = !{ptr @trace_event_type_funcs_fsi_master_aspeed_opb_error, !9, !"trace_event_type_funcs_fsi_master_aspeed_opb_error", i1 false, i1 false}
!59 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @print_fmt_fsi_master_aspeed_opb_error, !9, !"print_fmt_fsi_master_aspeed_opb_error", i1 false, i1 false}
!61 = !{ptr @__param_str_bus_div, !25, !"__param_str_bus_div", i1 false, i1 false}
!62 = !{ptr @aspeed_fsi_divisor, !63, !"aspeed_fsi_divisor", i1 false, i1 false}
!63 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 92, i32 12}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 658, i32 12}
!66 = !{ptr @fsi_master_aspeed_driver, !67, !"fsi_master_aspeed_driver", i1 false, i1 false}
!67 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 656, i32 31}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 541, i32 3}
!70 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @fsi_master_aspeed_probe._entry, !69, !"_entry", i1 false, i1 false}
!75 = !{ptr @fsi_master_aspeed_probe._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 557, i32 3}
!78 = !{ptr @fsi_master_aspeed_probe._entry.20, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @fsi_master_aspeed_probe._entry_ptr.22, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 562, i32 3}
!82 = !{ptr @fsi_master_aspeed_probe._entry.23, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @fsi_master_aspeed_probe._entry_ptr.25, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 568, i32 3}
!86 = !{ptr @fsi_master_aspeed_probe._entry.26, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @fsi_master_aspeed_probe._entry_ptr.28, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 597, i32 3}
!90 = !{ptr @fsi_master_aspeed_probe._entry.29, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @fsi_master_aspeed_probe._entry_ptr.31, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 603, i32 2}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @fsi_master_aspeed_probe._entry.32, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @fsi_master_aspeed_probe._entry_ptr.35, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @fsi_master_aspeed_probe.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 618, i32 2}
!99 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 495, i32 46}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 502, i32 42}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 523, i32 3}
!106 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @tacoma_cabled_fsi_fixup._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @tacoma_cabled_fsi_fixup._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 469, i32 38}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 461, i32 8}
!113 = !{ptr @dev_attr_cfam_reset, !112, !"dev_attr_cfam_reset", i1 false, i1 false}
!114 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!115 = !{ptr @.str.43, !1, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!117 = !{ptr @.str.44, !1, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!120 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!122 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!123 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!124 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 415, i32 2}
!127 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @aspeed_master_init._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @aspeed_master_init._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @fsi_master_aspeed_match, !131, !"fsi_master_aspeed_match", i1 false, i1 false}
!131 = !{!"../drivers/fsi/fsi-master-aspeed.c", i32 650, i32 34}
!132 = !{!"sp"}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{!"branch_weights", i32 2000, i32 1}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{!"auto-init"}
!145 = !{i64 2155616198}
!146 = !{i64 4826699}
!147 = !{i64 2155616820}
!148 = !{i64 2155617387}
!149 = !{i64 2155617794}
!150 = !{i64 2155618215}
!151 = !{i64 2155618635}
!152 = !{i64 2155619061}
!153 = !{i64 2155619487}
!154 = !{i64 2155619906}
!155 = !{i64 2155584923}
!156 = !{i64 4827117}
!157 = !{i64 2155586812}
!158 = !{i64 2155587274}
!159 = !{i64 2155587745}
!160 = !{i64 2155588212}
!161 = !{i64 2155588679}
!162 = !{i64 2148736195, i64 2148736200, i64 2148736213, i64 2148736257, i64 2148736291, i64 2148736312}
!163 = !{i64 2153088571}
!164 = !{i64 2153088862}
!165 = !{i64 2149312281}
!166 = !{i64 2149313317}
!167 = !{i64 2153125248}
!168 = !{i64 2153125509}
!169 = !{i64 2155580665}
!170 = !{i64 2155582554}
!171 = !{i64 2155583016}
!172 = !{i64 2155583487}
!173 = !{i64 2153107159}
!174 = !{i64 2153107446}
