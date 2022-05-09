; ModuleID = '/llk/IR_all_yes/drivers/thermal/gov_power_allocator.c_pt.bc'
source_filename = "../drivers/thermal/gov_power_allocator.c"
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
%struct.thermal_governor = type { [20 x i8], ptr, ptr, ptr, %struct.list_head }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_thermal_power_allocator = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_thermal_power_allocator_pid = type { %struct.trace_entry, i32, i32, i32, i64, i64, i64, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.power_allocator_params = type { i8, i64, i32, i32, i32, i32 }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__tpstrtab_thermal_power_allocator = internal constant [24 x i8] c"thermal_power_allocator\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_thermal_power_allocator = dso_local global %struct.static_call_key { ptr @__traceiter_thermal_power_allocator }, align 4
@__tracepoint_thermal_power_allocator = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_thermal_power_allocator, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_thermal_power_allocator, ptr null, ptr @__traceiter_thermal_power_allocator, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_thermal_power_allocator = internal constant ptr @__tracepoint_thermal_power_allocator, section "__tracepoints_ptrs", align 4
@__tpstrtab_thermal_power_allocator_pid = internal constant [28 x i8] c"thermal_power_allocator_pid\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_thermal_power_allocator_pid = dso_local global %struct.static_call_key { ptr @__traceiter_thermal_power_allocator_pid }, align 4
@__tracepoint_thermal_power_allocator_pid = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_thermal_power_allocator_pid, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_thermal_power_allocator_pid, ptr null, ptr @__traceiter_thermal_power_allocator_pid, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_thermal_power_allocator_pid = internal constant ptr @__tracepoint_thermal_power_allocator_pid, section "__tracepoints_ptrs", align 4
@str__thermal_power_allocator__trace_system_name = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"thermal_power_allocator\00", [40 x i8] zeroinitializer }, align 32
@trace_event_fields_thermal_power_allocator = internal global { [11 x %struct.trace_event_fields], [88 x i8] } { [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.95 { %struct.anon.96 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.95 { %struct.anon.96 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.95 { %struct.anon.96 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.95 { %struct.anon.96 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.95 { %struct.anon.96 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [88 x i8] zeroinitializer }, align 32
@event_class_thermal_power_allocator = internal global %struct.trace_event_class { ptr @str__thermal_power_allocator__trace_system_name, ptr @trace_event_raw_event_thermal_power_allocator, ptr @perf_trace_thermal_power_allocator, ptr @trace_event_reg, ptr @trace_event_fields_thermal_power_allocator, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_thermal_power_allocator, i64 24), ptr getelementptr (i8, ptr @event_class_thermal_power_allocator, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_thermal_power_allocator = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_thermal_power_allocator, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_thermal_power_allocator = internal global { [461 x i8], [115 x i8] } { [461 x i8] c"\22thermal_zone_id=%d req_power={%s} total_req_power=%u granted_power={%s} total_granted_power=%u power_range=%u max_allocatable_power=%u current_temperature=%d delta_temperature=%d\22, REC->tz_id, __print_array(__get_dynamic_array(req_power), REC->num_actors, 4), REC->total_req_power, __print_array(__get_dynamic_array(granted_power), REC->num_actors, 4), REC->total_granted_power, REC->power_range, REC->max_allocatable_power, REC->current_temp, REC->delta_temp\00", [115 x i8] zeroinitializer }, align 32
@event_thermal_power_allocator = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_thermal_power_allocator, %union.anon.97 { ptr @__tracepoint_thermal_power_allocator }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_thermal_power_allocator }, ptr @print_fmt_thermal_power_allocator, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_thermal_power_allocator = internal global ptr @event_thermal_power_allocator, section "_ftrace_events", align 4
@trace_event_fields_thermal_power_allocator_pid = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.16, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.95 { %struct.anon.96 { ptr @.str.19, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.95 { %struct.anon.96 { ptr @.str.20, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.95 { %struct.anon.96 { ptr @.str.21, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_thermal_power_allocator_pid = internal global %struct.trace_event_class { ptr @str__thermal_power_allocator__trace_system_name, ptr @trace_event_raw_event_thermal_power_allocator_pid, ptr @perf_trace_thermal_power_allocator_pid, ptr @trace_event_reg, ptr @trace_event_fields_thermal_power_allocator_pid, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_thermal_power_allocator_pid, i64 24), ptr getelementptr (i8, ptr @event_class_thermal_power_allocator_pid, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_thermal_power_allocator_pid = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_thermal_power_allocator_pid, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_thermal_power_allocator_pid = internal global { [153 x i8], [39 x i8] } { [153 x i8] c"\22thermal_zone_id=%d err=%d err_integral=%d p=%lld i=%lld d=%lld output=%d\22, REC->tz_id, REC->err, REC->err_integral, REC->p, REC->i, REC->d, REC->output\00", [39 x i8] zeroinitializer }, align 32
@event_thermal_power_allocator_pid = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_thermal_power_allocator_pid, %union.anon.97 { ptr @__tracepoint_thermal_power_allocator_pid }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_thermal_power_allocator_pid }, ptr @print_fmt_thermal_power_allocator_pid, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_thermal_power_allocator_pid = internal global ptr @event_thermal_power_allocator_pid, section "_ftrace_events", align 4
@__bpf_trace_tp_map_thermal_power_allocator = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_thermal_power_allocator, ptr @__bpf_trace_thermal_power_allocator, i32 10, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_thermal_power_allocator_pid = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_thermal_power_allocator_pid, ptr @__bpf_trace_thermal_power_allocator_pid, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@thermal_gov_power_allocator = internal global { %struct.thermal_governor, [56 x i8] } { %struct.thermal_governor { [20 x i8] c"power_allocator\00\00\00\00\00", ptr @power_allocator_bind, ptr @power_allocator_unbind, ptr @power_allocator_throttle, %struct.list_head zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__thermal_table_entry_thermal_gov_power_allocator = internal global ptr @thermal_gov_power_allocator, section "__governor_thermal_table", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tz_id\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__data_loc u32[]\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"req_power\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"total_req_power\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"granted_power\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"total_granted_power\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"num_actors\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power_range\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_allocatable_power\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"current_temp\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s32\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delta_temp\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [180 x i8], [44 x i8] } { [180 x i8] c"thermal_zone_id=%d req_power={%s} total_req_power=%u granted_power={%s} total_granted_power=%u power_range=%u max_allocatable_power=%u current_temperature=%d delta_temperature=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"err\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"err_integral\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s64\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"p\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"thermal_zone_id=%d err=%d err_integral=%d p=%lld i=%lld d=%lld output=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@power_allocator_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 667, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"power_allocator: sustainable_power will be estimated\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"power_allocator_bind\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/thermal/gov_power_allocator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@power_allocator_bind._entry_ptr = internal global ptr @power_allocator_bind._entry, section ".printk_index", align 4
@check_power_actors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.26, i32 624, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"power_allocator: %s is not a power actor\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_power_actors\00", [45 x i8] zeroinitializer }, align 32
@check_power_actors._entry_ptr = internal global ptr @check_power_actors._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_governor_trips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.26, i32 538, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get trip point %d type: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_governor_trips\00", [45 x i8] zeroinitializer }, align 32
@get_governor_trips._entry_ptr = internal global ptr @get_governor_trips._entry, section ".printk_index", align 4
@power_allocator_unbind.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.26, ptr @.str.35, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"power_allocator_unbind\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unbinding from thermal zone %d\0A\00", [32 x i8] zeroinitializer }, align 32
@power_allocator_throttle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.26, i32 739, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to get the maximum desired temperature: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"power_allocator_throttle\00", [39 x i8] zeroinitializer }, align 32
@power_allocator_throttle._entry_ptr = internal global ptr @power_allocator_throttle._entry, section ".printk_index", align 4
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"include/trace/events/thermal_power_allocator.h\00", [49 x i8] zeroinitializer }, align 32
@trace_thermal_power_allocator_pid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_thermal_power_allocator.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant [48 x i8] c"str__thermal_power_allocator__trace_system_name\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 36, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [43 x i8] c"trace_event_fields_thermal_power_allocator\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_thermal_power_allocator\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [34 x i8] c"print_fmt_thermal_power_allocator\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"event_thermal_power_allocator\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [47 x i8] c"trace_event_fields_thermal_power_allocator_pid\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_thermal_power_allocator_pid\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [38 x i8] c"print_fmt_thermal_power_allocator_pid\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [34 x i8] c"event_thermal_power_allocator_pid\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"thermal_gov_power_allocator\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 746, i32 32 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 10, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 667, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 623, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 536, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 697, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private constant [41 x i8] c"../drivers/thermal/gov_power_allocator.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 737, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [50 x i8] c"../include/trace/events/thermal_power_allocator.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 58, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 108, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__bpf_trace_tp_map_thermal_power_allocator, ptr @__bpf_trace_tp_map_thermal_power_allocator_pid, ptr @__event_thermal_power_allocator, ptr @__event_thermal_power_allocator_pid, ptr @__thermal_table_entry_thermal_gov_power_allocator, ptr @__tracepoint_ptr_thermal_power_allocator, ptr @__tracepoint_ptr_thermal_power_allocator_pid, ptr @__tracepoint_thermal_power_allocator, ptr @__tracepoint_thermal_power_allocator_pid, ptr @check_power_actors._entry, ptr @check_power_actors._entry_ptr, ptr @event_class_thermal_power_allocator, ptr @event_class_thermal_power_allocator_pid, ptr @event_thermal_power_allocator, ptr @event_thermal_power_allocator_pid, ptr @get_governor_trips._entry, ptr @get_governor_trips._entry_ptr, ptr @power_allocator_bind._entry, ptr @power_allocator_bind._entry_ptr, ptr @power_allocator_throttle._entry, ptr @power_allocator_throttle._entry_ptr, ptr @str__thermal_power_allocator__trace_system_name, ptr @trace_event_fields_thermal_power_allocator, ptr @trace_event_type_funcs_thermal_power_allocator, ptr @print_fmt_thermal_power_allocator, ptr @trace_event_fields_thermal_power_allocator_pid, ptr @trace_event_type_funcs_thermal_power_allocator_pid, ptr @print_fmt_thermal_power_allocator_pid, ptr @thermal_gov_power_allocator, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__thermal_power_allocator__trace_system_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_thermal_power_allocator to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_thermal_power_allocator to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_thermal_power_allocator to i32), i32 461, i32 576, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_thermal_power_allocator to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_thermal_power_allocator_pid to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_thermal_power_allocator_pid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_thermal_power_allocator_pid to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_thermal_power_allocator_pid to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_gov_power_allocator to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_allocator_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_power_actors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_governor_trips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_allocator_throttle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_thermal_power_allocator(ptr nocapture readnone %__data, ptr noundef %tz, ptr noundef %req_power, i32 noundef %total_req_power, ptr noundef %granted_power, i32 noundef %total_granted_power, i32 noundef %num_actors, i32 noundef %power_range, i32 noundef %max_allocatable_power, i32 noundef %current_temp, i32 noundef %delta_temp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_thermal_power_allocator, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %tz, ptr noundef %req_power, i32 noundef %total_req_power, ptr noundef %granted_power, i32 noundef %total_granted_power, i32 noundef %num_actors, i32 noundef %power_range, i32 noundef %max_allocatable_power, i32 noundef %current_temp, i32 noundef %delta_temp) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_thermal_power_allocator_pid(ptr nocapture readnone %__data, ptr noundef %tz, i32 noundef %err, i32 noundef %err_integral, i64 noundef %p, i64 noundef %i, i64 noundef %d, i32 noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_thermal_power_allocator_pid, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %tz, i32 noundef %err, i32 noundef %err_integral, i64 noundef %p, i64 noundef %i, i64 noundef %d, i32 noundef %output) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_thermal_power_allocator(ptr noundef %__data, ptr nocapture noundef readonly %tz, ptr nocapture noundef readonly %req_power, i32 noundef %total_req_power, ptr nocapture noundef readonly %granted_power, i32 noundef %total_granted_power, i32 noundef %num_actors, i32 noundef %power_range, i32 noundef %max_allocatable_power, i32 noundef %current_temp, i32 noundef %delta_temp) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !102

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %add11.i = shl i32 %num_actors, 3
  %add = add i32 %add11.i, 48
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl i32 %num_actors, 2
  %add6.i = add i32 %mul.i, 48
  %shl.i = shl i32 %num_actors, 18
  %or10.i = or i32 %add6.i, %shl.i
  %or.i = or i32 %shl.i, 48
  %__data_loc_req_power = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_req_power to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_req_power, align 4
  %__data_loc_granted_power = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 4
  %4 = ptrtoint ptr %__data_loc_granted_power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or10.i, ptr %__data_loc_granted_power, align 4
  %5 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tz, align 8
  %tz_id = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %tz_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tz_id, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 48
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %req_power, i32 %mul.i)
  %total_req_power9 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %total_req_power9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %total_req_power, ptr %total_req_power9, align 4
  %and11 = and i32 %add6.i, 65532
  %add.ptr12 = getelementptr i8, ptr %call3, i32 %and11
  %10 = call ptr @memcpy(ptr %add.ptr12, ptr %granted_power, i32 %mul.i)
  %total_granted_power14 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 5
  %11 = ptrtoint ptr %total_granted_power14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %total_granted_power, ptr %total_granted_power14, align 4
  %num_actors15 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 6
  %12 = ptrtoint ptr %num_actors15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %num_actors, ptr %num_actors15, align 4
  %power_range16 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 7
  %13 = ptrtoint ptr %power_range16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %power_range, ptr %power_range16, align 4
  %max_allocatable_power17 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 8
  %14 = ptrtoint ptr %max_allocatable_power17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %max_allocatable_power, ptr %max_allocatable_power17, align 4
  %current_temp18 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 9
  %15 = ptrtoint ptr %current_temp18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %current_temp, ptr %current_temp18, align 4
  %delta_temp19 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call3, i32 0, i32 10
  %16 = ptrtoint ptr %delta_temp19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %delta_temp, ptr %delta_temp19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_thermal_power_allocator(ptr noundef %__data, ptr nocapture noundef readonly %tz, ptr nocapture noundef readonly %req_power, i32 noundef %total_req_power, ptr nocapture noundef readonly %granted_power, i32 noundef %total_granted_power, i32 noundef %num_actors, i32 noundef %power_range, i32 noundef %max_allocatable_power, i32 noundef %current_temp, i32 noundef %delta_temp) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !103
  %mul.i = shl i32 %num_actors, 2
  %shl.i = shl i32 %num_actors, 18
  %or.i = or i32 %shl.i, 48
  %add6.i = add i32 %mul.i, 48
  %or10.i = or i32 %add6.i, %shl.i
  %add11.i = shl i32 %num_actors, 3
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %add11.i, 59
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !91) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_req_power = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_req_power to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_req_power, align 4
  %__data_loc_granted_power = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 4
  %28 = ptrtoint ptr %__data_loc_granted_power to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or10.i, ptr %__data_loc_granted_power, align 4
  %29 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tz, align 8
  %tz_id = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %tz_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tz_id, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 48
  %32 = call ptr @memcpy(ptr %add.ptr, ptr %req_power, i32 %mul.i)
  %total_req_power21 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %total_req_power21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %total_req_power, ptr %total_req_power21, align 4
  %and23 = and i32 %add6.i, 65532
  %add.ptr24 = getelementptr i8, ptr %call13, i32 %and23
  %34 = call ptr @memcpy(ptr %add.ptr24, ptr %granted_power, i32 %mul.i)
  %total_granted_power26 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 5
  %35 = ptrtoint ptr %total_granted_power26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %total_granted_power, ptr %total_granted_power26, align 4
  %num_actors27 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 6
  %36 = ptrtoint ptr %num_actors27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %num_actors, ptr %num_actors27, align 4
  %power_range28 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 7
  %37 = ptrtoint ptr %power_range28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %power_range, ptr %power_range28, align 4
  %max_allocatable_power29 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 8
  %38 = ptrtoint ptr %max_allocatable_power29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %max_allocatable_power, ptr %max_allocatable_power29, align 4
  %current_temp30 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 9
  %39 = ptrtoint ptr %current_temp30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %current_temp, ptr %current_temp30, align 4
  %delta_temp31 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %call13, i32 0, i32 10
  %40 = ptrtoint ptr %delta_temp31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %delta_temp, ptr %delta_temp31, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_thermal_power_allocator_pid(ptr noundef %__data, ptr nocapture noundef readonly %tz, i32 noundef %err, i32 noundef %err_integral, i64 noundef %p, i64 noundef %i, i64 noundef %d, i32 noundef %output) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !102

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 56) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tz, align 8
  %tz_id = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %tz_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tz_id, align 8
  %err6 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %err6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %err, ptr %err6, align 4
  %err_integral7 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %err_integral7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %err_integral, ptr %err_integral7, align 8
  %p8 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %p8 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %p, ptr %p8, align 8
  %i9 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %i9 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %i, ptr %i9, align 8
  %d10 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call3, i32 0, i32 6
  %10 = ptrtoint ptr %d10 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %d, ptr %d10, align 8
  %output11 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call3, i32 0, i32 7
  %11 = ptrtoint ptr %output11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %output, ptr %output11, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_thermal_power_allocator_pid(ptr noundef %__data, ptr nocapture noundef readonly %tz, i32 noundef %err, i32 noundef %err_integral, i64 noundef %p, i64 noundef %i, i64 noundef %d, i32 noundef %output) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !103
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !91) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tz, align 8
  %tz_id = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %tz_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tz_id, align 8
  %err17 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %err17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %err, ptr %err17, align 4
  %err_integral18 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %err_integral18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %err_integral, ptr %err_integral18, align 8
  %p19 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %p19 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %p, ptr %p19, align 8
  %i20 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call13, i32 0, i32 5
  %33 = ptrtoint ptr %i20 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %i, ptr %i20, align 8
  %d21 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call13, i32 0, i32 6
  %34 = ptrtoint ptr %d21 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %d, ptr %d21, align 8
  %output22 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %call13, i32 0, i32 7
  %35 = ptrtoint ptr %output22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %output, ptr %output22, align 8
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 60, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_thermal_power_allocator(ptr noundef %__data, ptr noundef %tz, ptr noundef %req_power, i32 noundef %total_req_power, ptr noundef %granted_power, i32 noundef %total_granted_power, i32 noundef %num_actors, i32 noundef %power_range, i32 noundef %max_allocatable_power, i32 noundef %current_temp, i32 noundef %delta_temp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %tz to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %req_power to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %total_req_power to i64
  %2 = ptrtoint ptr %granted_power to i32
  %conv12 = zext i32 %2 to i64
  %conv16 = zext i32 %total_granted_power to i64
  %conv20 = zext i32 %num_actors to i64
  %conv24 = zext i32 %power_range to i64
  %conv28 = zext i32 %max_allocatable_power to i64
  %conv32 = zext i32 %current_temp to i64
  %conv36 = zext i32 %delta_temp to i64
  tail call void @bpf_trace_run10(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24, i64 noundef %conv28, i64 noundef %conv32, i64 noundef %conv36) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_thermal_power_allocator_pid(ptr noundef %__data, ptr noundef %tz, i32 noundef %err, i32 noundef %err_integral, i64 noundef %p, i64 noundef %i, i64 noundef %d, i32 noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %tz to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %err to i64
  %conv8 = zext i32 %err_integral to i64
  %conv21 = zext i32 %output to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %p, i64 noundef %i, i64 noundef %d, i64 noundef %conv21) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_thermal_power_allocator(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tz_id = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tz_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tz_id, align 4
  %__data_loc_req_power = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_req_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_req_power, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %num_actors = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %num_actors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_actors, align 4
  %call1 = tail call ptr @trace_print_array_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr, i32 noundef %7, i32 noundef 4) #10
  %total_req_power = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %total_req_power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_req_power, align 4
  %__data_loc_granted_power = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %__data_loc_granted_power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__data_loc_granted_power, align 4
  %and6 = and i32 %11, 65535
  %add.ptr7 = getelementptr i8, ptr %1, i32 %and6
  %12 = ptrtoint ptr %num_actors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_actors, align 4
  %call9 = tail call ptr @trace_print_array_seq(ptr noundef %tmp_seq, ptr noundef %add.ptr7, i32 noundef %13, i32 noundef 4) #10
  %total_granted_power = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %total_granted_power to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_granted_power, align 4
  %power_range = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %power_range to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %power_range, align 4
  %max_allocatable_power = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %max_allocatable_power to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_allocatable_power, align 4
  %current_temp = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %current_temp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_temp, align 4
  %delta_temp = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %delta_temp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %delta_temp, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, i32 noundef %3, ptr noundef %call1, i32 noundef %9, ptr noundef %call9, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #10
  %call10 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_array_seq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_thermal_power_allocator_pid(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tz_id = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tz_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tz_id, align 8
  %err = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  %err_integral = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %err_integral to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %err_integral, align 8
  %p1 = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %p1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %p1, align 8
  %i = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i, align 8
  %d = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %d to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %d, align 8
  %output = getelementptr inbounds %struct.trace_event_raw_thermal_power_allocator_pid, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef %5, i32 noundef %7, i64 noundef %9, i64 noundef %11, i64 noundef %13, i32 noundef %15) #10
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run10(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run7(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_allocator_bind(ptr noundef %tz) #0 align 64 {
entry:
  %switch_on_temp.i = alloca i32, align 4
  %type.i51 = alloca i32, align 4
  %control_temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control_temp) #10
  %0 = ptrtoint ptr %control_temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %control_temp, align 4, !annotation !103
  %thermal_instances.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 24
  %1 = ptrtoint ptr %thermal_instances.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn13.i = load ptr, ptr %thermal_instances.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %thermal_instances.i
  br i1 %cmp.not14.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %device.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %.pn16.i.ph = phi ptr [ %.pn.i72, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ %.pn13.i, %for.body.lr.ph.i ]
  %tobool.not = phi i1 [ false, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ true, %for.body.lr.ph.i ]
  %ret.015.i.ph = phi i32 [ -22, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn16.i.ph, %for.body.i.outer ]
  %cdev.i = getelementptr i8, ptr %.pn16.i, i32 -120
  %2 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev.i, align 4
  %ops.i.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %get_requested_power.i.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %get_requested_power.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_requested_power.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i.thread_crit_edge, label %land.lhs.true.i.i

for.body.i.for.inc.i.thread_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.thread

land.lhs.true.i.i:                                ; preds = %for.body.i
  %state2power.i.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %state2power.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state2power.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.for.inc.i.thread_crit_edge, label %cdev_is_power_actor.exit.i

land.lhs.true.i.i.for.inc.i.thread_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.thread

cdev_is_power_actor.exit.i:                       ; preds = %land.lhs.true.i.i
  %power2state.i.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %power2state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power2state.i.i, align 4
  %tobool4.i.not.i = icmp eq ptr %11, null
  br i1 %tobool4.i.not.i, label %cdev_is_power_actor.exit.i.for.inc.i.thread_crit_edge, label %for.inc.i

cdev_is_power_actor.exit.i.for.inc.i.thread_crit_edge: ; preds = %cdev_is_power_actor.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.thread

for.inc.i:                                        ; preds = %cdev_is_power_actor.exit.i
  %12 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %thermal_instances.i
  br i1 %cmp.not.i, label %check_power_actors.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %cdev_is_power_actor.exit.i.for.inc.i.thread_crit_edge, %land.lhs.true.i.i.for.inc.i.thread_crit_edge, %for.body.i.for.inc.i.thread_crit_edge
  %type.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.29, ptr noundef %14) #13
  %15 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i72 = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i73 = icmp eq ptr %.pn.i72, %thermal_instances.i
  br i1 %cmp.not.i73, label %for.inc.i.thread.cleanup_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.outer

for.inc.i.thread.cleanup_crit_edge:               ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

check_power_actors.exit:                          ; preds = %for.inc.i
  br i1 %tobool.not, label %check_power_actors.exit.if.end_crit_edge, label %check_power_actors.exit.cleanup_crit_edge

check_power_actors.exit.cleanup_crit_edge:        ; preds = %check_power_actors.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

check_power_actors.exit.if.end_crit_edge:         ; preds = %check_power_actors.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %check_power_actors.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 32) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 21
  %17 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tzp, align 8
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 64) #14
  %20 = ptrtoint ptr %tzp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i50, ptr %tzp, align 8
  %tobool10.not = icmp eq ptr %call7.i.i50, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %call7.i.i, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end4.if.end13_crit_edge
  %22 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tzp, align 8
  %sustainable_power = getelementptr inbounds %struct.thermal_zone_params, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %sustainable_power to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sustainable_power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool15.not = icmp eq i32 %25, 0
  br i1 %tobool15.not, label %do.end, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str.24) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end13.if.end17_crit_edge
  %trips.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 9
  %26 = ptrtoint ptr %trips.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %trips.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp66.i = icmp sgt i32 %27, 0
  br i1 %cmp66.i, label %for.body.lr.ph.i53, label %if.end17.if.else21.i_crit_edge

if.end17.if.else21.i_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else21.i

for.body.lr.ph.i53:                               ; preds = %if.end17
  %ops.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %device.i52 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  %trip_switch_on.i = getelementptr inbounds %struct.power_allocator_params, ptr %call7.i.i, i32 0, i32 3
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.inc.i56.for.body.i54_crit_edge, %for.body.lr.ph.i53
  %found_first_passive.0.off071.i = phi i1 [ false, %for.body.lr.ph.i53 ], [ %found_first_passive.2.off0.ph.i, %for.inc.i56.for.body.i54_crit_edge ]
  %last_passive.070.i = phi i32 [ -1, %for.body.lr.ph.i53 ], [ %last_passive.2.ph.i, %for.inc.i56.for.body.i54_crit_edge ]
  %last_active.069.i = phi i32 [ -1, %for.body.lr.ph.i53 ], [ %last_active.2.ph.i, %for.inc.i56.for.body.i54_crit_edge ]
  %i.067.i = phi i32 [ 0, %for.body.lr.ph.i53 ], [ %inc.i, %for.inc.i56.for.body.i54_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i51) #10
  %28 = ptrtoint ptr %type.i51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %type.i51, align 4, !annotation !103
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %get_trip_type.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %get_trip_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_trip_type.i, align 4
  %call.i = call i32 %32(ptr noundef %tz, i32 noundef %i.067.i, ptr noundef nonnull %type.i51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i55

do.end.i55:                                       ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i52, ptr noundef nonnull @.str.31, i32 noundef %i.067.i, i32 noundef %call.i) #13
  br label %for.inc.i56

if.end.i:                                         ; preds = %for.body.i54
  %33 = ptrtoint ptr %type.i51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i51, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %cleanup.i [
    i32 1, label %if.then2.i
    i32 0, label %if.end.i.for.inc.i56_crit_edge
  ]

if.end.i.for.inc.i56_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i56

if.then2.i:                                       ; preds = %if.end.i
  br i1 %found_first_passive.0.off071.i, label %if.then2.i.for.inc.i56_crit_edge, label %if.then4.i

if.then2.i.for.inc.i56_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i56

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %trip_switch_on.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.067.i, ptr %trip_switch_on.i, align 4
  br label %for.inc.i56

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i51) #10
  br label %for.end.i

for.inc.i56:                                      ; preds = %if.then4.i, %if.then2.i.for.inc.i56_crit_edge, %if.end.i.for.inc.i56_crit_edge, %do.end.i55
  %last_active.2.ph.i = phi i32 [ %last_active.069.i, %do.end.i55 ], [ %last_active.069.i, %if.then4.i ], [ %last_active.069.i, %if.then2.i.for.inc.i56_crit_edge ], [ %i.067.i, %if.end.i.for.inc.i56_crit_edge ]
  %last_passive.2.ph.i = phi i32 [ %last_passive.070.i, %do.end.i55 ], [ %last_passive.070.i, %if.then4.i ], [ %i.067.i, %if.then2.i.for.inc.i56_crit_edge ], [ %last_passive.070.i, %if.end.i.for.inc.i56_crit_edge ]
  %found_first_passive.2.off0.ph.i = phi i1 [ %found_first_passive.0.off071.i, %do.end.i55 ], [ true, %if.then4.i ], [ true, %if.then2.i.for.inc.i56_crit_edge ], [ %found_first_passive.0.off071.i, %if.end.i.for.inc.i56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i51) #10
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %37 = ptrtoint ptr %trips.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %trips.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %38
  br i1 %cmp.i, label %for.inc.i56.for.body.i54_crit_edge, label %for.inc.i56.for.end.i_crit_edge

for.inc.i56.for.end.i_crit_edge:                  ; preds = %for.inc.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i56.for.body.i54_crit_edge:               ; preds = %for.inc.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i54

for.end.i:                                        ; preds = %for.inc.i56.for.end.i_crit_edge, %cleanup.i
  %last_active.065.i = phi i32 [ %last_active.069.i, %cleanup.i ], [ %last_active.2.ph.i, %for.inc.i56.for.end.i_crit_edge ]
  %last_passive.063.i = phi i32 [ %last_passive.070.i, %cleanup.i ], [ %last_passive.2.ph.i, %for.inc.i56.for.end.i_crit_edge ]
  %found_first_passive.0.off061.i = phi i1 [ %found_first_passive.0.off071.i, %cleanup.i ], [ %found_first_passive.2.off0.ph.i, %for.inc.i56.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %last_passive.063.i)
  %cmp13.not.i = icmp eq i32 %last_passive.063.i, -1
  br i1 %cmp13.not.i, label %if.else15.i, label %if.then14.i

if.then14.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %trip_max_desired_temperature.i = getelementptr inbounds %struct.power_allocator_params, ptr %call7.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %trip_max_desired_temperature.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %last_passive.063.i, ptr %trip_max_desired_temperature.i, align 8
  br label %get_governor_trips.exit

if.else15.i:                                      ; preds = %for.end.i
  br i1 %found_first_passive.0.off061.i, label %if.then17.i, label %if.else15.i.if.else21.i_crit_edge

if.else15.i.if.else21.i_crit_edge:                ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else21.i

if.then17.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %trip_switch_on.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %trip_switch_on.i, align 4
  %trip_max_desired_temperature19.i = getelementptr inbounds %struct.power_allocator_params, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %trip_max_desired_temperature19.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %trip_max_desired_temperature19.i, align 8
  store i32 -1, ptr %trip_switch_on.i, align 4
  br label %get_governor_trips.exit

if.else21.i:                                      ; preds = %if.else15.i.if.else21.i_crit_edge, %if.end17.if.else21.i_crit_edge
  %last_active.0658185.i = phi i32 [ %last_active.065.i, %if.else15.i.if.else21.i_crit_edge ], [ -1, %if.end17.if.else21.i_crit_edge ]
  %trip_switch_on22.i = getelementptr inbounds %struct.power_allocator_params, ptr %call7.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %trip_switch_on22.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %trip_switch_on22.i, align 4
  %trip_max_desired_temperature23.i = getelementptr inbounds %struct.power_allocator_params, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %trip_max_desired_temperature23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %last_active.0658185.i, ptr %trip_max_desired_temperature23.i, align 8
  br label %get_governor_trips.exit

get_governor_trips.exit:                          ; preds = %if.else21.i, %if.then17.i, %if.then14.i
  %45 = ptrtoint ptr %trips.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %trips.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp = icmp sgt i32 %46, 0
  br i1 %cmp, label %if.then18, label %get_governor_trips.exit.if.end25_crit_edge

get_governor_trips.exit.if.end25_crit_edge:       ; preds = %get_governor_trips.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then18:                                        ; preds = %get_governor_trips.exit
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %get_trip_temp, align 4
  %trip_max_desired_temperature = getelementptr inbounds %struct.power_allocator_params, ptr %call7.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %trip_max_desired_temperature to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %trip_max_desired_temperature, align 8
  %call19 = call i32 %50(ptr noundef %tz, i32 noundef %52, ptr noundef nonnull %control_temp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then21:                                        ; preds = %if.then18
  %53 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tzp, align 8
  %sustainable_power23 = getelementptr inbounds %struct.thermal_zone_params, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %sustainable_power23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sustainable_power23, align 4
  %trip_switch_on = getelementptr inbounds %struct.power_allocator_params, ptr %call7.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %trip_switch_on to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %trip_switch_on, align 4
  %59 = ptrtoint ptr %control_temp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %control_temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %switch_on_temp.i) #10
  %61 = ptrtoint ptr %switch_on_temp.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %switch_on_temp.i, align 4, !annotation !103
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops, align 4
  %get_trip_temp.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %get_trip_temp.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_trip_temp.i, align 4
  %call.i58 = call i32 %65(ptr noundef %tz, i32 noundef %58, ptr noundef nonnull %switch_on_temp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i59, label %if.then21.if.end.i60_crit_edge, label %if.then.i

if.then21.if.end.i60_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i60

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %switch_on_temp.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %switch_on_temp.i, align 4
  br label %if.end.i60

if.end.i60:                                       ; preds = %if.then.i, %if.then21.if.end.i60_crit_edge
  %67 = ptrtoint ptr %switch_on_temp.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %switch_on_temp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %68)
  %tobool1.not.i = icmp eq i32 %60, %68
  br i1 %tobool1.not.i, label %if.end.i60.estimate_pid_constants.exit_crit_edge, label %if.end3.i

if.end.i60.estimate_pid_constants.exit_crit_edge: ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %estimate_pid_constants.exit

if.end3.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %60, %68
  %shl.i = shl i32 %56, 10
  %div.i = udiv i32 %shl.i, %sub.i
  %69 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tzp, align 8
  %k_po.i = getelementptr inbounds %struct.thermal_zone_params, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %k_po.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div.i, ptr %k_po.i, align 4
  %mul.i = shl i32 %56, 11
  %div5.i = udiv i32 %mul.i, %sub.i
  %72 = load ptr, ptr %tzp, align 8
  %k_pu.i = getelementptr inbounds %struct.thermal_zone_params, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %k_pu.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %div5.i, ptr %k_pu.i, align 4
  %74 = load ptr, ptr %tzp, align 8
  %k_pu8.i = getelementptr inbounds %struct.thermal_zone_params, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %k_pu8.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %k_pu8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %76)
  %cmp.i61 = icmp sgt i32 %76, 9
  %div9.i = sdiv i32 %76, 10
  %spec.select.i = select i1 %cmp.i61, i32 %div9.i, i32 1
  %k_i11.i = getelementptr inbounds %struct.thermal_zone_params, ptr %74, i32 0, i32 7
  %77 = ptrtoint ptr %k_i11.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %spec.select.i, ptr %k_i11.i, align 4
  br label %estimate_pid_constants.exit

estimate_pid_constants.exit:                      ; preds = %if.end3.i, %if.end.i60.estimate_pid_constants.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %switch_on_temp.i) #10
  br label %if.end25

