; ModuleID = '/llk/IR_all_yes/drivers/tee/optee/smc_abi.c_pt.bc'
source_filename = "../drivers/tee/optee/smc_abi.c"
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.optee_ops = type { ptr, ptr, ptr }
%struct.tee_desc = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.tee_shm_pool_mgr_ops = type { ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tee_driver_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_optee_invoke_fn_begin = type { %struct.trace_entry, ptr, [8 x i32], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_optee_invoke_fn_end = type { %struct.trace_entry, ptr, [4 x i32], [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%union.anon.109 = type { %struct.arm_smccc_res }
%union.anon.107 = type { %struct.arm_smccc_res }
%union.anon.106 = type { %struct.arm_smccc_res }
%union.anon.105 = type { %struct.arm_smccc_res }
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
%struct.optee_smc_call_get_os_revision_result = type { i32, i32, i32, i32 }
%struct.optee = type { ptr, ptr, ptr, ptr, %union.anon.103, %struct.optee_call_queue, %struct.optee_notif, %struct.optee_supp, ptr, i32, i8, ptr, %struct.work_struct }
%union.anon.103 = type { %struct.optee_ffa }
%struct.optee_ffa = type { ptr, ptr, %struct.mutex, %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.optee_call_queue = type { %struct.mutex, %struct.list_head }
%struct.optee_notif = type { i32, %struct.spinlock, %struct.list_head, ptr }
%struct.optee_supp = type { %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.completion }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.optee_call_waiter = type { %struct.list_head, %struct.completion }
%union.anon.110 = type { %struct.arm_smccc_res }
%struct.tee_shm = type { ptr, i32, ptr, i32, i32, ptr, i32, %struct.refcount_struct, i32, i32, i64 }
%struct.optee_msg_arg = type { i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.optee_msg_param] }
%struct.optee_msg_param = type { i64, %union.anon.101 }
%union.anon.101 = type { %struct.optee_msg_param_tmem }
%struct.optee_msg_param_tmem = type { i64, i64, i64 }
%struct.anon.108 = type { [511 x i64], i64 }
%struct.optee_rpc_param = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tee_param = type { i64, %union.anon.102 }
%union.anon.102 = type { %struct.tee_param_value }
%struct.tee_param_value = type { i64, i64, i64 }
%struct.tee_param_memref = type { i32, i32, ptr }

@__tpstrtab_optee_invoke_fn_begin = internal constant [22 x i8] c"optee_invoke_fn_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_optee_invoke_fn_begin = dso_local global %struct.static_call_key { ptr @__traceiter_optee_invoke_fn_begin }, align 4
@__tracepoint_optee_invoke_fn_begin = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_optee_invoke_fn_begin, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_optee_invoke_fn_begin, ptr null, ptr @__traceiter_optee_invoke_fn_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_optee_invoke_fn_begin = internal constant ptr @__tracepoint_optee_invoke_fn_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_optee_invoke_fn_end = internal constant [20 x i8] c"optee_invoke_fn_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_optee_invoke_fn_end = dso_local global %struct.static_call_key { ptr @__traceiter_optee_invoke_fn_end }, align 4
@__tracepoint_optee_invoke_fn_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_optee_invoke_fn_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_optee_invoke_fn_end, ptr null, ptr @__traceiter_optee_invoke_fn_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_optee_invoke_fn_end = internal constant ptr @__tracepoint_optee_invoke_fn_end, section "__tracepoints_ptrs", align 4
@str__optee__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"optee\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_optee_invoke_fn_begin = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 32, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_optee_invoke_fn_begin = internal global %struct.trace_event_class { ptr @str__optee__trace_system_name, ptr @trace_event_raw_event_optee_invoke_fn_begin, ptr @perf_trace_optee_invoke_fn_begin, ptr @trace_event_reg, ptr @trace_event_fields_optee_invoke_fn_begin, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_optee_invoke_fn_begin, i64 24), ptr getelementptr (i8, ptr @event_class_optee_invoke_fn_begin, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_optee_invoke_fn_begin = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_optee_invoke_fn_begin, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_optee_invoke_fn_begin = internal global { [168 x i8], [56 x i8] } { [168 x i8] c"\22param=%p (%x, %x, %x, %x, %x, %x, %x, %x)\22, REC->param, REC->args[0], REC->args[1], REC->args[2], REC->args[3], REC->args[4], REC->args[5], REC->args[6], REC->args[7]\00", [56 x i8] zeroinitializer }, align 32
@event_optee_invoke_fn_begin = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_optee_invoke_fn_begin, %union.anon.1 { ptr @__tracepoint_optee_invoke_fn_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_optee_invoke_fn_begin }, ptr @print_fmt_optee_invoke_fn_begin, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_optee_invoke_fn_begin = internal global ptr @event_optee_invoke_fn_begin, section "_ftrace_events", align 4
@trace_event_fields_optee_invoke_fn_end = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.0 { %struct.anon { ptr @.str.6, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_optee_invoke_fn_end = internal global %struct.trace_event_class { ptr @str__optee__trace_system_name, ptr @trace_event_raw_event_optee_invoke_fn_end, ptr @perf_trace_optee_invoke_fn_end, ptr @trace_event_reg, ptr @trace_event_fields_optee_invoke_fn_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_optee_invoke_fn_end, i64 24), ptr getelementptr (i8, ptr @event_class_optee_invoke_fn_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_optee_invoke_fn_end = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_optee_invoke_fn_end, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_optee_invoke_fn_end = internal global { [104 x i8], [56 x i8] } { [104 x i8] c"\22param=%p ret (%lx, %lx, %lx, %lx)\22, REC->param, REC->rets[0], REC->rets[1], REC->rets[2], REC->rets[3]\00", [56 x i8] zeroinitializer }, align 32
@event_optee_invoke_fn_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_optee_invoke_fn_end, %union.anon.1 { ptr @__tracepoint_optee_invoke_fn_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_optee_invoke_fn_end }, ptr @print_fmt_optee_invoke_fn_end, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_optee_invoke_fn_end = internal global ptr @event_optee_invoke_fn_end, section "_ftrace_events", align 4
@__bpf_trace_tp_map_optee_invoke_fn_begin = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_optee_invoke_fn_begin, ptr @__bpf_trace_optee_invoke_fn_begin, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_optee_invoke_fn_end = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_optee_invoke_fn_end, ptr @__bpf_trace_optee_invoke_fn_end, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@optee_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @optee_probe, ptr @optee_smc_remove, ptr @optee_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @optee_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"param\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"u32[8]\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"args\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"param=%p (%x, %x, %x, %x, %x, %x, %x, %x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unsigned long[4]\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rets\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"param=%p ret (%lx, %lx, %lx, %lx)\0A\00", [61 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"optee\00", [26 x i8] zeroinitializer }, align 32
@optee_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"linaro,optee-tz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@optee_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014optee: api uid mismatch\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"optee_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/tee/optee/smc_abi.c\00", [36 x i8] zeroinitializer }, align 32
@optee_probe._entry_ptr = internal global ptr @optee_probe._entry, section ".printk_index", align 4
@optee_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.11, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014optee: api revision mismatch\0A\00", [32 x i8] zeroinitializer }, align 32
@optee_probe._entry_ptr.14 = internal global ptr @optee_probe._entry.12, section ".printk_index", align 4
@optee_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.11, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014optee: capabilities mismatch\0A\00", [32 x i8] zeroinitializer }, align 32
@optee_probe._entry_ptr.17 = internal global ptr @optee_probe._entry.15, section ".printk_index", align 4
@optee_ops = internal constant { %struct.optee_ops, [20 x i8] } { %struct.optee_ops { ptr @optee_smc_do_call_with_arg, ptr @optee_to_msg_param, ptr @optee_from_msg_param }, [20 x i8] zeroinitializer }, align 32
@optee_clnt_desc = internal constant { %struct.tee_desc, [16 x i8] } { %struct.tee_desc { ptr @.str.65, ptr @optee_clnt_ops, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@optee_supp_desc = internal constant { %struct.tee_desc, [16 x i8] } { %struct.tee_desc { ptr @.str.66, ptr @optee_supp_ops, ptr null, i32 1 }, [16 x i8] zeroinitializer }, align 32
@optee_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&optee->call_queue.mutex\00", [39 x i8] zeroinitializer }, align 32
@optee_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.11, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013optee: platform_get_irq: ret %d\0A\00", [61 x i8] zeroinitializer }, align 32
@optee_probe._entry_ptr.21 = internal global ptr @optee_probe._entry.19, section ".printk_index", align 4
@optee_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.11, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016optee: Asynchronous notifications enabled\0A\00", [51 x i8] zeroinitializer }, align 32
@optee_probe._entry_ptr.24 = internal global ptr @optee_probe._entry.22, section ".printk_index", align 4
@optee_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.10, ptr @.str.11, i32 1460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016optee: dynamic shared memory is enabled\0A\00", [53 x i8] zeroinitializer }, align 32
@optee_probe._entry_ptr.27 = internal global ptr @optee_probe._entry.25, section ".printk_index", align 4
@optee_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str.11, i32 1466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016optee: initialized driver\0A\00", [35 x i8] zeroinitializer }, align 32
@optee_probe._entry_ptr.30 = internal global ptr @optee_probe._entry.28, section ".printk_index", align 4
@get_invoke_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.11, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016optee: probing for conduit method.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_invoke_func\00", [16 x i8] zeroinitializer }, align 32
@get_invoke_func._entry_ptr = internal global ptr @get_invoke_func._entry, section ".printk_index", align 4
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"method\00", [25 x i8] zeroinitializer }, align 32
@get_invoke_func._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.11, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014optee: missing \22method\22 property\0A\00", [60 x i8] zeroinitializer }, align 32
@get_invoke_func._entry_ptr.36 = internal global ptr @get_invoke_func._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hvc\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smc\00", [28 x i8] zeroinitializer }, align 32
@get_invoke_func._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.11, i32 1286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014optee: invalid \22method\22 property: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@get_invoke_func._entry_ptr.41 = internal global ptr @get_invoke_func._entry.39, section ".printk_index", align 4
@optee_msg_get_os_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.11, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016optee: revision %lu.%lu (%08lx)\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"optee_msg_get_os_revision\00", [38 x i8] zeroinitializer }, align 32
@optee_msg_get_os_revision._entry_ptr = internal global ptr @optee_msg_get_os_revision._entry, section ".printk_index", align 4
@optee_msg_get_os_revision._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.11, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016optee: revision %lu.%lu\00", [38 x i8] zeroinitializer }, align 32
@optee_msg_get_os_revision._entry_ptr.46 = internal global ptr @optee_msg_get_os_revision._entry.44, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@pool_ops = internal constant { %struct.tee_shm_pool_mgr_ops, [20 x i8] } { %struct.tee_shm_pool_mgr_ops { ptr @pool_op_alloc, ptr @pool_op_free, ptr @pool_op_destroy_poolmgr }, [20 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@optee_config_shm_memremap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.11, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013optee: static shm service not available\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"optee_config_shm_memremap\00", [38 x i8] zeroinitializer }, align 32
@optee_config_shm_memremap._entry_ptr = internal global ptr @optee_config_shm_memremap._entry, section ".printk_index", align 4
@optee_config_shm_memremap._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.11, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013optee: only normal cached shared memory supported\0A\00", [43 x i8] zeroinitializer }, align 32
@optee_config_shm_memremap._entry_ptr.51 = internal global ptr @optee_config_shm_memremap._entry.49, section ".printk_index", align 4
@optee_config_shm_memremap._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.11, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013optee: too small shared memory area\0A\00", [57 x i8] zeroinitializer }, align 32
@optee_config_shm_memremap._entry_ptr.54 = internal global ptr @optee_config_shm_memremap._entry.52, section ".printk_index", align 4
@optee_config_shm_memremap._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.11, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013optee: shared memory ioremap failed\0A\00", [57 x i8] zeroinitializer }, align 32
@optee_config_shm_memremap._entry_ptr.57 = internal global ptr @optee_config_shm_memremap._entry.55, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/tee/optee/optee_trace.h\00", [32 x i8] zeroinitializer }, align 32
@trace_optee_invoke_fn_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_optee_invoke_fn_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@optee_handle_rpc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.11, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014optee: Unknown RPC func 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"optee_handle_rpc\00", [47 x i8] zeroinitializer }, align 32
@optee_handle_rpc._entry_ptr = internal global ptr @optee_handle_rpc._entry, section ".printk_index", align 4
@handle_rpc_func_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.11, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013optee: %s: tee_shm_get_va %p failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"handle_rpc_func_cmd\00", [44 x i8] zeroinitializer }, align 32
@handle_rpc_func_cmd._entry_ptr = internal global ptr @handle_rpc_func_cmd._entry, section ".printk_index", align 4
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"optee-clnt\00", [21 x i8] zeroinitializer }, align 32
@optee_clnt_ops = internal constant { %struct.tee_driver_ops, [52 x i8] } { %struct.tee_driver_ops { ptr @optee_get_version, ptr @optee_smc_open, ptr @optee_release, ptr @optee_open_session, ptr @optee_close_session, ptr @optee_invoke_func, ptr @optee_cancel_req, ptr null, ptr null, ptr @optee_shm_register, ptr @optee_shm_unregister }, [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"optee-supp\00", [21 x i8] zeroinitializer }, align 32
@optee_supp_ops = internal constant { %struct.tee_driver_ops, [52 x i8] } { %struct.tee_driver_ops { ptr @optee_get_version, ptr @optee_smc_open, ptr @optee_release_supp, ptr null, ptr null, ptr null, ptr null, ptr @optee_supp_recv, ptr @optee_supp_send, ptr @optee_shm_register_supp, ptr @optee_shm_unregister_supp }, [52 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"optee_notification\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [9 x i64] [i64 7, i64 64, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.73 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@___asan_gen_.75 = private unnamed_addr constant [30 x i8] c"str__optee__trace_system_name\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 36, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [41 x i8] c"trace_event_fields_optee_invoke_fn_begin\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_optee_invoke_fn_begin\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [32 x i8] c"print_fmt_optee_invoke_fn_begin\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [28 x i8] c"event_optee_invoke_fn_begin\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [39 x i8] c"trace_event_fields_optee_invoke_fn_end\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_optee_invoke_fn_end\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [30 x i8] c"print_fmt_optee_invoke_fn_end\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"event_optee_invoke_fn_end\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"optee_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1499, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 40, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1504, i32 11 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"optee_dt_match\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1493, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1348, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1355, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1361, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [10 x i8] c"optee_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1049, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"optee_clnt_desc\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1026, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"optee_supp_desc\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1042, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1412, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1434, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1445, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1460, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1466, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1274, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1276, i32 39 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1277, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1281, i32 14 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1283, i32 19 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1286, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1093, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1096, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [9 x i8] c"pool_ops\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 553, i32 42 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1193, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1198, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1208, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1214, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [37 x i8] c"../drivers/tee/optee/./optee_trace.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 19, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 108, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 802, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 735, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1027, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant [15 x i8] c"optee_clnt_ops\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1014, i32 36 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1043, i32 10 }
@___asan_gen_.309 = private unnamed_addr constant [15 x i8] c"optee_supp_ops\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1032, i32 36 }
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.313 = private constant [31 x i8] c"../drivers/tee/optee/smc_abi.c\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 960, i32 10 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__bpf_trace_tp_map_optee_invoke_fn_begin, ptr @__bpf_trace_tp_map_optee_invoke_fn_end, ptr @__event_optee_invoke_fn_begin, ptr @__event_optee_invoke_fn_end, ptr @__tracepoint_optee_invoke_fn_begin, ptr @__tracepoint_optee_invoke_fn_end, ptr @__tracepoint_ptr_optee_invoke_fn_begin, ptr @__tracepoint_ptr_optee_invoke_fn_end, ptr @event_class_optee_invoke_fn_begin, ptr @event_class_optee_invoke_fn_end, ptr @event_optee_invoke_fn_begin, ptr @event_optee_invoke_fn_end, ptr @get_invoke_func._entry, ptr @get_invoke_func._entry.34, ptr @get_invoke_func._entry.39, ptr @get_invoke_func._entry_ptr, ptr @get_invoke_func._entry_ptr.36, ptr @get_invoke_func._entry_ptr.41, ptr @handle_rpc_func_cmd._entry, ptr @handle_rpc_func_cmd._entry_ptr, ptr @optee_config_shm_memremap._entry, ptr @optee_config_shm_memremap._entry.49, ptr @optee_config_shm_memremap._entry.52, ptr @optee_config_shm_memremap._entry.55, ptr @optee_config_shm_memremap._entry_ptr, ptr @optee_config_shm_memremap._entry_ptr.51, ptr @optee_config_shm_memremap._entry_ptr.54, ptr @optee_config_shm_memremap._entry_ptr.57, ptr @optee_handle_rpc._entry, ptr @optee_handle_rpc._entry_ptr, ptr @optee_msg_get_os_revision._entry, ptr @optee_msg_get_os_revision._entry.44, ptr @optee_msg_get_os_revision._entry_ptr, ptr @optee_msg_get_os_revision._entry_ptr.46, ptr @optee_probe._entry, ptr @optee_probe._entry.12, ptr @optee_probe._entry.15, ptr @optee_probe._entry.19, ptr @optee_probe._entry.22, ptr @optee_probe._entry.25, ptr @optee_probe._entry.28, ptr @optee_probe._entry_ptr, ptr @optee_probe._entry_ptr.14, ptr @optee_probe._entry_ptr.17, ptr @optee_probe._entry_ptr.21, ptr @optee_probe._entry_ptr.24, ptr @optee_probe._entry_ptr.27, ptr @optee_probe._entry_ptr.30, ptr @str__optee__trace_system_name, ptr @trace_event_fields_optee_invoke_fn_begin, ptr @trace_event_type_funcs_optee_invoke_fn_begin, ptr @print_fmt_optee_invoke_fn_begin, ptr @trace_event_fields_optee_invoke_fn_end, ptr @trace_event_type_funcs_optee_invoke_fn_end, ptr @print_fmt_optee_invoke_fn_end, ptr @optee_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @optee_dt_match, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @optee_ops, ptr @optee_clnt_desc, ptr @optee_supp_desc, ptr @optee_probe.__key, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @pool_ops, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @optee_clnt_ops, ptr @.str.66, ptr @optee_supp_ops, ptr @.str.67], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__optee__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_optee_invoke_fn_begin to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_optee_invoke_fn_begin to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_optee_invoke_fn_begin to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_optee_invoke_fn_begin to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_optee_invoke_fn_end to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_optee_invoke_fn_end to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_optee_invoke_fn_end to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_optee_invoke_fn_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_clnt_desc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_supp_desc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_invoke_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_invoke_func._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_invoke_func._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_msg_get_os_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_msg_get_os_revision._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pool_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_config_shm_memremap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_config_shm_memremap._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_config_shm_memremap._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_config_shm_memremap._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_handle_rpc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_rpc_func_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_clnt_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_supp_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_optee_invoke_fn_begin(ptr nocapture readnone %__data, ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_optee_invoke_fn_begin, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %param) #12
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
define dso_local i32 @__traceiter_optee_invoke_fn_end(ptr nocapture readnone %__data, ptr noundef %param, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_optee_invoke_fn_end, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %param, ptr noundef %res) #12
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
define internal void @trace_event_raw_event_optee_invoke_fn_begin(ptr noundef %__data, ptr noundef %param) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !165

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !166

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %param6 = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_begin, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %param6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %param, ptr %param6, align 4
  %args = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_begin, ptr %call3, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %args, ptr %param, i32 32)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_optee_invoke_fn_begin(ptr noundef %__data, ptr noundef %param) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !167
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !155) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %param17 = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_begin, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %param17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %param, ptr %param17, align 4
  %args = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_begin, ptr %call13, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %args, ptr %param, i32 32)
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #12
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
define internal void @trace_event_raw_event_optee_invoke_fn_end(ptr noundef %__data, ptr noundef %param, ptr nocapture noundef readonly %res) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !165

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !166

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %param6 = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_end, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %param6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %param, ptr %param6, align 4
  %rets = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_end, ptr %call3, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %rets, ptr %res, i32 16)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_optee_invoke_fn_end(ptr noundef %__data, ptr noundef %param, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !167
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  %24 = call i32 @llvm.read_register.i32(metadata !155) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %param17 = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_end, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %param17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %param, ptr %param17, align 4
  %rets = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_end, ptr %call13, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %rets, ptr %res, i32 16)
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_optee_invoke_fn_begin(ptr noundef %__data, ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %param to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_optee_invoke_fn_end(ptr noundef %__data, ptr noundef %param, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %param to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %res to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_smc_abi_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @optee_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_smc_abi_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @optee_driver) #12
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
define internal i32 @trace_raw_output_optee_invoke_fn_begin(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %param = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_begin, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 4
  %args = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_begin, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.trace_event_raw_optee_invoke_fn_begin, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.trace_event_raw_optee_invoke_fn_begin, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.trace_event_raw_optee_invoke_fn_begin, ptr %1, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.trace_event_raw_optee_invoke_fn_begin, ptr %1, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.trace_event_raw_optee_invoke_fn_begin, ptr %1, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.trace_event_raw_optee_invoke_fn_begin, ptr %1, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.trace_event_raw_optee_invoke_fn_begin, ptr %1, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #12
  %call15 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_optee_invoke_fn_end(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %param = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_end, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 4
  %rets = getelementptr inbounds %struct.trace_event_raw_optee_invoke_fn_end, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rets, align 4
  %arrayidx2 = getelementptr %struct.trace_event_raw_optee_invoke_fn_end, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.trace_event_raw_optee_invoke_fn_end, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.trace_event_raw_optee_invoke_fn_end, ptr %1, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #12
  %call7 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %res.i240 = alloca %struct.arm_smccc_res, align 4
  %res.i225 = alloca %union.anon.109, align 4
  %res.i218 = alloca %union.anon.107, align 4
  %res.i212 = alloca %union.anon.106, align 4
  %res.i206 = alloca %union.anon.105, align 4
  %res.i = alloca %struct.arm_smccc_res, align 4
  %method.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %method.i) #12
  %0 = ptrtoint ptr %method.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %method.i, align 4, !annotation !167
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #15
  %call1.i = call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull %method.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end4.i

do.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  br label %get_invoke_func.exit.thread

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %method.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %method.i, align 4
  %call8.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.37, ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.get_invoke_func.exit_crit_edge, label %if.else.i

if.end.i.get_invoke_func.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_invoke_func.exit

if.else.i:                                        ; preds = %if.end.i
  %call11.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.38, ptr noundef %2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.else.i.get_invoke_func.exit_crit_edge, label %do.end18.i

if.else.i.get_invoke_func.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_invoke_func.exit

do.end18.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %2) #15
  br label %get_invoke_func.exit.thread

get_invoke_func.exit.thread:                      ; preds = %do.end18.i, %do.end4.i
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -22 to ptr), %do.end18.i ], [ inttoptr (i32 -6 to ptr), %do.end4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %method.i) #12
  br label %if.then

get_invoke_func.exit:                             ; preds = %if.else.i.get_invoke_func.exit_crit_edge, %if.end.i.get_invoke_func.exit_crit_edge
  %cmp.i = phi i1 [ icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @optee_smccc_hvc), %if.end.i.get_invoke_func.exit_crit_edge ], [ icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @optee_smccc_smc), %if.else.i.get_invoke_func.exit_crit_edge ]
  %retval.0.i = phi ptr [ @optee_smccc_hvc, %if.end.i.get_invoke_func.exit_crit_edge ], [ @optee_smccc_smc, %if.else.i.get_invoke_func.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %method.i) #12
  br i1 %cmp.i, label %get_invoke_func.exit.if.then_crit_edge, label %if.end

get_invoke_func.exit.if.then_crit_edge:           ; preds = %get_invoke_func.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %get_invoke_func.exit.if.then_crit_edge, %get_invoke_func.exit.thread
  %retval.0.i247 = phi ptr [ %retval.0.i.ph, %get_invoke_func.exit.thread ], [ %retval.0.i, %get_invoke_func.exit.if.then_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i247 to i32
  br label %cleanup131

if.end:                                           ; preds = %get_invoke_func.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #12
  %4 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i, i32 0, i32 3
  %6 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void %retval.0.i(i32 noundef -1090453759, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i) #12
  %7 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 944747488, i32 %8)
  %cmp.i203 = icmp eq i32 %8, 944747488
  br i1 %cmp.i203, label %land.lhs.true.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.end
  %9 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -403172893, i32 %11)
  %cmp1.i = icmp eq i32 %11, -403172893
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1352466430, i32 %13)
  %cmp3.i = icmp eq i32 %13, -1352466430
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true2.i.do.end_crit_edge

