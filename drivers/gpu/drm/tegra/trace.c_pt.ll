; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/trace.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/trace.c"
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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_register_access = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@__tpstrtab_dc_writel = internal constant [10 x i8] c"dc_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dc_writel = dso_local global %struct.static_call_key { ptr @__traceiter_dc_writel }, align 4
@__tracepoint_dc_writel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dc_writel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dc_writel, ptr null, ptr @__traceiter_dc_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dc_writel = internal constant ptr @__tracepoint_dc_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_dc_readl = internal constant [9 x i8] c"dc_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dc_readl = dso_local global %struct.static_call_key { ptr @__traceiter_dc_readl }, align 4
@__tracepoint_dc_readl = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dc_readl, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dc_readl, ptr null, ptr @__traceiter_dc_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dc_readl = internal constant ptr @__tracepoint_dc_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_hdmi_writel = internal constant [12 x i8] c"hdmi_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hdmi_writel = dso_local global %struct.static_call_key { ptr @__traceiter_hdmi_writel }, align 4
@__tracepoint_hdmi_writel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hdmi_writel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hdmi_writel, ptr null, ptr @__traceiter_hdmi_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hdmi_writel = internal constant ptr @__tracepoint_hdmi_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_hdmi_readl = internal constant [11 x i8] c"hdmi_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hdmi_readl = dso_local global %struct.static_call_key { ptr @__traceiter_hdmi_readl }, align 4
@__tracepoint_hdmi_readl = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hdmi_readl, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hdmi_readl, ptr null, ptr @__traceiter_hdmi_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hdmi_readl = internal constant ptr @__tracepoint_hdmi_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_dsi_writel = internal constant [11 x i8] c"dsi_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dsi_writel = dso_local global %struct.static_call_key { ptr @__traceiter_dsi_writel }, align 4
@__tracepoint_dsi_writel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dsi_writel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dsi_writel, ptr null, ptr @__traceiter_dsi_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dsi_writel = internal constant ptr @__tracepoint_dsi_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_dsi_readl = internal constant [10 x i8] c"dsi_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dsi_readl = dso_local global %struct.static_call_key { ptr @__traceiter_dsi_readl }, align 4
@__tracepoint_dsi_readl = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dsi_readl, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dsi_readl, ptr null, ptr @__traceiter_dsi_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dsi_readl = internal constant ptr @__tracepoint_dsi_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpaux_writel = internal constant [13 x i8] c"dpaux_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpaux_writel = dso_local global %struct.static_call_key { ptr @__traceiter_dpaux_writel }, align 4
@__tracepoint_dpaux_writel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dpaux_writel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dpaux_writel, ptr null, ptr @__traceiter_dpaux_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpaux_writel = internal constant ptr @__tracepoint_dpaux_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpaux_readl = internal constant [12 x i8] c"dpaux_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpaux_readl = dso_local global %struct.static_call_key { ptr @__traceiter_dpaux_readl }, align 4
@__tracepoint_dpaux_readl = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dpaux_readl, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dpaux_readl, ptr null, ptr @__traceiter_dpaux_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpaux_readl = internal constant ptr @__tracepoint_dpaux_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_sor_writel = internal constant [11 x i8] c"sor_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sor_writel = dso_local global %struct.static_call_key { ptr @__traceiter_sor_writel }, align 4
@__tracepoint_sor_writel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_sor_writel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_sor_writel, ptr null, ptr @__traceiter_sor_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sor_writel = internal constant ptr @__tracepoint_sor_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_sor_readl = internal constant [10 x i8] c"sor_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sor_readl = dso_local global %struct.static_call_key { ptr @__traceiter_sor_readl }, align 4
@__tracepoint_sor_readl = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_sor_readl, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_sor_readl, ptr null, ptr @__traceiter_sor_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sor_readl = internal constant ptr @__tracepoint_sor_readl, section "__tracepoints_ptrs", align 4
@str__tegra__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tegra\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_register_access = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.95 { %struct.anon.96 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.95 { %struct.anon.96 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_register_access = internal global %struct.trace_event_class { ptr @str__tegra__trace_system_name, ptr @trace_event_raw_event_register_access, ptr @perf_trace_register_access, ptr @trace_event_reg, ptr @trace_event_fields_register_access, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_register_access, i64 24), ptr getelementptr (i8, ptr @event_class_register_access, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_register_access = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_register_access, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_register_access = internal global { [60 x i8], [36 x i8] } { [60 x i8] c"\22%s %04x %08x\22, dev_name(REC->dev), REC->offset, REC->value\00", [36 x i8] zeroinitializer }, align 32
@event_dc_writel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_dc_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dc_writel = internal global ptr @event_dc_writel, section "_ftrace_events", align 4
@event_dc_readl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_dc_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dc_readl = internal global ptr @event_dc_readl, section "_ftrace_events", align 4
@event_hdmi_writel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_hdmi_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hdmi_writel = internal global ptr @event_hdmi_writel, section "_ftrace_events", align 4
@event_hdmi_readl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_hdmi_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hdmi_readl = internal global ptr @event_hdmi_readl, section "_ftrace_events", align 4
@event_dsi_writel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_dsi_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dsi_writel = internal global ptr @event_dsi_writel, section "_ftrace_events", align 4
@event_dsi_readl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_dsi_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dsi_readl = internal global ptr @event_dsi_readl, section "_ftrace_events", align 4
@event_dpaux_writel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_dpaux_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dpaux_writel = internal global ptr @event_dpaux_writel, section "_ftrace_events", align 4
@event_dpaux_readl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_dpaux_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dpaux_readl = internal global ptr @event_dpaux_readl, section "_ftrace_events", align 4
@event_sor_writel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_sor_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_sor_writel = internal global ptr @event_sor_writel, section "_ftrace_events", align 4
@event_sor_readl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_sor_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_sor_readl = internal global ptr @event_sor_readl, section "_ftrace_events", align 4
@__bpf_trace_tp_map_dc_writel = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_dc_writel, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dc_readl = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_dc_readl, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hdmi_writel = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_hdmi_writel, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hdmi_readl = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_hdmi_readl, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dsi_writel = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_dsi_writel, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dsi_readl = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_dsi_readl, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dpaux_writel = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_dpaux_writel, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dpaux_readl = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_dpaux_readl, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_sor_writel = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_sor_writel, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_sor_readl = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_sor_readl, ptr @__bpf_trace_register_access, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct device *\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s %04x %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [33 x i8] c"../drivers/gpu/drm/tegra/trace.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [30 x i8] c"str__tegra__trace_system_name\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 36, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [35 x i8] c"trace_event_fields_register_access\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_register_access\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [26 x i8] c"print_fmt_register_access\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"event_dc_writel\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 27, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"event_dc_readl\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 30, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"event_hdmi_writel\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 34, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"event_hdmi_readl\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 37, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"event_dsi_writel\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 41, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"event_dsi_readl\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 44, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"event_dpaux_writel\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 48, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"event_dpaux_readl\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 51, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"event_sor_writel\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 55, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"event_sor_readl\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 58, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [53 x i8] c"../include/trace/../../drivers/gpu/drm/tegra/trace.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 10, i32 1 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__bpf_trace_tp_map_dc_readl, ptr @__bpf_trace_tp_map_dc_writel, ptr @__bpf_trace_tp_map_dpaux_readl, ptr @__bpf_trace_tp_map_dpaux_writel, ptr @__bpf_trace_tp_map_dsi_readl, ptr @__bpf_trace_tp_map_dsi_writel, ptr @__bpf_trace_tp_map_hdmi_readl, ptr @__bpf_trace_tp_map_hdmi_writel, ptr @__bpf_trace_tp_map_sor_readl, ptr @__bpf_trace_tp_map_sor_writel, ptr @__event_dc_readl, ptr @__event_dc_writel, ptr @__event_dpaux_readl, ptr @__event_dpaux_writel, ptr @__event_dsi_readl, ptr @__event_dsi_writel, ptr @__event_hdmi_readl, ptr @__event_hdmi_writel, ptr @__event_sor_readl, ptr @__event_sor_writel, ptr @__tracepoint_dc_readl, ptr @__tracepoint_dc_writel, ptr @__tracepoint_dpaux_readl, ptr @__tracepoint_dpaux_writel, ptr @__tracepoint_dsi_readl, ptr @__tracepoint_dsi_writel, ptr @__tracepoint_hdmi_readl, ptr @__tracepoint_hdmi_writel, ptr @__tracepoint_ptr_dc_readl, ptr @__tracepoint_ptr_dc_writel, ptr @__tracepoint_ptr_dpaux_readl, ptr @__tracepoint_ptr_dpaux_writel, ptr @__tracepoint_ptr_dsi_readl, ptr @__tracepoint_ptr_dsi_writel, ptr @__tracepoint_ptr_hdmi_readl, ptr @__tracepoint_ptr_hdmi_writel, ptr @__tracepoint_ptr_sor_readl, ptr @__tracepoint_ptr_sor_writel, ptr @__tracepoint_sor_readl, ptr @__tracepoint_sor_writel, ptr @event_class_register_access, ptr @event_dc_readl, ptr @event_dc_writel, ptr @event_dpaux_readl, ptr @event_dpaux_writel, ptr @event_dsi_readl, ptr @event_dsi_writel, ptr @event_hdmi_readl, ptr @event_hdmi_writel, ptr @event_sor_readl, ptr @event_sor_writel, ptr @str__tegra__trace_system_name, ptr @trace_event_fields_register_access, ptr @trace_event_type_funcs_register_access, ptr @print_fmt_register_access, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__tegra__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_register_access to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_register_access to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_register_access to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dc_writel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dc_readl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hdmi_writel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hdmi_readl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dsi_writel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dsi_readl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dpaux_writel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dpaux_readl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_sor_writel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_sor_readl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dc_writel(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dc_writel, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define dso_local i32 @__traceiter_dc_readl(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dc_readl, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define dso_local i32 @__traceiter_hdmi_writel(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hdmi_writel, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define dso_local i32 @__traceiter_hdmi_readl(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hdmi_readl, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define dso_local i32 @__traceiter_dsi_writel(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dsi_writel, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define dso_local i32 @__traceiter_dsi_readl(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dsi_readl, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define dso_local i32 @__traceiter_dpaux_writel(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dpaux_writel, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define dso_local i32 @__traceiter_dpaux_readl(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dpaux_readl, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define dso_local i32 @__traceiter_sor_writel(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sor_writel, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define dso_local i32 @__traceiter_sor_readl(ptr nocapture readnone %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sor_readl, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #5
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
define internal void @trace_event_raw_event_register_access(ptr noundef %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !104

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !105

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev6 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev6, align 4
  %offset7 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %offset7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %offset, ptr %offset7, align 4
  %value8 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %value, ptr %value8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_register_access(ptr noundef %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !106
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !94) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !94) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dev17 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %dev17, align 4
  %offset18 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %offset18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %offset, ptr %offset18, align 4
  %value19 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %value19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %value, ptr %value19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #5
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
define internal void @__bpf_trace_register_access(ptr noundef %__data, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %offset to i64
  %conv8 = zext i32 %value to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_register_access(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %offset = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %value = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i, i32 noundef %9, i32 noundef %11) #5
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %dev_name.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!llvm.named.register.sp = !{!94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__tracepoint_dc_writel, !1, !"__tracepoint_dc_writel", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 27, i32 1}
!2 = !{ptr @__tracepoint_ptr_dc_writel, !1, !"__tracepoint_ptr_dc_writel", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_dc_writel, !1, !"__SCK__tp_func_dc_writel", i1 false, i1 false}
!4 = !{ptr @__tracepoint_dc_readl, !5, !"__tracepoint_dc_readl", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 30, i32 1}
!6 = !{ptr @__tracepoint_ptr_dc_readl, !5, !"__tracepoint_ptr_dc_readl", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_dc_readl, !5, !"__SCK__tp_func_dc_readl", i1 false, i1 false}
!8 = !{ptr @__tracepoint_hdmi_writel, !9, !"__tracepoint_hdmi_writel", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 34, i32 1}
!10 = !{ptr @__tracepoint_ptr_hdmi_writel, !9, !"__tracepoint_ptr_hdmi_writel", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_hdmi_writel, !9, !"__SCK__tp_func_hdmi_writel", i1 false, i1 false}
!12 = !{ptr @__tracepoint_hdmi_readl, !13, !"__tracepoint_hdmi_readl", i1 false, i1 false}
!13 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 37, i32 1}
!14 = !{ptr @__tracepoint_ptr_hdmi_readl, !13, !"__tracepoint_ptr_hdmi_readl", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_hdmi_readl, !13, !"__SCK__tp_func_hdmi_readl", i1 false, i1 false}
!16 = !{ptr @__tracepoint_dsi_writel, !17, !"__tracepoint_dsi_writel", i1 false, i1 false}
!17 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 41, i32 1}
!18 = !{ptr @__tracepoint_ptr_dsi_writel, !17, !"__tracepoint_ptr_dsi_writel", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_dsi_writel, !17, !"__SCK__tp_func_dsi_writel", i1 false, i1 false}
!20 = !{ptr @__tracepoint_dsi_readl, !21, !"__tracepoint_dsi_readl", i1 false, i1 false}
!21 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 44, i32 1}
!22 = !{ptr @__tracepoint_ptr_dsi_readl, !21, !"__tracepoint_ptr_dsi_readl", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_dsi_readl, !21, !"__SCK__tp_func_dsi_readl", i1 false, i1 false}
!24 = !{ptr @__tracepoint_dpaux_writel, !25, !"__tracepoint_dpaux_writel", i1 false, i1 false}
!25 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 48, i32 1}
!26 = !{ptr @__tracepoint_ptr_dpaux_writel, !25, !"__tracepoint_ptr_dpaux_writel", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_dpaux_writel, !25, !"__SCK__tp_func_dpaux_writel", i1 false, i1 false}
!28 = !{ptr @__tracepoint_dpaux_readl, !29, !"__tracepoint_dpaux_readl", i1 false, i1 false}
!29 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 51, i32 1}
!30 = !{ptr @__tracepoint_ptr_dpaux_readl, !29, !"__tracepoint_ptr_dpaux_readl", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_dpaux_readl, !29, !"__SCK__tp_func_dpaux_readl", i1 false, i1 false}
!32 = !{ptr @__tracepoint_sor_writel, !33, !"__tracepoint_sor_writel", i1 false, i1 false}
!33 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 55, i32 1}
!34 = !{ptr @__tracepoint_ptr_sor_writel, !33, !"__tracepoint_ptr_sor_writel", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_sor_writel, !33, !"__SCK__tp_func_sor_writel", i1 false, i1 false}
!36 = !{ptr @__tracepoint_sor_readl, !37, !"__tracepoint_sor_readl", i1 false, i1 false}
!37 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 58, i32 1}
!38 = !{ptr @__tracepoint_ptr_sor_readl, !37, !"__tracepoint_ptr_sor_readl", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_sor_readl, !37, !"__SCK__tp_func_sor_readl", i1 false, i1 false}
!40 = !{ptr @event_class_register_access, !41, !"event_class_register_access", i1 false, i1 false}
!41 = !{!"../include/trace/../../drivers/gpu/drm/tegra/trace.h", i32 10, i32 1}
!42 = !{ptr @event_dc_writel, !1, !"event_dc_writel", i1 false, i1 false}
!43 = !{ptr @__event_dc_writel, !1, !"__event_dc_writel", i1 false, i1 false}
!44 = !{ptr @event_dc_readl, !5, !"event_dc_readl", i1 false, i1 false}
!45 = !{ptr @__event_dc_readl, !5, !"__event_dc_readl", i1 false, i1 false}
!46 = !{ptr @event_hdmi_writel, !9, !"event_hdmi_writel", i1 false, i1 false}
!47 = !{ptr @__event_hdmi_writel, !9, !"__event_hdmi_writel", i1 false, i1 false}
!48 = !{ptr @event_hdmi_readl, !13, !"event_hdmi_readl", i1 false, i1 false}
!49 = !{ptr @__event_hdmi_readl, !13, !"__event_hdmi_readl", i1 false, i1 false}
!50 = !{ptr @event_dsi_writel, !17, !"event_dsi_writel", i1 false, i1 false}
!51 = !{ptr @__event_dsi_writel, !17, !"__event_dsi_writel", i1 false, i1 false}
!52 = !{ptr @event_dsi_readl, !21, !"event_dsi_readl", i1 false, i1 false}
!53 = !{ptr @__event_dsi_readl, !21, !"__event_dsi_readl", i1 false, i1 false}
!54 = !{ptr @event_dpaux_writel, !25, !"event_dpaux_writel", i1 false, i1 false}
!55 = !{ptr @__event_dpaux_writel, !25, !"__event_dpaux_writel", i1 false, i1 false}
!56 = !{ptr @event_dpaux_readl, !29, !"event_dpaux_readl", i1 false, i1 false}
!57 = !{ptr @__event_dpaux_readl, !29, !"__event_dpaux_readl", i1 false, i1 false}
!58 = !{ptr @event_sor_writel, !33, !"event_sor_writel", i1 false, i1 false}
!59 = !{ptr @__event_sor_writel, !33, !"__event_sor_writel", i1 false, i1 false}
!60 = !{ptr @event_sor_readl, !37, !"event_sor_readl", i1 false, i1 false}
!61 = !{ptr @__event_sor_readl, !37, !"__event_sor_readl", i1 false, i1 false}
!62 = !{ptr @__bpf_trace_tp_map_dc_writel, !1, !"__bpf_trace_tp_map_dc_writel", i1 false, i1 false}
!63 = !{ptr @__bpf_trace_tp_map_dc_readl, !5, !"__bpf_trace_tp_map_dc_readl", i1 false, i1 false}
!64 = !{ptr @__bpf_trace_tp_map_hdmi_writel, !9, !"__bpf_trace_tp_map_hdmi_writel", i1 false, i1 false}
!65 = !{ptr @__bpf_trace_tp_map_hdmi_readl, !13, !"__bpf_trace_tp_map_hdmi_readl", i1 false, i1 false}
!66 = !{ptr @__bpf_trace_tp_map_dsi_writel, !17, !"__bpf_trace_tp_map_dsi_writel", i1 false, i1 false}
!67 = !{ptr @__bpf_trace_tp_map_dsi_readl, !21, !"__bpf_trace_tp_map_dsi_readl", i1 false, i1 false}
!68 = !{ptr @__bpf_trace_tp_map_dpaux_writel, !25, !"__bpf_trace_tp_map_dpaux_writel", i1 false, i1 false}
!69 = !{ptr @__bpf_trace_tp_map_dpaux_readl, !29, !"__bpf_trace_tp_map_dpaux_readl", i1 false, i1 false}
!70 = !{ptr @__bpf_trace_tp_map_sor_writel, !33, !"__bpf_trace_tp_map_sor_writel", i1 false, i1 false}
!71 = !{ptr @__bpf_trace_tp_map_sor_readl, !37, !"__bpf_trace_tp_map_sor_readl", i1 false, i1 false}
!72 = !{ptr @__tpstrtab_dc_writel, !1, !"__tpstrtab_dc_writel", i1 false, i1 false}
!73 = !{ptr @__tpstrtab_dc_readl, !5, !"__tpstrtab_dc_readl", i1 false, i1 false}
!74 = !{ptr @__tpstrtab_hdmi_writel, !9, !"__tpstrtab_hdmi_writel", i1 false, i1 false}
!75 = !{ptr @__tpstrtab_hdmi_readl, !13, !"__tpstrtab_hdmi_readl", i1 false, i1 false}
!76 = !{ptr @__tpstrtab_dsi_writel, !17, !"__tpstrtab_dsi_writel", i1 false, i1 false}
!77 = !{ptr @__tpstrtab_dsi_readl, !21, !"__tpstrtab_dsi_readl", i1 false, i1 false}
!78 = !{ptr @__tpstrtab_dpaux_writel, !25, !"__tpstrtab_dpaux_writel", i1 false, i1 false}
!79 = !{ptr @__tpstrtab_dpaux_readl, !29, !"__tpstrtab_dpaux_readl", i1 false, i1 false}
!80 = !{ptr @__tpstrtab_sor_writel, !33, !"__tpstrtab_sor_writel", i1 false, i1 false}
!81 = !{ptr @__tpstrtab_sor_readl, !37, !"__tpstrtab_sor_readl", i1 false, i1 false}
!82 = !{ptr @str__tegra__trace_system_name, !83, !"str__tegra__trace_system_name", i1 false, i1 false}
!83 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!84 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @trace_event_fields_register_access, !41, !"trace_event_fields_register_access", i1 false, i1 false}
!91 = !{ptr @trace_event_type_funcs_register_access, !41, !"trace_event_type_funcs_register_access", i1 false, i1 false}
!92 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @print_fmt_register_access, !41, !"print_fmt_register_access", i1 false, i1 false}
!94 = !{!"sp"}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{!"auto-init"}