if.end25:                                         ; preds = %estimate_pid_constants.exit, %if.then18.if.end25_crit_edge, %get_governor_trips.exit.if.end25_crit_edge
  %err_integral.i = getelementptr inbounds %struct.power_allocator_params, ptr %call7.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %err_integral.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 0, ptr %err_integral.i, align 8
  %prev_err.i = getelementptr inbounds %struct.power_allocator_params, ptr %call7.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %prev_err.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %prev_err.i, align 8
  %governor_data = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 23
  %80 = ptrtoint ptr %governor_data to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i, ptr %governor_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then11, %if.end.cleanup_crit_edge, %check_power_actors.exit.cleanup_crit_edge, %for.inc.i.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -12, %if.then11 ], [ %ret.015.i.ph, %check_power_actors.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control_temp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @power_allocator_unbind(ptr noundef %tz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 23
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @power_allocator_unbind.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@power_allocator_unbind, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !104

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  %2 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tz, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @power_allocator_unbind.__UNIQUE_ID_ddebug285, ptr noundef %device, ptr noundef nonnull @.str.35, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 21
  %6 = ptrtoint ptr %tzp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tzp, align 8
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %tzp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tzp, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %9 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %governor_data, align 8
  tail call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %governor_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %governor_data, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_allocator_throttle(ptr noundef %tz, i32 noundef %trip) #0 align 64 {
entry:
  %state.i.i = alloca i32, align 4
  %remainder.i.i.i.i = alloca i32, align 4
  %switch_on_temp.i.i.i.i = alloca i32, align 4
  %min_power.i.i.i.i = alloca i32, align 4
  %req_power.i = alloca i32, align 4
  %switch_on_temp = alloca i32, align 4
  %control_temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %switch_on_temp) #10
  %0 = ptrtoint ptr %switch_on_temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %switch_on_temp, align 4, !annotation !103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control_temp) #10
  %1 = ptrtoint ptr %control_temp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %control_temp, align 4, !annotation !103
  %governor_data = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 23
  %2 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %governor_data, align 8
  %trip_max_desired_temperature = getelementptr inbounds %struct.power_allocator_params, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %trip_max_desired_temperature to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trip_max_desired_temperature, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %trip)
  %cmp.not = icmp eq i32 %5, %trip
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_trip_temp, align 4
  %trip_switch_on = getelementptr inbounds %struct.power_allocator_params, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %trip_switch_on to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trip_switch_on, align 4
  %call = call i32 %9(ptr noundef %tz, i32 noundef %11, ptr noundef nonnull %switch_on_temp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 13
  %12 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temperature, align 8
  %14 = ptrtoint ptr %switch_on_temp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %switch_on_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp1 = icmp slt i32 %13, %15
  br i1 %cmp1, label %if.then2, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %land.lhs.true
  %last_temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 14
  %16 = ptrtoint ptr %last_temperature to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_temperature, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp3.not = icmp slt i32 %17, %15
  %passive = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 16
  %18 = ptrtoint ptr %passive to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %passive, align 4
  %err_integral.i = getelementptr inbounds %struct.power_allocator_params, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %err_integral.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %err_integral.i, align 8
  %prev_err.i = getelementptr inbounds %struct.power_allocator_params, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %prev_err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %prev_err.i, align 8
  %21 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %governor_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req_power.i) #10
  %23 = ptrtoint ptr %req_power.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %req_power.i, align 4, !annotation !103
  %lock.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %thermal_instances.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 24
  %24 = ptrtoint ptr %thermal_instances.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn32.i = load ptr, ptr %thermal_instances.i, align 4
  %cmp.not33.i = icmp eq ptr %.pn32.i, %thermal_instances.i
  br i1 %cmp.not33.i, label %if.then2.allow_maximum_power.exit_crit_edge, label %for.body.lr.ph.i