land.lhs.true2.i.do.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1512717029, i32 %15)
  %cmp5.i = icmp eq i32 %15, -1512717029
  br i1 %cmp5.i, label %if.end7, label %land.lhs.true4.i.do.end_crit_edge

land.lhs.true4.i.do.end_crit_edge:                ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %land.lhs.true4.i.do.end_crit_edge, %land.lhs.true2.i.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %if.end.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #12
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #15
  br label %cleanup131

if.end7:                                          ; preds = %land.lhs.true4.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i206) #12
  %16 = call ptr @memset(ptr %res.i206, i32 0, i32 16)
  call void %retval.0.i(i32 noundef -1308622847, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i206) #12
  %build_id.i = getelementptr inbounds %struct.optee_smc_call_get_os_revision_result, ptr %res.i206, i32 0, i32 2
  %17 = ptrtoint ptr %build_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %build_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i207 = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %res.i206 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %res.i206, align 4
  %minor7.i = getelementptr inbounds %struct.optee_smc_call_get_os_revision_result, ptr %res.i206, i32 0, i32 1
  %21 = ptrtoint ptr %minor7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %minor7.i, align 4
  br i1 %tobool.not.i207, label %do.end4.i210, label %do.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call.i208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %20, i32 noundef %22, i32 noundef %18) #15
  br label %optee_msg_get_os_revision.exit

do.end4.i210:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %20, i32 noundef %22) #15
  br label %optee_msg_get_os_revision.exit

optee_msg_get_os_revision.exit:                   ; preds = %do.end4.i210, %do.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i206) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i212) #12
  %23 = call ptr @memset(ptr %res.i212, i32 255, i32 16)
  call void %retval.0.i(i32 noundef -1090453757, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i212) #12
  %24 = ptrtoint ptr %res.i212 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res.i212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i213 = icmp eq i32 %25, 2
  br i1 %cmp.i213, label %land.lhs.true.i215, label %optee_msg_get_os_revision.exit.do.end12_crit_edge

optee_msg_get_os_revision.exit.do.end12_crit_edge: ; preds = %optee_msg_get_os_revision.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true.i215:                               ; preds = %optee_msg_get_os_revision.exit
  %26 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i212, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp1.i214 = icmp sgt i32 %28, -1
  br i1 %cmp1.i214, label %if.end15, label %land.lhs.true.i215.do.end12_crit_edge

land.lhs.true.i215.do.end12_crit_edge:            ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

do.end12:                                         ; preds = %land.lhs.true.i215.do.end12_crit_edge, %optee_msg_get_os_revision.exit.do.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i212) #12
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  br label %cleanup131

if.end15:                                         ; preds = %land.lhs.true.i215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i212) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i218) #12
  %29 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i218, i32 0, i32 2
  %30 = call ptr @memset(ptr %res.i218, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i219 = icmp eq i32 %31, 1
  %spec.select.i = zext i1 %cmp.i219 to i32
  call void %retval.0.i(i32 noundef -1308622839, i32 noundef %spec.select.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i218) #12
  %32 = ptrtoint ptr %res.i218 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %res.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1.not.i = icmp eq i32 %33, 0
  br i1 %cmp1.not.i, label %if.end3.i, label %do.end20

if.end3.i:                                        ; preds = %if.end15
  %34 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i218, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %and.i = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i220 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i220, label %if.end3.i.if.end23_crit_edge, label %if.then4.i

if.end3.i.if.end23_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %29, align 4
  br label %if.end23

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i218) #12
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #15
  br label %cleanup131

if.end23:                                         ; preds = %if.then4.i, %if.end3.i.if.end23_crit_edge
  %max_notif_value.0.ph = phi i32 [ 255, %if.end3.i.if.end23_crit_edge ], [ %38, %if.then4.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i218) #12
  %and = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end23.land.lhs.true_crit_edge, label %if.then24

if.end23.land.lhs.true_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then24:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 8) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then24.land.lhs.true_crit_edge, label %optee_shm_pool_alloc_pages.exit.i

if.then24.land.lhs.true_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

optee_shm_pool_alloc_pages.exit.i:                ; preds = %if.then24
  %40 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @pool_ops, ptr %call7.i.i.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %optee_shm_pool_alloc_pages.exit.i.if.end26_crit_edge, label %if.end.i221

optee_shm_pool_alloc_pages.exit.i.if.end26_crit_edge: ; preds = %optee_shm_pool_alloc_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end.i221:                                      ; preds = %optee_shm_pool_alloc_pages.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i22.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 8) #17
  %tobool.not.i23.i = icmp eq ptr %call7.i.i.i22.i, null
  br i1 %tobool.not.i23.i, label %if.end.i221.cleanup.sink.split.i_crit_edge, label %optee_shm_pool_alloc_pages.exit26.i

if.end.i221.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i221
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

optee_shm_pool_alloc_pages.exit26.i:              ; preds = %if.end.i221
  %42 = ptrtoint ptr %call7.i.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @pool_ops, ptr %call7.i.i.i22.i, align 8
  %cmp.i27.i = icmp ugt ptr %call7.i.i.i22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27.i, label %optee_shm_pool_alloc_pages.exit26.i.cleanup.sink.split.i_crit_edge, label %if.end5.i

optee_shm_pool_alloc_pages.exit26.i.cleanup.sink.split.i_crit_edge: ; preds = %optee_shm_pool_alloc_pages.exit26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end5.i:                                        ; preds = %optee_shm_pool_alloc_pages.exit26.i
  %call6.i222 = call ptr @tee_shm_pool_alloc(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %call7.i.i.i22.i) #12
  %cmp.i28.i = icmp ugt ptr %call6.i222, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28.i, label %if.then8.i, label %if.end5.i.if.end26_crit_edge