if.then2.allow_maximum_power.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %allow_maximum_power.exit

for.body.lr.ph.i:                                 ; preds = %if.then2
  %trip_max_desired_temperature.i = getelementptr inbounds %struct.power_allocator_params, ptr %22, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn34.i = phi ptr [ %.pn32.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  %cdev2.i = getelementptr i8, ptr %.pn34.i, i32 -120
  %25 = ptrtoint ptr %cdev2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cdev2.i, align 4
  %trip.i = getelementptr i8, ptr %.pn34.i, i32 -116
  %27 = ptrtoint ptr %trip.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %trip.i, align 4
  %29 = ptrtoint ptr %trip_max_desired_temperature.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %trip_max_desired_temperature.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp3.not.i = icmp eq i32 %28, %30
  br i1 %cmp3.not.i, label %lor.lhs.false.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %ops.i.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %26, i32 0, i32 6
  %31 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i, align 4
  %get_requested_power.i.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %get_requested_power.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_requested_power.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %state2power.i.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %state2power.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state2power.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %36, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cleanup.i_crit_edge, label %cdev_is_power_actor.exit.i

land.lhs.true.i.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

cdev_is_power_actor.exit.i:                       ; preds = %land.lhs.true.i.i
  %power2state.i.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %32, i32 0, i32 5
  %37 = ptrtoint ptr %power2state.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %power2state.i.i, align 4
  %tobool4.i.not.i = icmp eq ptr %38, null
  br i1 %tobool4.i.not.i, label %cdev_is_power_actor.exit.i.cleanup.i_crit_edge, label %if.end.i

cdev_is_power_actor.exit.i.cleanup.i_crit_edge:   ; preds = %cdev_is_power_actor.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %cdev_is_power_actor.exit.i
  %target.i = getelementptr i8, ptr %.pn34.i, i32 -100
  %39 = ptrtoint ptr %target.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %target.i, align 4
  %lock6.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %26, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %lock6.i, i32 noundef 0) #10
  %40 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i.i, align 4
  %get_requested_power.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %get_requested_power.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_requested_power.i, align 4
  %call7.i = call i32 %43(ptr noundef %26, ptr noundef nonnull %req_power.i) #10
  br i1 %cmp3.not, label %if.end.i.if.end10.i_crit_edge, label %if.then8.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %cdev2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cdev2.i, align 4
  call void @__thermal_cdev_update(ptr noundef %45) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i.if.end10.i_crit_edge
  %46 = ptrtoint ptr %cdev2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cdev2.i, align 4
  %lock12.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %47, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %lock12.i) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end10.i, %cdev_is_power_actor.exit.i.cleanup.i_crit_edge, %land.lhs.true.i.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %48 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn34.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %thermal_instances.i
  br i1 %cmp.not.i, label %cleanup.i.allow_maximum_power.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup.i.allow_maximum_power.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allow_maximum_power.exit

allow_maximum_power.exit:                         ; preds = %cleanup.i.allow_maximum_power.exit_crit_edge, %if.then2.allow_maximum_power.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req_power.i) #10
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %passive6 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 16
  %49 = ptrtoint ptr %passive6 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %passive6, align 4
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 4
  %get_trip_temp8 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %get_trip_temp8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_trip_temp8, align 4
  %54 = ptrtoint ptr %trip_max_desired_temperature to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %trip_max_desired_temperature, align 8
  %call10 = call i32 %53(ptr noundef %tz, i32 noundef %55, ptr noundef nonnull %control_temp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device, ptr noundef nonnull @.str.36, i32 noundef %call10) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %56 = ptrtoint ptr %control_temp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %control_temp, align 4
  %58 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %governor_data, align 8
  %trip_max_desired_temperature1.i = getelementptr inbounds %struct.power_allocator_params, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %trip_max_desired_temperature1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %trip_max_desired_temperature1.i, align 8
  %lock.i37 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %lock.i37, i32 noundef 0) #10
  %thermal_instances.i38 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 24
  %62 = ptrtoint ptr %thermal_instances.i38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn259.i = load ptr, ptr %thermal_instances.i38, align 4
  %cmp.not260.i = icmp eq ptr %.pn259.i, %thermal_instances.i38
  br i1 %cmp.not260.i, label %if.end13.allocate_power.exit_crit_edge, label %if.end13.for.body.i40_crit_edge

if.end13.for.body.i40_crit_edge:                  ; preds = %if.end13
  br label %for.body.i40

if.end13.allocate_power.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_power.exit

for.body.i40:                                     ; preds = %for.inc.i.for.body.i40_crit_edge, %if.end13.for.body.i40_crit_edge
  %.pn263.i = phi ptr [ %.pn.i50, %for.inc.i.for.body.i40_crit_edge ], [ %.pn259.i, %if.end13.for.body.i40_crit_edge ]
  %total_weight.0262.i = phi i32 [ %total_weight.1.i, %for.inc.i.for.body.i40_crit_edge ], [ 0, %if.end13.for.body.i40_crit_edge ]
  %num_actors.0261.i = phi i32 [ %num_actors.1.i, %for.inc.i.for.body.i40_crit_edge ], [ 0, %if.end13.for.body.i40_crit_edge ]
  %trip.i39 = getelementptr i8, ptr %.pn263.i, i32 -116
  %63 = ptrtoint ptr %trip.i39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %trip.i39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %61)
  %cmp3.i = icmp eq i32 %64, %61
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i40.for.inc.i_crit_edge

for.body.i40.for.inc.i_crit_edge:                 ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i40
  %cdev.i = getelementptr i8, ptr %.pn263.i, i32 -120
  %65 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cdev.i, align 4
  %ops.i.i41 = getelementptr inbounds %struct.thermal_cooling_device, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %ops.i.i41 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i.i41, align 4
  %get_requested_power.i.i42 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %get_requested_power.i.i42 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_requested_power.i.i42, align 4
  %tobool.not.i.i43 = icmp eq ptr %70, null
  br i1 %tobool.not.i.i43, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.i46

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.i46:                              ; preds = %land.lhs.true.i
  %state2power.i.i44 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %68, i32 0, i32 4
  %71 = ptrtoint ptr %state2power.i.i44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %state2power.i.i44, align 4
  %tobool2.not.i.i45 = icmp eq ptr %72, null
  br i1 %tobool2.not.i.i45, label %land.lhs.true.i.i46.for.inc.i_crit_edge, label %cdev_is_power_actor.exit.i49

land.lhs.true.i.i46.for.inc.i_crit_edge:          ; preds = %land.lhs.true.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cdev_is_power_actor.exit.i49:                     ; preds = %land.lhs.true.i.i46
  %power2state.i.i47 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %68, i32 0, i32 5
  %73 = ptrtoint ptr %power2state.i.i47 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %power2state.i.i47, align 4
  %tobool4.i.not.i48 = icmp eq ptr %74, null
  br i1 %tobool4.i.not.i48, label %cdev_is_power_actor.exit.i49.for.inc.i_crit_edge, label %if.then.i

cdev_is_power_actor.exit.i49.for.inc.i_crit_edge: ; preds = %cdev_is_power_actor.exit.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %cdev_is_power_actor.exit.i49
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %num_actors.0261.i, 1
  %weight.i = getelementptr i8, ptr %.pn263.i, i32 16
  %75 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %weight.i, align 4
  %add.i = add i32 %76, %total_weight.0262.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %cdev_is_power_actor.exit.i49.for.inc.i_crit_edge, %land.lhs.true.i.i46.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i40.for.inc.i_crit_edge
  %num_actors.1.i = phi i32 [ %inc.i, %if.then.i ], [ %num_actors.0261.i, %cdev_is_power_actor.exit.i49.for.inc.i_crit_edge ], [ %num_actors.0261.i, %for.body.i40.for.inc.i_crit_edge ], [ %num_actors.0261.i, %land.lhs.true.i.i46.for.inc.i_crit_edge ], [ %num_actors.0261.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %total_weight.1.i = phi i32 [ %add.i, %if.then.i ], [ %total_weight.0262.i, %cdev_is_power_actor.exit.i49.for.inc.i_crit_edge ], [ %total_weight.0262.i, %for.body.i40.for.inc.i_crit_edge ], [ %total_weight.0262.i, %land.lhs.true.i.i46.for.inc.i_crit_edge ], [ %total_weight.0262.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %77 = ptrtoint ptr %.pn263.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn.i50 = load ptr, ptr %.pn263.i, align 4
  %cmp.not.i51 = icmp eq ptr %.pn.i50, %thermal_instances.i38
  br i1 %cmp.not.i51, label %for.end.i, label %for.inc.i.for.body.i40_crit_edge

for.inc.i.for.body.i40_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i40

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_actors.1.i)
  %tobool.not.i = icmp eq i32 %num_actors.1.i, 0
  br i1 %tobool.not.i, label %for.end.i.allocate_power.exit_crit_edge, label %do.end19.i

for.end.i.allocate_power.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_power.exit

do.end19.i:                                       ; preds = %for.end.i
  %mul.i = mul i32 %num_actors.1.i, 5
  %78 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i, i32 4) #10
  %79 = extractvalue { i32, i1 } %78, 1
  br i1 %79, label %do.end19.i.allocate_power.exit_crit_edge, label %if.end7.i.i.i, !prof !102

do.end19.i.allocate_power.exit_crit_edge:         ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_power.exit

if.end7.i.i.i:                                    ; preds = %do.end19.i
  %80 = extractvalue { i32, i1 } %78, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %80, i32 noundef 3520) #15
  %tobool21.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool21.not.i, label %if.end7.i.i.i.allocate_power.exit_crit_edge, label %if.end23.i

if.end7.i.i.i.allocate_power.exit_crit_edge:      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %allocate_power.exit

if.end23.i:                                       ; preds = %if.end7.i.i.i
  %arrayidx.i = getelementptr i32, ptr %call8.i.i.i, i32 %num_actors.1.i
  %mul24.i = shl i32 %num_actors.1.i, 1
  %arrayidx25.i = getelementptr i32, ptr %call8.i.i.i, i32 %mul24.i
  %mul26.i = mul i32 %num_actors.1.i, 3
  %arrayidx27.i = getelementptr i32, ptr %call8.i.i.i, i32 %mul26.i
  %mul28.i = shl i32 %num_actors.1.i, 2
  %arrayidx29.i = getelementptr i32, ptr %call8.i.i.i, i32 %mul28.i
  %81 = ptrtoint ptr %thermal_instances.i38 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn212265.i = load ptr, ptr %thermal_instances.i38, align 4
  %cmp38.not266.i = icmp eq ptr %.pn212265.i, %thermal_instances.i38
  br i1 %cmp38.not266.i, label %if.end23.i.for.end83.i_crit_edge, label %for.body40.lr.ph.i

if.end23.i.for.end83.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83.i

for.body40.lr.ph.i:                               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_weight.1.i)
  %tobool56.not.i = icmp eq i32 %total_weight.1.i, 0
  br label %for.body40.i

for.body40.i:                                     ; preds = %cleanup.i52.for.body40.i_crit_edge, %for.body40.lr.ph.i
  %.pn212271.i = phi ptr [ %.pn212265.i, %for.body40.lr.ph.i ], [ %.pn212.i, %cleanup.i52.for.body40.i_crit_edge ]
  %total_req_power.0270.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %total_req_power.1.i, %cleanup.i52.for.body40.i_crit_edge ]
  %max_allocatable_power.0269.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %max_allocatable_power.1.i, %cleanup.i52.for.body40.i_crit_edge ]
  %total_weighted_req_power.0268.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %total_weighted_req_power.1.i, %cleanup.i52.for.body40.i_crit_edge ]
  %i.0267.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %i.1.i, %cleanup.i52.for.body40.i_crit_edge ]
  %cdev43.i = getelementptr i8, ptr %.pn212271.i, i32 -120
  %82 = ptrtoint ptr %cdev43.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cdev43.i, align 4
  %trip44.i = getelementptr i8, ptr %.pn212271.i, i32 -116
  %84 = ptrtoint ptr %trip44.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %trip44.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %61)
  %cmp45.not.i = icmp eq i32 %85, %61
  br i1 %cmp45.not.i, label %if.end47.i, label %for.body40.i.cleanup.i52_crit_edge

for.body40.i.cleanup.i52_crit_edge:               ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i52

if.end47.i:                                       ; preds = %for.body40.i
  %ops.i214.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %83, i32 0, i32 6
  %86 = ptrtoint ptr %ops.i214.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops.i214.i, align 4
  %get_requested_power.i215.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %get_requested_power.i215.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_requested_power.i215.i, align 4
  %tobool.not.i216.i = icmp eq ptr %89, null
  br i1 %tobool.not.i216.i, label %if.end47.i.cleanup.i52_crit_edge, label %land.lhs.true.i219.i

if.end47.i.cleanup.i52_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i52