if.end5.i.if.end26_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i.i.i, align 8
  %destroy_poolmgr.i29.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %destroy_poolmgr.i29.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %destroy_poolmgr.i29.i, align 4
  call void %46(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then8.i, %optee_shm_pool_alloc_pages.exit26.i.cleanup.sink.split.i_crit_edge, %if.end.i221.cleanup.sink.split.i_crit_edge
  %call7.i.i.i22.sink36.i = phi ptr [ %call7.i.i.i22.i, %if.then8.i ], [ %call7.i.i.i.i, %if.end.i221.cleanup.sink.split.i_crit_edge ], [ %call7.i.i.i.i, %optee_shm_pool_alloc_pages.exit26.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi ptr [ %call6.i222, %if.then8.i ], [ inttoptr (i32 -12 to ptr), %if.end.i221.cleanup.sink.split.i_crit_edge ], [ %call7.i.i.i22.i, %optee_shm_pool_alloc_pages.exit26.i.cleanup.sink.split.i_crit_edge ]
  %47 = ptrtoint ptr %call7.i.i.i22.sink36.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i.i22.sink36.i, align 8
  %destroy_poolmgr.i30.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %destroy_poolmgr.i30.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %destroy_poolmgr.i30.i, align 4
  call void %50(ptr noundef nonnull %call7.i.i.i22.sink36.i) #12
  br label %if.end26

if.end26:                                         ; preds = %cleanup.sink.split.i, %if.end5.i.if.end26_crit_edge, %optee_shm_pool_alloc_pages.exit.i.if.end26_crit_edge
  %pool.0 = phi ptr [ %call7.i.i.i.i, %optee_shm_pool_alloc_pages.exit.i.if.end26_crit_edge ], [ %call6.i222, %if.end5.i.if.end26_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %cmp.i224 = icmp ugt ptr %pool.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %if.end26.land.lhs.true_crit_edge, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.end26.land.lhs.true_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end26.land.lhs.true_crit_edge, %if.then24.land.lhs.true_crit_edge, %if.end23.land.lhs.true_crit_edge
  %pool.0257 = phi ptr [ %pool.0, %if.end26.land.lhs.true_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then24.land.lhs.true_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end23.land.lhs.true_crit_edge ]
  %and28 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true.if.end32_crit_edge, label %if.then30

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i225) #12
  %51 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i225, i32 0, i32 1
  %52 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i225, i32 0, i32 2
  %53 = call ptr @memset(ptr %res.i225, i32 255, i32 16)
  call void %retval.0.i(i32 noundef -1308622841, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i225) #12
  %54 = ptrtoint ptr %res.i225 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %res.i225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not.i = icmp eq i32 %55, 0
  br i1 %cmp.not.i, label %if.end.i228, label %do.end.i227

do.end.i227:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %call.i226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  br label %optee_config_shm_memremap.exit

if.end.i228:                                      ; preds = %if.then30
  %56 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i225, i32 0, i32 3
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp2.not.i = icmp eq i32 %58, 1
  br i1 %cmp2.not.i, label %if.end10.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %optee_config_shm_memremap.exit

if.end10.i:                                       ; preds = %if.end.i228
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %51, align 4
  %add.i = add i32 %60, 4095
  %div84.i = and i32 %add.i, -4096
  %61 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %52, align 4
  %add14.i = add i32 %62, %60
  %sub16.i = and i32 %add14.i, -4096
  %sub17.i = sub i32 %sub16.i, %div84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub17.i)
  %cmp18.i = icmp ult i32 %sub17.i, 8192
  br i1 %cmp18.i, label %do.end22.i, label %if.end26.i

do.end22.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #15
  br label %optee_config_shm_memremap.exit

if.end26.i:                                       ; preds = %if.end10.i
  %call27.i = call ptr @memremap(i32 noundef %div84.i, i32 noundef %sub17.i, i32 noundef 1) #12
  %tobool.not.i230 = icmp eq ptr %call27.i, null
  br i1 %tobool.not.i230, label %do.end31.i, label %if.end35.i

do.end31.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #15
  br label %optee_config_shm_memremap.exit

if.end35.i:                                       ; preds = %if.end26.i
  %63 = ptrtoint ptr %call27.i to i32
  %call36.i = call ptr @tee_shm_pool_mgr_alloc_res_mem(i32 noundef %63, i32 noundef %div84.i, i32 noundef 4096, i32 noundef 3) #12
  %cmp.i.i231 = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i231, label %if.end35.i.err_memunmap.i_crit_edge, label %if.end39.i

if.end35.i.err_memunmap.i_crit_edge:              ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_memunmap.i

if.end39.i:                                       ; preds = %if.end35.i
  %add40.i = add i32 %63, 4096
  %add41.i = add i32 %div84.i, 4096
  %sub42.i = add i32 %sub17.i, -4096
  %call43.i = call ptr @tee_shm_pool_mgr_alloc_res_mem(i32 noundef %add40.i, i32 noundef %add41.i, i32 noundef %sub42.i, i32 noundef 12) #12
  %cmp.i85.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85.i, label %if.end39.i.err_free_priv_mgr.i_crit_edge, label %if.end46.i

if.end39.i.err_free_priv_mgr.i_crit_edge:         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_priv_mgr.i

if.end46.i:                                       ; preds = %if.end39.i
  %call47.i = call ptr @tee_shm_pool_alloc(ptr noundef %call36.i, ptr noundef %call43.i) #12
  %cmp.i86.i = icmp ugt ptr %call47.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86.i, label %err_free_dmabuf_mgr.i, label %if.end46.i.optee_config_shm_memremap.exit_crit_edge

if.end46.i.optee_config_shm_memremap.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %optee_config_shm_memremap.exit

err_free_dmabuf_mgr.i:                            ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %call43.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call43.i, align 4
  %destroy_poolmgr.i.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %destroy_poolmgr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %destroy_poolmgr.i.i, align 4
  call void %67(ptr noundef %call43.i) #12
  br label %err_free_priv_mgr.i

err_free_priv_mgr.i:                              ; preds = %err_free_dmabuf_mgr.i, %if.end39.i.err_free_priv_mgr.i_crit_edge
  %rc.0.i = phi ptr [ %call43.i, %if.end39.i.err_free_priv_mgr.i_crit_edge ], [ %call47.i, %err_free_dmabuf_mgr.i ]
  %68 = ptrtoint ptr %call36.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call36.i, align 4
  %destroy_poolmgr.i87.i = getelementptr inbounds %struct.tee_shm_pool_mgr_ops, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %destroy_poolmgr.i87.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %destroy_poolmgr.i87.i, align 4
  call void %71(ptr noundef %call36.i) #12
  br label %err_memunmap.i

err_memunmap.i:                                   ; preds = %err_free_priv_mgr.i, %if.end35.i.err_memunmap.i_crit_edge
  %rc.1.i = phi ptr [ %call36.i, %if.end35.i.err_memunmap.i_crit_edge ], [ %rc.0.i, %err_free_priv_mgr.i ]
  call void @memunmap(ptr noundef nonnull %call27.i) #12
  br label %optee_config_shm_memremap.exit

optee_config_shm_memremap.exit:                   ; preds = %err_memunmap.i, %if.end46.i.optee_config_shm_memremap.exit_crit_edge, %do.end31.i, %do.end22.i, %do.end6.i, %do.end.i227
  %memremaped_shm.0 = phi ptr [ null, %do.end22.i ], [ null, %do.end31.i ], [ null, %err_memunmap.i ], [ null, %do.end6.i ], [ null, %do.end.i227 ], [ %call27.i, %if.end46.i.optee_config_shm_memremap.exit_crit_edge ]
  %retval.0.i232 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end22.i ], [ inttoptr (i32 -22 to ptr), %do.end31.i ], [ %rc.1.i, %err_memunmap.i ], [ inttoptr (i32 -22 to ptr), %do.end6.i ], [ inttoptr (i32 -2 to ptr), %do.end.i227 ], [ %call47.i, %if.end46.i.optee_config_shm_memremap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i225) #12
  br label %if.end32

if.end32:                                         ; preds = %optee_config_shm_memremap.exit, %land.lhs.true.if.end32_crit_edge, %if.end26.if.end32_crit_edge
  %memremaped_shm.1 = phi ptr [ null, %land.lhs.true.if.end32_crit_edge ], [ %memremaped_shm.0, %optee_config_shm_memremap.exit ], [ null, %if.end26.if.end32_crit_edge ]
  %pool.1 = phi ptr [ %pool.0257, %land.lhs.true.if.end32_crit_edge ], [ %retval.0.i232, %optee_config_shm_memremap.exit ], [ %pool.0, %if.end26.if.end32_crit_edge ]
  %cmp.i233 = icmp ugt ptr %pool.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %pool.1 to i32
  br label %cleanup131

if.end36:                                         ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 788) #17
  %tobool38.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool38.not, label %if.end36.err_free_pool_crit_edge, label %if.end40

if.end36.err_free_pool_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_pool

if.end40:                                         ; preds = %if.end36
  %ops = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @optee_ops, ptr %ops, align 8
  %75 = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %retval.0.i, ptr %75, align 8
  %sec_caps42 = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %77 = ptrtoint ptr %sec_caps42 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %36, ptr %sec_caps42, align 8
  %call43 = call ptr @tee_device_alloc(ptr noundef nonnull @optee_clnt_desc, ptr noundef null, ptr noundef %pool.1, ptr noundef nonnull %call7.i.i) #12
  %cmp.i234 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %call43 to i32
  br label %err_free_optee

if.end47:                                         ; preds = %if.end40
  %teedev48 = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %teedev48 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call43, ptr %teedev48, align 4
  %call49 = call ptr @tee_device_alloc(ptr noundef nonnull @optee_supp_desc, ptr noundef null, ptr noundef %pool.1, ptr noundef nonnull %call7.i.i) #12
  %cmp.i235 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %call49 to i32
  br label %err_unreg_teedev

if.end53:                                         ; preds = %if.end47
  %81 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call49, ptr %call7.i.i, align 8
  %82 = ptrtoint ptr %teedev48 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %teedev48, align 4
  %call55 = call i32 @tee_device_register(ptr noundef %83) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.err_unreg_supp_teedev_crit_edge

if.end53.err_unreg_supp_teedev_crit_edge:         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unreg_supp_teedev

if.end58:                                         ; preds = %if.end53
  %84 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call7.i.i, align 8
  %call60 = call i32 @tee_device_register(ptr noundef %85) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.body64, label %if.end58.err_unreg_supp_teedev_crit_edge

if.end58.err_unreg_supp_teedev_crit_edge:         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unreg_supp_teedev

do.body64:                                        ; preds = %if.end58
  %call_queue = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %call_queue, ptr noundef nonnull @.str.18, ptr noundef nonnull @optee_probe.__key) #12
  %waiters = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 5, i32 1
  %86 = ptrtoint ptr %waiters to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %waiters, ptr %waiters, align 4
  %prev.i = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %87 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %waiters, ptr %prev.i, align 8
  %supp = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 7
  call void @optee_supp_init(ptr noundef %supp) #12
  %memremaped_shm68 = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %88 = ptrtoint ptr %memremaped_shm68 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %memremaped_shm.1, ptr %memremaped_shm68, align 4
  %pool69 = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 8
  %89 = ptrtoint ptr %pool69 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %pool.1, ptr %pool69, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %91 = ptrtoint ptr %teedev48 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %teedev48, align 4
  %call71 = call ptr @teedev_open(ptr noundef %92) #12
  %cmp.i236 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then73, label %if.end75

if.then73:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %call71 to i32
  br label %err_supp_uninit

if.end75:                                         ; preds = %do.body64
  %ctx76 = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 3
  %94 = ptrtoint ptr %ctx76 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call71, ptr %ctx76, align 4
  %call77 = call i32 @optee_notif_init(ptr noundef nonnull %call7.i.i, i32 noundef %max_notif_value.0.ph) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.err_close_ctx_crit_edge

if.end75.err_close_ctx_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_close_ctx

if.end80:                                         ; preds = %if.end75
  br i1 %tobool.not.i220, label %if.end80.if.end103_crit_edge, label %if.then83

if.end80.if.end103_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then83:                                        ; preds = %if.end80
  %call84 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp = icmp slt i32 %call84, 0
  br i1 %cmp, label %do.end88, label %if.end91

do.end88:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call84) #15
  br label %err_notif_uninit

if.end91:                                         ; preds = %if.then83
  %call.i237 = call i32 @request_threaded_irq(i32 noundef %call84, ptr noundef nonnull @notif_irq_handler, ptr noundef nonnull @notif_irq_thread_fn, i32 noundef 0, ptr noundef nonnull @.str.67, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool.not.i238 = icmp eq i32 %call.i237, 0
  br i1 %tobool.not.i238, label %cleanup, label %if.then94

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  call void @irq_dispose_mapping(i32 noundef %call84) #12
  br label %err_notif_uninit

cleanup:                                          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  %notif_irq.i = getelementptr inbounds %struct.optee, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %notif_irq.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call84, ptr %notif_irq.i, align 4
  %96 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %75, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i240) #12
  %98 = call ptr @memset(ptr %res.i240, i32 255, i32 16)
  call void %97(i32 noundef -1308622832, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i240) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i240) #12
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #15
  br label %if.end103

if.end103:                                        ; preds = %cleanup, %if.end80.if.end103_crit_edge
  call fastcc void @optee_disable_unmapped_shm_cache(ptr noundef nonnull %call7.i.i)
  call fastcc void @optee_enable_shm_cache(ptr noundef nonnull %call7.i.i)
  %99 = ptrtoint ptr %sec_caps42 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sec_caps42, align 8
  %and105 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end103.if.end113_crit_edge, label %do.end110

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %if.end113

if.end113:                                        ; preds = %do.end110, %if.end103.if.end113_crit_edge
  %call114 = call i32 @optee_enumerate_devices(i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %do.end120, label %err_disable_shm_cache

do.end120:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  br label %cleanup131

err_disable_shm_cache:                            ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @__optee_disable_shm_cache(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #12
  call fastcc void @optee_smc_notif_uninit_irq(ptr noundef nonnull %call7.i.i)
  call void @optee_unregister_devices() #12
  br label %err_notif_uninit

err_notif_uninit:                                 ; preds = %err_disable_shm_cache, %if.then94, %do.end88
  %rc.1 = phi i32 [ %call114, %err_disable_shm_cache ], [ %call.i237, %if.then94 ], [ %call84, %do.end88 ]
  call void @optee_notif_uninit(ptr noundef nonnull %call7.i.i) #12
  br label %err_close_ctx

err_close_ctx:                                    ; preds = %err_notif_uninit, %if.end75.err_close_ctx_crit_edge
  %rc.2 = phi i32 [ %call77, %if.end75.err_close_ctx_crit_edge ], [ %rc.1, %err_notif_uninit ]
  call void @teedev_close_context(ptr noundef %call71) #12
  br label %err_supp_uninit

err_supp_uninit:                                  ; preds = %err_close_ctx, %if.then73
  %rc.3 = phi i32 [ %93, %if.then73 ], [ %rc.2, %err_close_ctx ]
  call void @optee_supp_uninit(ptr noundef %supp) #12
  call void @mutex_destroy(ptr noundef %call_queue) #12
  br label %err_unreg_supp_teedev

err_unreg_supp_teedev:                            ; preds = %err_supp_uninit, %if.end58.err_unreg_supp_teedev_crit_edge, %if.end53.err_unreg_supp_teedev_crit_edge
  %rc.4 = phi i32 [ %call55, %if.end53.err_unreg_supp_teedev_crit_edge ], [ %call60, %if.end58.err_unreg_supp_teedev_crit_edge ], [ %rc.3, %err_supp_uninit ]
  %101 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call7.i.i, align 8
  call void @tee_device_unregister(ptr noundef %102) #12
  br label %err_unreg_teedev

err_unreg_teedev:                                 ; preds = %err_unreg_supp_teedev, %if.then51
  %rc.5 = phi i32 [ %80, %if.then51 ], [ %rc.4, %err_unreg_supp_teedev ]
  %103 = ptrtoint ptr %teedev48 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %teedev48, align 4
  call void @tee_device_unregister(ptr noundef %104) #12
  br label %err_free_optee

err_free_optee:                                   ; preds = %err_unreg_teedev, %if.then45
  %rc.6 = phi i32 [ %78, %if.then45 ], [ %rc.5, %err_unreg_teedev ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %err_free_pool

err_free_pool:                                    ; preds = %err_free_optee, %if.end36.err_free_pool_crit_edge
  %rc.7 = phi i32 [ %rc.6, %err_free_optee ], [ -12, %if.end36.err_free_pool_crit_edge ]
  call void @tee_shm_pool_free(ptr noundef %pool.1) #12
  %tobool128.not = icmp eq ptr %memremaped_shm.1, null
  br i1 %tobool128.not, label %err_free_pool.cleanup131_crit_edge, label %if.then129

err_free_pool.cleanup131_crit_edge:               ; preds = %err_free_pool
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup131

if.then129:                                       ; preds = %err_free_pool
  call void @__sanitizer_cov_trace_pc() #14
  call void @memunmap(ptr noundef nonnull %memremaped_shm.1) #12
  br label %cleanup131

cleanup131:                                       ; preds = %if.then129, %err_free_pool.cleanup131_crit_edge, %do.end120, %if.then34, %do.end20, %do.end12, %do.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %72, %if.then34 ], [ 0, %do.end120 ], [ -22, %do.end20 ], [ -22, %do.end12 ], [ -22, %do.end ], [ %rc.7, %if.then129 ], [ %rc.7, %err_free_pool.cleanup131_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_smc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @__optee_disable_shm_cache(ptr noundef %1, i1 noundef zeroext true) #12
  tail call fastcc void @optee_smc_notif_uninit_irq(ptr noundef %1)
  tail call void @optee_remove_common(ptr noundef %1) #12
  %memremaped_shm = getelementptr inbounds %struct.optee, ptr %1, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %memremaped_shm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memremaped_shm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @memunmap(ptr noundef nonnull %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optee_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @__optee_disable_shm_cache(ptr noundef %1, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_device_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_supp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @teedev_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_notif_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @optee_disable_unmapped_shm_cache(ptr noundef %optee) unnamed_addr #0 align 64 {
entry:
  %w.i = alloca %struct.optee_call_waiter, align 4
  %res.i = alloca %union.anon.110, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %w.i) #12
  %0 = call ptr @memset(ptr %w.i, i32 255, i32 64)
  %call_queue.i = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 5
  call void @optee_cq_wait_init(ptr noundef %call_queue.i, ptr noundef nonnull %w.i) #12
  %1 = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup8.i, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #12
  %2 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void %4(i32 noundef -1308622838, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i) #12
  %5 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.else.i [
    i32 7, label %__optee_disable_shm_cache.exit
    i32 0, label %while.cond.i.cleanup8.i_crit_edge
  ]

while.cond.i.cleanup8.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup8.i

if.else.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @optee_cq_wait_for_completion(ptr noundef %call_queue.i, ptr noundef nonnull %w.i) #12
  br label %cleanup8.i

cleanup8.i:                                       ; preds = %if.else.i, %while.cond.i.cleanup8.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #12
  br label %while.cond.i

__optee_disable_shm_cache.exit:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #12
  call void @optee_cq_wait_final(ptr noundef %call_queue.i, ptr noundef nonnull %w.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %w.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @optee_enable_shm_cache(ptr noundef %optee) unnamed_addr #0 align 64 {
entry:
  %w = alloca %struct.optee_call_waiter, align 4
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %w) #12
  %0 = call ptr @memset(ptr %w, i32 255, i32 64)
  %call_queue = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 5
  call void @optee_cq_wait_init(ptr noundef %call_queue, ptr noundef nonnull %w) #12
  %1 = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #12
  %2 = call ptr @memset(ptr %res, i32 255, i32 16)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void %4(i32 noundef -1308622837, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res) #12
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %entry.while.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  br label %cleanup

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @optee_cq_wait_for_completion(ptr noundef %call_queue, ptr noundef nonnull %w) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #12
  %7 = call ptr @memset(ptr %res, i32 255, i32 16)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  call void %9(i32 noundef -1308622837, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res) #12
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %cleanup.while.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #12
  call void @optee_cq_wait_final(ptr noundef %call_queue, ptr noundef nonnull %w) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %w) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_enumerate_devices(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @optee_smc_notif_uninit_irq(ptr noundef %optee) unnamed_addr #0 align 64 {
entry:
  %msg_arg.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_caps = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 4, i32 0, i32 2
  %0 = ptrtoint ptr %sec_caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sec_caps, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %ctx = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 3
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_arg.i.i) #12
  %4 = ptrtoint ptr %msg_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg_arg.i.i, align 4, !annotation !167
  %call.i.i = call ptr @optee_get_msg_arg(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %msg_arg.i.i) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.optee_smc_stop_async_notif.exit_crit_edge, label %if.end.i.i

if.then.optee_smc_stop_async_notif.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %optee_smc_stop_async_notif.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %msg_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg_arg.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %6, align 8
  %call4.i.i = call i32 @optee_smc_do_call_with_arg(ptr noundef %3, ptr noundef %call.i.i) #12
  call void @tee_shm_free(ptr noundef %call.i.i) #12
  br label %optee_smc_stop_async_notif.exit

optee_smc_stop_async_notif.exit:                  ; preds = %if.end.i.i, %if.then.optee_smc_stop_async_notif.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_arg.i.i) #12
  %notif_irq = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 4, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %notif_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %notif_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %optee_smc_stop_async_notif.exit.if.end6_crit_edge, label %if.then2

optee_smc_stop_async_notif.exit.if.end6_crit_edge: ; preds = %optee_smc_stop_async_notif.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %optee_smc_stop_async_notif.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call ptr @free_irq(i32 noundef %9, ptr noundef %optee) #12
  %10 = ptrtoint ptr %notif_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %notif_irq, align 4
  call void @irq_dispose_mapping(i32 noundef %11) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %optee_smc_stop_async_notif.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_unregister_devices() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_notif_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @teedev_close_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_supp_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optee_smccc_hvc(i32 noundef %a0, i32 noundef %a1, i32 noundef %a2, i32 noundef %a3, i32 noundef %a4, i32 noundef %a5, i32 noundef %a6, i32 noundef %a7, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__arm_smccc_hvc(i32 noundef %a0, i32 noundef %a1, i32 noundef %a2, i32 noundef %a3, i32 noundef %a4, i32 noundef %a5, i32 noundef %a6, i32 noundef %a7, ptr noundef %res, ptr noundef null) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optee_smccc_smc(i32 noundef %a0, i32 noundef %a1, i32 noundef %a2, i32 noundef %a3, i32 noundef %a4, i32 noundef %a5, i32 noundef %a6, i32 noundef %a7, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__arm_smccc_smc(i32 noundef %a0, i32 noundef %a1, i32 noundef %a2, i32 noundef %a3, i32 noundef %a4, i32 noundef %a5, i32 noundef %a6, i32 noundef %a7, ptr noundef %res, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_hvc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_pool_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pool_op_alloc(ptr noundef %poolm, ptr noundef %shm, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @optee_pool_op_alloc_helper(ptr noundef %poolm, ptr noundef %shm, i32 noundef %size, ptr noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @optee_pool_op_alloc_helper(ptr noundef %poolm, ptr noundef %shm, i32 noundef %size, ptr noundef nonnull @optee_shm_register) #12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pool_op_free(ptr nocapture noundef readnone %poolm, ptr noundef %shm) #0 align 64 {
entry:
  %msg_arg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shm, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call ptr @tee_get_drvdata(ptr noundef %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_arg.i) #12
  %6 = ptrtoint ptr %msg_arg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg_arg.i, align 4, !annotation !167
  %call1.i = call ptr @optee_get_msg_arg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %msg_arg.i) #12
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.optee_shm_unregister.exit_crit_edge, label %if.end.i10

if.then.optee_shm_unregister.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %optee_shm_unregister.exit

if.end.i10:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %msg_arg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msg_arg.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %8, align 8
  %10 = load ptr, ptr %msg_arg.i, align 4
  %params.i = getelementptr inbounds %struct.optee_msg_arg, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %params.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 5, ptr %params.i, align 8
  %12 = ptrtoint ptr %shm to i32
  %conv.i = zext i32 %12 to i64
  %shm_ref.i = getelementptr inbounds %struct.optee_msg_arg, ptr %10, i32 1, i32 6
  %13 = ptrtoint ptr %shm_ref.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %shm_ref.i, align 8
  %ops.i = getelementptr inbounds %struct.optee, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call6.i = call i32 %17(ptr noundef %3, ptr noundef %call1.i) #12
  call void @tee_shm_free(ptr noundef %call1.i) #12
  br label %optee_shm_unregister.exit

optee_shm_unregister.exit:                        ; preds = %if.end.i10, %if.then.optee_shm_unregister.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_arg.i) #12
  br label %if.end

if.end:                                           ; preds = %optee_shm_unregister.exit, %entry.if.end_crit_edge
  %kaddr = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 2
  %18 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kaddr, align 8
  %size = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 3
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %dec.i = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %22 = call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #12, !range !168
  %sub.i.i = sub nuw nsw i32 32, %22
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %23 = ptrtoint ptr %19 to i32
  call void @free_pages(i32 noundef %23, i32 noundef %cond.i.i) #12
  %24 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %kaddr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pool_op_destroy_poolmgr(ptr noundef %poolm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %poolm) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_pool_op_alloc_helper(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_shm_register(ptr noundef %ctx, ptr noundef %shm, ptr nocapture noundef readonly %pages, i32 noundef %num_pages, i32 noundef %start) #0 align 64 {
entry:
  %msg_arg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_arg) #12
  %2 = ptrtoint ptr %msg_arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg_arg, align 4, !annotation !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %tobool.not = icmp eq i32 %num_pages, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @optee_check_mem_type(i32 noundef %start, i32 noundef %num_pages) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sub.i.i = add i32 %num_pages, 510
  %div.i.i = udiv i32 %sub.i.i, 511
  %mul.i.i = shl i32 %div.i.i, 12
  %call1.i = tail call noalias ptr @alloc_pages_exact(i32 noundef %mul.i.i, i32 noundef 3264) #18
  %tobool6.not = icmp eq ptr %call1.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call ptr @optee_get_msg_arg(ptr noundef %ctx, i32 noundef 1, ptr noundef nonnull %msg_arg) #12
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call9 to i32
  br label %out

if.end13:                                         ; preds = %if.end8
  %offset.i = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 4
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 8
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %9
  %shl.i = shl i32 %add.i, 12
  %and.i = and i32 %5, -4096
  %add1.i = add i32 %shl.i, %and.i
  br label %while.cond.i.outer

while.cond.i.outer:                               ; preds = %if.end9.i, %if.end13
  %num_pages.addr.0.i.ph = phi i32 [ %dec.i, %if.end9.i ], [ %num_pages, %if.end13 ]
  %pages.addr.0.i.ph = phi ptr [ %incdec.ptr10.i, %if.end9.i ], [ %pages, %if.end13 ]
  %n.0.i.ph = phi i32 [ %n.1.i, %if.end9.i ], [ 0, %if.end13 ]
  %optee_page.0.i.ph = phi i32 [ %shl16.i, %if.end9.i ], [ %add1.i, %if.end13 ]
  %pages_data.0.i.ph = phi ptr [ %pages_data.1.i, %if.end9.i ], [ %call1.i, %if.end13 ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %while.cond.i.outer
  %n.0.i = phi i32 [ %n.1.i, %if.end.i.while.cond.i_crit_edge ], [ %n.0.i.ph, %while.cond.i.outer ]
  %optee_page.0.i = phi i32 [ %add4.i, %if.end.i.while.cond.i_crit_edge ], [ %optee_page.0.i.ph, %while.cond.i.outer ]
  %pages_data.0.i = phi ptr [ %pages_data.1.i, %if.end.i.while.cond.i_crit_edge ], [ %pages_data.0.i.ph, %while.cond.i.outer ]
  %conv.i = zext i32 %optee_page.0.i to i64
  %inc.i = add i32 %n.0.i, 1
  %arrayidx.i = getelementptr [511 x i64], ptr %pages_data.0.i, i32 0, i32 %n.0.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %inc.i)
  %cmp.i54 = icmp eq i32 %inc.i, 511
  br i1 %cmp.i54, label %if.then.i, label %while.cond.i.if.end.i_crit_edge

while.cond.i.if.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.anon.108, ptr %pages_data.0.i, i32 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  %call.i.i = call i32 @__virt_to_phys(i32 noundef %11) #12
  %conv3.i = zext i32 %call.i.i to i64
  %next_page_data.i = getelementptr inbounds %struct.anon.108, ptr %pages_data.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %next_page_data.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv3.i, ptr %next_page_data.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.cond.i.if.end.i_crit_edge
  %n.1.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %while.cond.i.if.end.i_crit_edge ]
  %pages_data.1.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %pages_data.0.i, %while.cond.i.if.end.i_crit_edge ]
  %add4.i = add i32 %optee_page.0.i, 4096
  %and5.i = and i32 %optee_page.0.i, 4095
  %tobool.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i, label %if.then6.i, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end.i
  %dec.i = add i32 %num_pages.addr.0.i.ph, -1
  %tobool7.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool7.not.i, label %optee_fill_pages_list.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr10.i = getelementptr ptr, ptr %pages.addr.0.i.ph, i32 1
  %13 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr10.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast11.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast12.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub13.i = sub i32 %sub.ptr.lhs.cast11.i, %sub.ptr.rhs.cast12.i
  %sub.ptr.div14.i = sdiv exact i32 %sub.ptr.sub13.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add15.i = add i32 %sub.ptr.div14.i, %16
  %shl16.i = shl i32 %add15.i, 12
  br label %while.cond.i.outer

optee_fill_pages_list.exit:                       ; preds = %if.then6.i
  %17 = ptrtoint ptr %msg_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg_arg, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %18, align 8
  %20 = load ptr, ptr %msg_arg, align 4
  %params = getelementptr inbounds %struct.optee_msg_arg, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 522, ptr %params, align 8
  %22 = ptrtoint ptr %shm to i32
  %conv = zext i32 %22 to i64
  %shm_ref = getelementptr inbounds %struct.optee_msg_arg, ptr %20, i32 1, i32 6
  %23 = ptrtoint ptr %shm_ref to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %shm_ref, align 8
  %size.i = getelementptr inbounds %struct.tee_shm, ptr %shm, i32 0, i32 3
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i, align 4
  %conv18 = zext i32 %25 to i64
  %size = getelementptr inbounds %struct.optee_msg_arg, ptr %20, i32 1, i32 4
  %26 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv18, ptr %size, align 8
  %27 = ptrtoint ptr %call1.i to i32
  %call.i = call i32 @__virt_to_phys(i32 noundef %27) #12
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 8
  %and = and i32 %29, 4095
  %or = or i32 %and, %call.i
  %conv24 = zext i32 %or to i64
  %30 = ptrtoint ptr %msg_arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msg_arg, align 4
  %u27 = getelementptr inbounds %struct.optee_msg_arg, ptr %31, i32 1, i32 2
  %32 = ptrtoint ptr %u27 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv24, ptr %u27, align 8
  %ops = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 2
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call28 = call i32 %36(ptr noundef %ctx, ptr noundef %call9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %optee_fill_pages_list.exit.if.then31_crit_edge

optee_fill_pages_list.exit.if.then31_crit_edge:   ; preds = %optee_fill_pages_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

lor.lhs.false:                                    ; preds = %optee_fill_pages_list.exit
  %37 = ptrtoint ptr %msg_arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %msg_arg, align 4
  %ret = getelementptr inbounds %struct.optee_msg_arg, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not = icmp eq i32 %40, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end32_crit_edge, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %optee_fill_pages_list.exit.if.then31_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %lor.lhs.false.if.end32_crit_edge
  %rc.0 = phi i32 [ -22, %if.then31 ], [ 0, %lor.lhs.false.if.end32_crit_edge ]
  call void @tee_shm_free(ptr noundef %call9) #12
  br label %out

out:                                              ; preds = %if.end32, %if.then11
  %rc.1 = phi i32 [ %3, %if.then11 ], [ %rc.0, %if.end32 ]
  call void @free_pages_exact(ptr noundef nonnull %call1.i, i32 noundef %mul.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_arg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_check_mem_type(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @optee_get_msg_arg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_shm_unregister(ptr noundef %ctx, ptr noundef %shm) #0 align 64 {
entry:
  %msg_arg = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_arg) #12
  %2 = ptrtoint ptr %msg_arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg_arg, align 4, !annotation !167
  %call1 = call ptr @optee_get_msg_arg(ptr noundef %ctx, i32 noundef 1, ptr noundef nonnull %msg_arg) #12
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %msg_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg_arg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %5, align 8
  %7 = load ptr, ptr %msg_arg, align 4
  %params = getelementptr inbounds %struct.optee_msg_arg, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 5, ptr %params, align 8
  %9 = ptrtoint ptr %shm to i32
  %conv = zext i32 %9 to i64
  %shm_ref = getelementptr inbounds %struct.optee_msg_arg, ptr %7, i32 1, i32 6
  %10 = ptrtoint ptr %shm_ref to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %shm_ref, align 8
  %ops = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call6 = call i32 %14(ptr noundef %ctx, ptr noundef %call1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %msg_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msg_arg, align 4
  %ret = getelementptr inbounds %struct.optee_msg_arg, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false.if.end9_crit_edge
  %rc.0 = phi i32 [ -22, %if.then8 ], [ 0, %lor.lhs.false.if.end9_crit_edge ]
  call void @tee_shm_free(ptr noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %rc.0, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_arg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_pool_mgr_alloc_res_mem(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_smc_do_call_with_arg(ptr noundef %ctx, ptr noundef %arg) #0 align 64 {
entry:
  %pa.i.i.i = alloca i32, align 4
  %pa.i = alloca i32, align 4
  %w = alloca %struct.optee_call_waiter, align 4
  %param = alloca %struct.optee_rpc_param, align 4
  %parg = alloca i32, align 4
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %w) #12
  %2 = call ptr @memset(ptr %w, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %param) #12
  %3 = getelementptr inbounds i8, ptr %param, i32 12
  %4 = call ptr @memset(ptr %3, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parg) #12
  %5 = ptrtoint ptr %parg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %parg, align 4, !annotation !167
  %call1 = call i32 @tee_shm_get_pa(ptr noundef %arg, i32 noundef 0, ptr noundef nonnull %parg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup26_crit_edge

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup26

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 838860804, ptr %param, align 4
  %a1 = getelementptr inbounds %struct.optee_rpc_param, ptr %param, i32 0, i32 1
  %a2 = getelementptr inbounds %struct.optee_rpc_param, ptr %param, i32 0, i32 2
  %7 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %parg, align 4
  %9 = ptrtoint ptr %a1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %a1, align 4
  %10 = ptrtoint ptr %a2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %a2, align 4
  %call_queue = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 5
  call void @optee_cq_wait_init(ptr noundef %call_queue, ptr noundef nonnull %w) #12
  %11 = getelementptr inbounds %struct.arm_smccc_res, ptr %res, i32 0, i32 1
  %12 = getelementptr inbounds %struct.arm_smccc_res, ptr %res, i32 0, i32 2
  %13 = getelementptr inbounds %struct.arm_smccc_res, ptr %res, i32 0, i32 3
  %14 = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 4
  %a3 = getelementptr inbounds %struct.optee_rpc_param, ptr %param, i32 0, i32 3
  %a4 = getelementptr inbounds %struct.optee_rpc_param, ptr %param, i32 0, i32 4
  %a5 = getelementptr inbounds %struct.optee_rpc_param, ptr %param, i32 0, i32 5
  %a6 = getelementptr inbounds %struct.optee_rpc_param, ptr %param, i32 0, i32 6
  %a7 = getelementptr inbounds %struct.optee_rpc_param, ptr %param, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %if.end
  %call_ctx.sroa.8.0 = phi i32 [ 0, %if.end ], [ %call_ctx.sroa.8.5, %cleanup ]
  %call_ctx.sroa.0.0 = phi ptr [ null, %if.end ], [ %call_ctx.sroa.0.5, %cleanup ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #12
  %15 = call ptr @memset(ptr %res, i32 255, i32 16)
  call fastcc void @trace_optee_invoke_fn_begin(ptr noundef nonnull %param)
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %14, align 4
  %18 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %param, align 4
  %20 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %a1, align 4
  %22 = ptrtoint ptr %a2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %a2, align 4
  %24 = ptrtoint ptr %a3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %a3, align 4
  %26 = ptrtoint ptr %a4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %a4, align 4
  %28 = ptrtoint ptr %a5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %a5, align 4
  %30 = ptrtoint ptr %a6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %a6, align 4
  %32 = ptrtoint ptr %a7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %a7, align 4
  call void %17(i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, ptr noundef nonnull %res) #12
  call fastcc void @trace_optee_invoke_fn_end(ptr noundef nonnull %param, ptr noundef nonnull %res)
  %34 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp = icmp eq i32 %35, 1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void @optee_cq_wait_for_completion(ptr noundef %call_queue, ptr noundef nonnull %w) #12
  br label %cleanup

if.else:                                          ; preds = %while.cond
  %36 = add i32 %35, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %36)
  %37 = icmp ult i32 %36, 65535
  br i1 %37, label %if.then11, label %while.end

if.then11:                                        ; preds = %if.else
  call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 854, i32 noundef 0) #12
  %call.i = call i32 @__cond_resched() #12
  %38 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %res, align 4
  %40 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %param, align 4
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %11, align 4
  %43 = ptrtoint ptr %a1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %a1, align 4
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %12, align 4
  %46 = ptrtoint ptr %a2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %a2, align 4
  %47 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %13, align 4
  %49 = ptrtoint ptr %a3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %a3, align 4
  %50 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx, align 4
  %call.i38 = call ptr @tee_get_drvdata(ptr noundef %51) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i) #12
  %52 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %pa.i, align 4, !annotation !167
  %53 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %param, align 4
  %trunc.i = trunc i32 %54 to i16
  %55 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %trunc.i, label %do.end.i [
    i16 0, label %sw.bb.i
    i16 2, label %sw.bb12.i
    i16 4, label %if.then11.optee_handle_rpc.exit_crit_edge
    i16 5, label %sw.bb16.i
  ]

if.then11.optee_handle_rpc.exit_crit_edge:        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %optee_handle_rpc.exit

sw.bb.i:                                          ; preds = %if.then11
  %ctx2.i = getelementptr inbounds %struct.optee, ptr %call.i38, i32 0, i32 3
  %56 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx2.i, align 4
  %58 = ptrtoint ptr %a1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %a1, align 4
  %call3.i = call ptr @tee_shm_alloc(ptr noundef %57, i32 noundef %59, i32 noundef 129) #12
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sw.bb.i.if.else.i_crit_edge, label %land.lhs.true.i

sw.bb.i.if.else.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %call5.i = call i32 @tee_shm_get_pa(ptr noundef %call3.i, i32 noundef 0, ptr noundef nonnull %pa.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pa.i, align 4
  %62 = ptrtoint ptr %a1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %a1, align 4
  %63 = ptrtoint ptr %a2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %61, ptr %a2, align 4
  %64 = ptrtoint ptr %call3.i to i32
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.i.if.else.i_crit_edge
  %65 = ptrtoint ptr %a1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %a1, align 4
  %66 = ptrtoint ptr %a2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %a2, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %storemerge = phi i32 [ 0, %if.else.i ], [ %64, %if.then.i ]
  %67 = ptrtoint ptr %a4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %a4, align 4
  %68 = ptrtoint ptr %a5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %storemerge, ptr %a5, align 4
  call void @kmemleak_not_leak(ptr noundef %call3.i) #12
  br label %optee_handle_rpc.exit

sw.bb12.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %a2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %a2, align 4
  %71 = inttoptr i32 %70 to ptr
  call void @tee_shm_free(ptr noundef %71) #12
  br label %optee_handle_rpc.exit

sw.bb16.i:                                        ; preds = %if.then11
  %72 = ptrtoint ptr %a2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %a2, align 4
  %74 = inttoptr i32 %73 to ptr
  %call.i.i = call ptr @tee_shm_get_va(ptr noundef %74, i32 noundef 0) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef %74) #15
  br label %optee_handle_rpc.exit

if.end.i.i:                                       ; preds = %sw.bb16.i
  %75 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %call.i.i, align 8
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %76, label %sw.default.i.i [
    i32 6, label %sw.bb.i.i
    i32 7, label %sw.bb3.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %tobool.not.i.i.i = icmp eq ptr %call_ctx.sroa.0.0, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.i.free_pages_list.exit.i.i_crit_edge, label %if.then.i.i.i

sw.bb.i.i.free_pages_list.exit.i.i_crit_edge:     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_pages_list.exit.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i.i = add i32 %call_ctx.sroa.8.0, 510
  %div.i.i.i.i.i = udiv i32 %sub.i.i.i.i.i, 511
  %mul.i.i.i.i.i = shl i32 %div.i.i.i.i.i, 12
  call void @free_pages_exact(ptr noundef nonnull %call_ctx.sroa.0.0, i32 noundef %mul.i.i.i.i.i) #12
  br label %free_pages_list.exit.i.i

free_pages_list.exit.i.i:                         ; preds = %if.then.i.i.i, %sw.bb.i.i.free_pages_list.exit.i.i_crit_edge
  %call_ctx.sroa.8.1 = phi i32 [ %call_ctx.sroa.8.0, %sw.bb.i.i.free_pages_list.exit.i.i_crit_edge ], [ 0, %if.then.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i.i.i) #12
  %78 = ptrtoint ptr %pa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %pa.i.i.i, align 4, !annotation !167
  %ret_origin.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 6
  %79 = ptrtoint ptr %ret_origin.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %ret_origin.i.i.i, align 8
  %num_params.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %num_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_params.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i13.i.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i13.i.i, label %free_pages_list.exit.i.i.if.then.i14.i.i_crit_edge, label %lor.lhs.false.i.i.i

free_pages_list.exit.i.i.if.then.i14.i.i_crit_edge: ; preds = %free_pages_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i14.i.i

lor.lhs.false.i.i.i:                              ; preds = %free_pages_list.exit.i.i
  %params.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 8
  %82 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %params.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %83)
  %cmp.not.i.i.i = icmp eq i64 %83, 1
  br i1 %cmp.not.i.i.i, label %for.cond.preheader.i.i.i, label %lor.lhs.false.i.i.i.if.then.i14.i.i_crit_edge

lor.lhs.false.i.i.i.if.then.i14.i.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i14.i.i

for.cond.preheader.i.i.i:                         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp2137.i.i.i = icmp ugt i32 %81, 1
  br i1 %cmp2137.i.i.i, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

if.then.i14.i.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then.i14.i.i_crit_edge, %free_pages_list.exit.i.i.if.then.i14.i.i_crit_edge
  %ret.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -65530, ptr %ret.i.i.i, align 4
  br label %handle_rpc_func_cmd_shm_alloc.exit.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %n.0138.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %81
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.cond.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %n.0138.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx4.i.i.i = getelementptr %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 8, i32 %n.0138.i.i.i
  %85 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx4.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp6.not.i.i.i = icmp eq i64 %86, 0
  br i1 %cmp6.not.i.i.i, label %for.cond.i.i.i, label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ret8.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %ret8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -65530, ptr %ret8.i.i.i, align 4
  br label %handle_rpc_func_cmd_shm_alloc.exit.i.i

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i.for.end.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %u.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 1, i32 2
  %b.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 1, i32 4
  %88 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %b.i.i.i, align 8
  %conv.i.i.i = trunc i64 %89 to i32
  %90 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %u.i.i.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.70)
  switch i64 %91, label %sw.default.i.i.i [
    i64 0, label %sw.bb.i.i.i
    i64 1, label %sw.bb15.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call ptr @optee_rpc_cmd_alloc_suppl(ptr noundef %ctx, i32 noundef %conv.i.i.i) #12
  br label %sw.epilog.i.i.i

sw.bb15.i.i.i:                                    ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctx16.i.i.i = getelementptr inbounds %struct.optee, ptr %call.i38, i32 0, i32 3
  %92 = ptrtoint ptr %ctx16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctx16.i.i.i, align 4
  %call17.i.i.i = call ptr @tee_shm_alloc(ptr noundef %93, i32 noundef %conv.i.i.i, i32 noundef 129) #12
  br label %sw.epilog.i.i.i

sw.default.i.i.i:                                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ret18.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 5
  %94 = ptrtoint ptr %ret18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -65530, ptr %ret18.i.i.i, align 4
  br label %handle_rpc_func_cmd_shm_alloc.exit.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb15.i.i.i, %sw.bb.i.i.i
  %shm.0.i.i.i = phi ptr [ %call17.i.i.i, %sw.bb15.i.i.i ], [ %call.i.i.i, %sw.bb.i.i.i ]
  %cmp.i.i.i.i = icmp ugt ptr %shm.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then20.i.i.i, label %if.end22.i.i.i

if.then20.i.i.i:                                  ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ret21.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 5
  %95 = ptrtoint ptr %ret21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -65524, ptr %ret21.i.i.i, align 4
  br label %handle_rpc_func_cmd_shm_alloc.exit.i.i

if.end22.i.i.i:                                   ; preds = %sw.epilog.i.i.i
  %call23.i.i.i = call i32 @tee_shm_get_pa(ptr noundef %shm.0.i.i.i, i32 noundef 0, ptr noundef nonnull %pa.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.end27.i.i.i, label %if.end22.i.i.i.bad.i.i.i_crit_edge

if.end22.i.i.i.bad.i.i.i_crit_edge:               ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad.i.i.i

if.end27.i.i.i:                                   ; preds = %if.end22.i.i.i
  %size.i.i.i.i = getelementptr inbounds %struct.tee_shm, ptr %shm.0.i.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %shm.0.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end27.i.i.i.if.else.i.i.i_crit_edge, label %tee_shm_is_registered.exit.i.i.i

if.end27.i.i.i.if.else.i.i.i_crit_edge:           ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i.i

tee_shm_is_registered.exit.i.i.i:                 ; preds = %if.end27.i.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.tee_shm, ptr %shm.0.i.i.i, i32 0, i32 8
  %98 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %99, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool1.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool1.i.not.i.i.i, label %tee_shm_is_registered.exit.i.i.i.if.else.i.i.i_crit_edge, label %if.then30.i.i.i

tee_shm_is_registered.exit.i.i.i.if.else.i.i.i_crit_edge: ; preds = %tee_shm_is_registered.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i.i

if.then30.i.i.i:                                  ; preds = %tee_shm_is_registered.exit.i.i.i
  %num_pages1.i.i.i.i = getelementptr inbounds %struct.tee_shm, ptr %shm.0.i.i.i, i32 0, i32 6
  %100 = ptrtoint ptr %num_pages1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_pages1.i.i.i.i, align 8
  %pages.i.i.i.i = getelementptr inbounds %struct.tee_shm, ptr %shm.0.i.i.i, i32 0, i32 5
  %102 = ptrtoint ptr %pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pages.i.i.i.i, align 4
  %tobool32.not.i.i.i = icmp eq ptr %103, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool34.not.i.i.i = icmp eq i32 %101, 0
  %or.cond.i.i.i = select i1 %tobool32.not.i.i.i, i1 true, i1 %tobool34.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then30.i.i.i.bad.i.i.i_crit_edge, label %if.end37.i.i.i

if.then30.i.i.i.bad.i.i.i_crit_edge:              ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad.i.i.i

if.end37.i.i.i:                                   ; preds = %if.then30.i.i.i
  %sub.i.i.i15.i.i = add i32 %101, 510
  %div.i.i.i16.i.i = udiv i32 %sub.i.i.i15.i.i, 511
  %mul.i.i.i17.i.i = shl i32 %div.i.i.i16.i.i, 12
  %call1.i.i.i.i = call noalias ptr @alloc_pages_exact(i32 noundef %mul.i.i.i17.i.i, i32 noundef 3264) #18
  %tobool39.not.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool39.not.i.i.i, label %if.end37.i.i.i.bad.i.i.i_crit_edge, label %cleanup.i.i.i

if.end37.i.i.i.bad.i.i.i_crit_edge:               ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad.i.i.i

cleanup.i.i.i:                                    ; preds = %if.end37.i.i.i
  %104 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 522, ptr %params.i.i.i, align 8
  %105 = ptrtoint ptr %call1.i.i.i.i to i32
  %call.i.i.i.i = call i32 @__virt_to_phys(i32 noundef %105) #12
  %offset.i.i.i.i = getelementptr inbounds %struct.tee_shm, ptr %shm.0.i.i.i, i32 0, i32 4
  %106 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %offset.i.i.i.i, align 8
  %and.i.i.i = and i32 %107, 4095
  %or.i.i.i = or i32 %and.i.i.i, %call.i.i.i.i
  %conv49.i.i.i = zext i32 %or.i.i.i to i64
  %108 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv49.i.i.i, ptr %u.i.i.i, align 8
  %109 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %size.i.i.i.i, align 4
  %conv54.i.i.i = zext i32 %110 to i64
  %111 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv54.i.i.i, ptr %b.i.i.i, align 8
  %112 = ptrtoint ptr %shm.0.i.i.i to i32
  %conv58.i.i.i = zext i32 %112 to i64
  %shm_ref.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 1, i32 6
  %113 = ptrtoint ptr %shm_ref.i.i.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %conv58.i.i.i, ptr %shm_ref.i.i.i, align 8
  %114 = load i32, ptr %offset.i.i.i.i, align 8
  %115 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %103, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %117 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %116 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %117 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %118 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %118
  %shl.i = shl i32 %add.i, 12
  %and.i39 = and i32 %114, -4096
  %add1.i = add i32 %shl.i, %and.i39
  br label %while.cond.i.outer

while.cond.i.outer:                               ; preds = %if.end9.i, %cleanup.i.i.i
  %num_pages.addr.0.i.ph = phi i32 [ %dec.i, %if.end9.i ], [ %101, %cleanup.i.i.i ]
  %pages.addr.0.i.ph = phi ptr [ %incdec.ptr10.i, %if.end9.i ], [ %103, %cleanup.i.i.i ]
  %n.0.i.ph = phi i32 [ %n.1.i, %if.end9.i ], [ 0, %cleanup.i.i.i ]
  %optee_page.0.i.ph = phi i32 [ %shl16.i, %if.end9.i ], [ %add1.i, %cleanup.i.i.i ]
  %pages_data.0.i.ph = phi ptr [ %pages_data.1.i, %if.end9.i ], [ %call1.i.i.i.i, %cleanup.i.i.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i43.while.cond.i_crit_edge, %while.cond.i.outer
  %n.0.i = phi i32 [ %n.1.i, %if.end.i43.while.cond.i_crit_edge ], [ %n.0.i.ph, %while.cond.i.outer ]
  %optee_page.0.i = phi i32 [ %add4.i, %if.end.i43.while.cond.i_crit_edge ], [ %optee_page.0.i.ph, %while.cond.i.outer ]
  %pages_data.0.i = phi ptr [ %pages_data.1.i, %if.end.i43.while.cond.i_crit_edge ], [ %pages_data.0.i.ph, %while.cond.i.outer ]
  %conv.i = zext i32 %optee_page.0.i to i64
  %inc.i = add i32 %n.0.i, 1
  %arrayidx.i = getelementptr [511 x i64], ptr %pages_data.0.i, i32 0, i32 %n.0.i
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv.i, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 511
  br i1 %cmp.i, label %if.then.i41, label %while.cond.i.if.end.i43_crit_edge

while.cond.i.if.end.i43_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i43

if.then.i41:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.anon.108, ptr %pages_data.0.i, i32 1
  %120 = ptrtoint ptr %add.ptr.i to i32
  %call.i.i40 = call i32 @__virt_to_phys(i32 noundef %120) #12
  %conv3.i = zext i32 %call.i.i40 to i64
  %next_page_data.i = getelementptr inbounds %struct.anon.108, ptr %pages_data.0.i, i32 0, i32 1
  %121 = ptrtoint ptr %next_page_data.i to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv3.i, ptr %next_page_data.i, align 8
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then.i41, %while.cond.i.if.end.i43_crit_edge
  %n.1.i = phi i32 [ 0, %if.then.i41 ], [ %inc.i, %while.cond.i.if.end.i43_crit_edge ]
  %pages_data.1.i = phi ptr [ %add.ptr.i, %if.then.i41 ], [ %pages_data.0.i, %while.cond.i.if.end.i43_crit_edge ]
  %add4.i = add i32 %optee_page.0.i, 4096
  %and5.i = and i32 %optee_page.0.i, 4095
  %tobool.not.i42 = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i42, label %if.then6.i, label %if.end.i43.while.cond.i_crit_edge

if.end.i43.while.cond.i_crit_edge:                ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end.i43
  %dec.i = add i32 %num_pages.addr.0.i.ph, -1
  %tobool7.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool7.not.i, label %if.then6.i.if.end83.i.i.i_crit_edge, label %if.end9.i

if.then6.i.if.end83.i.i.i_crit_edge:              ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i.i.i

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr10.i = getelementptr ptr, ptr %pages.addr.0.i.ph, i32 1
  %122 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %incdec.ptr10.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %124 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast11.i = ptrtoint ptr %123 to i32
  %sub.ptr.rhs.cast12.i = ptrtoint ptr %124 to i32
  %sub.ptr.sub13.i = sub i32 %sub.ptr.lhs.cast11.i, %sub.ptr.rhs.cast12.i
  %sub.ptr.div14.i = sdiv exact i32 %sub.ptr.sub13.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %125 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add15.i = add i32 %sub.ptr.div14.i, %125
  %shl16.i = shl i32 %add15.i, 12
  br label %while.cond.i.outer

if.else.i.i.i:                                    ; preds = %tee_shm_is_registered.exit.i.i.i.if.else.i.i.i_crit_edge, %if.end27.i.i.i.if.else.i.i.i_crit_edge
  %126 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 10, ptr %params.i.i.i, align 8
  %127 = ptrtoint ptr %pa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pa.i.i.i, align 4
  %conv68.i.i.i = zext i32 %128 to i64
  %129 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv68.i.i.i, ptr %u.i.i.i, align 8
  %conv73.i.i.i = zext i32 %97 to i64
  %130 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %conv73.i.i.i, ptr %b.i.i.i, align 8
  %131 = ptrtoint ptr %shm.0.i.i.i to i32
  %conv78.i.i.i = zext i32 %131 to i64
  %shm_ref82.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 1, i32 6
  %132 = ptrtoint ptr %shm_ref82.i.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %conv78.i.i.i, ptr %shm_ref82.i.i.i, align 8
  br label %if.end83.i.i.i

if.end83.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then6.i.if.end83.i.i.i_crit_edge
  %call_ctx.sroa.8.2 = phi i32 [ %call_ctx.sroa.8.1, %if.else.i.i.i ], [ %101, %if.then6.i.if.end83.i.i.i_crit_edge ]
  %call_ctx.sroa.0.2 = phi ptr [ null, %if.else.i.i.i ], [ %call1.i.i.i.i, %if.then6.i.if.end83.i.i.i_crit_edge ]
  %ret84.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 5
  %133 = ptrtoint ptr %ret84.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %ret84.i.i.i, align 4
  br label %handle_rpc_func_cmd_shm_alloc.exit.i.i

bad.i.i.i:                                        ; preds = %if.end37.i.i.i.bad.i.i.i_crit_edge, %if.then30.i.i.i.bad.i.i.i_crit_edge, %if.end22.i.i.i.bad.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ -65530, %if.end22.i.i.i.bad.i.i.i_crit_edge ], [ -65524, %if.then30.i.i.i.bad.i.i.i_crit_edge ], [ -65524, %if.end37.i.i.i.bad.i.i.i_crit_edge ]
  %ret36.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 5
  %134 = ptrtoint ptr %ret36.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %.sink.i.i.i, ptr %ret36.i.i.i, align 4
  call void @tee_shm_free(ptr noundef %shm.0.i.i.i) #12
  br label %handle_rpc_func_cmd_shm_alloc.exit.i.i

handle_rpc_func_cmd_shm_alloc.exit.i.i:           ; preds = %bad.i.i.i, %if.end83.i.i.i, %if.then20.i.i.i, %sw.default.i.i.i, %if.then7.i.i.i, %if.then.i14.i.i
  %call_ctx.sroa.8.3 = phi i32 [ %call_ctx.sroa.8.1, %if.then.i14.i.i ], [ %call_ctx.sroa.8.1, %sw.default.i.i.i ], [ %call_ctx.sroa.8.1, %if.then20.i.i.i ], [ %call_ctx.sroa.8.2, %if.end83.i.i.i ], [ %call_ctx.sroa.8.1, %bad.i.i.i ], [ %call_ctx.sroa.8.1, %if.then7.i.i.i ]
  %call_ctx.sroa.0.3 = phi ptr [ null, %if.then.i14.i.i ], [ null, %sw.default.i.i.i ], [ null, %if.then20.i.i.i ], [ %call_ctx.sroa.0.2, %if.end83.i.i.i ], [ null, %bad.i.i.i ], [ null, %if.then7.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i.i.i) #12
  br label %optee_handle_rpc.exit

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  %ret_origin.i19.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 6
  %135 = ptrtoint ptr %ret_origin.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 2, ptr %ret_origin.i19.i.i, align 8
  %num_params.i20.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 7
  %136 = ptrtoint ptr %num_params.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_params.i20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp.not.i21.i.i = icmp eq i32 %137, 1
  br i1 %cmp.not.i21.i.i, label %lor.lhs.false.i23.i.i, label %sw.bb3.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge

sw.bb3.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge: ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_rpc_func_cmd_shm_free.exit.i.i

lor.lhs.false.i23.i.i:                            ; preds = %sw.bb3.i.i
  %params.i22.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 8
  %138 = ptrtoint ptr %params.i22.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %params.i22.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %139)
  %cmp1.not.i.i.i = icmp eq i64 %139, 1
  br i1 %cmp1.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false.i23.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge

lor.lhs.false.i23.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_rpc_func_cmd_shm_free.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i23.i.i
  %u.i24.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 1, i32 2
  %b.i25.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 1, i32 4
  %140 = ptrtoint ptr %b.i25.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %b.i25.i.i, align 8
  %conv.i26.i.i = trunc i64 %141 to i32
  %142 = inttoptr i32 %conv.i26.i.i to ptr
  %143 = ptrtoint ptr %u.i24.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %u.i24.i.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.71)
  switch i64 %144, label %if.end.i.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge [
    i64 0, label %sw.bb.i27.i.i
    i64 1, label %sw.bb7.i.i.i
  ]

if.end.i.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_rpc_func_cmd_shm_free.exit.i.i

sw.bb.i27.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @optee_rpc_cmd_free_suppl(ptr noundef %ctx, ptr noundef %142) #12
  br label %handle_rpc_func_cmd_shm_free.exit.i.i

sw.bb7.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @tee_shm_free(ptr noundef %142) #12
  br label %handle_rpc_func_cmd_shm_free.exit.i.i

handle_rpc_func_cmd_shm_free.exit.i.i:            ; preds = %sw.bb7.i.i.i, %sw.bb.i27.i.i, %if.end.i.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge, %lor.lhs.false.i23.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge, %sw.bb3.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge
  %.sink.i28.i.i = phi i32 [ -65530, %lor.lhs.false.i23.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge ], [ -65530, %sw.bb3.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge ], [ 0, %if.end.i.i.i.handle_rpc_func_cmd_shm_free.exit.i.i_crit_edge ], [ 0, %sw.bb7.i.i.i ], [ 0, %sw.bb.i27.i.i ]
  %ret9.i.i.i = getelementptr inbounds %struct.optee_msg_arg, ptr %call.i.i, i32 0, i32 5
  %145 = ptrtoint ptr %ret9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %.sink.i28.i.i, ptr %ret9.i.i.i, align 4
  br label %optee_handle_rpc.exit

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @optee_rpc_cmd(ptr noundef %ctx, ptr noundef %call.i38, ptr noundef %call.i.i) #12
  br label %optee_handle_rpc.exit

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %and.i = and i32 %54, 65535
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %and.i) #15
  br label %optee_handle_rpc.exit

optee_handle_rpc.exit:                            ; preds = %do.end.i, %sw.default.i.i, %handle_rpc_func_cmd_shm_free.exit.i.i, %handle_rpc_func_cmd_shm_alloc.exit.i.i, %do.end.i.i, %sw.bb12.i, %if.end.i, %if.then11.optee_handle_rpc.exit_crit_edge
  %call_ctx.sroa.8.4 = phi i32 [ %call_ctx.sroa.8.0, %do.end.i ], [ %call_ctx.sroa.8.0, %do.end.i.i ], [ %call_ctx.sroa.8.0, %sw.default.i.i ], [ %call_ctx.sroa.8.0, %handle_rpc_func_cmd_shm_free.exit.i.i ], [ %call_ctx.sroa.8.3, %handle_rpc_func_cmd_shm_alloc.exit.i.i ], [ %call_ctx.sroa.8.0, %if.then11.optee_handle_rpc.exit_crit_edge ], [ %call_ctx.sroa.8.0, %sw.bb12.i ], [ %call_ctx.sroa.8.0, %if.end.i ]
  %call_ctx.sroa.0.4 = phi ptr [ %call_ctx.sroa.0.0, %do.end.i ], [ %call_ctx.sroa.0.0, %do.end.i.i ], [ %call_ctx.sroa.0.0, %sw.default.i.i ], [ %call_ctx.sroa.0.0, %handle_rpc_func_cmd_shm_free.exit.i.i ], [ %call_ctx.sroa.0.3, %handle_rpc_func_cmd_shm_alloc.exit.i.i ], [ %call_ctx.sroa.0.0, %if.then11.optee_handle_rpc.exit_crit_edge ], [ %call_ctx.sroa.0.0, %sw.bb12.i ], [ %call_ctx.sroa.0.0, %if.end.i ]
  %146 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 838860803, ptr %param, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #12
  br label %cleanup

cleanup:                                          ; preds = %optee_handle_rpc.exit, %if.then7
  %call_ctx.sroa.8.5 = phi i32 [ %call_ctx.sroa.8.0, %if.then7 ], [ %call_ctx.sroa.8.4, %optee_handle_rpc.exit ]
  %call_ctx.sroa.0.5 = phi ptr [ %call_ctx.sroa.0.0, %if.then7 ], [ %call_ctx.sroa.0.4, %optee_handle_rpc.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #12
  br label %while.cond

while.end:                                        ; preds = %if.else
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #12
  %tobool.not.i.i = icmp eq ptr %call_ctx.sroa.0.0, null
  br i1 %tobool.not.i.i, label %while.end.optee_rpc_finalize_call.exit_crit_edge, label %if.then.i.i

while.end.optee_rpc_finalize_call.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %optee_rpc_finalize_call.exit

if.then.i.i:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i = add i32 %call_ctx.sroa.8.0, 510
  %div.i.i.i.i = udiv i32 %sub.i.i.i.i, 511
  %mul.i.i.i.i = shl i32 %div.i.i.i.i, 12
  call void @free_pages_exact(ptr noundef nonnull %call_ctx.sroa.0.0, i32 noundef %mul.i.i.i.i) #12
  br label %optee_rpc_finalize_call.exit

optee_rpc_finalize_call.exit:                     ; preds = %if.then.i.i, %while.end.optee_rpc_finalize_call.exit_crit_edge
  call void @optee_cq_wait_final(ptr noundef %call_queue, ptr noundef nonnull %w) #12
  br label %cleanup26

cleanup26:                                        ; preds = %optee_rpc_finalize_call.exit, %entry.cleanup26_crit_edge
  %retval.0 = phi i32 [ %35, %optee_rpc_finalize_call.exit ], [ %call1, %entry.cleanup26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parg) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %param) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %w) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_to_msg_param(ptr nocapture noundef readnone %optee, ptr nocapture noundef writeonly %msg_params, i32 noundef %num_params, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %pa.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_params)
  %cmp44.not = icmp eq i32 %num_params, 0
  br i1 %cmp44.not, label %entry.cleanup11_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup11

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %n.045 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.tee_param, ptr %params, i32 %n.045
  %add.ptr1 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.72)
  switch i64 %1, label %for.body.cleanup11_crit_edge [
    i64 0, label %sw.bb
    i64 1, label %for.body.sw.bb3_crit_edge
    i64 2, label %for.body.sw.bb3_crit_edge49
    i64 3, label %for.body.sw.bb3_crit_edge50
    i64 5, label %for.body.sw.bb4_crit_edge
    i64 6, label %for.body.sw.bb4_crit_edge51
    i64 7, label %for.body.sw.bb4_crit_edge52
  ]

for.body.sw.bb4_crit_edge52:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

for.body.sw.bb4_crit_edge51:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

for.body.sw.bb4_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

for.body.sw.bb3_crit_edge50:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

for.body.sw.bb3_crit_edge49:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

for.body.sw.bb3_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

for.body.cleanup11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup11

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memset(ptr %add.ptr1, i32 0, i32 32)
  br label %for.inc

sw.bb3:                                           ; preds = %for.body.sw.bb3_crit_edge, %for.body.sw.bb3_crit_edge49, %for.body.sw.bb3_crit_edge50
  %3 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %1, ptr %add.ptr1, align 8
  %u.i = getelementptr %struct.tee_param, ptr %params, i32 %n.045, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %u.i, align 8
  %u2.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045, i32 1
  %6 = ptrtoint ptr %u2.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %u2.i, align 8
  %b.i = getelementptr %struct.tee_param, ptr %params, i32 %n.045, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %b.i, align 8
  %b6.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %b6.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %b6.i, align 8
  %c.i = getelementptr %struct.tee_param, ptr %params, i32 %n.045, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %c.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %c.i, align 8
  %c9.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %c9.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %c9.i, align 8
  br label %for.inc

sw.bb4:                                           ; preds = %for.body.sw.bb4_crit_edge, %for.body.sw.bb4_crit_edge51, %for.body.sw.bb4_crit_edge52
  %shm = getelementptr %struct.tee_param, ptr %params, i32 %n.045, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shm, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %sw.bb4.if.else_crit_edge, label %tee_shm_is_registered.exit

sw.bb4.if.else_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

tee_shm_is_registered.exit:                       ; preds = %sw.bb4
  %flags.i = getelementptr inbounds %struct.tee_shm, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.i.not, label %tee_shm_is_registered.exit.if.else_crit_edge, label %if.end.thread

tee_shm_is_registered.exit.if.else_crit_edge:     ; preds = %tee_shm_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end.thread:                                    ; preds = %tee_shm_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %1, ptr %add.ptr1, align 8
  %u.i25 = getelementptr %struct.tee_param, ptr %params, i32 %n.045, i32 1
  %18 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shm, align 8
  %20 = ptrtoint ptr %19 to i32
  %conv.i = zext i32 %20 to i64
  %u2.i26 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045, i32 1
  %shm_ref.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %shm_ref.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.i, ptr %shm_ref.i, align 8
  %size.i = getelementptr inbounds %struct.tee_param_memref, ptr %u.i25, i32 0, i32 1
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %conv4.i = zext i32 %23 to i64
  %size6.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %size6.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv4.i, ptr %size6.i, align 8
  %25 = ptrtoint ptr %u.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %u.i25, align 8
  %conv8.i = zext i32 %26 to i64
  %27 = ptrtoint ptr %u2.i26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv8.i, ptr %u2.i26, align 8
  br label %for.inc

if.else:                                          ; preds = %tee_shm_is_registered.exit.if.else_crit_edge, %sw.bb4.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i) #12
  %28 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %pa.i, align 4, !annotation !167
  %sub.i = add nuw nsw i64 %1, 4
  %29 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %sub.i, ptr %add.ptr1, align 8
  %u.i27 = getelementptr %struct.tee_param, ptr %params, i32 %n.045, i32 1
  %30 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shm, align 8
  %32 = ptrtoint ptr %31 to i32
  %conv.i29 = zext i32 %32 to i64
  %u2.i30 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045, i32 1
  %shm_ref.i31 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %shm_ref.i31 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv.i29, ptr %shm_ref.i31, align 8
  %size.i32 = getelementptr inbounds %struct.tee_param_memref, ptr %u.i27, i32 0, i32 1
  %34 = ptrtoint ptr %size.i32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i32, align 4
  %conv4.i33 = zext i32 %35 to i64
  %size6.i34 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.045, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %size6.i34 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv4.i33, ptr %size6.i34, align 8
  %37 = load ptr, ptr %shm, align 8
  %tobool.not.i35 = icmp eq ptr %37, null
  br i1 %tobool.not.i35, label %if.else.if.end.thread38_crit_edge, label %if.end.i

if.else.if.end.thread38_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.thread38

if.end.i:                                         ; preds = %if.else
  %38 = ptrtoint ptr %u.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %u.i27, align 8
  %call.i = call i32 @tee_shm_get_pa(ptr noundef nonnull %37, i32 noundef %39, ptr noundef nonnull %pa.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pa.i, align 4
  %conv16.i = zext i32 %41 to i64
  br label %if.end.thread38

if.end.thread38:                                  ; preds = %if.end15.i, %if.else.if.end.thread38_crit_edge
  %conv16.sink.i = phi i64 [ %conv16.i, %if.end15.i ], [ 0, %if.else.if.end.thread38_crit_edge ]
  %42 = ptrtoint ptr %u2.i30 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv16.sink.i, ptr %u2.i30, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #12
  br label %for.inc

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #12
  br label %cleanup11

for.inc:                                          ; preds = %if.end.thread38, %if.end.thread, %sw.bb3, %sw.bb
  %inc = add nuw i32 %n.045, 1
  %exitcond.not = icmp eq i32 %inc, %num_params
  br i1 %exitcond.not, label %for.inc.cleanup11_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup11

cleanup11:                                        ; preds = %for.inc.cleanup11_crit_edge, %if.end, %for.body.cleanup11_crit_edge, %entry.cleanup11_crit_edge
  %retval.2 = phi i32 [ %call.i, %if.end ], [ 0, %entry.cleanup11_crit_edge ], [ 0, %for.inc.cleanup11_crit_edge ], [ -22, %for.body.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_from_msg_param(ptr nocapture noundef readnone %optee, ptr nocapture noundef writeonly %params, i32 noundef %num_params, ptr nocapture noundef readonly %msg_params) #0 align 64 {
entry:
  %pa.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_params)
  %cmp43.not = icmp eq i32 %num_params, 0
  br i1 %cmp43.not, label %entry.cleanup9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup9

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %n.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.tee_param, ptr %params, i32 %n.044
  %add.ptr1 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr1, align 8
  %2 = trunc i64 %1 to i32
  %conv = and i32 %2, 255
  %trunc = trunc i64 %1 to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %trunc, label %for.body.cleanup9_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %for.body.sw.bb4_crit_edge
    i8 2, label %for.body.sw.bb4_crit_edge47
    i8 3, label %for.body.sw.bb4_crit_edge48
    i8 9, label %for.body.sw.bb5_crit_edge
    i8 10, label %for.body.sw.bb5_crit_edge49
    i8 11, label %for.body.sw.bb5_crit_edge50
    i8 5, label %for.body.sw.bb6_crit_edge
    i8 6, label %for.body.sw.bb6_crit_edge51
    i8 7, label %for.body.sw.bb6_crit_edge52
  ]

for.body.sw.bb6_crit_edge52:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

for.body.sw.bb6_crit_edge51:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

for.body.sw.bb6_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

for.body.sw.bb5_crit_edge50:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

for.body.sw.bb5_crit_edge49:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

for.body.sw.bb5_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

for.body.sw.bb4_crit_edge48:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

for.body.sw.bb4_crit_edge47:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

for.body.sw.bb4_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

for.body.cleanup9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup9

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memset(ptr %add.ptr, i32 0, i32 32)
  br label %for.inc

sw.bb4:                                           ; preds = %for.body.sw.bb4_crit_edge, %for.body.sw.bb4_crit_edge47, %for.body.sw.bb4_crit_edge48
  %conv.i = zext i32 %conv to i64
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.i, ptr %add.ptr, align 8
  %u.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044, i32 1
  %6 = ptrtoint ptr %u.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %u.i, align 8
  %u2.i = getelementptr %struct.tee_param, ptr %params, i32 %n.044, i32 1
  %8 = ptrtoint ptr %u2.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %u2.i, align 8
  %b.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %b.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %b.i, align 8
  %b6.i = getelementptr %struct.tee_param, ptr %params, i32 %n.044, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %b6.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %b6.i, align 8
  %c.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %c.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %c.i, align 8
  %c9.i = getelementptr %struct.tee_param, ptr %params, i32 %n.044, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %c9.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %c9.i, align 8
  br label %for.inc

sw.bb5:                                           ; preds = %for.body.sw.bb5_crit_edge, %for.body.sw.bb5_crit_edge49, %for.body.sw.bb5_crit_edge50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i) #12
  %15 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %pa.i, align 4, !annotation !167
  %sub.i = add nsw i32 %conv, -4
  %conv.i25 = zext i32 %sub.i to i64
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i25, ptr %add.ptr, align 8
  %u.i26 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044, i32 1
  %size.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %size.i, align 8
  %conv2.i = trunc i64 %18 to i32
  %u3.i = getelementptr %struct.tee_param, ptr %params, i32 %n.044, i32 1
  %size4.i = getelementptr inbounds %struct.tee_param_memref, ptr %u3.i, i32 0, i32 1
  %19 = ptrtoint ptr %size4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv2.i, ptr %size4.i, align 4
  %shm_ref.i = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %shm_ref.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %shm_ref.i, align 8
  %conv6.i = trunc i64 %21 to i32
  %22 = inttoptr i32 %conv6.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.i)
  %tobool.not.i = icmp eq i32 %conv6.i, 0
  br i1 %tobool.not.i, label %sw.bb5.from_msg_param_tmp_mem.exit.thread_crit_edge, label %if.end.i