land.lhs.true.i219.i:                             ; preds = %if.end47.i
  %state2power.i217.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %87, i32 0, i32 4
  %90 = ptrtoint ptr %state2power.i217.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %state2power.i217.i, align 4
  %tobool2.not.i218.i = icmp eq ptr %91, null
  br i1 %tobool2.not.i218.i, label %land.lhs.true.i219.i.cleanup.i52_crit_edge, label %cdev_is_power_actor.exit223.i

land.lhs.true.i219.i.cleanup.i52_crit_edge:       ; preds = %land.lhs.true.i219.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i52

cdev_is_power_actor.exit223.i:                    ; preds = %land.lhs.true.i219.i
  %power2state.i220.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %87, i32 0, i32 5
  %92 = ptrtoint ptr %power2state.i220.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %power2state.i220.i, align 4
  %tobool4.i221.not.i = icmp eq ptr %93, null
  br i1 %tobool4.i221.not.i, label %cdev_is_power_actor.exit223.i.cleanup.i52_crit_edge, label %if.end50.i

cdev_is_power_actor.exit223.i.cleanup.i52_crit_edge: ; preds = %cdev_is_power_actor.exit223.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i52

if.end50.i:                                       ; preds = %cdev_is_power_actor.exit223.i
  %arrayidx51.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.0267.i
  %call52.i = call i32 %89(ptr noundef %83, ptr noundef %arrayidx51.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end50.i.cleanup.i52_crit_edge

if.end50.i.cleanup.i52_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i52

if.end55.i:                                       ; preds = %if.end50.i
  br i1 %tobool56.not.i, label %if.end55.i.if.end59.i_crit_edge, label %if.else.i

if.end55.i.if.end59.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

if.else.i:                                        ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %weight58.i = getelementptr i8, ptr %.pn212271.i, i32 16
  %94 = ptrtoint ptr %weight58.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %weight58.i, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else.i, %if.end55.i.if.end59.i_crit_edge
  %weight41.0.i = phi i32 [ %95, %if.else.i ], [ 1024, %if.end55.i.if.end59.i_crit_edge ]
  %96 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx51.i, align 4
  %mul61.i = mul i32 %97, %weight41.0.i
  %shr.i = lshr i32 %mul61.i, 10
  %arrayidx62.i = getelementptr i32, ptr %arrayidx29.i, i32 %i.0267.i
  %98 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %shr.i, ptr %arrayidx62.i, align 4
  %99 = ptrtoint ptr %ops.i214.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i214.i, align 4
  %state2power.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %state2power.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state2power.i, align 4
  %lower.i = getelementptr i8, ptr %.pn212271.i, i32 -104
  %103 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lower.i, align 4
  %arrayidx64.i = getelementptr i32, ptr %arrayidx.i, i32 %i.0267.i
  %call65.i = call i32 %102(ptr noundef %83, i32 noundef %104, ptr noundef %arrayidx64.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end59.i.cleanup.i52_crit_edge

if.end59.i.cleanup.i52_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i52

if.end68.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx51.i, align 4
  %add70.i = add i32 %106, %total_req_power.0270.i
  %107 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx64.i, align 4
  %add72.i = add i32 %108, %max_allocatable_power.0269.i
  %109 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx62.i, align 4
  %add74.i = add i32 %110, %total_weighted_req_power.0268.i
  %inc75.i = add i32 %i.0267.i, 1
  br label %cleanup.i52

cleanup.i52:                                      ; preds = %if.end68.i, %if.end59.i.cleanup.i52_crit_edge, %if.end50.i.cleanup.i52_crit_edge, %cdev_is_power_actor.exit223.i.cleanup.i52_crit_edge, %land.lhs.true.i219.i.cleanup.i52_crit_edge, %if.end47.i.cleanup.i52_crit_edge, %for.body40.i.cleanup.i52_crit_edge
  %i.1.i = phi i32 [ %inc75.i, %if.end68.i ], [ %i.0267.i, %for.body40.i.cleanup.i52_crit_edge ], [ %i.0267.i, %cdev_is_power_actor.exit223.i.cleanup.i52_crit_edge ], [ %i.0267.i, %if.end50.i.cleanup.i52_crit_edge ], [ %i.0267.i, %if.end59.i.cleanup.i52_crit_edge ], [ %i.0267.i, %land.lhs.true.i219.i.cleanup.i52_crit_edge ], [ %i.0267.i, %if.end47.i.cleanup.i52_crit_edge ]
  %total_weighted_req_power.1.i = phi i32 [ %add74.i, %if.end68.i ], [ %total_weighted_req_power.0268.i, %for.body40.i.cleanup.i52_crit_edge ], [ %total_weighted_req_power.0268.i, %cdev_is_power_actor.exit223.i.cleanup.i52_crit_edge ], [ %total_weighted_req_power.0268.i, %if.end50.i.cleanup.i52_crit_edge ], [ %total_weighted_req_power.0268.i, %if.end59.i.cleanup.i52_crit_edge ], [ %total_weighted_req_power.0268.i, %land.lhs.true.i219.i.cleanup.i52_crit_edge ], [ %total_weighted_req_power.0268.i, %if.end47.i.cleanup.i52_crit_edge ]
  %max_allocatable_power.1.i = phi i32 [ %add72.i, %if.end68.i ], [ %max_allocatable_power.0269.i, %for.body40.i.cleanup.i52_crit_edge ], [ %max_allocatable_power.0269.i, %cdev_is_power_actor.exit223.i.cleanup.i52_crit_edge ], [ %max_allocatable_power.0269.i, %if.end50.i.cleanup.i52_crit_edge ], [ %max_allocatable_power.0269.i, %if.end59.i.cleanup.i52_crit_edge ], [ %max_allocatable_power.0269.i, %land.lhs.true.i219.i.cleanup.i52_crit_edge ], [ %max_allocatable_power.0269.i, %if.end47.i.cleanup.i52_crit_edge ]
  %total_req_power.1.i = phi i32 [ %add70.i, %if.end68.i ], [ %total_req_power.0270.i, %for.body40.i.cleanup.i52_crit_edge ], [ %total_req_power.0270.i, %cdev_is_power_actor.exit223.i.cleanup.i52_crit_edge ], [ %total_req_power.0270.i, %if.end50.i.cleanup.i52_crit_edge ], [ %total_req_power.0270.i, %if.end59.i.cleanup.i52_crit_edge ], [ %total_req_power.0270.i, %land.lhs.true.i219.i.cleanup.i52_crit_edge ], [ %total_req_power.0270.i, %if.end47.i.cleanup.i52_crit_edge ]
  %111 = ptrtoint ptr %.pn212271.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pn212.i = load ptr, ptr %.pn212271.i, align 4
  %cmp38.not.i = icmp eq ptr %.pn212.i, %thermal_instances.i38
  br i1 %cmp38.not.i, label %cleanup.i52.for.end83.i_crit_edge, label %cleanup.i52.for.body40.i_crit_edge

cleanup.i52.for.body40.i_crit_edge:               ; preds = %cleanup.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40.i

cleanup.i52.for.end83.i_crit_edge:                ; preds = %cleanup.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83.i

for.end83.i:                                      ; preds = %cleanup.i52.for.end83.i_crit_edge, %if.end23.i.for.end83.i_crit_edge
  %total_weighted_req_power.0.lcssa.i = phi i32 [ 0, %if.end23.i.for.end83.i_crit_edge ], [ %total_weighted_req_power.1.i, %cleanup.i52.for.end83.i_crit_edge ]
  %max_allocatable_power.0.lcssa.i = phi i32 [ 0, %if.end23.i.for.end83.i_crit_edge ], [ %max_allocatable_power.1.i, %cleanup.i52.for.end83.i_crit_edge ]
  %total_req_power.0.lcssa.i = phi i32 [ 0, %if.end23.i.for.end83.i_crit_edge ], [ %total_req_power.1.i, %cleanup.i52.for.end83.i_crit_edge ]
  %112 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %governor_data, align 8
  %shl.i.i = shl i32 %max_allocatable_power.0.lcssa.i, 10
  %tzp.i.i.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 21
  %114 = ptrtoint ptr %tzp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tzp.i.i.i, align 8
  %sustainable_power1.i.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %sustainable_power1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sustainable_power1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i.i.i = icmp eq i32 %117, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.end83.i.if.end.i.i227.i_crit_edge

for.end83.i.if.end.i.i227.i_crit_edge:            ; preds = %for.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i227.i

if.then.i.i.i:                                    ; preds = %for.end83.i
  %118 = ptrtoint ptr %thermal_instances.i38 to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pn27.i.i.i.i = load ptr, ptr %thermal_instances.i38, align 4
  %cmp.not28.i.i.i.i = icmp eq ptr %.pn27.i.i.i.i, %thermal_instances.i38
  br i1 %cmp.not28.i.i.i.i, label %if.then.i.i.i.if.end.i.i227.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.then.i.i.i.if.end.i.i227.i_crit_edge:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i227.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.then.i.i.i
  %trip_max_desired_temperature.i.i.i.i = getelementptr inbounds %struct.power_allocator_params, ptr %113, i32 0, i32 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %cleanup.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %.pn30.i.i.i.i = phi ptr [ %.pn27.i.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %.pn.i.i.i.i, %cleanup.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %sustainable_power.029.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %sustainable_power.1.i.i.i.i, %cleanup.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %cdev2.i.i.i.i = getelementptr i8, ptr %.pn30.i.i.i.i, i32 -120
  %119 = ptrtoint ptr %cdev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cdev2.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_power.i.i.i.i) #10
  %121 = ptrtoint ptr %min_power.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %min_power.i.i.i.i, align 4, !annotation !103
  %trip.i.i.i.i = getelementptr i8, ptr %.pn30.i.i.i.i, i32 -116
  %122 = ptrtoint ptr %trip.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %trip.i.i.i.i, align 4
  %124 = ptrtoint ptr %trip_max_desired_temperature.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %trip_max_desired_temperature.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp3.not.i.i.i.i = icmp eq i32 %123, %125
  br i1 %cmp3.not.i.i.i.i, label %if.end.i.i.i225.i, label %for.body.i.i.i.i.cleanup.i.i.i.i_crit_edge

for.body.i.i.i.i.cleanup.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i.i

if.end.i.i.i225.i:                                ; preds = %for.body.i.i.i.i
  %ops.i.i.i.i.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %120, i32 0, i32 6
  %126 = ptrtoint ptr %ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops.i.i.i.i.i, align 4
  %get_requested_power.i.i.i.i.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %get_requested_power.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %get_requested_power.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i224.i = icmp eq ptr %129, null
  br i1 %tobool.not.i.i.i.i224.i, label %if.end.i.i.i225.i.cleanup.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end.i.i.i225.i.cleanup.i.i.i.i_crit_edge:      ; preds = %if.end.i.i.i225.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i.i.i225.i
  %state2power.i.i.i.i.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %127, i32 0, i32 4
  %130 = ptrtoint ptr %state2power.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %state2power.i.i.i.i.i, align 4
  %tobool2.not.i.i.i.i.i = icmp eq ptr %131, null
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.cleanup.i.i.i.i_crit_edge, label %cdev_is_power_actor.exit.i.i.i.i

land.lhs.true.i.i.i.i.i.cleanup.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i.i

cdev_is_power_actor.exit.i.i.i.i:                 ; preds = %land.lhs.true.i.i.i.i.i
  %power2state.i.i.i.i.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %127, i32 0, i32 5
  %132 = ptrtoint ptr %power2state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %power2state.i.i.i.i.i, align 4
  %tobool4.i.not.i.i.i.i = icmp eq ptr %133, null
  br i1 %tobool4.i.not.i.i.i.i, label %cdev_is_power_actor.exit.i.i.i.i.cleanup.i.i.i.i_crit_edge, label %if.end5.i.i.i.i

cdev_is_power_actor.exit.i.i.i.i.cleanup.i.i.i.i_crit_edge: ; preds = %cdev_is_power_actor.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %cdev_is_power_actor.exit.i.i.i.i
  %upper.i.i.i.i = getelementptr i8, ptr %.pn30.i.i.i.i, i32 -108
  %134 = ptrtoint ptr %upper.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %upper.i.i.i.i, align 4
  %call6.i.i.i.i = call i32 %131(ptr noundef %120, i32 noundef %135, ptr noundef nonnull %min_power.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call6.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end8.i.i.i226.i, label %if.end5.i.i.i.i.cleanup.i.i.i.i_crit_edge

if.end5.i.i.i.i.cleanup.i.i.i.i_crit_edge:        ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i.i

if.end8.i.i.i226.i:                               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %min_power.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %min_power.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %137, %sustainable_power.029.i.i.i.i
  br label %cleanup.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.end8.i.i.i226.i, %if.end5.i.i.i.i.cleanup.i.i.i.i_crit_edge, %cdev_is_power_actor.exit.i.i.i.i.cleanup.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.cleanup.i.i.i.i_crit_edge, %if.end.i.i.i225.i.cleanup.i.i.i.i_crit_edge, %for.body.i.i.i.i.cleanup.i.i.i.i_crit_edge
  %sustainable_power.1.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.end8.i.i.i226.i ], [ %sustainable_power.029.i.i.i.i, %for.body.i.i.i.i.cleanup.i.i.i.i_crit_edge ], [ %sustainable_power.029.i.i.i.i, %cdev_is_power_actor.exit.i.i.i.i.cleanup.i.i.i.i_crit_edge ], [ %sustainable_power.029.i.i.i.i, %if.end5.i.i.i.i.cleanup.i.i.i.i_crit_edge ], [ %sustainable_power.029.i.i.i.i, %land.lhs.true.i.i.i.i.i.cleanup.i.i.i.i_crit_edge ], [ %sustainable_power.029.i.i.i.i, %if.end.i.i.i225.i.cleanup.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_power.i.i.i.i) #10
  %138 = ptrtoint ptr %.pn30.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pn.i.i.i.i = load ptr, ptr %.pn30.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %thermal_instances.i38
  br i1 %cmp.not.i.i.i.i, label %cleanup.i.i.i.i.if.end.i.i227.i_crit_edge, label %cleanup.i.i.i.i.for.body.i.i.i.i_crit_edge

cleanup.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

cleanup.i.i.i.i.if.end.i.i227.i_crit_edge:        ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i227.i

if.end.i.i227.i:                                  ; preds = %cleanup.i.i.i.i.if.end.i.i227.i_crit_edge, %if.then.i.i.i.if.end.i.i227.i_crit_edge, %for.end83.i.if.end.i.i227.i_crit_edge
  %sustainable_power.0.i.i.i = phi i32 [ %117, %for.end83.i.if.end.i.i227.i_crit_edge ], [ 0, %if.then.i.i.i.if.end.i.i227.i_crit_edge ], [ %sustainable_power.1.i.i.i.i, %cleanup.i.i.i.i.if.end.i.i227.i_crit_edge ]
  %sustainable_power4.i.i.i = getelementptr inbounds %struct.power_allocator_params, ptr %113, i32 0, i32 5
  %139 = ptrtoint ptr %sustainable_power4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sustainable_power4.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sustainable_power.0.i.i.i, i32 %140)
  %cmp.not.i.i.i = icmp eq i32 %sustainable_power.0.i.i.i, %140
  br i1 %cmp.not.i.i.i, label %if.end.i.i227.i.get_sustainable_power.exit.i.i_crit_edge, label %if.then5.i.i228.i

if.end.i.i227.i.get_sustainable_power.exit.i.i_crit_edge: ; preds = %if.end.i.i227.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_sustainable_power.exit.i.i

if.then5.i.i228.i:                                ; preds = %if.end.i.i227.i
  %trip_switch_on.i.i.i = getelementptr inbounds %struct.power_allocator_params, ptr %113, i32 0, i32 3
  %141 = ptrtoint ptr %trip_switch_on.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %trip_switch_on.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %switch_on_temp.i.i.i.i) #10
  %143 = ptrtoint ptr %switch_on_temp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %switch_on_temp.i.i.i.i, align 4, !annotation !103
  %144 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops, align 4
  %get_trip_temp.i.i.i.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %145, i32 0, i32 6
  %146 = ptrtoint ptr %get_trip_temp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %get_trip_temp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %147(ptr noundef %tz, i32 noundef %142, ptr noundef nonnull %switch_on_temp.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i20.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i20.i.i.i, label %if.then5.i.i228.i.if.end.i21.i.i.i_crit_edge, label %if.then.i.i.i229.i

if.then5.i.i228.i.if.end.i21.i.i.i_crit_edge:     ; preds = %if.then5.i.i228.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i21.i.i.i

if.then.i.i.i229.i:                               ; preds = %if.then5.i.i228.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %switch_on_temp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %switch_on_temp.i.i.i.i, align 4
  br label %if.end.i21.i.i.i

if.end.i21.i.i.i:                                 ; preds = %if.then.i.i.i229.i, %if.then5.i.i228.i.if.end.i21.i.i.i_crit_edge
  %149 = ptrtoint ptr %switch_on_temp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %switch_on_temp.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %150)
  %tobool1.not.i.i.i.i = icmp eq i32 %57, %150
  br i1 %tobool1.not.i.i.i.i, label %if.end.i21.i.i.i.estimate_pid_constants.exit.i.i.i_crit_edge, label %if.end3.i.i.i.i

if.end.i21.i.i.i.estimate_pid_constants.exit.i.i.i_crit_edge: ; preds = %if.end.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %estimate_pid_constants.exit.i.i.i

if.end3.i.i.i.i:                                  ; preds = %if.end.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i.i = sub i32 %57, %150
  %shl.i.i.i.i = shl i32 %sustainable_power.0.i.i.i, 10
  %div.i.i.i.i = udiv i32 %shl.i.i.i.i, %sub.i.i.i.i
  %151 = ptrtoint ptr %tzp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tzp.i.i.i, align 8
  %k_po.i.i.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %k_po.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %div.i.i.i.i, ptr %k_po.i.i.i.i, align 4
  %mul.i.i.i.i = shl i32 %sustainable_power.0.i.i.i, 11
  %div5.i.i.i.i = udiv i32 %mul.i.i.i.i, %sub.i.i.i.i
  %154 = load ptr, ptr %tzp.i.i.i, align 8
  %k_pu.i.i.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %154, i32 0, i32 6
  %155 = ptrtoint ptr %k_pu.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %div5.i.i.i.i, ptr %k_pu.i.i.i.i, align 4
  %156 = load ptr, ptr %tzp.i.i.i, align 8
  %k_pu8.i.i.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %156, i32 0, i32 6
  %157 = ptrtoint ptr %k_pu8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %k_pu8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %158)
  %cmp.i.i.i230.i = icmp sgt i32 %158, 9
  %div9.i.i.i.i = sdiv i32 %158, 10
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i230.i, i32 %div9.i.i.i.i, i32 1
  %k_i11.i.i.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %156, i32 0, i32 7
  %159 = ptrtoint ptr %k_i11.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %spec.select.i.i.i.i, ptr %k_i11.i.i.i.i, align 4
  br label %estimate_pid_constants.exit.i.i.i

estimate_pid_constants.exit.i.i.i:                ; preds = %if.end3.i.i.i.i, %if.end.i21.i.i.i.estimate_pid_constants.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %switch_on_temp.i.i.i.i) #10
  %160 = ptrtoint ptr %tzp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %tzp.i.i.i, align 8
  %sustainable_power7.i.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %sustainable_power7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %sustainable_power.0.i.i.i, ptr %sustainable_power7.i.i.i, align 4
  %163 = ptrtoint ptr %sustainable_power4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %sustainable_power.0.i.i.i, ptr %sustainable_power4.i.i.i, align 4
  br label %get_sustainable_power.exit.i.i

get_sustainable_power.exit.i.i:                   ; preds = %estimate_pid_constants.exit.i.i.i, %if.end.i.i227.i.get_sustainable_power.exit.i.i_crit_edge
  %temperature.i.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 13
  %164 = ptrtoint ptr %temperature.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %temperature.i.i, align 8
  %sub.i.i = sub i32 %57, %165
  %shl1.i.i = shl i32 %sub.i.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl1.i.i)
  %cmp.i.i = icmp slt i32 %shl1.i.i, 0
  %166 = ptrtoint ptr %tzp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tzp.i.i.i, align 8
  %k_po.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %167, i32 0, i32 5
  %k_pu.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %167, i32 0, i32 6
  %cond.in.i.i = select i1 %cmp.i.i, ptr %k_po.i.i, ptr %k_pu.i.i
  %168 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %conv3.i.i = sext i32 %shl1.i.i to i64
  %k_i.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %167, i32 0, i32 7
  %169 = ptrtoint ptr %k_i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %k_i.i.i, align 4
  %conv6.i.i = sext i32 %170 to i64
  %err_integral.i.i = getelementptr inbounds %struct.power_allocator_params, ptr %113, i32 0, i32 1
  %171 = ptrtoint ptr %err_integral.i.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %err_integral.i.i, align 8
  %mul.i110.i.i = mul i64 %172, %conv6.i.i
  %shr.i111.i.i = ashr i64 %mul.i110.i.i, 10
  %integral_cutoff.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %167, i32 0, i32 9
  %173 = ptrtoint ptr %integral_cutoff.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %integral_cutoff.i.i, align 4
  %shl9.i.i = shl i32 %174, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %shl1.i.i, i32 %shl9.i.i)
  %cmp10.i.i = icmp slt i32 %shl1.i.i, %shl9.i.i
  br i1 %cmp10.i.i, label %if.then.i.i, label %get_sustainable_power.exit.i.i.pid_controller.exit.i_crit_edge

get_sustainable_power.exit.i.i.pid_controller.exit.i_crit_edge: ; preds = %get_sustainable_power.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pid_controller.exit.i

if.then.i.i:                                      ; preds = %get_sustainable_power.exit.i.i
  %mul.i112.i.i = mul nsw i64 %conv6.i.i, %conv3.i.i
  %shr.i113.i.i = ashr exact i64 %mul.i112.i.i, 10
  %add.i.i = add nsw i64 %shr.i111.i.i, %shr.i113.i.i
  %175 = call i64 @llvm.abs.i64(i64 %add.i.i, i1 true) #10
  %conv24.i.i = sext i32 %shl.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %175, i64 %conv24.i.i)
  %cmp25.i.i = icmp slt i64 %175, %conv24.i.i
  br i1 %cmp25.i.i, label %if.then27.i.i, label %if.then.i.i.pid_controller.exit.i_crit_edge

if.then.i.i.pid_controller.exit.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pid_controller.exit.i

if.then27.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add30.i.i = add i64 %172, %conv3.i.i
  %176 = ptrtoint ptr %err_integral.i.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %add30.i.i, ptr %err_integral.i.i, align 8
  br label %pid_controller.exit.i

pid_controller.exit.i:                            ; preds = %if.then27.i.i, %if.then.i.i.pid_controller.exit.i_crit_edge, %get_sustainable_power.exit.i.i.pid_controller.exit.i_crit_edge
  %i.1.i.i = phi i64 [ %shr.i111.i.i, %get_sustainable_power.exit.i.i.pid_controller.exit.i_crit_edge ], [ %add.i.i, %if.then27.i.i ], [ %shr.i111.i.i, %if.then.i.i.pid_controller.exit.i_crit_edge ]
  %conv.i.i = sext i32 %cond.i.i to i64
  %mul.i.i.i = mul nsw i64 %conv.i.i, %conv3.i.i
  %shr.i.i.i = ashr exact i64 %mul.i.i.i, 10
  %177 = ptrtoint ptr %tzp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tzp.i.i.i, align 8
  %k_d.i.i = getelementptr inbounds %struct.thermal_zone_params, ptr %178, i32 0, i32 8
  %179 = ptrtoint ptr %k_d.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %k_d.i.i, align 4
  %conv33.i.i = sext i32 %180 to i64
  %prev_err.i.i = getelementptr inbounds %struct.power_allocator_params, ptr %113, i32 0, i32 2
  %181 = ptrtoint ptr %prev_err.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %prev_err.i.i, align 8
  %sub34.i.i = sub i32 %shl1.i.i, %182
  %conv35.i.i = sext i32 %sub34.i.i to i64
  %mul.i114.i.i = mul nsw i64 %conv35.i.i, %conv33.i.i
  %passive_delay_jiffies.i.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 11
  %183 = ptrtoint ptr %passive_delay_jiffies.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %passive_delay_jiffies.i.i, align 8
  %call37.i.i = call i32 @jiffies_to_msecs(i32 noundef %184) #10
  %shl.i.i.i = and i64 %mul.i114.i.i, -1024
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #10
  %185 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !103
  %call.i.i116.i.i = call i64 @div_s64_rem(i64 noundef %shl.i.i.i, i32 noundef %call37.i.i, ptr noundef nonnull %remainder.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #10
  %186 = ptrtoint ptr %prev_err.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %shl1.i.i, ptr %prev_err.i.i, align 8
  %add41.i.i = add nsw i64 %i.1.i.i, %shr.i.i.i
  %add42.i.i = add i64 %add41.i.i, %call.i.i116.i.i
  %conv43.i.i = zext i32 %sustainable_power.0.i.i.i to i64
  %shr.i.i = ashr i64 %add42.i.i, 10
  %add44.i.i = add nsw i64 %shr.i.i, %conv43.i.i
  %187 = call i64 @llvm.smax.i64(i64 %add44.i.i, i64 0) #10
  %conv52.i.i = zext i32 %max_allocatable_power.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %187, i64 %conv52.i.i)
  %cmp54.i.i = icmp ult i64 %187, %conv52.i.i
  %extract.t.i.i = trunc i64 %187 to i32
  %cond59.off0.i.i = select i1 %cmp54.i.i, i32 %extract.t.i.i, i32 %max_allocatable_power.0.lcssa.i
  %shr60.i.i = ashr exact i32 %shl1.i.i, 10
  %188 = ptrtoint ptr %err_integral.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %err_integral.i.i, align 8
  %190 = lshr i64 %189, 10
  %conv63.i.i = trunc i64 %190 to i32
  %shr64.i.i = ashr i64 %mul.i.i.i, 20
  %shr65.i.i = ashr i64 %i.1.i.i, 10
  %shr66.i.i = ashr i64 %call.i.i116.i.i, 10
  call fastcc void @trace_thermal_power_allocator_pid(ptr noundef %tz, i32 noundef %shr60.i.i, i32 noundef %conv63.i.i, i64 noundef %shr64.i.i, i64 noundef %shr65.i.i, i64 noundef %shr66.i.i, i32 noundef %cond59.off0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_weighted_req_power.0.lcssa.i)
  %tobool.not.i231.i = icmp eq i32 %total_weighted_req_power.0.lcssa.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i231.i, i32 1, i32 %total_weighted_req_power.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_actors.1.i)
  %cmp745.i.i = icmp sgt i32 %num_actors.1.i, 0
  br i1 %cmp745.i.i, label %for.body.lr.ph.i.i, label %pid_controller.exit.i.divvy_up_power.exit.i_crit_edge