sw.bb5.from_msg_param_tmp_mem.exit.thread_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %from_msg_param_tmp_mem.exit.thread

if.end.i:                                         ; preds = %sw.bb5
  %call.i = call i32 @tee_shm_get_pa(ptr noundef nonnull %22, i32 noundef 0, ptr noundef nonnull %pa.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %from_msg_param_tmp_mem.exit

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %u.i26 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %u.i26, align 8
  %25 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pa.i, align 4
  %27 = trunc i64 %24 to i32
  %conv16.i = sub i32 %27, %26
  br label %from_msg_param_tmp_mem.exit.thread

from_msg_param_tmp_mem.exit.thread:               ; preds = %if.end12.i, %sw.bb5.from_msg_param_tmp_mem.exit.thread_crit_edge
  %conv16.sink.i = phi i32 [ %conv16.i, %if.end12.i ], [ 0, %sw.bb5.from_msg_param_tmp_mem.exit.thread_crit_edge ]
  %.sink.i = phi ptr [ %22, %if.end12.i ], [ null, %sw.bb5.from_msg_param_tmp_mem.exit.thread_crit_edge ]
  %28 = ptrtoint ptr %u3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv16.sink.i, ptr %u3.i, align 8
  %shm20.i = getelementptr %struct.tee_param, ptr %params, i32 %n.044, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %shm20.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.sink.i, ptr %shm20.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #12
  br label %for.inc

from_msg_param_tmp_mem.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i) #12
  br label %cleanup9

sw.bb6:                                           ; preds = %for.body.sw.bb6_crit_edge, %for.body.sw.bb6_crit_edge51, %for.body.sw.bb6_crit_edge52
  %conv.i27 = zext i32 %conv to i64
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv.i27, ptr %add.ptr, align 8
  %size.i28 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %size.i28 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %size.i28, align 8
  %conv2.i29 = trunc i64 %32 to i32
  %u3.i30 = getelementptr %struct.tee_param, ptr %params, i32 %n.044, i32 1
  %size4.i31 = getelementptr inbounds %struct.tee_param_memref, ptr %u3.i30, i32 0, i32 1
  %33 = ptrtoint ptr %size4.i31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv2.i29, ptr %size4.i31, align 4
  %shm_ref.i32 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %shm_ref.i32 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %shm_ref.i32, align 8
  %conv6.i33 = trunc i64 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.i33)
  %tobool.not.i34 = icmp eq i32 %conv6.i33, 0
  br i1 %tobool.not.i34, label %sw.bb6.from_msg_param_reg_mem.exit_crit_edge, label %if.then.i

sw.bb6.from_msg_param_reg_mem.exit_crit_edge:     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %from_msg_param_reg_mem.exit

if.then.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %36 = inttoptr i32 %conv6.i33 to ptr
  %u.i35 = getelementptr %struct.optee_msg_param, ptr %msg_params, i32 %n.044, i32 1
  %37 = ptrtoint ptr %u.i35 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %u.i35, align 8
  %conv8.i = trunc i64 %38 to i32
  br label %from_msg_param_reg_mem.exit