pid_controller.exit.i.divvy_up_power.exit.i_crit_edge: ; preds = %pid_controller.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %divvy_up_power.exit.i

for.body.lr.ph.i.i:                               ; preds = %pid_controller.exit.i
  %conv1.i.i = zext i32 %cond59.off0.i.i to i64
  %div669.i.i = lshr i32 %spec.store.select.i.i, 1
  %conv2.i.i = zext i32 %div669.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end205.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %extra_power.0748.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %extra_power.1.i.i, %if.end205.i.i.for.body.i.i_crit_edge ]
  %capped_extra_power.0747.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add211.i.i, %if.end205.i.i.for.body.i.i_crit_edge ]
  %i.0746.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end205.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %arrayidx29.i, i32 %i.0746.i.i
  %191 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.i.i, align 4
  %conv.i235.i = zext i32 %192 to i64
  %mul.i.i = mul nuw i64 %conv.i235.i, %conv1.i.i
  %add.i236.i = add nuw i64 %mul.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i236.i)
  %cmp175.i.i = icmp ult i64 %add.i236.i, 4294967296
  br i1 %cmp175.i.i, label %if.then179.i.i, label %if.else185.i.i, !prof !101

if.then179.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv180.i.i = trunc i64 %add.i236.i to i32
  %div183.i.i = udiv i32 %conv180.i.i, %spec.store.select.i.i
  br label %if.end189.i.i

if.else185.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %193 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.store.select.i.i, i64 %add.i236.i) #16, !srcloc !106
  %asmresult1.i.i.i = extractvalue { i64, i64 } %193, 1
  %extract.t744.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end189.i.i

if.end189.i.i:                                    ; preds = %if.else185.i.i, %if.then179.i.i
  %_tmp.0.off0.i.i = phi i32 [ %div183.i.i, %if.then179.i.i ], [ %extract.t744.i.i, %if.else185.i.i ]
  %arrayidx193.i.i = getelementptr i32, ptr %arrayidx25.i, i32 %i.0746.i.i
  %194 = ptrtoint ptr %arrayidx193.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %_tmp.0.off0.i.i, ptr %arrayidx193.i.i, align 4
  %arrayidx195.i.i = getelementptr i32, ptr %arrayidx.i, i32 %i.0746.i.i
  %195 = ptrtoint ptr %arrayidx195.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx195.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %_tmp.0.off0.i.i, i32 %196)
  %cmp196.i.i = icmp ugt i32 %_tmp.0.off0.i.i, %196
  br i1 %cmp196.i.i, label %if.then198.i.i, label %if.end189.i.i.if.end205.i.i_crit_edge

if.end189.i.i.if.end205.i.i_crit_edge:            ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end205.i.i

if.then198.i.i:                                   ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub201.i.i = add i32 %_tmp.0.off0.i.i, %extra_power.0748.i.i
  %add202.i.i = sub i32 %sub201.i.i, %196
  %197 = ptrtoint ptr %arrayidx193.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %arrayidx193.i.i, align 4
  br label %if.end205.i.i

if.end205.i.i:                                    ; preds = %if.then198.i.i, %if.end189.i.i.if.end205.i.i_crit_edge
  %extra_power.1.i.i = phi i32 [ %add202.i.i, %if.then198.i.i ], [ %extra_power.0748.i.i, %if.end189.i.i.if.end205.i.i_crit_edge ]
  %198 = ptrtoint ptr %arrayidx195.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx195.i.i, align 4
  %200 = ptrtoint ptr %arrayidx193.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx193.i.i, align 4
  %sub208.i.i = sub i32 %199, %201
  %arrayidx209.i.i = getelementptr i32, ptr %arrayidx27.i, i32 %i.0746.i.i
  %202 = ptrtoint ptr %arrayidx209.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %sub208.i.i, ptr %arrayidx209.i.i, align 4
  %add211.i.i = add i32 %sub208.i.i, %capped_extra_power.0747.i.i
  %inc.i.i = add nuw nsw i32 %i.0746.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %num_actors.1.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end205.i.i.for.body.i.i_crit_edge

if.end205.i.i.for.body.i.i_crit_edge:             ; preds = %if.end205.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end205.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_power.1.i.i)
  %tobool212.not.i.i = icmp ne i32 %extra_power.1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add211.i.i)
  %cmp222.not.i.i = icmp ne i32 %add211.i.i, 0
  %or.cond756.i.i = select i1 %tobool212.not.i.i, i1 %cmp222.not.i.i, i1 false
  br i1 %or.cond756.i.i, label %for.body228.lr.ph.i.i, label %for.end.i.i.divvy_up_power.exit.i_crit_edge

for.end.i.i.divvy_up_power.exit.i_crit_edge:      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %divvy_up_power.exit.i

for.body228.lr.ph.i.i:                            ; preds = %for.end.i.i
  %203 = call i32 @llvm.umin.i32(i32 %extra_power.1.i.i, i32 %add211.i.i) #10
  %conv231.i.i = zext i32 %203 to i64
  %div235667.i.i = lshr i32 %add211.i.i, 1
  %conv236.i.i = zext i32 %div235667.i.i to i64
  br label %for.body228.i.i

for.body228.i.i:                                  ; preds = %if.end457.i.i.for.body228.i.i_crit_edge, %for.body228.lr.ph.i.i
  %i.1751.i.i = phi i32 [ 0, %for.body228.lr.ph.i.i ], [ %inc465.i.i, %if.end457.i.i.for.body228.i.i_crit_edge ]
  %arrayidx229.i.i = getelementptr i32, ptr %arrayidx27.i, i32 %i.1751.i.i
  %204 = ptrtoint ptr %arrayidx229.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx229.i.i, align 4
  %conv230.i.i = zext i32 %205 to i64
  %mul232.i.i = mul nuw i64 %conv230.i.i, %conv231.i.i
  %add237.i.i = add nuw i64 %mul232.i.i, %conv236.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add237.i.i)
  %cmp439.i.i = icmp ult i64 %add237.i.i, 4294967296
  br i1 %cmp439.i.i, label %if.then447.i.i, label %if.else453.i.i, !prof !101

if.then447.i.i:                                   ; preds = %for.body228.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv448.i.i = trunc i64 %add237.i.i to i32
  %div451.i.i = udiv i32 %conv448.i.i, %add211.i.i
  br label %if.end457.i.i

if.else453.i.i:                                   ; preds = %for.body228.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %206 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add211.i.i, i64 %add237.i.i) #16, !srcloc !106
  %asmresult1.i693.i.i = extractvalue { i64, i64 } %206, 1
  %extract.t740.i.i = trunc i64 %asmresult1.i693.i.i to i32
  br label %if.end457.i.i

if.end457.i.i:                                    ; preds = %if.else453.i.i, %if.then447.i.i
  %_tmp234.0.off0.i.i = phi i32 [ %div451.i.i, %if.then447.i.i ], [ %extract.t740.i.i, %if.else453.i.i ]
  %arrayidx460.i.i = getelementptr i32, ptr %arrayidx25.i, i32 %i.1751.i.i
  %207 = ptrtoint ptr %arrayidx460.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx460.i.i, align 4
  %conv463.i.i = add i32 %208, %_tmp234.0.off0.i.i
  store i32 %conv463.i.i, ptr %arrayidx460.i.i, align 4
  %inc465.i.i = add nuw nsw i32 %i.1751.i.i, 1
  %exitcond752.not.i.i = icmp eq i32 %inc465.i.i, %num_actors.1.i
  br i1 %exitcond752.not.i.i, label %if.end457.i.i.divvy_up_power.exit.i_crit_edge, label %if.end457.i.i.for.body228.i.i_crit_edge

if.end457.i.i.for.body228.i.i_crit_edge:          ; preds = %if.end457.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body228.i.i

if.end457.i.i.divvy_up_power.exit.i_crit_edge:    ; preds = %if.end457.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %divvy_up_power.exit.i

divvy_up_power.exit.i:                            ; preds = %if.end457.i.i.divvy_up_power.exit.i_crit_edge, %for.end.i.i.divvy_up_power.exit.i_crit_edge, %pid_controller.exit.i.divvy_up_power.exit.i_crit_edge
  %209 = ptrtoint ptr %thermal_instances.i38 to i32
  call void @__asan_load4_noabort(i32 %209)
  %.pn213275.i = load ptr, ptr %thermal_instances.i38, align 4
  %cmp93.not276.i = icmp eq ptr %.pn213275.i, %thermal_instances.i38
  br i1 %cmp93.not276.i, label %divvy_up_power.exit.i.for.end116.i_crit_edge, label %divvy_up_power.exit.i.for.body95.i_crit_edge

divvy_up_power.exit.i.for.body95.i_crit_edge:     ; preds = %divvy_up_power.exit.i
  br label %for.body95.i

divvy_up_power.exit.i.for.end116.i_crit_edge:     ; preds = %divvy_up_power.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end116.i

for.body95.i:                                     ; preds = %for.inc110.i.for.body95.i_crit_edge, %divvy_up_power.exit.i.for.body95.i_crit_edge
  %.pn213279.i = phi ptr [ %.pn213.i, %for.inc110.i.for.body95.i_crit_edge ], [ %.pn213275.i, %divvy_up_power.exit.i.for.body95.i_crit_edge ]
  %total_granted_power.0278.i = phi i32 [ %total_granted_power.1.i, %for.inc110.i.for.body95.i_crit_edge ], [ 0, %divvy_up_power.exit.i.for.body95.i_crit_edge ]
  %i.2277.i = phi i32 [ %i.3.i, %for.inc110.i.for.body95.i_crit_edge ], [ 0, %divvy_up_power.exit.i.for.body95.i_crit_edge ]
  %trip96.i = getelementptr i8, ptr %.pn213279.i, i32 -116
  %210 = ptrtoint ptr %trip96.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %trip96.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %61)
  %cmp97.not.i = icmp eq i32 %211, %61
  br i1 %cmp97.not.i, label %if.end99.i, label %for.body95.i.for.inc110.i_crit_edge

for.body95.i.for.inc110.i_crit_edge:              ; preds = %for.body95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110.i

if.end99.i:                                       ; preds = %for.body95.i
  %cdev100.i = getelementptr i8, ptr %.pn213279.i, i32 -120
  %212 = ptrtoint ptr %cdev100.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cdev100.i, align 4
  %ops.i240.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %213, i32 0, i32 6
  %214 = ptrtoint ptr %ops.i240.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ops.i240.i, align 4
  %get_requested_power.i241.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %get_requested_power.i241.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %get_requested_power.i241.i, align 4
  %tobool.not.i242.i = icmp eq ptr %217, null
  br i1 %tobool.not.i242.i, label %if.end99.i.for.inc110.i_crit_edge, label %land.lhs.true.i245.i

if.end99.i.for.inc110.i_crit_edge:                ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110.i

land.lhs.true.i245.i:                             ; preds = %if.end99.i
  %state2power.i243.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %215, i32 0, i32 4
  %218 = ptrtoint ptr %state2power.i243.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %state2power.i243.i, align 4
  %tobool2.not.i244.i = icmp eq ptr %219, null
  br i1 %tobool2.not.i244.i, label %land.lhs.true.i245.i.for.inc110.i_crit_edge, label %cdev_is_power_actor.exit249.i

land.lhs.true.i245.i.for.inc110.i_crit_edge:      ; preds = %land.lhs.true.i245.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110.i

cdev_is_power_actor.exit249.i:                    ; preds = %land.lhs.true.i245.i
  %power2state.i246.i = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %215, i32 0, i32 5
  %220 = ptrtoint ptr %power2state.i246.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %power2state.i246.i, align 4
  %tobool4.i247.not.i = icmp eq ptr %221, null
  br i1 %tobool4.i247.not.i, label %cdev_is_power_actor.exit249.i.for.inc110.i_crit_edge, label %if.end103.i