from_msg_param_reg_mem.exit:                      ; preds = %if.then.i, %sw.bb6.from_msg_param_reg_mem.exit_crit_edge
  %storemerge.i = phi i32 [ %conv8.i, %if.then.i ], [ 0, %sw.bb6.from_msg_param_reg_mem.exit_crit_edge ]
  %.sink.i36 = phi ptr [ %36, %if.then.i ], [ null, %sw.bb6.from_msg_param_reg_mem.exit_crit_edge ]
  %39 = ptrtoint ptr %u3.i30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge.i, ptr %u3.i30, align 8
  %40 = getelementptr %struct.tee_param, ptr %params, i32 %n.044, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %.sink.i36, ptr %40, align 8
  br label %for.inc

for.inc:                                          ; preds = %from_msg_param_reg_mem.exit, %from_msg_param_tmp_mem.exit.thread, %sw.bb4, %sw.bb
  %inc = add nuw i32 %n.044, 1
  %exitcond.not = icmp eq i32 %inc, %num_params
  br i1 %exitcond.not, label %for.inc.cleanup9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup9

cleanup9:                                         ; preds = %for.inc.cleanup9_crit_edge, %from_msg_param_tmp_mem.exit, %for.body.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ %call.i, %from_msg_param_tmp_mem.exit ], [ 0, %entry.cleanup9_crit_edge ], [ 0, %for.inc.cleanup9_crit_edge ], [ -22, %for.body.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_shm_get_pa(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_cq_wait_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_optee_invoke_fn_begin(ptr noundef %param) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_optee_invoke_fn_begin, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_optee_invoke_fn_begin, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !169

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !165

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !155) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !170
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_optee_invoke_fn_begin, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %param) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !171
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !171
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !165

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !155) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_optee_invoke_fn_begin, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_optee_invoke_fn_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_optee_invoke_fn_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 38, ptr noundef nonnull @.str.59) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !173
  %38 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