cdev_is_power_actor.exit249.i.for.inc110.i_crit_edge: ; preds = %cdev_is_power_actor.exit249.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110.i

if.end103.i:                                      ; preds = %cdev_is_power_actor.exit249.i
  %arrayidx105.i = getelementptr i32, ptr %arrayidx25.i, i32 %i.2277.i
  %222 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx105.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i.i) #10
  %224 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %state.i.i, align 4, !annotation !103
  %call.i.i = call i32 %221(ptr noundef %213, i32 noundef %223, ptr noundef nonnull %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i252.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i252.i, label %if.end.i.i, label %if.end103.i.power_actor_set_power.exit.i_crit_edge

if.end103.i.power_actor_set_power.exit.i_crit_edge: ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %power_actor_set_power.exit.i

if.end.i.i:                                       ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #12
  %225 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %state.i.i, align 4
  %lower.i.i = getelementptr i8, ptr %.pn213279.i, i32 -104
  %227 = ptrtoint ptr %lower.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %lower.i.i, align 4
  %229 = call i32 @llvm.umax.i32(i32 %226, i32 %228) #10
  %upper.i.i = getelementptr i8, ptr %.pn213279.i, i32 -108
  %230 = ptrtoint ptr %upper.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %upper.i.i, align 4
  %232 = call i32 @llvm.umin.i32(i32 %229, i32 %231) #10
  %target.i.i = getelementptr i8, ptr %.pn213279.i, i32 -100
  %233 = ptrtoint ptr %target.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %target.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.thermal_cooling_device, ptr %213, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #10
  call void @__thermal_cdev_update(ptr noundef %213) #10
  call void @mutex_unlock(ptr noundef %lock.i.i) #10
  br label %power_actor_set_power.exit.i

power_actor_set_power.exit.i:                     ; preds = %if.end.i.i, %if.end103.i.power_actor_set_power.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i.i) #10
  %234 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx105.i, align 4
  %add108.i = add i32 %235, %total_granted_power.0278.i
  %inc109.i = add i32 %i.2277.i, 1
  br label %for.inc110.i

for.inc110.i:                                     ; preds = %power_actor_set_power.exit.i, %cdev_is_power_actor.exit249.i.for.inc110.i_crit_edge, %land.lhs.true.i245.i.for.inc110.i_crit_edge, %if.end99.i.for.inc110.i_crit_edge, %for.body95.i.for.inc110.i_crit_edge
  %i.3.i = phi i32 [ %i.2277.i, %for.body95.i.for.inc110.i_crit_edge ], [ %inc109.i, %power_actor_set_power.exit.i ], [ %i.2277.i, %cdev_is_power_actor.exit249.i.for.inc110.i_crit_edge ], [ %i.2277.i, %land.lhs.true.i245.i.for.inc110.i_crit_edge ], [ %i.2277.i, %if.end99.i.for.inc110.i_crit_edge ]
  %total_granted_power.1.i = phi i32 [ %total_granted_power.0278.i, %for.body95.i.for.inc110.i_crit_edge ], [ %add108.i, %power_actor_set_power.exit.i ], [ %total_granted_power.0278.i, %cdev_is_power_actor.exit249.i.for.inc110.i_crit_edge ], [ %total_granted_power.0278.i, %land.lhs.true.i245.i.for.inc110.i_crit_edge ], [ %total_granted_power.0278.i, %if.end99.i.for.inc110.i_crit_edge ]
  %236 = ptrtoint ptr %.pn213279.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %.pn213.i = load ptr, ptr %.pn213279.i, align 4
  %cmp93.not.i = icmp eq ptr %.pn213.i, %thermal_instances.i38
  br i1 %cmp93.not.i, label %for.inc110.i.for.end116.i_crit_edge, label %for.inc110.i.for.body95.i_crit_edge

for.inc110.i.for.body95.i_crit_edge:              ; preds = %for.inc110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body95.i

for.inc110.i.for.end116.i_crit_edge:              ; preds = %for.inc110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end116.i

for.end116.i:                                     ; preds = %for.inc110.i.for.end116.i_crit_edge, %divvy_up_power.exit.i.for.end116.i_crit_edge
  %total_granted_power.0.lcssa.i = phi i32 [ 0, %divvy_up_power.exit.i.for.end116.i_crit_edge ], [ %total_granted_power.1.i, %for.inc110.i.for.end116.i_crit_edge ]
  %237 = ptrtoint ptr %temperature.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %temperature.i.i, align 8
  %sub.i = sub i32 %57, %238
  call fastcc void @trace_thermal_power_allocator(ptr noundef %tz, ptr noundef nonnull %call8.i.i.i, i32 noundef %total_req_power.0.lcssa.i, ptr noundef %arrayidx25.i, i32 noundef %total_granted_power.0.lcssa.i, i32 noundef %num_actors.1.i, i32 noundef %cond59.off0.i.i, i32 noundef %max_allocatable_power.0.lcssa.i, i32 noundef %238, i32 noundef %sub.i) #10
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %allocate_power.exit

allocate_power.exit:                              ; preds = %for.end116.i, %if.end7.i.i.i.allocate_power.exit_crit_edge, %do.end19.i.allocate_power.exit_crit_edge, %for.end.i.allocate_power.exit_crit_edge, %if.end13.allocate_power.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %for.end116.i ], [ -19, %for.end.i.allocate_power.exit_crit_edge ], [ -12, %if.end7.i.i.i.allocate_power.exit_crit_edge ], [ -12, %do.end19.i.allocate_power.exit_crit_edge ], [ -19, %if.end13.allocate_power.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i37) #10
  br label %cleanup

cleanup:                                          ; preds = %allocate_power.exit, %do.end, %allow_maximum_power.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end ], [ %ret.0.i, %allocate_power.exit ], [ 0, %allow_maximum_power.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control_temp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %switch_on_temp) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__thermal_cdev_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_thermal_power_allocator(ptr noundef %tz, ptr noundef %req_power, i32 noundef %total_req_power, ptr noundef %granted_power, i32 noundef %total_granted_power, i32 noundef %num_actors, i32 noundef %power_range, i32 noundef %max_allocatable_power, i32 noundef %current_temp, i32 noundef %delta_temp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_thermal_power_allocator, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_thermal_power_allocator, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !104

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !107
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_thermal_power_allocator, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %tz, ptr noundef %req_power, i32 noundef %total_req_power, ptr noundef %granted_power, i32 noundef %total_granted_power, i32 noundef %num_actors, i32 noundef %power_range, i32 noundef %max_allocatable_power, i32 noundef %current_temp, i32 noundef %delta_temp) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_thermal_power_allocator, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_thermal_power_allocator.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_thermal_power_allocator.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 56, ptr noundef nonnull @.str.39) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %38 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_thermal_power_allocator_pid(ptr noundef %tz, i32 noundef %err, i32 noundef %err_integral, i64 noundef %p, i64 noundef %i, i64 noundef %d, i32 noundef %output) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_thermal_power_allocator_pid, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_thermal_power_allocator_pid, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !104

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !101

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_thermal_power_allocator_pid, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %tz, i32 noundef %err, i32 noundef %err_integral, i64 noundef %p, i64 noundef %i, i64 noundef %d, i32 noundef %output) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !101

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_thermal_power_allocator_pid, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_thermal_power_allocator_pid.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_thermal_power_allocator_pid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 84, ptr noundef nonnull @.str.39) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %38 = tail call i32 @llvm.read_register.i32(metadata !91) #10
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
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !56, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90}
!llvm.named.register.sp = !{!91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__tracepoint_thermal_power_allocator, !1, !"__tracepoint_thermal_power_allocator", i1 false, i1 false}
!1 = !{!"../include/trace/events/thermal_power_allocator.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_thermal_power_allocator, !1, !"__tracepoint_ptr_thermal_power_allocator", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_thermal_power_allocator, !1, !"__SCK__tp_func_thermal_power_allocator", i1 false, i1 false}
!4 = !{ptr @__tracepoint_thermal_power_allocator_pid, !5, !"__tracepoint_thermal_power_allocator_pid", i1 false, i1 false}
!5 = !{!"../include/trace/events/thermal_power_allocator.h", i32 58, i32 1}
!6 = !{ptr @__tracepoint_ptr_thermal_power_allocator_pid, !5, !"__tracepoint_ptr_thermal_power_allocator_pid", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_thermal_power_allocator_pid, !5, !"__SCK__tp_func_thermal_power_allocator_pid", i1 false, i1 false}
!8 = !{ptr @event_class_thermal_power_allocator, !1, !"event_class_thermal_power_allocator", i1 false, i1 false}
!9 = !{ptr @event_thermal_power_allocator, !1, !"event_thermal_power_allocator", i1 false, i1 false}
!10 = !{ptr @__event_thermal_power_allocator, !1, !"__event_thermal_power_allocator", i1 false, i1 false}
!11 = !{ptr @event_class_thermal_power_allocator_pid, !5, !"event_class_thermal_power_allocator_pid", i1 false, i1 false}
!12 = !{ptr @event_thermal_power_allocator_pid, !5, !"event_thermal_power_allocator_pid", i1 false, i1 false}
!13 = !{ptr @__event_thermal_power_allocator_pid, !5, !"__event_thermal_power_allocator_pid", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_thermal_power_allocator, !1, !"__bpf_trace_tp_map_thermal_power_allocator", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_thermal_power_allocator_pid, !5, !"__bpf_trace_tp_map_thermal_power_allocator_pid", i1 false, i1 false}
!16 = !{ptr @__thermal_table_entry_thermal_gov_power_allocator, !17, !"__thermal_table_entry_thermal_gov_power_allocator", i1 false, i1 false}
!17 = !{!"../drivers/thermal/gov_power_allocator.c", i32 752, i32 1}
!18 = !{ptr @__tpstrtab_thermal_power_allocator, !1, !"__tpstrtab_thermal_power_allocator", i1 false, i1 false}
!19 = !{ptr @__tpstrtab_thermal_power_allocator_pid, !5, !"__tpstrtab_thermal_power_allocator_pid", i1 false, i1 false}
!20 = !{ptr @str__thermal_power_allocator__trace_system_name, !21, !"str__thermal_power_allocator__trace_system_name", i1 false, i1 false}
!21 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!22 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @trace_event_fields_thermal_power_allocator, !1, !"trace_event_fields_thermal_power_allocator", i1 false, i1 false}
!38 = !{ptr @trace_event_type_funcs_thermal_power_allocator, !1, !"trace_event_type_funcs_thermal_power_allocator", i1 false, i1 false}
!39 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @print_fmt_thermal_power_allocator, !1, !"print_fmt_thermal_power_allocator", i1 false, i1 false}
!41 = !{ptr @.str.16, !5, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !5, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !5, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !5, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !5, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !5, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @trace_event_fields_thermal_power_allocator_pid, !5, !"trace_event_fields_thermal_power_allocator_pid", i1 false, i1 false}
!49 = !{ptr @trace_event_type_funcs_thermal_power_allocator_pid, !5, !"trace_event_type_funcs_thermal_power_allocator_pid", i1 false, i1 false}
!50 = !{ptr @.str.23, !5, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @print_fmt_thermal_power_allocator_pid, !5, !"print_fmt_thermal_power_allocator_pid", i1 false, i1 false}
!52 = !{ptr @thermal_gov_power_allocator, !53, !"thermal_gov_power_allocator", i1 false, i1 false}
!53 = !{!"../drivers/thermal/gov_power_allocator.c", i32 746, i32 32}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/thermal/gov_power_allocator.c", i32 667, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @power_allocator_bind._entry, !55, !"_entry", i1 false, i1 false}
!61 = !{ptr @power_allocator_bind._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/thermal/gov_power_allocator.c", i32 623, i32 4}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @check_power_actors._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @check_power_actors._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/thermal/gov_power_allocator.c", i32 536, i32 4}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @get_governor_trips._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @get_governor_trips._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/thermal/gov_power_allocator.c", i32 697, i32 2}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @power_allocator_unbind.__UNIQUE_ID_ddebug285, !73, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/thermal/gov_power_allocator.c", i32 737, i32 3}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @power_allocator_throttle._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @power_allocator_throttle._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!83 = !{ptr @.str.38, !5, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!85 = !{ptr @.str.39, !5, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!90 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!91 = !{!"sp"}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{!"auto-init"}
!104 = !{i64 2148780549, i64 2148780554, i64 2148780567, i64 2148780611, i64 2148780645, i64 2148780666}
!105 = !{i8 0, i8 2}
!106 = !{i64 2148805736, i64 2148806016, i64 2148806350, i64 2148806684}
!107 = !{i64 2152872721}
!108 = !{i64 2152873218}
!109 = !{i64 2149192159}
!110 = !{i64 2149193195}
!111 = !{i64 2152896591}
!112 = !{i64 2152896884}