define internal fastcc void @trace_optee_invoke_fn_end(ptr noundef %param, ptr noundef %res) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_optee_invoke_fn_end, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_optee_invoke_fn_end, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !169

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !165

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !155) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_optee_invoke_fn_end, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %param, ptr noundef %res) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !175
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !165

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !155) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_optee_invoke_fn_end, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_optee_invoke_fn_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_optee_invoke_fn_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 58, ptr noundef nonnull @.str.59) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !173
  %38 = tail call i32 @llvm.read_register.i32(metadata !155) #12
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
declare dso_local void @optee_cq_wait_for_completion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_cq_wait_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_not_leak(ptr noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_get_va(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_rpc_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @optee_rpc_cmd_alloc_suppl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_rpc_cmd_free_suppl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optee_get_version(ptr noundef %teedev, ptr nocapture noundef writeonly %vers) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tee_get_drvdata(ptr noundef %teedev) #12
  %sec_caps = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 4, i32 0, i32 2
  %0 = ptrtoint ptr %sec_caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sec_caps, align 4
  %and = and i32 %1, 4
  %and2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %v.sroa.4.1.v = select i1 %tobool3.not, i32 1, i32 9
  %v.sroa.4.1 = or i32 %v.sroa.4.1.v, %and
  %2 = ptrtoint ptr %vers to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 4294967297, ptr %vers, align 4
  %v.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %vers, i32 8
  %3 = ptrtoint ptr %v.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %v.sroa.4.1, ptr %v.sroa.4.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_smc_open(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call ptr @tee_get_drvdata(ptr noundef %1) #12
  %sec_caps1 = getelementptr inbounds %struct.optee, ptr %call, i32 0, i32 4, i32 0, i32 2
  %2 = ptrtoint ptr %sec_caps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sec_caps1, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call2 = tail call i32 @optee_open(ptr noundef %ctx, i1 noundef zeroext %tobool) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_open_session(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_close_session(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_invoke_func(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_cancel_req(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_open(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_release_supp(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_supp_recv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_supp_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optee_shm_register_supp(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %shm, ptr nocapture noundef readnone %pages, i32 noundef %num_pages, i32 noundef %start) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @optee_check_mem_type(i32 noundef %start, i32 noundef %num_pages) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @optee_shm_unregister_supp(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %shm) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @notif_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i, i32 0, i32 2
  %1 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.optee, ptr %dev_id, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %value_pending.0 = phi i8 [ -1, %entry ], [ %value_pending.12228, %do.cond.do.body_crit_edge ]
  %do_bottom_half.0.off0 = phi i1 [ false, %entry ], [ %do_bottom_half.1.off0, %do.cond.do.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #12
  %5 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void %4(i32 noundef -1308622831, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i) #12
  %6 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %get_async_notif_value.exit, label %if.end.thread

if.end.thread:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #12
  br label %do.cond

get_async_notif_value.exit:                       ; preds = %do.body
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = lshr i8 %10, 1
  %13 = and i8 %12, 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %get_async_notif_value.exit.do.end_crit_edge, label %if.end

get_async_notif_value.exit.do.end_crit_edge:      ; preds = %get_async_notif_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end:                                           ; preds = %get_async_notif_value.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.end.do.cond_crit_edge, label %if.else

if.end.do.cond_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = call i32 @optee_notif_send(ptr noundef %dev_id, i32 noundef %15) #12
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.end.do.cond_crit_edge, %if.end.thread
  %value_pending.12228 = phi i8 [ %13, %if.else ], [ %13, %if.end.do.cond_crit_edge ], [ %value_pending.0, %if.end.thread ]
  %do_bottom_half.1.off0 = phi i1 [ %do_bottom_half.0.off0, %if.else ], [ true, %if.end.do.cond_crit_edge ], [ true, %if.end.thread ]
  %tobool4.not = icmp eq i8 %value_pending.12228, 0
  br i1 %tobool4.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %get_async_notif_value.exit.do.end_crit_edge
  %do_bottom_half.2.off0 = phi i1 [ %do_bottom_half.1.off0, %do.cond.do.end_crit_edge ], [ %do_bottom_half.0.off0, %get_async_notif_value.exit.do.end_crit_edge ]
  %. = select i1 %do_bottom_half.2.off0, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @notif_irq_thread_fn(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  %msg_arg.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.optee, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_arg.i.i) #12
  %2 = ptrtoint ptr %msg_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg_arg.i.i, align 4, !annotation !167
  %call.i.i = call ptr @optee_get_msg_arg(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %msg_arg.i.i) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %entry.optee_smc_do_bottom_half.exit_crit_edge, label %if.end.i.i

entry.optee_smc_do_bottom_half.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %optee_smc_do_bottom_half.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %msg_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msg_arg.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %4, align 8
  %call4.i.i = call i32 @optee_smc_do_call_with_arg(ptr noundef %1, ptr noundef %call.i.i) #12
  call void @tee_shm_free(ptr noundef %call.i.i) #12
  br label %optee_smc_do_bottom_half.exit

optee_smc_do_bottom_half.exit:                    ; preds = %if.end.i.i, %entry.optee_smc_do_bottom_half.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_arg.i.i) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @optee_notif_send(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__optee_disable_shm_cache(ptr noundef %optee, i1 noundef zeroext %is_mapped) unnamed_addr #0 align 64 {
entry:
  %w = alloca %struct.optee_call_waiter, align 4
  %res = alloca %union.anon.110, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %w) #12
  %0 = call ptr @memset(ptr %w, i32 255, i32 64)
  %call_queue = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 5
  call void @optee_cq_wait_init(ptr noundef %call_queue, ptr noundef nonnull %w) #12
  %1 = getelementptr inbounds %struct.arm_smccc_res, ptr %res, i32 0, i32 2
  %2 = getelementptr inbounds %struct.optee, ptr %optee, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup8, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #12
  %3 = call ptr @memset(ptr %res, i32 255, i32 16)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 4
  call void %5(i32 noundef -1308622838, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res) #12
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %7, label %if.else [
    i32 7, label %while.end
    i32 0, label %if.then3
  ]

if.then3:                                         ; preds = %while.cond
  br i1 %is_mapped, label %cleanup.thread, label %if.then3.cleanup8_crit_edge

if.then3.cleanup8_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup8

cleanup.thread:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %11 = inttoptr i32 %10 to ptr
  call void @tee_shm_free(ptr noundef %11) #12
  br label %cleanup8

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void @optee_cq_wait_for_completion(ptr noundef %call_queue, ptr noundef nonnull %w) #12
  br label %cleanup8

cleanup8:                                         ; preds = %if.else, %cleanup.thread, %if.then3.cleanup8_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #12
  call void @optee_cq_wait_final(ptr noundef %call_queue, ptr noundef nonnull %w) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %w) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @optee_remove_common(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !84, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !147, !149, !151, !153}
!llvm.named.register.sp = !{!155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__tracepoint_optee_invoke_fn_begin, !1, !"__tracepoint_optee_invoke_fn_begin", i1 false, i1 false}
!1 = !{!"../drivers/tee/optee/./optee_trace.h", i32 19, i32 1}
!2 = !{ptr @__tracepoint_ptr_optee_invoke_fn_begin, !1, !"__tracepoint_ptr_optee_invoke_fn_begin", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_optee_invoke_fn_begin, !1, !"__SCK__tp_func_optee_invoke_fn_begin", i1 false, i1 false}
!4 = !{ptr @__tracepoint_optee_invoke_fn_end, !5, !"__tracepoint_optee_invoke_fn_end", i1 false, i1 false}
!5 = !{!"../drivers/tee/optee/./optee_trace.h", i32 40, i32 1}
!6 = !{ptr @__tracepoint_ptr_optee_invoke_fn_end, !5, !"__tracepoint_ptr_optee_invoke_fn_end", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_optee_invoke_fn_end, !5, !"__SCK__tp_func_optee_invoke_fn_end", i1 false, i1 false}
!8 = !{ptr @event_class_optee_invoke_fn_begin, !1, !"event_class_optee_invoke_fn_begin", i1 false, i1 false}
!9 = !{ptr @event_optee_invoke_fn_begin, !1, !"event_optee_invoke_fn_begin", i1 false, i1 false}
!10 = !{ptr @__event_optee_invoke_fn_begin, !1, !"__event_optee_invoke_fn_begin", i1 false, i1 false}
!11 = !{ptr @event_class_optee_invoke_fn_end, !5, !"event_class_optee_invoke_fn_end", i1 false, i1 false}
!12 = !{ptr @event_optee_invoke_fn_end, !5, !"event_optee_invoke_fn_end", i1 false, i1 false}
!13 = !{ptr @__event_optee_invoke_fn_end, !5, !"__event_optee_invoke_fn_end", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_optee_invoke_fn_begin, !1, !"__bpf_trace_tp_map_optee_invoke_fn_begin", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_optee_invoke_fn_end, !5, !"__bpf_trace_tp_map_optee_invoke_fn_end", i1 false, i1 false}
!16 = !{ptr @__tpstrtab_optee_invoke_fn_begin, !1, !"__tpstrtab_optee_invoke_fn_begin", i1 false, i1 false}
!17 = !{ptr @__tpstrtab_optee_invoke_fn_end, !5, !"__tpstrtab_optee_invoke_fn_end", i1 false, i1 false}
!18 = !{ptr @str__optee__trace_system_name, !19, !"str__optee__trace_system_name", i1 false, i1 false}
!19 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!20 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @trace_event_fields_optee_invoke_fn_begin, !1, !"trace_event_fields_optee_invoke_fn_begin", i1 false, i1 false}
!25 = !{ptr @trace_event_type_funcs_optee_invoke_fn_begin, !1, !"trace_event_type_funcs_optee_invoke_fn_begin", i1 false, i1 false}
!26 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @print_fmt_optee_invoke_fn_begin, !1, !"print_fmt_optee_invoke_fn_begin", i1 false, i1 false}
!28 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @trace_event_fields_optee_invoke_fn_end, !5, !"trace_event_fields_optee_invoke_fn_end", i1 false, i1 false}
!31 = !{ptr @trace_event_type_funcs_optee_invoke_fn_end, !5, !"trace_event_type_funcs_optee_invoke_fn_end", i1 false, i1 false}
!32 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @print_fmt_optee_invoke_fn_end, !5, !"print_fmt_optee_invoke_fn_end", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/tee/optee/smc_abi.c", i32 1504, i32 11}
!36 = !{ptr @optee_driver, !37, !"optee_driver", i1 false, i1 false}
!37 = !{!"../drivers/tee/optee/smc_abi.c", i32 1499, i32 31}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tee/optee/smc_abi.c", i32 1348, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @optee_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @optee_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tee/optee/smc_abi.c", i32 1355, i32 3}
!46 = !{ptr @optee_probe._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @optee_probe._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tee/optee/smc_abi.c", i32 1361, i32 3}
!50 = !{ptr @optee_probe._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @optee_probe._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @optee_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/tee/optee/smc_abi.c", i32 1412, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tee/optee/smc_abi.c", i32 1434, i32 4}
!57 = !{ptr @optee_probe._entry.19, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @optee_probe._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tee/optee/smc_abi.c", i32 1445, i32 3}
!61 = !{ptr @optee_probe._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @optee_probe._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/tee/optee/smc_abi.c", i32 1460, i32 3}
!65 = !{ptr @optee_probe._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @optee_probe._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tee/optee/smc_abi.c", i32 1466, i32 2}
!69 = !{ptr @optee_probe._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @optee_probe._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tee/optee/smc_abi.c", i32 1274, i32 2}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @get_invoke_func._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @get_invoke_func._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tee/optee/smc_abi.c", i32 1276, i32 39}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tee/optee/smc_abi.c", i32 1277, i32 3}
!80 = !{ptr @get_invoke_func._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @get_invoke_func._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/tee/optee/smc_abi.c", i32 1281, i32 14}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tee/optee/smc_abi.c", i32 1283, i32 19}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/tee/optee/smc_abi.c", i32 1286, i32 2}
!88 = !{ptr @get_invoke_func._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @get_invoke_func._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/tee/optee/smc_abi.c", i32 1093, i32 3}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @optee_msg_get_os_revision._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @optee_msg_get_os_revision._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tee/optee/smc_abi.c", i32 1096, i32 3}
!97 = !{ptr @optee_msg_get_os_revision._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @optee_msg_get_os_revision._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @pool_ops, !100, !"pool_ops", i1 false, i1 false}
!100 = !{!"../drivers/tee/optee/smc_abi.c", i32 553, i32 42}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/tee/optee/smc_abi.c", i32 1193, i32 3}
!103 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @optee_config_shm_memremap._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @optee_config_shm_memremap._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/tee/optee/smc_abi.c", i32 1198, i32 3}
!108 = !{ptr @optee_config_shm_memremap._entry.49, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @optee_config_shm_memremap._entry_ptr.51, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/tee/optee/smc_abi.c", i32 1208, i32 3}
!112 = !{ptr @optee_config_shm_memremap._entry.52, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @optee_config_shm_memremap._entry_ptr.54, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/tee/optee/smc_abi.c", i32 1214, i32 3}
!116 = !{ptr @optee_config_shm_memremap._entry.55, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @optee_config_shm_memremap._entry_ptr.57, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @optee_ops, !119, !"optee_ops", i1 false, i1 false}
!119 = !{!"../drivers/tee/optee/smc_abi.c", i32 1049, i32 31}
!120 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!121 = !{ptr @.str.58, !1, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!123 = !{ptr @.str.59, !1, !"<string literal>", i1 false, i1 false}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!126 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!127 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!128 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/tee/optee/smc_abi.c", i32 802, i32 3}
!131 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @optee_handle_rpc._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @optee_handle_rpc._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/tee/optee/smc_abi.c", i32 735, i32 3}
!136 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @handle_rpc_func_cmd._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @handle_rpc_func_cmd._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/tee/optee/smc_abi.c", i32 1027, i32 10}
!141 = !{ptr @optee_clnt_desc, !142, !"optee_clnt_desc", i1 false, i1 false}
!142 = !{!"../drivers/tee/optee/smc_abi.c", i32 1026, i32 30}
!143 = !{ptr @optee_clnt_ops, !144, !"optee_clnt_ops", i1 false, i1 false}
!144 = !{!"../drivers/tee/optee/smc_abi.c", i32 1014, i32 36}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/tee/optee/smc_abi.c", i32 1043, i32 10}
!147 = !{ptr @optee_supp_desc, !148, !"optee_supp_desc", i1 false, i1 false}
!148 = !{!"../drivers/tee/optee/smc_abi.c", i32 1042, i32 30}
!149 = !{ptr @optee_supp_ops, !150, !"optee_supp_ops", i1 false, i1 false}
!150 = !{!"../drivers/tee/optee/smc_abi.c", i32 1032, i32 36}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/tee/optee/smc_abi.c", i32 960, i32 10}
!153 = !{ptr @optee_dt_match, !154, !"optee_dt_match", i1 false, i1 false}
!154 = !{!"../drivers/tee/optee/smc_abi.c", i32 1493, i32 34}
!155 = !{!"sp"}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{!"auto-init"}
!168 = !{i32 0, i32 33}
!169 = !{i64 2148783225, i64 2148783230, i64 2148783243, i64 2148783287, i64 2148783321, i64 2148783342}
!170 = !{i64 2154589305}
!171 = !{i64 2154589520}
!172 = !{i64 2149354482}
!173 = !{i64 2149355518}
!174 = !{i64 2154606391}
!175 = !{i64 2154606612}
