; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_boot.c_pt.bc'
source_filename = "../kernel/trace/trace_boot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.xbc_node = type { i16, i16, i16, i16 }
%struct.dynevent_cmd = type { %struct.seq_buf, ptr, i32, i32, ptr, ptr }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.__va_list = type { ptr }

@__initcall__kmod_trace_boot__262_671_trace_boot_init1s = internal global ptr @trace_boot_init, section ".initcall1s.init", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ftrace\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"running boot-time tracing\00", [38 x i8] zeroinitializer }, align 32
@ftrace_trace_arrays = external dso_local global %struct.list_head, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/trace/trace.h\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"options\00", [24 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013trace_boot: String is too long: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"trace_boot_set_instance_options\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/trace/trace_boot.c\00", [38 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry_ptr = internal global ptr @trace_boot_set_instance_options._entry, section ".printk_index", align 4
@trace_boot_set_instance_options._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013trace_boot: Failed to set option: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry_ptr.9 = internal global ptr @trace_boot_set_instance_options._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tracing_on\00", [21 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013trace_boot: Failed to set tracing on: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry_ptr.13 = internal global ptr @trace_boot_set_instance_options._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"trace_clock\00", [20 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013trace_boot: Failed to set trace clock: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry_ptr.17 = internal global ptr @trace_boot_set_instance_options._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buffer_size\00", [20 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013trace_boot: Buffer size is too small: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry_ptr.21 = internal global ptr @trace_boot_set_instance_options._entry.19, section ".printk_index", align 4
@trace_boot_set_instance_options._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013trace_boot: Failed to resize trace buffer to %s\0A\00", [45 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry_ptr.24 = internal global ptr @trace_boot_set_instance_options._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpumask\00", [24 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013trace_boot: Failed to set new CPU mask %s\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_boot_set_instance_options._entry_ptr.28 = internal global ptr @trace_boot_set_instance_options._entry.26, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kprobes\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"synthetic\00", [22 x i8] zeroinitializer }, align 32
@event_mutex = external dso_local global %struct.mutex, align 4
@trace_boot_init_one_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013trace_boot: Failed to find event: %s:%s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"trace_boot_init_one_event\00", [38 x i8] zeroinitializer }, align 32
@trace_boot_init_one_event._entry_ptr = internal global ptr @trace_boot_init_one_event._entry, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@trace_boot_init_one_event._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.6, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013trace_boot: filter string is too long: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_boot_init_one_event._entry_ptr.38 = internal global ptr @trace_boot_init_one_event._entry.36, section ".printk_index", align 4
@trace_boot_init_one_event._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.6, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013trace_boot: Failed to apply filter: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@trace_boot_init_one_event._entry_ptr.41 = internal global ptr @trace_boot_init_one_event._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"actions\00", [24 x i8] zeroinitializer }, align 32
@trace_boot_init_one_event._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.34, ptr @.str.6, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013trace_boot: action string is too long: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_boot_init_one_event._entry_ptr.45 = internal global ptr @trace_boot_init_one_event._entry.43, section ".printk_index", align 4
@trace_boot_init_one_event._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.34, ptr @.str.6, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013trace_boot: Failed to apply an action: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_boot_init_one_event._entry_ptr.48 = internal global ptr @trace_boot_init_one_event._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hist\00", [27 x i8] zeroinitializer }, align 32
@trace_boot_init_one_event._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.34, ptr @.str.6, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013trace_boot: Failed to enable event node: %s:%s\0A\00", [46 x i8] zeroinitializer }, align 32
@trace_boot_init_one_event._entry_ptr.52 = internal global ptr @trace_boot_init_one_event._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"probes\00", [25 x i8] zeroinitializer }, align 32
@trace_boot_add_kprobe_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.6, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013trace_boot: Failed to generate probe: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"trace_boot_add_kprobe_event\00", [36 x i8] zeroinitializer }, align 32
@trace_boot_add_kprobe_event._entry_ptr = internal global ptr @trace_boot_add_kprobe_event._entry, section ".printk_index", align 4
@trace_boot_add_kprobe_event._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.6, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013trace_boot: Failed to add probe: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@trace_boot_add_kprobe_event._entry_ptr.58 = internal global ptr @trace_boot_add_kprobe_event._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fields\00", [25 x i8] zeroinitializer }, align 32
@trace_boot_add_synth_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013trace_boot: Failed to add synthetic event: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trace_boot_add_synth_event\00", [37 x i8] zeroinitializer }, align 32
@trace_boot_add_synth_event._entry_ptr = internal global ptr @trace_boot_add_synth_event._entry, section ".printk_index", align 4
@trace_boot_init_histograms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.6, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013trace_boot: Failed to apply hist trigger: %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trace_boot_init_histograms\00", [37 x i8] zeroinitializer }, align 32
@trace_boot_init_histograms._entry_ptr = internal global ptr @trace_boot_init_histograms._entry, section ".printk_index", align 4
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keys\00", [27 x i8] zeroinitializer }, align 32
@trace_boot_init_histograms._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.6, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@trace_boot_init_histograms._entry_ptr.66 = internal global ptr @trace_boot_init_histograms._entry.65, section ".printk_index", align 4
@trace_boot_compose_hist_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.6, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013trace_boot: hist requires keys.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"trace_boot_compose_hist_cmd\00", [36 x i8] zeroinitializer }, align 32
@trace_boot_compose_hist_cmd._entry_ptr = internal global ptr @trace_boot_compose_hist_cmd._entry, section ".printk_index", align 4
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"values\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sort\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c":size=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c":name=%s\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"var\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c":%s=\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pause\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c":pause\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"continue\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c":continue\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c":clear\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"onmax\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"onchange\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"onmatch\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" if %s\00", [25 x i8] zeroinitializer }, align 32
@trace_boot_compose_hist_cmd._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.68, ptr @.str.6, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013trace_boot: hist exceeds the max command length.\0A\00", [44 x i8] zeroinitializer }, align 32
@trace_boot_compose_hist_cmd._entry_ptr.89 = internal global ptr @trace_boot_compose_hist_cmd._entry.87, section ".printk_index", align 4
@trace_boot_hist_add_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.6, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013trace_boot: hist.%s requires value(s).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"trace_boot_hist_add_array\00", [38 x i8] zeroinitializer }, align 32
@trace_boot_hist_add_array._entry_ptr = internal global ptr @trace_boot_hist_add_array._entry, section ".printk_index", align 4
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c":%s\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%c%s\00", [27 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@trace_boot_hist_add_one_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.6, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013trace_boot: hist.%s requires '%s' option.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"trace_boot_hist_add_one_handler\00", [32 x i8] zeroinitializer }, align 32
@trace_boot_hist_add_one_handler._entry_ptr = internal global ptr @trace_boot_hist_add_one_handler._entry, section ".printk_index", align 4
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c":%s(%s)\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trace\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"save\00", [27 x i8] zeroinitializer }, align 32
@trace_boot_hist_add_one_handler._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.6, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013trace_boot: hist.%s.%s requires value(s).\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_boot_hist_add_one_handler._entry_ptr.101 = internal global ptr @trace_boot_hist_add_one_handler._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c".%s\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snapshot\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c".snapshot()\00", [20 x i8] zeroinitializer }, align 32
@trace_boot_hist_add_one_handler._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.95, ptr @.str.6, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013trace_boot: hist.%s requires an action.\0A\00", [53 x i8] zeroinitializer }, align 32
@trace_boot_hist_add_one_handler._entry_ptr.108 = internal global ptr @trace_boot_hist_add_one_handler._entry.106, section ".printk_index", align 4
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@trace_boot_enable_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.110, ptr @.str.6, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trace_boot_enable_events\00", [39 x i8] zeroinitializer }, align 32
@trace_boot_enable_events._entry_ptr = internal global ptr @trace_boot_enable_events._entry, section ".printk_index", align 4
@trace_boot_enable_events._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.6, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013trace_boot: Failed to enable event: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@trace_boot_enable_events._entry_ptr.113 = internal global ptr @trace_boot_enable_events._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tracer\00", [25 x i8] zeroinitializer }, align 32
@trace_boot_enable_tracer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.6, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013trace_boot: Failed to set given tracer: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trace_boot_enable_tracer\00", [39 x i8] zeroinitializer }, align 32
@trace_boot_enable_tracer._entry_ptr = internal global ptr @trace_boot_enable_tracer._entry, section ".printk_index", align 4
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"alloc_snapshot\00", [17 x i8] zeroinitializer }, align 32
@trace_boot_enable_tracer._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.116, ptr @.str.6, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013trace_boot: Failed to allocate snapshot buffer\0A\00", [46 x i8] zeroinitializer }, align 32
@trace_boot_enable_tracer._entry_ptr.120 = internal global ptr @trace_boot_enable_tracer._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ftrace.filters\00", [17 x i8] zeroinitializer }, align 32
@trace_boot_set_ftrace_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.6, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013trace_boot: Failed to add %s to ftrace filter\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"trace_boot_set_ftrace_filter\00", [35 x i8] zeroinitializer }, align 32
@trace_boot_set_ftrace_filter._entry_ptr = internal global ptr @trace_boot_set_ftrace_filter._entry, section ".printk_index", align 4
@ftrace_filter_param = external dso_local local_unnamed_addr global i8, section ".init.data", align 1
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ftrace.notraces\00", [16 x i8] zeroinitializer }, align 32
@trace_boot_set_ftrace_filter._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.6, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@trace_boot_set_ftrace_filter._entry_ptr.126 = internal global ptr @trace_boot_set_ftrace_filter._entry.125, section ".printk_index", align 4
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"instance\00", [23 x i8] zeroinitializer }, align 32
@trace_boot_init_instances._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.6, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013trace_boot: Failed to get trace instance %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"trace_boot_init_instances\00", [38 x i8] zeroinitializer }, align 32
@trace_boot_init_instances._entry_ptr = internal global ptr @trace_boot_init_instances._entry, section ".printk_index", align 4
@__llvm_gcov_ctr = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.130 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.131 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.132 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.133 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.134 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.135 = internal global [21 x i64] zeroinitializer
@__llvm_gcov_ctr.136 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.137 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.138 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.139 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.140 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.141 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.142 = internal global [18 x i64] zeroinitializer
@__llvm_gcov_ctr.143 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.144 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.145 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.146 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.147 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.148 = internal global [20 x i64] zeroinitializer
@__llvm_gcov_ctr.149 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.150 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.151 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.152 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.153 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.154 = internal global [10 x i64] zeroinitializer
@0 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_boot.gcda\00", [34 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [26 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 92716918, i32 122820918 }, %emit_function_args_ty { i32 1, i32 1978790065, i32 122820918 }, %emit_function_args_ty { i32 2, i32 1130378873, i32 122820918 }, %emit_function_args_ty { i32 3, i32 -750262929, i32 122820918 }, %emit_function_args_ty { i32 4, i32 1974659616, i32 122820918 }, %emit_function_args_ty { i32 5, i32 181361786, i32 122820918 }, %emit_function_args_ty { i32 6, i32 1991401825, i32 122820918 }, %emit_function_args_ty { i32 7, i32 -1645370499, i32 122820918 }, %emit_function_args_ty { i32 8, i32 507767630, i32 122820918 }, %emit_function_args_ty { i32 9, i32 -471257821, i32 122820918 }, %emit_function_args_ty { i32 10, i32 -117061252, i32 122820918 }, %emit_function_args_ty { i32 11, i32 -1448918485, i32 122820918 }, %emit_function_args_ty { i32 12, i32 1637934214, i32 122820918 }, %emit_function_args_ty { i32 13, i32 -1093308751, i32 122820918 }, %emit_function_args_ty { i32 14, i32 2115777368, i32 122820918 }, %emit_function_args_ty { i32 15, i32 1835424971, i32 122820918 }, %emit_function_args_ty { i32 16, i32 -1638675183, i32 122820918 }, %emit_function_args_ty { i32 17, i32 -2122083718, i32 122820918 }, %emit_function_args_ty { i32 18, i32 -923041819, i32 122820918 }, %emit_function_args_ty { i32 19, i32 -2119384419, i32 122820918 }, %emit_function_args_ty { i32 20, i32 860500598, i32 122820918 }, %emit_function_args_ty { i32 21, i32 -5746780, i32 122820918 }, %emit_function_args_ty { i32 22, i32 -385909688, i32 122820918 }, %emit_function_args_ty { i32 23, i32 1220631878, i32 122820918 }, %emit_function_args_ty { i32 24, i32 -1926843397, i32 122820918 }, %emit_function_args_ty { i32 25, i32 -1097362406, i32 122820918 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [26 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.130 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.131 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.132 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.133 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.134 }, %emit_arcs_args_ty { i32 21, ptr @__llvm_gcov_ctr.135 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.136 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.137 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.138 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.139 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.140 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.141 }, %emit_arcs_args_ty { i32 18, ptr @__llvm_gcov_ctr.142 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.143 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.144 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.145 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.146 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.147 }, %emit_arcs_args_ty { i32 20, ptr @__llvm_gcov_ctr.148 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.149 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.150 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.151 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.152 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.153 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.154 }]
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 651, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 663, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"../kernel/trace/trace.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 419, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 33, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 35, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 40, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 43, i32 32 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 46, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 53, i32 32 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 56, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 59, i32 32 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 63, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 65, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 68, i32 32 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 75, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 524, i32 36 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 530, i32 21 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 473, i32 21 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 476, i32 21 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 483, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 487, i32 33 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 490, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 492, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 496, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 498, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 500, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 502, i32 39 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 510, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 110, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 115, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 121, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 153, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 161, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 436, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 441, i32 34 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 447, i32 5 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 358, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 362, i32 52 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 365, i32 52 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 369, i32 33 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 371, i32 28 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 373, i32 33 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 375, i32 28 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 377, i32 37 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 381, i32 29 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 388, i32 33 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 389, i32 28 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 390, i32 38 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 391, i32 28 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 392, i32 38 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 393, i32 28 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 396, i32 37 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 399, i32 37 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 402, i32 37 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 408, i32 28 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 411, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 229, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 233, i32 28 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 236, i32 29 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 258, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 262, i32 27 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 265, i32 38 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 267, i32 39 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 272, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 278, i32 28 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 285, i32 28 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 286, i32 41 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 287, i32 28 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 289, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 89, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 91, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 96, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 598, i32 32 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 601, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 605, i32 32 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 607, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 566, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 571, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 576, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 581, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 627, i32 36 }
@___asan_gen_.515 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.522 = private constant [29 x i8] c"../kernel/trace/trace_boot.c\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 638, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [155 x ptr] [ptr @__initcall__kmod_trace_boot__262_671_trace_boot_init1s, ptr @trace_boot_add_kprobe_event._entry, ptr @trace_boot_add_kprobe_event._entry.56, ptr @trace_boot_add_kprobe_event._entry_ptr, ptr @trace_boot_add_kprobe_event._entry_ptr.58, ptr @trace_boot_add_synth_event._entry, ptr @trace_boot_add_synth_event._entry_ptr, ptr @trace_boot_compose_hist_cmd._entry, ptr @trace_boot_compose_hist_cmd._entry.87, ptr @trace_boot_compose_hist_cmd._entry_ptr, ptr @trace_boot_compose_hist_cmd._entry_ptr.89, ptr @trace_boot_enable_events._entry, ptr @trace_boot_enable_events._entry.111, ptr @trace_boot_enable_events._entry_ptr, ptr @trace_boot_enable_events._entry_ptr.113, ptr @trace_boot_enable_tracer._entry, ptr @trace_boot_enable_tracer._entry.118, ptr @trace_boot_enable_tracer._entry_ptr, ptr @trace_boot_enable_tracer._entry_ptr.120, ptr @trace_boot_hist_add_array._entry, ptr @trace_boot_hist_add_array._entry_ptr, ptr @trace_boot_hist_add_one_handler._entry, ptr @trace_boot_hist_add_one_handler._entry.106, ptr @trace_boot_hist_add_one_handler._entry.99, ptr @trace_boot_hist_add_one_handler._entry_ptr, ptr @trace_boot_hist_add_one_handler._entry_ptr.101, ptr @trace_boot_hist_add_one_handler._entry_ptr.108, ptr @trace_boot_init_histograms._entry, ptr @trace_boot_init_histograms._entry.65, ptr @trace_boot_init_histograms._entry_ptr, ptr @trace_boot_init_histograms._entry_ptr.66, ptr @trace_boot_init_instances._entry, ptr @trace_boot_init_instances._entry_ptr, ptr @trace_boot_init_one_event._entry, ptr @trace_boot_init_one_event._entry.36, ptr @trace_boot_init_one_event._entry.39, ptr @trace_boot_init_one_event._entry.43, ptr @trace_boot_init_one_event._entry.46, ptr @trace_boot_init_one_event._entry.50, ptr @trace_boot_init_one_event._entry_ptr, ptr @trace_boot_init_one_event._entry_ptr.38, ptr @trace_boot_init_one_event._entry_ptr.41, ptr @trace_boot_init_one_event._entry_ptr.45, ptr @trace_boot_init_one_event._entry_ptr.48, ptr @trace_boot_init_one_event._entry_ptr.52, ptr @trace_boot_set_ftrace_filter._entry, ptr @trace_boot_set_ftrace_filter._entry.125, ptr @trace_boot_set_ftrace_filter._entry_ptr, ptr @trace_boot_set_ftrace_filter._entry_ptr.126, ptr @trace_boot_set_instance_options._entry, ptr @trace_boot_set_instance_options._entry.11, ptr @trace_boot_set_instance_options._entry.15, ptr @trace_boot_set_instance_options._entry.19, ptr @trace_boot_set_instance_options._entry.22, ptr @trace_boot_set_instance_options._entry.26, ptr @trace_boot_set_instance_options._entry.7, ptr @trace_boot_set_instance_options._entry_ptr, ptr @trace_boot_set_instance_options._entry_ptr.13, ptr @trace_boot_set_instance_options._entry_ptr.17, ptr @trace_boot_set_instance_options._entry_ptr.21, ptr @trace_boot_set_instance_options._entry_ptr.24, ptr @trace_boot_set_instance_options._entry_ptr.28, ptr @trace_boot_set_instance_options._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.127, ptr @.str.128, ptr @.str.129], section "llvm.metadata"
@1 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_set_instance_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_set_instance_options._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_set_instance_options._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_set_instance_options._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_set_instance_options._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_set_instance_options._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_set_instance_options._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_init_one_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_init_one_event._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_init_one_event._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_init_one_event._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_init_one_event._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_init_one_event._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_add_kprobe_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_add_kprobe_event._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_add_synth_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_init_histograms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_init_histograms._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_compose_hist_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_compose_hist_cmd._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_hist_add_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_hist_add_one_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_hist_add_one_handler._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_hist_add_one_handler._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_enable_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_enable_events._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_enable_tracer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_enable_tracer._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_set_ftrace_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_set_ftrace_filter._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_boot_init_instances._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_boot_init() #0 section ".init.text" align 64 !dbg !250 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !253
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.130, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.130, align 8
  %call.i = tail call ptr @xbc_node_find_subkey(ptr noundef null, ptr noundef nonnull @.str) #16, !dbg !254
  %tobool.not = icmp eq ptr %call.i, null, !dbg !258
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !260
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16, !dbg !260
  %1 = add i64 %gcov_ctr, 1, !dbg !260
  store i64 %1, ptr @__llvm_gcov_ctr, align 16, !dbg !260
  br label %cleanup, !dbg !260

if.end:                                           ; preds = %entry
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.134, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.134, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ftrace_trace_arrays to i32)), !dbg !261
  %3 = load volatile ptr, ptr @ftrace_trace_arrays, align 4, !dbg !261
  %cmp.i.not.i = icmp eq ptr %3, @ftrace_trace_arrays, !dbg !268
  br i1 %cmp.i.not.i, label %top_trace_array.exit.thread, label %if.end.i, !dbg !269

top_trace_array.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !270
  %gcov_ctr26.i13 = load i64, ptr @__llvm_gcov_ctr.131, align 16, !dbg !270
  %4 = add i64 %gcov_ctr26.i13, 1, !dbg !270
  store i64 %4, ptr @__llvm_gcov_ctr.131, align 16, !dbg !270
  br label %if.then3, !dbg !271

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @ftrace_trace_arrays, i32 0, i32 1) to i32)), !dbg !272
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ftrace_trace_arrays, i32 0, i32 1), align 4, !dbg !272
  %flags.i = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 26, !dbg !273
  %6 = ptrtoint ptr %flags.i to i32, !dbg !273
  call void @__asan_load4_noabort(i32 %6), !dbg !273
  %7 = load i32, ptr %flags.i, align 8, !dbg !273
  %and.i = and i32 %7, 1, !dbg !273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !273
  %tobool1.not.i = icmp eq i32 %and.i, 0, !dbg !273
  br i1 %tobool1.not.i, label %if.then10.i, label %if.end.i.top_trace_array.exit_crit_edge, !dbg !273, !prof !274

if.end.i.top_trace_array.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !273
  br label %top_trace_array.exit, !dbg !273

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !273
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.131, i32 0, i32 1), align 8, !dbg !273
  %8 = add i64 %gcov_ctr25.i, 1, !dbg !273
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.131, i32 0, i32 1), align 8, !dbg !273
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 419, i32 noundef 9, ptr noundef null) #17, !dbg !273
  br label %top_trace_array.exit, !dbg !273

top_trace_array.exit:                             ; preds = %if.then10.i, %if.end.i.top_trace_array.exit_crit_edge
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.131, i32 0, i32 2), align 16, !dbg !270
  %9 = add i64 %gcov_ctr26.i, 1, !dbg !270
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.131, i32 0, i32 2), align 16, !dbg !270
  %tobool2.not = icmp eq ptr %5, null, !dbg !275
  br i1 %tobool2.not, label %top_trace_array.exit.if.then3_crit_edge, label %if.end4, !dbg !271

top_trace_array.exit.if.then3_crit_edge:          ; preds = %top_trace_array.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !271
  br label %if.then3, !dbg !271

if.then3:                                         ; preds = %top_trace_array.exit.if.then3_crit_edge, %top_trace_array.exit.thread
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !276
  %10 = add i64 %gcov_ctr6, 1, !dbg !276
  store i64 %10, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !276
  br label %cleanup, !dbg !276

if.end4:                                          ; preds = %top_trace_array.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !277
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !277
  %11 = add i64 %gcov_ctr7, 1, !dbg !277
  store i64 %11, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !277
  tail call fastcc void @trace_boot_init_one_instance(ptr noundef nonnull %5, ptr noundef nonnull %call.i) #18, !dbg !278
  tail call fastcc void @trace_boot_init_instances(ptr noundef nonnull %call.i) #18, !dbg !279
  tail call void @disable_tracing_selftest(ptr noundef nonnull @.str.1) #16, !dbg !280
  br label %cleanup, !dbg !281

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  ret i32 0, !dbg !282
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_boot_init_one_instance(ptr noundef %tr, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 !dbg !283 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !284
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.132, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.132, align 8
  tail call fastcc void @trace_boot_set_instance_options(ptr noundef %tr, ptr noundef %node) #18, !dbg !285
  tail call fastcc void @trace_boot_init_events(ptr noundef %tr, ptr noundef %node) #18, !dbg !286
  tail call fastcc void @trace_boot_enable_events(ptr noundef %tr, ptr noundef %node) #18, !dbg !287
  tail call fastcc void @trace_boot_enable_tracer(ptr noundef %tr, ptr noundef %node) #18, !dbg !288
  ret void, !dbg !289
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_boot_init_instances(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 !dbg !290 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !291
  %call = tail call ptr @xbc_node_find_subkey(ptr noundef %node, ptr noundef nonnull @.str.127) #16, !dbg !292
  %tobool.not = icmp eq ptr %call, null, !dbg !293
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !295
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.133, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.133, align 16
  br label %cleanup, !dbg !296

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @xbc_node_get_subkey(ptr noundef nonnull %call) #18, !dbg !297
  %cmp.not32 = icmp eq ptr %call1, null, !dbg !297
  br i1 %cmp.not32, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge, !dbg !297

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body, !dbg !297

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !297
  br label %for.end, !dbg !297

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %inode.033 = phi ptr [ %call13, %for.inc.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  %call2 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %inode.033) #16, !dbg !298
  %tobool3.not = icmp eq ptr %call2, null, !dbg !299
  br i1 %tobool3.not, label %for.body.if.then6_crit_edge, label %lor.lhs.false, !dbg !300

for.body.if.then6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !300
  br label %if.then6, !dbg !300

lor.lhs.false:                                    ; preds = %for.body
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 1), align 8, !dbg !301
  %1 = add i64 %gcov_ctr16, 1, !dbg !301
  store i64 %1, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 1), align 8, !dbg !301
  %2 = ptrtoint ptr %call2 to i32, !dbg !302
  call void @__asan_load1_noabort(i32 %2), !dbg !302
  %3 = load i8, ptr %call2, align 1, !dbg !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3), !dbg !303
  %cmp4 = icmp eq i8 %3, 0, !dbg !303
  br i1 %cmp4, label %lor.lhs.false.if.then6_crit_edge, label %if.end7, !dbg !304

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15, !dbg !304
  br label %if.then6, !dbg !304

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %for.body.if.then6_crit_edge
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 2), align 16, !dbg !305
  %4 = add i64 %gcov_ctr17, 1, !dbg !305
  store i64 %4, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 2), align 16, !dbg !305
  br label %for.inc, !dbg !305

if.end7:                                          ; preds = %lor.lhs.false
  %call8 = tail call ptr @trace_array_get_by_name(ptr noundef nonnull %call2) #17, !dbg !306
  %tobool9.not = icmp eq ptr %call8, null, !dbg !307
  br i1 %tobool9.not, label %do.end, label %if.end12, !dbg !308

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15, !dbg !309
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 3), align 8, !dbg !309
  %5 = add i64 %gcov_ctr18, 1, !dbg !309
  store i64 %5, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 3), align 8, !dbg !309
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull %call2) #16, !dbg !309
  br label %for.inc, !dbg !310

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15, !dbg !311
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 4), align 16, !dbg !311
  %6 = add i64 %gcov_ctr19, 1, !dbg !311
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 4), align 16, !dbg !311
  tail call fastcc void @trace_boot_init_one_instance(ptr noundef nonnull %call8, ptr noundef nonnull %inode.033) #18, !dbg !312
  tail call void @trace_array_put(ptr noundef nonnull %call8) #17, !dbg !313
  br label %for.inc, !dbg !314

for.inc:                                          ; preds = %if.end12, %do.end, %if.then6
  %call13 = tail call ptr @xbc_node_get_next(ptr noundef nonnull %inode.033) #16, !dbg !297
  %cmp.not = icmp eq ptr %call13, null, !dbg !297
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !297, !llvm.loop !315

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !297
  br label %for.body, !dbg !297

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !297
  br label %for.end, !dbg !297

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 5), align 8, !dbg !316
  %7 = add i64 %gcov_ctr20, 1, !dbg !316
  store i64 %7, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 5), align 8, !dbg !316
  br label %cleanup, !dbg !316

cleanup:                                          ; preds = %for.end, %if.then
  ret void, !dbg !316
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @disable_tracing_selftest(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_find_subkey(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_boot_set_instance_options(ptr noundef %tr, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 !dbg !317 {
entry:
  %anode = alloca ptr, align 4
  %buf = alloca [256 x i8], align 1
  %v = alloca i32, align 4
  %new_mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15, !dbg !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %anode) #17, !dbg !319
  %0 = ptrtoint ptr %anode to i32, !dbg !320
  call void @__asan_store4_noabort(i32 %0), !dbg !320
  store ptr inttoptr (i32 -1 to ptr), ptr %anode, align 4, !dbg !320, !annotation !321
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #17, !dbg !322
  %1 = call ptr @memset(ptr %buf, i32 255, i32 256), !dbg !323
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #17, !dbg !324
  %2 = ptrtoint ptr %v to i32, !dbg !325
  call void @__asan_store4_noabort(i32 %2), !dbg !325
  store i32 0, ptr %v, align 4, !dbg !325
  %call = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %anode) #16, !dbg !326
  %cmp.not156 = icmp eq ptr %call, null, !dbg !326
  br i1 %cmp.not156, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !326

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !326

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !326
  br label %for.end, !dbg !326

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry.for.body_crit_edge
  %p.0157 = phi ptr [ %call16, %cond.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call1 = call i32 @strlcpy(ptr noundef nonnull %buf, ptr noundef nonnull %p.0157, i32 noundef 256) #17, !dbg !327
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1), !dbg !328
  %cmp2 = icmp ugt i32 %call1, 255, !dbg !328
  br i1 %cmp2, label %do.end, label %if.end, !dbg !327

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !329
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %p.0157) #16, !dbg !329
  br label %for.inc, !dbg !330

if.end:                                           ; preds = %for.body
  %call5 = call i32 @trace_set_options(ptr noundef %tr, ptr noundef nonnull %buf) #17, !dbg !331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !332
  %cmp6 = icmp slt i32 %call5, 0, !dbg !332
  br i1 %cmp6, label %do.end10, label %if.end.if.end14_crit_edge, !dbg !331

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !331
  br label %if.end14, !dbg !331

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !333
  %gcov_ctr106 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !333
  %3 = add i64 %gcov_ctr106, 1, !dbg !333
  store i64 %3, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !333
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %buf) #16, !dbg !333
  br label %if.end14, !dbg !333

if.end14:                                         ; preds = %do.end10, %if.end.if.end14_crit_edge
  %gcov_ctr107 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !334
  %4 = add i64 %gcov_ctr107, 1, !dbg !334
  store i64 %4, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !334
  br label %for.inc, !dbg !334

for.inc:                                          ; preds = %if.end14, %do.end
  %5 = ptrtoint ptr %anode to i32, !dbg !326
  call void @__asan_load4_noabort(i32 %5), !dbg !326
  %6 = load ptr, ptr %anode, align 4, !dbg !326
  %call15 = call ptr @xbc_node_get_child(ptr noundef %6) #16, !dbg !326
  %7 = ptrtoint ptr %anode to i32, !dbg !326
  call void @__asan_store4_noabort(i32 %7), !dbg !326
  store ptr %call15, ptr %anode, align 4, !dbg !326
  %tobool.not = icmp eq ptr %call15, null, !dbg !326
  br i1 %tobool.not, label %cond.end.thread, label %cond.end, !dbg !326

cond.end.thread:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !326
  %gcov_ctr109 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !326
  %8 = add i64 %gcov_ctr109, 1, !dbg !326
  store i64 %8, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !326
  br label %for.end, !dbg !326

cond.end:                                         ; preds = %for.inc
  %gcov_ctr108 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !326
  %9 = add i64 %gcov_ctr108, 1, !dbg !326
  store i64 %9, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !326
  %call16 = call ptr @xbc_node_get_data(ptr noundef nonnull %call15) #16, !dbg !326
  %cmp.not = icmp eq ptr %call16, null, !dbg !326
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge, !dbg !326, !llvm.loop !335

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !326
  br label %for.body, !dbg !326

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !326
  br label %for.end, !dbg !326

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %cond.end.thread, %entry.for.end_crit_edge
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.135, align 16, !dbg !336
  %10 = add i64 %gcov_ctr, 1, !dbg !336
  store i64 %10, ptr @__llvm_gcov_ctr.135, align 16, !dbg !336
  %call17 = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.10, ptr noundef null) #16, !dbg !337
  %tobool18.not = icmp eq ptr %call17, null, !dbg !338
  br i1 %tobool18.not, label %for.end.if.end34_crit_edge, label %land.lhs.true, !dbg !339

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !339
  br label %if.end34, !dbg !339

land.lhs.true:                                    ; preds = %for.end
  %gcov_ctr110 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !340
  %11 = add i64 %gcov_ctr110, 1, !dbg !340
  store i64 %11, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !340
  %12 = ptrtoint ptr %call17 to i32, !dbg !341
  call void @__asan_load1_noabort(i32 %12), !dbg !341
  %13 = load i8, ptr %call17, align 1, !dbg !341
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13), !dbg !342
  %cmp19.not = icmp eq i8 %13, 0, !dbg !342
  br i1 %cmp19.not, label %land.lhs.true.if.end34_crit_edge, label %if.then21, !dbg !338

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !338
  br label %if.end34, !dbg !338

if.then21:                                        ; preds = %land.lhs.true
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.139, align 8
  %14 = add i64 %gcov_ctr.i, 1
  store i64 %14, ptr @__llvm_gcov_ctr.139, align 8
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %call17, i32 noundef 10, ptr noundef nonnull %v) #17, !dbg !343
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !347
  %tobool23.not = icmp eq i32 %call.i, 0, !dbg !347
  br i1 %tobool23.not, label %if.then21.if.end30_crit_edge, label %do.end27, !dbg !347

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15, !dbg !347
  br label %if.end30, !dbg !347

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15, !dbg !348
  %gcov_ctr111 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !348
  %15 = add i64 %gcov_ctr111, 1, !dbg !348
  store i64 %15, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !348
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %call17) #16, !dbg !348
  br label %if.end30, !dbg !348

if.end30:                                         ; preds = %do.end27, %if.then21.if.end30_crit_edge
  %16 = ptrtoint ptr %v to i32, !dbg !349
  call void @__asan_load4_noabort(i32 %16), !dbg !349
  %17 = load i32, ptr %v, align 4, !dbg !349
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17), !dbg !349
  %tobool31.not = icmp eq i32 %17, 0, !dbg !349
  br i1 %tobool31.not, label %if.else, label %if.then32, !dbg !349

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15, !dbg !350
  %gcov_ctr112 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 7), align 8, !dbg !350
  %18 = add i64 %gcov_ctr112, 1, !dbg !350
  store i64 %18, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 7), align 8, !dbg !350
  call void @tracer_tracing_on(ptr noundef %tr) #17, !dbg !351
  br label %if.end34, !dbg !351

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15, !dbg !352
  %gcov_ctr113 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 8), align 16, !dbg !352
  %19 = add i64 %gcov_ctr113, 1, !dbg !352
  store i64 %19, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 8), align 16, !dbg !352
  call void @tracer_tracing_off(ptr noundef %tr) #17, !dbg !353
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then32, %land.lhs.true.if.end34_crit_edge, %for.end.if.end34_crit_edge
  %call35 = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.14, ptr noundef null) #16, !dbg !354
  %tobool36.not = icmp eq ptr %call35, null, !dbg !355
  br i1 %tobool36.not, label %if.end34.if.end52_crit_edge, label %land.lhs.true37, !dbg !356

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15, !dbg !356
  br label %if.end52, !dbg !356

land.lhs.true37:                                  ; preds = %if.end34
  %gcov_ctr114 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 9), align 8, !dbg !357
  %20 = add i64 %gcov_ctr114, 1, !dbg !357
  store i64 %20, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 9), align 8, !dbg !357
  %21 = ptrtoint ptr %call35 to i32, !dbg !358
  call void @__asan_load1_noabort(i32 %21), !dbg !358
  %22 = load i8, ptr %call35, align 1, !dbg !358
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22), !dbg !359
  %cmp39.not = icmp eq i8 %22, 0, !dbg !359
  br i1 %cmp39.not, label %land.lhs.true37.if.end52_crit_edge, label %if.then41, !dbg !355

land.lhs.true37.if.end52_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15, !dbg !355
  br label %if.end52, !dbg !355

if.then41:                                        ; preds = %land.lhs.true37
  %call42 = call i32 @tracing_set_clock(ptr noundef %tr, ptr noundef nonnull %call35) #17, !dbg !360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42), !dbg !361
  %cmp43 = icmp slt i32 %call42, 0, !dbg !361
  br i1 %cmp43, label %do.end48, label %if.then41.if.end51_crit_edge, !dbg !360

if.then41.if.end51_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15, !dbg !360
  br label %if.end51, !dbg !360

do.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15, !dbg !362
  %gcov_ctr115 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 10), align 16, !dbg !362
  %23 = add i64 %gcov_ctr115, 1, !dbg !362
  store i64 %23, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 10), align 16, !dbg !362
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %call35) #16, !dbg !362
  br label %if.end51, !dbg !362

if.end51:                                         ; preds = %do.end48, %if.then41.if.end51_crit_edge
  %gcov_ctr116 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 11), align 8, !dbg !363
  %24 = add i64 %gcov_ctr116, 1, !dbg !363
  store i64 %24, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 11), align 8, !dbg !363
  br label %if.end52, !dbg !363

if.end52:                                         ; preds = %if.end51, %land.lhs.true37.if.end52_crit_edge, %if.end34.if.end52_crit_edge
  %call53 = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.18, ptr noundef null) #16, !dbg !364
  %tobool54.not = icmp eq ptr %call53, null, !dbg !365
  br i1 %tobool54.not, label %if.end52.if.end81_crit_edge, label %land.lhs.true55, !dbg !366

if.end52.if.end81_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15, !dbg !366
  br label %if.end81, !dbg !366

land.lhs.true55:                                  ; preds = %if.end52
  %gcov_ctr117 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 12), align 16, !dbg !367
  %25 = add i64 %gcov_ctr117, 1, !dbg !367
  store i64 %25, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 12), align 16, !dbg !367
  %26 = ptrtoint ptr %call53 to i32, !dbg !368
  call void @__asan_load1_noabort(i32 %26), !dbg !368
  %27 = load i8, ptr %call53, align 1, !dbg !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27), !dbg !369
  %cmp57.not = icmp eq i8 %27, 0, !dbg !369
  br i1 %cmp57.not, label %land.lhs.true55.if.end81_crit_edge, label %if.then59, !dbg !365

land.lhs.true55.if.end81_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #15, !dbg !365
  br label %if.end81, !dbg !365

if.then59:                                        ; preds = %land.lhs.true55
  %call60 = call i64 @memparse(ptr noundef nonnull %call53, ptr noundef null) #17, !dbg !370
  %conv61 = trunc i64 %call60 to i32, !dbg !370
  %28 = ptrtoint ptr %v to i32, !dbg !371
  call void @__asan_store4_noabort(i32 %28), !dbg !371
  store i32 %conv61, ptr %v, align 4, !dbg !371
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv61), !dbg !372
  %cmp62 = icmp ult i32 %conv61, 4096, !dbg !372
  br i1 %cmp62, label %do.end67, label %if.then59.if.end70_crit_edge, !dbg !373

if.then59.if.end70_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15, !dbg !373
  br label %if.end70, !dbg !373

do.end67:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15, !dbg !374
  %gcov_ctr118 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 13), align 8, !dbg !374
  %29 = add i64 %gcov_ctr118, 1, !dbg !374
  store i64 %29, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 13), align 8, !dbg !374
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %call53) #16, !dbg !374
  br label %if.end70, !dbg !374

if.end70:                                         ; preds = %do.end67, %if.then59.if.end70_crit_edge
  %30 = ptrtoint ptr %v to i32, !dbg !375
  call void @__asan_load4_noabort(i32 %30), !dbg !375
  %31 = load i32, ptr %v, align 4, !dbg !375
  %call71 = call i32 @tracing_resize_ring_buffer(ptr noundef %tr, i32 noundef %31, i32 noundef -1) #17, !dbg !376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71), !dbg !377
  %cmp72 = icmp slt i32 %call71, 0, !dbg !377
  br i1 %cmp72, label %do.end77, label %if.end70.if.end80_crit_edge, !dbg !376

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15, !dbg !376
  br label %if.end80, !dbg !376

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15, !dbg !378
  %gcov_ctr119 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 14), align 16, !dbg !378
  %32 = add i64 %gcov_ctr119, 1, !dbg !378
  store i64 %32, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 14), align 16, !dbg !378
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %call53) #16, !dbg !378
  br label %if.end80, !dbg !378

if.end80:                                         ; preds = %do.end77, %if.end70.if.end80_crit_edge
  %gcov_ctr120 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 15), align 8, !dbg !379
  %33 = add i64 %gcov_ctr120, 1, !dbg !379
  store i64 %33, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 15), align 8, !dbg !379
  br label %if.end81, !dbg !379

if.end81:                                         ; preds = %if.end80, %land.lhs.true55.if.end81_crit_edge, %if.end52.if.end81_crit_edge
  %call82 = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.25, ptr noundef null) #16, !dbg !380
  %tobool83.not = icmp eq ptr %call82, null, !dbg !381
  br i1 %tobool83.not, label %if.end81.if.end105_crit_edge, label %land.lhs.true84, !dbg !382

if.end81.if.end105_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15, !dbg !382
  br label %if.end105, !dbg !382

land.lhs.true84:                                  ; preds = %if.end81
  %gcov_ctr121 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 16), align 16, !dbg !383
  %34 = add i64 %gcov_ctr121, 1, !dbg !383
  store i64 %34, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 16), align 16, !dbg !383
  %35 = ptrtoint ptr %call82 to i32, !dbg !384
  call void @__asan_load1_noabort(i32 %35), !dbg !384
  %36 = load i8, ptr %call82, align 1, !dbg !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36), !dbg !385
  %cmp86.not = icmp eq i8 %36, 0, !dbg !385
  br i1 %cmp86.not, label %land.lhs.true84.if.end105_crit_edge, label %if.then88, !dbg !381

land.lhs.true84.if.end105_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #15, !dbg !381
  br label %if.end105, !dbg !381

if.then88:                                        ; preds = %land.lhs.true84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_mask) #17, !dbg !386
  %37 = ptrtoint ptr %new_mask to i32, !dbg !387
  call void @__asan_store4_noabort(i32 %37), !dbg !387
  store ptr inttoptr (i32 -1 to ptr), ptr %new_mask, align 4, !dbg !387, !annotation !321
  %call89 = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %new_mask, i32 noundef 3264) #17, !dbg !388
  br i1 %call89, label %if.then90, label %if.then88.if.end104_crit_edge, !dbg !388

if.then88.if.end104_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15, !dbg !388
  br label %if.end104, !dbg !388

if.then90:                                        ; preds = %if.then88
  %38 = ptrtoint ptr %new_mask to i32, !dbg !389
  call void @__asan_load4_noabort(i32 %38), !dbg !389
  %39 = load ptr, ptr %new_mask, align 4, !dbg !389
  %gcov_ctr.i154 = load i64, ptr @__llvm_gcov_ctr.140, align 8
  %40 = add i64 %gcov_ctr.i154, 1
  store i64 %40, ptr @__llvm_gcov_ctr.140, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !390
  %41 = load i32, ptr @nr_cpu_ids, align 4, !dbg !390
  %call.i155 = call i32 @bitmap_parse(ptr noundef nonnull %call82, i32 noundef -1, ptr noundef %39, i32 noundef %41) #17, !dbg !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155), !dbg !395
  %cmp92 = icmp slt i32 %call.i155, 0, !dbg !395
  br i1 %cmp92, label %if.then90.do.end100_crit_edge, label %lor.lhs.false, !dbg !396

if.then90.do.end100_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #15, !dbg !396
  br label %do.end100, !dbg !396

lor.lhs.false:                                    ; preds = %if.then90
  %gcov_ctr122 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 17), align 8, !dbg !397
  %42 = add i64 %gcov_ctr122, 1, !dbg !397
  store i64 %42, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 17), align 8, !dbg !397
  %43 = ptrtoint ptr %new_mask to i32, !dbg !398
  call void @__asan_load4_noabort(i32 %43), !dbg !398
  %44 = load ptr, ptr %new_mask, align 4, !dbg !398
  %call94 = call i32 @tracing_set_cpumask(ptr noundef %tr, ptr noundef %44) #17, !dbg !399
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94), !dbg !400
  %cmp95 = icmp slt i32 %call94, 0, !dbg !400
  br i1 %cmp95, label %lor.lhs.false.do.end100_crit_edge, label %lor.lhs.false.if.end103_crit_edge, !dbg !401

lor.lhs.false.if.end103_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15, !dbg !401
  br label %if.end103, !dbg !401

lor.lhs.false.do.end100_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15, !dbg !401
  br label %do.end100, !dbg !401

do.end100:                                        ; preds = %lor.lhs.false.do.end100_crit_edge, %if.then90.do.end100_crit_edge
  %gcov_ctr123 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 18), align 16, !dbg !402
  %45 = add i64 %gcov_ctr123, 1, !dbg !402
  store i64 %45, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 18), align 16, !dbg !402
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %call82) #16, !dbg !402
  br label %if.end103, !dbg !402

if.end103:                                        ; preds = %do.end100, %lor.lhs.false.if.end103_crit_edge
  %gcov_ctr124 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 19), align 8, !dbg !403
  %46 = add i64 %gcov_ctr124, 1, !dbg !403
  store i64 %46, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 19), align 8, !dbg !403
  %47 = ptrtoint ptr %new_mask to i32, !dbg !403
  call void @__asan_load4_noabort(i32 %47), !dbg !403
  %48 = load ptr, ptr %new_mask, align 4, !dbg !403
  call void @free_cpumask_var(ptr noundef %48) #17, !dbg !404
  br label %if.end104, !dbg !405

if.end104:                                        ; preds = %if.end103, %if.then88.if.end104_crit_edge
  %gcov_ctr125 = load i64, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 20), align 16, !dbg !406
  %49 = add i64 %gcov_ctr125, 1, !dbg !406
  store i64 %49, ptr getelementptr inbounds ([21 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 20), align 16, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_mask) #17, !dbg !406
  br label %if.end105, !dbg !406

if.end105:                                        ; preds = %if.end104, %land.lhs.true84.if.end105_crit_edge, %if.end81.if.end105_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #17, !dbg !407
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #17, !dbg !407
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anode) #17, !dbg !407
  ret void, !dbg !407
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_boot_init_events(ptr noundef %tr, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 !dbg !408 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !409
  %call = tail call ptr @xbc_node_find_subkey(ptr noundef %node, ptr noundef nonnull @.str.29) #16, !dbg !410
  %tobool.not = icmp eq ptr %call, null, !dbg !411
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !412

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !413
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.136, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.136, align 16
  br label %cleanup, !dbg !414

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @xbc_node_get_subkey(ptr noundef nonnull %call) #18, !dbg !415
  %cmp.not61 = icmp eq ptr %call1, null, !dbg !415
  br i1 %cmp.not61, label %if.end.if.end28_crit_edge, label %if.end.for.body.outer_crit_edge, !dbg !415

if.end.for.body.outer_crit_edge:                  ; preds = %if.end
  br label %for.body.outer, !dbg !415

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !415
  br label %if.end28, !dbg !415

for.body.outer:                                   ; preds = %for.inc22.thread.for.body.outer_crit_edge, %if.end.for.body.outer_crit_edge
  %enable_all.0.off066.ph = phi i1 [ true, %for.inc22.thread.for.body.outer_crit_edge ], [ false, %if.end.for.body.outer_crit_edge ]
  %gnode.062.ph = phi ptr [ %call2370, %for.inc22.thread.for.body.outer_crit_edge ], [ %call1, %if.end.for.body.outer_crit_edge ]
  br label %for.body, !dbg !415

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %for.body.outer
  %gnode.062 = phi ptr [ %call23, %for.inc22.for.body_crit_edge ], [ %gnode.062.ph, %for.body.outer ]
  %call2 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %gnode.062) #16, !dbg !416
  %call3 = tail call i32 @strcmp(ptr noundef %call2, ptr noundef nonnull dereferenceable(7) @.str.30) #19, !dbg !417
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !417
  %tobool4.not = icmp eq i32 %call3, 0, !dbg !417
  br i1 %tobool4.not, label %for.inc22.thread, label %if.end6, !dbg !418

if.end6:                                          ; preds = %for.body
  %call7 = tail call fastcc ptr @xbc_node_get_subkey(ptr noundef nonnull %gnode.062) #18, !dbg !419
  %cmp9.not57 = icmp eq ptr %call7, null, !dbg !419
  br i1 %cmp9.not57, label %if.end6.for.inc22_crit_edge, label %if.end6.for.body10_crit_edge, !dbg !419

if.end6.for.body10_crit_edge:                     ; preds = %if.end6
  br label %for.body10, !dbg !419

if.end6.for.inc22_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15, !dbg !419
  br label %for.inc22, !dbg !419

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %if.end6.for.body10_crit_edge
  %enable.0.off060 = phi i1 [ %enable.1.off0, %for.inc.for.body10_crit_edge ], [ false, %if.end6.for.body10_crit_edge ]
  %enode.058 = phi ptr [ %call16, %for.inc.for.body10_crit_edge ], [ %call7, %if.end6.for.body10_crit_edge ]
  %call11 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %enode.058) #16, !dbg !420
  %call12 = tail call i32 @strcmp(ptr noundef %call11, ptr noundef nonnull dereferenceable(7) @.str.30) #19, !dbg !421
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12), !dbg !421
  %tobool13.not = icmp eq i32 %call12, 0, !dbg !421
  br i1 %tobool13.not, label %if.then14, label %if.end15, !dbg !422

if.then14:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15, !dbg !423
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 2), align 16, !dbg !423
  %1 = add i64 %gcov_ctr34, 1, !dbg !423
  store i64 %1, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 2), align 16, !dbg !423
  br label %for.inc, !dbg !424

if.end15:                                         ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15, !dbg !425
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 3), align 8, !dbg !425
  %2 = add i64 %gcov_ctr35, 1, !dbg !425
  store i64 %2, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 3), align 8, !dbg !425
  tail call fastcc void @trace_boot_init_one_event(ptr noundef %tr, ptr noundef nonnull %gnode.062, ptr noundef nonnull %enode.058) #18, !dbg !426
  br label %for.inc, !dbg !427

for.inc:                                          ; preds = %if.end15, %if.then14
  %enable.1.off0 = phi i1 [ %enable.0.off060, %if.end15 ], [ true, %if.then14 ]
  %call16 = tail call ptr @xbc_node_get_next(ptr noundef nonnull %enode.058) #16, !dbg !419
  %cmp9.not = icmp eq ptr %call16, null, !dbg !419
  br i1 %cmp9.not, label %for.end, label %for.inc.for.body10_crit_edge, !dbg !419, !llvm.loop !428

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !419
  br label %for.body10, !dbg !419

for.end:                                          ; preds = %for.inc
  br i1 %enable.1.off0, label %if.then18, label %for.end.for.inc22_crit_edge, !dbg !429

for.end.for.inc22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !429
  br label %for.inc22, !dbg !429

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !430
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 4), align 16, !dbg !430
  %3 = add i64 %gcov_ctr36, 1, !dbg !430
  store i64 %3, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 4), align 16, !dbg !430
  %call19 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %gnode.062) #16, !dbg !431
  %call20 = tail call i32 @trace_array_set_clr_event(ptr noundef %tr, ptr noundef %call19, ptr noundef null, i1 noundef zeroext true) #17, !dbg !432
  br label %for.inc22, !dbg !433

for.inc22:                                        ; preds = %if.then18, %for.end.for.inc22_crit_edge, %if.end6.for.inc22_crit_edge
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 5), align 8, !dbg !434
  %4 = add i64 %gcov_ctr37, 1, !dbg !434
  store i64 %4, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 5), align 8, !dbg !434
  %call23 = tail call ptr @xbc_node_get_next(ptr noundef nonnull %gnode.062) #16, !dbg !415
  %cmp.not = icmp eq ptr %call23, null, !dbg !415
  br i1 %cmp.not, label %for.end24, label %for.inc22.for.body_crit_edge, !dbg !415, !llvm.loop !435

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #15, !dbg !415
  br label %for.body, !dbg !415

for.inc22.thread:                                 ; preds = %for.body
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 1), align 8, !dbg !436
  %5 = add i64 %gcov_ctr33, 1, !dbg !436
  store i64 %5, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 1), align 8, !dbg !436
  %call2370 = tail call ptr @xbc_node_get_next(ptr noundef nonnull %gnode.062) #16, !dbg !415
  %cmp.not71 = icmp eq ptr %call2370, null, !dbg !415
  br i1 %cmp.not71, label %for.inc22.thread.if.then26_crit_edge, label %for.inc22.thread.for.body.outer_crit_edge, !dbg !415, !llvm.loop !435

for.inc22.thread.for.body.outer_crit_edge:        ; preds = %for.inc22.thread
  call void @__sanitizer_cov_trace_pc() #15, !dbg !415
  br label %for.body.outer, !dbg !415

for.inc22.thread.if.then26_crit_edge:             ; preds = %for.inc22.thread
  call void @__sanitizer_cov_trace_pc() #15, !dbg !415
  br label %if.then26, !dbg !415

for.end24:                                        ; preds = %for.inc22
  br i1 %enable_all.0.off066.ph, label %for.end24.if.then26_crit_edge, label %for.end24.if.end28_crit_edge, !dbg !437

for.end24.if.end28_crit_edge:                     ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15, !dbg !437
  br label %if.end28, !dbg !437

for.end24.if.then26_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #15, !dbg !437
  br label %if.then26, !dbg !437

if.then26:                                        ; preds = %for.end24.if.then26_crit_edge, %for.inc22.thread.if.then26_crit_edge
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 6), align 16, !dbg !438
  %6 = add i64 %gcov_ctr38, 1, !dbg !438
  store i64 %6, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 6), align 16, !dbg !438
  %call27 = tail call i32 @trace_array_set_clr_event(ptr noundef %tr, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #17, !dbg !439
  br label %if.end28, !dbg !439

if.end28:                                         ; preds = %if.then26, %for.end24.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 7), align 8, !dbg !440
  %7 = add i64 %gcov_ctr39, 1, !dbg !440
  store i64 %7, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 7), align 8, !dbg !440
  br label %cleanup, !dbg !440

cleanup:                                          ; preds = %if.end28, %if.then
  ret void, !dbg !440
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_boot_enable_events(ptr noundef %tr, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 !dbg !441 {
entry:
  %anode = alloca ptr, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15, !dbg !442
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.137, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.137, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %anode) #17, !dbg !443
  %1 = ptrtoint ptr %anode to i32, !dbg !444
  call void @__asan_store4_noabort(i32 %1), !dbg !444
  store ptr inttoptr (i32 -1 to ptr), ptr %anode, align 4, !dbg !444, !annotation !321
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #17, !dbg !445
  %2 = call ptr @memset(ptr %buf, i32 255, i32 256), !dbg !446
  %call = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.109, ptr noundef nonnull %anode) #16, !dbg !447
  %cmp.not23 = icmp eq ptr %call, null, !dbg !447
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !447

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !447

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !447
  br label %for.end, !dbg !447

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry.for.body_crit_edge
  %p.024 = phi ptr [ %call15, %cond.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call1 = call i32 @strlcpy(ptr noundef nonnull %buf, ptr noundef nonnull %p.024, i32 noundef 256) #17, !dbg !448
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1), !dbg !449
  %cmp2 = icmp ugt i32 %call1, 255, !dbg !449
  br i1 %cmp2, label %do.end, label %if.end, !dbg !448

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !450
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !450
  %3 = add i64 %gcov_ctr16, 1, !dbg !450
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !450
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %p.024) #16, !dbg !450
  br label %for.inc, !dbg !451

if.end:                                           ; preds = %for.body
  %call5 = call i32 @ftrace_set_clr_event(ptr noundef %tr, ptr noundef nonnull %buf, i32 noundef 1) #17, !dbg !452
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !453
  %cmp6 = icmp slt i32 %call5, 0, !dbg !453
  br i1 %cmp6, label %do.end10, label %if.end.if.end13_crit_edge, !dbg !452

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !452
  br label %if.end13, !dbg !452

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !454
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 2), align 16, !dbg !454
  %4 = add i64 %gcov_ctr17, 1, !dbg !454
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 2), align 16, !dbg !454
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull %p.024) #16, !dbg !454
  br label %if.end13, !dbg !454

if.end13:                                         ; preds = %do.end10, %if.end.if.end13_crit_edge
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 3), align 8, !dbg !455
  %5 = add i64 %gcov_ctr18, 1, !dbg !455
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 3), align 8, !dbg !455
  br label %for.inc, !dbg !455

for.inc:                                          ; preds = %if.end13, %do.end
  %6 = ptrtoint ptr %anode to i32, !dbg !447
  call void @__asan_load4_noabort(i32 %6), !dbg !447
  %7 = load ptr, ptr %anode, align 4, !dbg !447
  %call14 = call ptr @xbc_node_get_child(ptr noundef %7) #16, !dbg !447
  %8 = ptrtoint ptr %anode to i32, !dbg !447
  call void @__asan_store4_noabort(i32 %8), !dbg !447
  store ptr %call14, ptr %anode, align 4, !dbg !447
  %tobool.not = icmp eq ptr %call14, null, !dbg !447
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %cond.end, !dbg !447

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !447
  br label %for.end, !dbg !447

cond.end:                                         ; preds = %for.inc
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 4), align 16, !dbg !447
  %9 = add i64 %gcov_ctr19, 1, !dbg !447
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 4), align 16, !dbg !447
  %call15 = call ptr @xbc_node_get_data(ptr noundef nonnull %call14) #16, !dbg !447
  %cmp.not = icmp eq ptr %call15, null, !dbg !447
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge, !dbg !447, !llvm.loop !456

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !447
  br label %for.body, !dbg !447

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !447
  br label %for.end, !dbg !447

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #17, !dbg !457
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anode) #17, !dbg !457
  ret void, !dbg !457
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_boot_enable_tracer(ptr noundef %tr, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 !dbg !458 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !459
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.138, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.138, align 16
  tail call fastcc void @trace_boot_set_ftrace_filter(ptr noundef %tr, ptr noundef %node) #18, !dbg !460
  %call = tail call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.114, ptr noundef null) #16, !dbg !461
  %tobool.not = icmp eq ptr %call, null, !dbg !462
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true, !dbg !463

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !463
  br label %if.end7, !dbg !463

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 1), align 8, !dbg !464
  %1 = add i64 %gcov_ctr22, 1, !dbg !464
  store i64 %1, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 1), align 8, !dbg !464
  %2 = ptrtoint ptr %call to i32, !dbg !465
  call void @__asan_load1_noabort(i32 %2), !dbg !465
  %3 = load i8, ptr %call, align 1, !dbg !465
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3), !dbg !466
  %cmp.not = icmp eq i8 %3, 0, !dbg !466
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %if.then, !dbg !462

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !462
  br label %if.end7, !dbg !462

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i32 @tracing_set_tracer(ptr noundef %tr, ptr noundef nonnull %call) #17, !dbg !467
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !468
  %cmp3 = icmp slt i32 %call2, 0, !dbg !468
  br i1 %cmp3, label %do.end, label %if.then.if.end_crit_edge, !dbg !467

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15, !dbg !467
  br label %if.end, !dbg !467

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15, !dbg !469
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 2), align 16, !dbg !469
  %4 = add i64 %gcov_ctr23, 1, !dbg !469
  store i64 %4, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 2), align 16, !dbg !469
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull %call) #16, !dbg !469
  br label %if.end, !dbg !469

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 3), align 8, !dbg !470
  %5 = add i64 %gcov_ctr24, 1, !dbg !470
  store i64 %5, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 3), align 8, !dbg !470
  br label %if.end7, !dbg !470

if.end7:                                          ; preds = %if.end, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.117, ptr noundef null) #16, !dbg !471
  %tobool9.not = icmp eq ptr %call8, null, !dbg !471
  br i1 %tobool9.not, label %if.end7.if.end21_crit_edge, label %if.then10, !dbg !471

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15, !dbg !471
  br label %if.end21, !dbg !471

if.then10:                                        ; preds = %if.end7
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 4), align 16, !dbg !472
  %6 = add i64 %gcov_ctr25, 1, !dbg !472
  store i64 %6, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 4), align 16, !dbg !472
  %call11 = tail call i32 @tracing_alloc_snapshot_instance(ptr noundef %tr) #17, !dbg !473
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11), !dbg !474
  %cmp12 = icmp slt i32 %call11, 0, !dbg !474
  br i1 %cmp12, label %if.then14, label %if.then10.if.end21_crit_edge, !dbg !473

if.then10.if.end21_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15, !dbg !473
  br label %if.end21, !dbg !473

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15, !dbg !475
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 5), align 8, !dbg !475
  %7 = add i64 %gcov_ctr26, 1, !dbg !475
  store i64 %7, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 5), align 8, !dbg !475
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #16, !dbg !475
  br label %if.end21, !dbg !475

if.end21:                                         ; preds = %if.then14, %if.then10.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  ret void, !dbg !476
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_find_value(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_set_options(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_get_child(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_get_data(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_tracing_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_tracing_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_set_clock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_resize_ring_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_set_cpumask(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xbc_node_get_subkey(ptr noundef %node) unnamed_addr #5 section ".init.text" align 64 !dbg !477 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !478
  %call = tail call ptr @xbc_node_get_child(ptr noundef %node) #16, !dbg !479
  %tobool.not = icmp eq ptr %call, null, !dbg !480
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true, !dbg !481

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !481
  br label %if.else, !dbg !481

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.141, align 16, !dbg !482
  %0 = add i64 %gcov_ctr, 1, !dbg !482
  store i64 %0, ptr @__llvm_gcov_ctr.141, align 16, !dbg !482
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.143, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.143, align 8
  %data.i = getelementptr inbounds %struct.xbc_node, ptr %call, i32 0, i32 3, !dbg !483
  %2 = ptrtoint ptr %data.i to i32, !dbg !483
  call void @__asan_loadN_noabort(i32 %2, i32 2), !dbg !483
  %3 = load i16, ptr %data.i, align 1, !dbg !483
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3), !dbg !486
  %tobool.i = icmp slt i16 %3, 0, !dbg !486
  br i1 %tobool.i, label %if.then, label %land.lhs.true.if.else_crit_edge, !dbg !480

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !480
  br label %if.else, !dbg !480

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !487
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.141, i32 0, i32 1), align 8, !dbg !487
  %4 = add i64 %gcov_ctr3, 1, !dbg !487
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.141, i32 0, i32 1), align 8, !dbg !487
  %call2 = tail call ptr @xbc_node_get_next(ptr noundef nonnull %call) #16, !dbg !488
  br label %cleanup, !dbg !489

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.141, i32 0, i32 2), align 16, !dbg !490
  %5 = add i64 %gcov_ctr4, 1, !dbg !490
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.141, i32 0, i32 2), align 16, !dbg !490
  br label %cleanup, !dbg !491

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi ptr [ %call2, %if.then ], [ %call, %if.else ], !dbg !492
  ret ptr %retval.0, !dbg !493
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_boot_init_one_event(ptr noundef %tr, ptr noundef %gnode, ptr noundef %enode) unnamed_addr #0 section ".init.text" align 64 !dbg !494 {
entry:
  %anode = alloca ptr, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15, !dbg !495
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %anode) #17, !dbg !496
  %0 = ptrtoint ptr %anode to i32, !dbg !497
  call void @__asan_store4_noabort(i32 %0), !dbg !497
  store ptr inttoptr (i32 -1 to ptr), ptr %anode, align 4, !dbg !497, !annotation !321
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #17, !dbg !498
  %1 = call ptr @memset(ptr %buf, i32 255, i32 256), !dbg !499
  %call = tail call ptr @xbc_node_get_data(ptr noundef %gnode) #16, !dbg !500
  %call1 = tail call ptr @xbc_node_get_data(ptr noundef %enode) #16, !dbg !501
  %call2 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(8) @.str.31) #19, !dbg !502
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !502
  %tobool.not = icmp eq i32 %call2, 0, !dbg !502
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge, !dbg !503

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !503
  br label %if.end5, !dbg !503

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @trace_boot_add_kprobe_event(ptr noundef %enode, ptr noundef %call1) #18, !dbg !504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !505
  %cmp = icmp slt i32 %call3, 0, !dbg !505
  br i1 %cmp, label %if.then4, label %if.end, !dbg !504

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15, !dbg !506
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.142, align 16
  %2 = add i64 %gcov_ctr, 1
  store i64 %2, ptr @__llvm_gcov_ctr.142, align 16
  br label %cleanup, !dbg !507

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15, !dbg !508
  %gcov_ctr100 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 1), align 8, !dbg !508
  %3 = add i64 %gcov_ctr100, 1, !dbg !508
  store i64 %3, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 1), align 8, !dbg !508
  br label %if.end5, !dbg !508

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %call6 = tail call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(10) @.str.32) #19, !dbg !509
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6), !dbg !509
  %tobool7.not = icmp eq i32 %call6, 0, !dbg !509
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end13_crit_edge, !dbg !510

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15, !dbg !510
  br label %if.end13, !dbg !510

if.then8:                                         ; preds = %if.end5
  %call9 = tail call fastcc i32 @trace_boot_add_synth_event(ptr noundef %enode, ptr noundef %call1) #18, !dbg !511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9), !dbg !512
  %cmp10 = icmp slt i32 %call9, 0, !dbg !512
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !511

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15, !dbg !506
  %gcov_ctr101 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 2), align 16
  %4 = add i64 %gcov_ctr101, 1
  store i64 %4, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 2), align 16
  br label %cleanup, !dbg !513

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15, !dbg !514
  %gcov_ctr102 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 3), align 8, !dbg !514
  %5 = add i64 %gcov_ctr102, 1, !dbg !514
  store i64 %5, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 3), align 8, !dbg !514
  br label %if.end13, !dbg !514

if.end13:                                         ; preds = %if.end12, %if.end5.if.end13_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #17, !dbg !515
  %call14 = tail call ptr @find_event_file(ptr noundef %tr, ptr noundef %call, ptr noundef %call1) #17, !dbg !516
  %tobool15.not = icmp eq ptr %call14, null, !dbg !517
  br i1 %tobool15.not, label %do.end, label %if.end18, !dbg !518

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15, !dbg !519
  %gcov_ctr103 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 4), align 16, !dbg !519
  %6 = add i64 %gcov_ctr103, 1, !dbg !519
  store i64 %6, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 4), align 16, !dbg !519
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %call, ptr noundef %call1) #16, !dbg !519
  br label %out, !dbg !520

if.end18:                                         ; preds = %if.end13
  %call19 = tail call ptr @xbc_node_find_value(ptr noundef %enode, ptr noundef nonnull @.str.35, ptr noundef null) #16, !dbg !521
  %tobool20.not = icmp eq ptr %call19, null, !dbg !522
  br i1 %tobool20.not, label %if.end18.if.end46_crit_edge, label %land.lhs.true, !dbg !523

if.end18.if.end46_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15, !dbg !523
  br label %if.end46, !dbg !523

land.lhs.true:                                    ; preds = %if.end18
  %gcov_ctr104 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 5), align 8, !dbg !524
  %7 = add i64 %gcov_ctr104, 1, !dbg !524
  store i64 %7, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 5), align 8, !dbg !524
  %8 = ptrtoint ptr %call19 to i32, !dbg !525
  call void @__asan_load1_noabort(i32 %8), !dbg !525
  %9 = load i8, ptr %call19, align 1, !dbg !525
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9), !dbg !526
  %cmp21.not = icmp eq i8 %9, 0, !dbg !526
  br i1 %cmp21.not, label %land.lhs.true.if.end46_crit_edge, label %if.then23, !dbg !522

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !522
  br label %if.end46, !dbg !522

if.then23:                                        ; preds = %land.lhs.true
  %call24 = call i32 @strlcpy(ptr noundef nonnull %buf, ptr noundef nonnull %call19, i32 noundef 256) #17, !dbg !527
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call24), !dbg !528
  %cmp25 = icmp ugt i32 %call24, 255, !dbg !528
  br i1 %cmp25, label %do.end30, label %if.else, !dbg !527

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15, !dbg !529
  %gcov_ctr105 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 6), align 16, !dbg !529
  %10 = add i64 %gcov_ctr105, 1, !dbg !529
  store i64 %10, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 6), align 16, !dbg !529
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %call19) #16, !dbg !529
  br label %if.end46, !dbg !529

if.else:                                          ; preds = %if.then23
  %call34 = call i32 @apply_event_filter(ptr noundef nonnull %call14, ptr noundef nonnull %buf) #17, !dbg !530
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34), !dbg !531
  %cmp35 = icmp slt i32 %call34, 0, !dbg !531
  br i1 %cmp35, label %do.end40, label %if.else.if.end44_crit_edge, !dbg !530

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15, !dbg !530
  br label %if.end44, !dbg !530

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15, !dbg !532
  %gcov_ctr106 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 7), align 8, !dbg !532
  %11 = add i64 %gcov_ctr106, 1, !dbg !532
  store i64 %11, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 7), align 8, !dbg !532
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %buf) #16, !dbg !532
  br label %if.end44, !dbg !532

if.end44:                                         ; preds = %do.end40, %if.else.if.end44_crit_edge
  %gcov_ctr107 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 8), align 16
  %12 = add i64 %gcov_ctr107, 1
  store i64 %12, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 8), align 16
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %do.end30, %land.lhs.true.if.end46_crit_edge, %if.end18.if.end46_crit_edge
  %call47 = call ptr @xbc_node_find_value(ptr noundef %enode, ptr noundef nonnull @.str.42, ptr noundef nonnull %anode) #16, !dbg !533
  %cmp48.not142 = icmp eq ptr %call47, null, !dbg !533
  br i1 %cmp48.not142, label %if.end46.for.end_crit_edge, label %if.end46.for.body_crit_edge, !dbg !533

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body, !dbg !533

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15, !dbg !533
  br label %for.end, !dbg !533

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %if.end46.for.body_crit_edge
  %p.0143 = phi ptr [ %call75, %cond.end.for.body_crit_edge ], [ %call47, %if.end46.for.body_crit_edge ]
  %call51 = call i32 @strlcpy(ptr noundef nonnull %buf, ptr noundef nonnull %p.0143, i32 noundef 256) #17, !dbg !534
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call51), !dbg !535
  %cmp52 = icmp ugt i32 %call51, 255, !dbg !535
  br i1 %cmp52, label %do.end57, label %if.else60, !dbg !534

do.end57:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !536
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %p.0143) #16, !dbg !536
  br label %for.inc, !dbg !536

if.else60:                                        ; preds = %for.body
  %call62 = call i32 @trigger_process_regex(ptr noundef nonnull %call14, ptr noundef nonnull %buf) #17, !dbg !537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62), !dbg !538
  %cmp63 = icmp slt i32 %call62, 0, !dbg !538
  br i1 %cmp63, label %do.end68, label %if.else60.if.end71_crit_edge, !dbg !537

if.else60.if.end71_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #15, !dbg !537
  br label %if.end71, !dbg !537

do.end68:                                         ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #15, !dbg !539
  %gcov_ctr108 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 9), align 8, !dbg !539
  %13 = add i64 %gcov_ctr108, 1, !dbg !539
  store i64 %13, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 9), align 8, !dbg !539
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %p.0143) #16, !dbg !539
  br label %if.end71, !dbg !539

if.end71:                                         ; preds = %do.end68, %if.else60.if.end71_crit_edge
  %gcov_ctr109 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 10), align 16
  %14 = add i64 %gcov_ctr109, 1
  store i64 %14, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 10), align 16
  br label %for.inc

for.inc:                                          ; preds = %if.end71, %do.end57
  %15 = ptrtoint ptr %anode to i32, !dbg !533
  call void @__asan_load4_noabort(i32 %15), !dbg !533
  %16 = load ptr, ptr %anode, align 4, !dbg !533
  %call73 = call ptr @xbc_node_get_child(ptr noundef %16) #16, !dbg !533
  %17 = ptrtoint ptr %anode to i32, !dbg !533
  call void @__asan_store4_noabort(i32 %17), !dbg !533
  store ptr %call73, ptr %anode, align 4, !dbg !533
  %tobool74.not = icmp eq ptr %call73, null, !dbg !533
  br i1 %tobool74.not, label %cond.end.thread, label %cond.end, !dbg !533

cond.end.thread:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !533
  %gcov_ctr111 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 12), align 16, !dbg !533
  %18 = add i64 %gcov_ctr111, 1, !dbg !533
  store i64 %18, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 12), align 16, !dbg !533
  br label %for.end, !dbg !533

cond.end:                                         ; preds = %for.inc
  %gcov_ctr110 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 11), align 8, !dbg !533
  %19 = add i64 %gcov_ctr110, 1, !dbg !533
  store i64 %19, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 11), align 8, !dbg !533
  %call75 = call ptr @xbc_node_get_data(ptr noundef nonnull %call73) #16, !dbg !533
  %cmp48.not = icmp eq ptr %call75, null, !dbg !533
  br i1 %cmp48.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge, !dbg !533, !llvm.loop !540

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !533
  br label %for.body, !dbg !533

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !533
  br label %for.end, !dbg !533

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %cond.end.thread, %if.end46.for.end_crit_edge
  %call76 = call ptr @xbc_node_find_subkey(ptr noundef %enode, ptr noundef nonnull @.str.49) #16, !dbg !542
  %20 = ptrtoint ptr %anode to i32, !dbg !543
  call void @__asan_store4_noabort(i32 %20), !dbg !543
  store ptr %call76, ptr %anode, align 4, !dbg !543
  %tobool77.not = icmp eq ptr %call76, null, !dbg !544
  br i1 %tobool77.not, label %for.end.if.end80_crit_edge, label %if.then78, !dbg !544

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !544
  br label %if.end80, !dbg !544

if.then78:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !545
  %gcov_ctr112 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 13), align 8, !dbg !545
  %21 = add i64 %gcov_ctr112, 1, !dbg !545
  store i64 %21, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 13), align 8, !dbg !545
  call fastcc void @trace_boot_init_histograms(ptr noundef nonnull %call14, ptr noundef nonnull %call76, ptr noundef nonnull %buf) #18, !dbg !546
  br label %if.end80, !dbg !546

if.end80:                                         ; preds = %if.then78, %for.end.if.end80_crit_edge
  %call81 = call ptr @xbc_node_find_value(ptr noundef %enode, ptr noundef nonnull @.str.30, ptr noundef null) #16, !dbg !547
  %tobool82.not = icmp eq ptr %call81, null, !dbg !547
  br i1 %tobool82.not, label %if.end80.if.end94_crit_edge, label %if.then83, !dbg !547

if.end80.if.end94_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15, !dbg !547
  br label %if.end94, !dbg !547

if.then83:                                        ; preds = %if.end80
  %call84 = call i32 @trace_event_enable_disable(ptr noundef nonnull %call14, i32 noundef 1, i32 noundef 0) #17, !dbg !548
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84), !dbg !549
  %cmp85 = icmp slt i32 %call84, 0, !dbg !549
  br i1 %cmp85, label %do.end90, label %if.then83.if.end93_crit_edge, !dbg !548

if.then83.if.end93_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15, !dbg !548
  br label %if.end93, !dbg !548

do.end90:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15, !dbg !550
  %gcov_ctr113 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 14), align 16, !dbg !550
  %22 = add i64 %gcov_ctr113, 1, !dbg !550
  store i64 %22, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 14), align 16, !dbg !550
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %call, ptr noundef %call1) #16, !dbg !550
  br label %if.end93, !dbg !550

if.end93:                                         ; preds = %do.end90, %if.then83.if.end93_crit_edge
  %gcov_ctr114 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 15), align 8, !dbg !551
  %23 = add i64 %gcov_ctr114, 1, !dbg !551
  store i64 %23, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 15), align 8, !dbg !551
  br label %if.end94, !dbg !551

if.end94:                                         ; preds = %if.end93, %if.end80.if.end94_crit_edge
  %gcov_ctr115 = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 16), align 16, !dbg !552
  %24 = add i64 %gcov_ctr115, 1, !dbg !552
  store i64 %24, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.142, i32 0, i32 16), align 16, !dbg !552
  br label %out, !dbg !552

out:                                              ; preds = %if.end94, %do.end
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !553
  br label %cleanup, !dbg !554

cleanup:                                          ; preds = %out, %if.then11, %if.then4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #17, !dbg !554
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anode) #17, !dbg !554
  ret void, !dbg !554
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_get_next(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_array_set_clr_event(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trace_boot_add_kprobe_event(ptr noundef %node, ptr noundef %event) unnamed_addr #0 section ".init.text" align 64 !dbg !555 {
entry:
  %cmd = alloca %struct.dynevent_cmd, align 8
  %anode = alloca ptr, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15, !dbg !556
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.144, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.144, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #17, !dbg !557
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 48), !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %anode) #17, !dbg !559
  %2 = ptrtoint ptr %anode to i32, !dbg !560
  call void @__asan_store4_noabort(i32 %2), !dbg !560
  store ptr inttoptr (i32 -1 to ptr), ptr %anode, align 4, !dbg !560, !annotation !321
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #17, !dbg !561
  %3 = call ptr @memset(ptr %buf, i32 255, i32 256), !dbg !562
  %call = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.53, ptr noundef nonnull %anode) #16, !dbg !563
  %cmp.not25 = icmp eq ptr %call, null, !dbg !563
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !563

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !563

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !563
  br label %for.end, !dbg !563

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %entry.for.body_crit_edge
  %val.026 = phi ptr [ %call16, %cond.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @kprobe_event_cmd_init(ptr noundef nonnull %cmd, ptr noundef nonnull %buf, i32 noundef 256) #17, !dbg !564
  %call1 = call i32 (ptr, i1, ptr, ptr, ...) @__kprobe_event_gen_cmd_start(ptr noundef nonnull %cmd, i1 noundef zeroext false, ptr noundef %event, ptr noundef nonnull %val.026, ptr noundef null) #17, !dbg !565
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !566
  %tobool.not = icmp eq i32 %call1, 0, !dbg !566
  br i1 %tobool.not, label %if.end, label %do.end, !dbg !566

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !567
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 1), align 8, !dbg !567
  %4 = add i64 %gcov_ctr17, 1, !dbg !567
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 1), align 8, !dbg !567
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %buf) #16, !dbg !567
  br label %for.end, !dbg !568

if.end:                                           ; preds = %for.body
  %call4 = call i32 @dynevent_create(ptr noundef nonnull %cmd) #17, !dbg !569
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4), !dbg !570
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !570
  br i1 %tobool5.not, label %for.inc, label %if.then6, !dbg !570

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !571
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 2), align 16, !dbg !571
  %5 = add i64 %gcov_ctr18, 1, !dbg !571
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 2), align 16, !dbg !571
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull %buf) #16, !dbg !571
  br label %for.end, !dbg !572

for.inc:                                          ; preds = %if.end
  %6 = ptrtoint ptr %anode to i32, !dbg !563
  call void @__asan_load4_noabort(i32 %6), !dbg !563
  %7 = load ptr, ptr %anode, align 4, !dbg !563
  %call14 = call ptr @xbc_node_get_child(ptr noundef %7) #16, !dbg !563
  %8 = ptrtoint ptr %anode to i32, !dbg !563
  call void @__asan_store4_noabort(i32 %8), !dbg !563
  store ptr %call14, ptr %anode, align 4, !dbg !563
  %tobool15.not = icmp eq ptr %call14, null, !dbg !563
  br i1 %tobool15.not, label %cond.end.thread, label %cond.end, !dbg !563

cond.end.thread:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !563
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 4), align 16, !dbg !563
  %9 = add i64 %gcov_ctr20, 1, !dbg !563
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 4), align 16, !dbg !563
  br label %for.end, !dbg !563

cond.end:                                         ; preds = %for.inc
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !563
  %10 = add i64 %gcov_ctr19, 1, !dbg !563
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !563
  %call16 = call ptr @xbc_node_get_data(ptr noundef nonnull %call14) #16, !dbg !563
  %cmp.not = icmp eq ptr %call16, null, !dbg !563
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge, !dbg !563, !llvm.loop !573

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !563
  br label %for.body, !dbg !563

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !563
  br label %for.end, !dbg !563

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %cond.end.thread, %if.then6, %do.end, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ %call1, %do.end ], [ %call4, %if.then6 ], [ 0, %entry.for.end_crit_edge ], [ 0, %cond.end.thread ], [ 0, %cond.end.for.end_crit_edge ], !dbg !575
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #17, !dbg !576
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anode) #17, !dbg !576
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #17, !dbg !576
  ret i32 %ret.1, !dbg !577
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trace_boot_add_synth_event(ptr noundef %node, ptr noundef %event) unnamed_addr #0 section ".init.text" align 64 !dbg !578 {
entry:
  %cmd = alloca %struct.dynevent_cmd, align 8
  %anode = alloca ptr, align 4
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15, !dbg !579
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #17, !dbg !580
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48), !dbg !581
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %anode) #17, !dbg !582
  %1 = ptrtoint ptr %anode to i32, !dbg !583
  call void @__asan_store4_noabort(i32 %1), !dbg !583
  store ptr inttoptr (i32 -1 to ptr), ptr %anode, align 4, !dbg !583, !annotation !321
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #17, !dbg !584
  %2 = call ptr @memset(ptr %buf, i32 255, i32 256), !dbg !585
  call void @synth_event_cmd_init(ptr noundef nonnull %cmd, ptr noundef nonnull %buf, i32 noundef 256) #17, !dbg !586
  %call = call i32 (ptr, ptr, ptr, ...) @__synth_event_gen_cmd_start(ptr noundef nonnull %cmd, ptr noundef %event, ptr noundef null, ptr noundef null) #17, !dbg !587
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !588
  %tobool.not = icmp eq i32 %call, 0, !dbg !588
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !588

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !589
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.145, align 16, !dbg !589
  %3 = add i64 %gcov_ctr, 1, !dbg !589
  store i64 %3, ptr @__llvm_gcov_ctr.145, align 16, !dbg !589
  br label %cleanup, !dbg !590

if.end:                                           ; preds = %entry
  %call1 = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.59, ptr noundef nonnull %anode) #16, !dbg !591
  %cmp.not30 = icmp eq ptr %call1, null, !dbg !591
  br i1 %cmp.not30, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge, !dbg !591

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body, !dbg !591

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !591
  br label %for.end, !dbg !591

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %if.end.for.body_crit_edge
  %p.031 = phi ptr [ %call8, %cond.end.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  %call2 = call i32 @synth_event_add_field_str(ptr noundef nonnull %cmd, ptr noundef nonnull %p.031) #17, !dbg !592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !593
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !593
  br i1 %tobool3.not, label %for.inc, label %if.then4, !dbg !593

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !594
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !594
  %4 = add i64 %gcov_ctr19, 1, !dbg !594
  store i64 %4, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !594
  br label %cleanup, !dbg !595

for.inc:                                          ; preds = %for.body
  %5 = ptrtoint ptr %anode to i32, !dbg !591
  call void @__asan_load4_noabort(i32 %5), !dbg !591
  %6 = load ptr, ptr %anode, align 4, !dbg !591
  %call6 = call ptr @xbc_node_get_child(ptr noundef %6) #16, !dbg !591
  %7 = ptrtoint ptr %anode to i32, !dbg !591
  call void @__asan_store4_noabort(i32 %7), !dbg !591
  store ptr %call6, ptr %anode, align 4, !dbg !591
  %tobool7.not = icmp eq ptr %call6, null, !dbg !591
  br i1 %tobool7.not, label %cond.end.thread, label %cond.end, !dbg !591

cond.end.thread:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !591
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 2), align 16, !dbg !591
  %8 = add i64 %gcov_ctr20, 1, !dbg !591
  store i64 %8, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 2), align 16, !dbg !591
  br label %for.end, !dbg !591

cond.end:                                         ; preds = %for.inc
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 3), align 8, !dbg !591
  %9 = add i64 %gcov_ctr21, 1, !dbg !591
  store i64 %9, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 3), align 8, !dbg !591
  %call8 = call ptr @xbc_node_get_data(ptr noundef nonnull %call6) #16, !dbg !591
  %cmp.not = icmp eq ptr %call8, null, !dbg !591
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge, !dbg !591, !llvm.loop !596

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !591
  br label %for.body, !dbg !591

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !591
  br label %for.end, !dbg !591

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %cond.end.thread, %if.end.for.end_crit_edge
  %call9 = call i32 @dynevent_create(ptr noundef nonnull %cmd) #17, !dbg !598
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9), !dbg !599
  %cmp10 = icmp slt i32 %call9, 0, !dbg !599
  br i1 %cmp10, label %if.then11, label %for.end.if.end14_crit_edge, !dbg !600

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !600
  br label %if.end14, !dbg !600

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !601
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 4), align 16, !dbg !601
  %10 = add i64 %gcov_ctr22, 1, !dbg !601
  store i64 %10, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 4), align 16, !dbg !601
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %buf) #16, !dbg !601
  br label %if.end14, !dbg !601

if.end14:                                         ; preds = %if.then11, %for.end.if.end14_crit_edge
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 5), align 8, !dbg !602
  %11 = add i64 %gcov_ctr23, 1, !dbg !602
  store i64 %11, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 5), align 8, !dbg !602
  br label %cleanup, !dbg !603

cleanup:                                          ; preds = %if.end14, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.then4 ], [ %call9, %if.end14 ], !dbg !604
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #17, !dbg !605
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anode) #17, !dbg !605
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #17, !dbg !605
  ret i32 %retval.0, !dbg !605
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_event_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_event_filter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trigger_process_regex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_boot_init_histograms(ptr noundef %file, ptr noundef %hnode, ptr noundef %buf) unnamed_addr #0 section ".init.text" align 64 !dbg !606 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !607
  %call = tail call fastcc ptr @xbc_node_get_subkey(ptr noundef %hnode) #18, !dbg !608
  %cmp.not2 = icmp eq ptr %call, null, !dbg !608
  br i1 %cmp.not2, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !608

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !608

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !608
  br label %for.end, !dbg !608

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %node.03 = phi ptr [ %call19, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %node.03) #16, !dbg !609
  %0 = ptrtoint ptr %call1 to i32, !dbg !610
  call void @__asan_load1_noabort(i32 %0), !dbg !610
  %1 = load i8, ptr %call1, align 1, !dbg !610
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.147, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.147, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %1), !dbg !611
  %cmp.i = icmp ugt i8 %1, 47, !dbg !611
  br i1 %cmp.i, label %isdigit.exit, label %for.body.for.inc_crit_edge, !dbg !615

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !615
  br label %for.inc, !dbg !615

isdigit.exit:                                     ; preds = %for.body
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !616
  %3 = add i64 %gcov_ctr2.i, 1, !dbg !616
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !616
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %1), !dbg !617
  %cmp1.i = icmp ugt i8 %1, 57, !dbg !617
  br i1 %cmp1.i, label %isdigit.exit.for.inc_crit_edge, label %if.end, !dbg !618

isdigit.exit.for.inc_crit_edge:                   ; preds = %isdigit.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !618
  br label %for.inc, !dbg !618

if.end:                                           ; preds = %isdigit.exit
  %call3 = tail call fastcc i32 @trace_boot_compose_hist_cmd(ptr noundef nonnull %node.03, ptr noundef %buf) #18, !dbg !619
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !620
  %cmp4 = icmp eq i32 %call3, 0, !dbg !620
  br i1 %cmp4, label %if.then6, label %if.end.for.inc_crit_edge, !dbg !619

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !619
  br label %for.inc, !dbg !619

if.then6:                                         ; preds = %if.end
  %call7 = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #17, !dbg !621
  %tobool8.not = icmp eq ptr %call7, null, !dbg !622
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.end10, !dbg !623

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15, !dbg !623
  br label %cleanup, !dbg !623

if.end10:                                         ; preds = %if.then6
  %call11 = tail call i32 @trigger_process_regex(ptr noundef %file, ptr noundef %buf) #17, !dbg !624
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11), !dbg !625
  %cmp12 = icmp slt i32 %call11, 0, !dbg !625
  br i1 %cmp12, label %do.end, label %if.end10.if.end17_crit_edge, !dbg !624

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15, !dbg !624
  br label %if.end17, !dbg !624

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15, !dbg !626
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 2), align 16, !dbg !626
  %4 = add i64 %gcov_ctr46, 1, !dbg !626
  store i64 %4, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 2), align 16, !dbg !626
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull %call7) #16, !dbg !626
  br label %if.end17, !dbg !626

if.end17:                                         ; preds = %do.end, %if.end10.if.end17_crit_edge
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 3), align 8, !dbg !627
  %5 = add i64 %gcov_ctr47, 1, !dbg !627
  store i64 %5, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 3), align 8, !dbg !627
  tail call void @kfree(ptr noundef nonnull %call7) #17, !dbg !628
  br label %for.inc, !dbg !629

for.inc:                                          ; preds = %if.end17, %if.end.for.inc_crit_edge, %isdigit.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.146, %for.body.for.inc_crit_edge ], [ @__llvm_gcov_ctr.146, %isdigit.exit.for.inc_crit_edge ], [ getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 4), %if.end17 ], [ getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 4), %if.end.for.inc_crit_edge ]
  %6 = ptrtoint ptr %.sink to i32, !dbg !630
  call void @__asan_load8_noabort(i32 %6), !dbg !630
  %gcov_ctr48 = load i64, ptr %.sink, align 16, !dbg !630
  %7 = add i64 %gcov_ctr48, 1, !dbg !630
  store i64 %7, ptr %.sink, align 16, !dbg !630
  %call19 = tail call ptr @xbc_node_get_next(ptr noundef nonnull %node.03) #16, !dbg !608
  %cmp.not = icmp eq ptr %call19, null, !dbg !608
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !608, !llvm.loop !631

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !608
  br label %for.body, !dbg !608

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !608
  br label %for.end, !dbg !608

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call20 = tail call ptr @xbc_node_find_subkey(ptr noundef %hnode, ptr noundef nonnull @.str.64) #16, !dbg !633
  %tobool21.not = icmp eq ptr %call20, null, !dbg !633
  br i1 %tobool21.not, label %for.end.cleanup_crit_edge, label %if.then22, !dbg !633

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !633
  br label %cleanup, !dbg !633

if.then22:                                        ; preds = %for.end
  %call23 = tail call fastcc i32 @trace_boot_compose_hist_cmd(ptr noundef %hnode, ptr noundef %buf) #18, !dbg !634
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23), !dbg !635
  %cmp24 = icmp eq i32 %call23, 0, !dbg !635
  br i1 %cmp24, label %if.then26, label %if.then22.if.end41_crit_edge, !dbg !634

if.then22.if.end41_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15, !dbg !634
  br label %if.end41, !dbg !634

if.then26:                                        ; preds = %if.then22
  %call27 = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #17, !dbg !636
  %tobool28.not = icmp eq ptr %call27, null, !dbg !637
  br i1 %tobool28.not, label %if.then26.cleanup_crit_edge, label %if.end30, !dbg !638

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15, !dbg !638
  br label %cleanup, !dbg !638

if.end30:                                         ; preds = %if.then26
  %call31 = tail call i32 @trigger_process_regex(ptr noundef %file, ptr noundef %buf) #17, !dbg !639
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31), !dbg !640
  %cmp32 = icmp slt i32 %call31, 0, !dbg !640
  br i1 %cmp32, label %do.end37, label %if.end30.if.end40_crit_edge, !dbg !639

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15, !dbg !639
  br label %if.end40, !dbg !639

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15, !dbg !641
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 6), align 16, !dbg !641
  %8 = add i64 %gcov_ctr50, 1, !dbg !641
  store i64 %8, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 6), align 16, !dbg !641
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull %call27) #16, !dbg !641
  br label %if.end40, !dbg !641

if.end40:                                         ; preds = %do.end37, %if.end30.if.end40_crit_edge
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 7), align 8, !dbg !642
  %9 = add i64 %gcov_ctr51, 1, !dbg !642
  store i64 %9, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 7), align 8, !dbg !642
  tail call void @kfree(ptr noundef nonnull %call27) #17, !dbg !643
  br label %if.end41, !dbg !644

if.end41:                                         ; preds = %if.end40, %if.then22.if.end41_crit_edge
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 8), align 16, !dbg !645
  %10 = add i64 %gcov_ctr52, 1, !dbg !645
  store i64 %10, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 8), align 16, !dbg !645
  br label %cleanup, !dbg !645

cleanup:                                          ; preds = %if.end41, %if.then26.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %.sink9 = phi ptr [ getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 5), %if.then26.cleanup_crit_edge ], [ getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 9), %if.end41 ], [ getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 9), %for.end.cleanup_crit_edge ], [ getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 1), %if.then6.cleanup_crit_edge ]
  %11 = ptrtoint ptr %.sink9 to i32
  call void @__asan_load8_noabort(i32 %11)
  %gcov_ctr53 = load i64, ptr %.sink9, align 8
  %12 = add i64 %gcov_ctr53, 1
  store i64 %12, ptr %.sink9, align 8
  ret void, !dbg !646
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_enable_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobe_event_cmd_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kprobe_event_gen_cmd_start(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dynevent_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_event_cmd_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__synth_event_gen_cmd_start(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_add_field_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trace_boot_compose_hist_cmd(ptr noundef %hnode, ptr noundef %buf) unnamed_addr #0 section ".init.text" align 64 !dbg !647 {
entry:
  %buf.addr = alloca ptr, align 4
  %knode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15, !dbg !648
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %knode) #17, !dbg !649
  %1 = ptrtoint ptr %knode to i32, !dbg !650
  call void @__asan_store4_noabort(i32 %1), !dbg !650
  store ptr inttoptr (i32 -1 to ptr), ptr %knode, align 4, !dbg !650, !annotation !321
  %add.ptr = getelementptr i8, ptr %buf, i32 256, !dbg !651
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.49) #18, !dbg !652
  %call1 = call fastcc i32 @trace_boot_hist_add_array(ptr noundef %hnode, ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.64) #18, !dbg !653
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !654
  %cmp = icmp slt i32 %call1, 0, !dbg !654
  br i1 %cmp, label %if.then, label %if.end5, !dbg !655

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.148, align 16, !dbg !656
  %2 = add i64 %gcov_ctr, 1, !dbg !656
  store i64 %2, ptr @__llvm_gcov_ctr.148, align 16, !dbg !656
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1), !dbg !657
  %cmp2 = icmp eq i32 %call1, -2, !dbg !657
  br i1 %cmp2, label %do.end, label %if.then.cleanup_crit_edge, !dbg !656

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15, !dbg !656
  br label %cleanup, !dbg !656

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15, !dbg !658
  %gcov_ctr86 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 1), align 8, !dbg !658
  %3 = add i64 %gcov_ctr86, 1, !dbg !658
  store i64 %3, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 1), align 8, !dbg !658
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #16, !dbg !658
  br label %cleanup, !dbg !658

if.end5:                                          ; preds = %entry
  %call6 = call fastcc i32 @trace_boot_hist_add_array(ptr noundef %hnode, ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.69) #18, !dbg !659
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call6), !dbg !660
  %cmp7 = icmp eq i32 %call6, -22, !dbg !660
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !661

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15, !dbg !662
  %gcov_ctr87 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 2), align 16, !dbg !662
  %4 = add i64 %gcov_ctr87, 1, !dbg !662
  store i64 %4, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 2), align 16, !dbg !662
  br label %cleanup, !dbg !663

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc i32 @trace_boot_hist_add_array(ptr noundef %hnode, ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.70) #18, !dbg !664
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call10), !dbg !665
  %cmp11 = icmp eq i32 %call10, -22, !dbg !665
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !666

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15, !dbg !667
  %gcov_ctr88 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 3), align 8, !dbg !667
  %5 = add i64 %gcov_ctr88, 1, !dbg !667
  store i64 %5, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 3), align 8, !dbg !667
  br label %cleanup, !dbg !668

if.end13:                                         ; preds = %if.end9
  %call14 = tail call ptr @xbc_node_find_value(ptr noundef %hnode, ptr noundef nonnull @.str.71, ptr noundef null) #16, !dbg !669
  %tobool.not = icmp eq ptr %call14, null, !dbg !670
  br i1 %tobool.not, label %if.end13.if.end17_crit_edge, label %if.then15, !dbg !670

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15, !dbg !670
  br label %if.end17, !dbg !670

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15, !dbg !671
  %gcov_ctr89 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 4), align 16, !dbg !671
  %6 = add i64 %gcov_ctr89, 1, !dbg !671
  store i64 %6, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 4), align 16, !dbg !671
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.72, ptr noundef nonnull %call14) #18, !dbg !672
  br label %if.end17, !dbg !672

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %call18 = tail call ptr @xbc_node_find_value(ptr noundef %hnode, ptr noundef nonnull @.str.73, ptr noundef null) #16, !dbg !673
  %tobool19.not = icmp eq ptr %call18, null, !dbg !674
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20, !dbg !674

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15, !dbg !674
  br label %if.end22, !dbg !674

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15, !dbg !675
  %gcov_ctr90 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 5), align 8, !dbg !675
  %7 = add i64 %gcov_ctr90, 1, !dbg !675
  store i64 %7, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 5), align 8, !dbg !675
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.74, ptr noundef nonnull %call18) #18, !dbg !676
  br label %if.end22, !dbg !676

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %call23 = tail call ptr @xbc_node_find_subkey(ptr noundef %hnode, ptr noundef nonnull @.str.75) #16, !dbg !677
  %tobool24.not = icmp eq ptr %call23, null, !dbg !678
  br i1 %tobool24.not, label %if.end22.if.end32_crit_edge, label %if.then25, !dbg !678

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15, !dbg !678
  br label %if.end32, !dbg !678

if.then25:                                        ; preds = %if.end22
  %8 = ptrtoint ptr %knode to i32, !dbg !679
  call void @__asan_store4_noabort(i32 %8), !dbg !679
  store ptr null, ptr %knode, align 4, !dbg !679
  %call26 = call ptr @xbc_node_find_next_key_value(ptr noundef nonnull %call23, ptr noundef nonnull %knode) #16, !dbg !679
  %9 = ptrtoint ptr %knode to i32, !dbg !679
  call void @__asan_load4_noabort(i32 %9), !dbg !679
  %10 = load ptr, ptr %knode, align 4, !dbg !679
  %cmp27.not1 = icmp eq ptr %10, null, !dbg !679
  br i1 %cmp27.not1, label %if.then25.for.end_crit_edge, label %if.then25.for.body_crit_edge, !dbg !679

if.then25.for.body_crit_edge:                     ; preds = %if.then25
  br label %for.body, !dbg !679

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15, !dbg !679
  br label %for.end, !dbg !679

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then25.for.body_crit_edge
  %11 = phi ptr [ %14, %for.body.for.body_crit_edge ], [ %10, %if.then25.for.body_crit_edge ]
  %p.02 = phi ptr [ %call31, %for.body.for.body_crit_edge ], [ %call26, %if.then25.for.body_crit_edge ]
  %gcov_ctr91 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 6), align 16, !dbg !680
  %12 = add i64 %gcov_ctr91, 1, !dbg !680
  store i64 %12, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 6), align 16, !dbg !680
  %call28 = call ptr @xbc_node_get_data(ptr noundef nonnull %11) #16, !dbg !681
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.76, ptr noundef %call28) #18, !dbg !682
  call fastcc void @append_str_nospace(ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef %p.02) #18, !dbg !683
  %call31 = call ptr @xbc_node_find_next_key_value(ptr noundef nonnull %call23, ptr noundef nonnull %knode) #16, !dbg !679
  %13 = ptrtoint ptr %knode to i32, !dbg !679
  call void @__asan_load4_noabort(i32 %13), !dbg !679
  %14 = load ptr, ptr %knode, align 4, !dbg !679
  %cmp27.not = icmp eq ptr %14, null, !dbg !679
  br i1 %cmp27.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge, !dbg !679, !llvm.loop !684

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !679
  br label %for.body, !dbg !679

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !679
  br label %for.end, !dbg !679

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then25.for.end_crit_edge
  %gcov_ctr92 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 7), align 8, !dbg !686
  %15 = add i64 %gcov_ctr92, 1, !dbg !686
  store i64 %15, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 7), align 8, !dbg !686
  br label %if.end32, !dbg !686

if.end32:                                         ; preds = %for.end, %if.end22.if.end32_crit_edge
  %call33 = call ptr @xbc_node_find_value(ptr noundef %hnode, ptr noundef nonnull @.str.77, ptr noundef null) #16, !dbg !687
  %tobool34.not = icmp eq ptr %call33, null, !dbg !687
  br i1 %tobool34.not, label %if.else, label %if.then35, !dbg !687

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15, !dbg !688
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.78) #18, !dbg !688
  br label %if.end48, !dbg !688

if.else:                                          ; preds = %if.end32
  %call37 = call ptr @xbc_node_find_value(ptr noundef %hnode, ptr noundef nonnull @.str.79, ptr noundef null) #16, !dbg !689
  %tobool38.not = icmp eq ptr %call37, null, !dbg !689
  br i1 %tobool38.not, label %if.else41, label %if.then39, !dbg !689

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15, !dbg !690
  %gcov_ctr93 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 8), align 16, !dbg !690
  %16 = add i64 %gcov_ctr93, 1, !dbg !690
  store i64 %16, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 8), align 16, !dbg !690
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.80) #18, !dbg !691
  br label %if.end48, !dbg !691

if.else41:                                        ; preds = %if.else
  %call42 = call ptr @xbc_node_find_value(ptr noundef %hnode, ptr noundef nonnull @.str.81, ptr noundef null) #16, !dbg !692
  %tobool43.not = icmp eq ptr %call42, null, !dbg !692
  br i1 %tobool43.not, label %if.else41.if.end46_crit_edge, label %if.then44, !dbg !692

if.else41.if.end46_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15, !dbg !692
  br label %if.end46, !dbg !692

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15, !dbg !693
  %gcov_ctr94 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 9), align 8, !dbg !693
  %17 = add i64 %gcov_ctr94, 1, !dbg !693
  store i64 %17, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 9), align 8, !dbg !693
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.82) #18, !dbg !694
  br label %if.end46, !dbg !694

if.end46:                                         ; preds = %if.then44, %if.else41.if.end46_crit_edge
  %gcov_ctr95 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 10), align 16
  %18 = add i64 %gcov_ctr95, 1
  store i64 %18, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 10), align 16
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.then39, %if.then35
  %call49 = call ptr @xbc_node_find_subkey(ptr noundef %hnode, ptr noundef nonnull @.str.83) #16, !dbg !695
  %tobool50.not = icmp eq ptr %call49, null, !dbg !696
  br i1 %tobool50.not, label %if.end48.if.end54_crit_edge, label %land.lhs.true, !dbg !697

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15, !dbg !697
  br label %if.end54, !dbg !697

land.lhs.true:                                    ; preds = %if.end48
  %gcov_ctr96 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 11), align 8, !dbg !698
  %19 = add i64 %gcov_ctr96, 1, !dbg !698
  store i64 %19, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 11), align 8, !dbg !698
  %call51 = call fastcc i32 @trace_boot_hist_add_handlers(ptr noundef nonnull %call49, ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.75) #18, !dbg !699
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51), !dbg !700
  %cmp52 = icmp slt i32 %call51, 0, !dbg !700
  br i1 %cmp52, label %if.then53, label %land.lhs.true.if.end54_crit_edge, !dbg !696

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !696
  br label %if.end54, !dbg !696

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !701
  %gcov_ctr97 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 12), align 16, !dbg !701
  %20 = add i64 %gcov_ctr97, 1, !dbg !701
  store i64 %20, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 12), align 16, !dbg !701
  br label %cleanup, !dbg !701

if.end54:                                         ; preds = %land.lhs.true.if.end54_crit_edge, %if.end48.if.end54_crit_edge
  %call55 = call ptr @xbc_node_find_subkey(ptr noundef %hnode, ptr noundef nonnull @.str.84) #16, !dbg !702
  %tobool56.not = icmp eq ptr %call55, null, !dbg !703
  br i1 %tobool56.not, label %if.end54.if.end61_crit_edge, label %land.lhs.true57, !dbg !704

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15, !dbg !704
  br label %if.end61, !dbg !704

land.lhs.true57:                                  ; preds = %if.end54
  %gcov_ctr98 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 13), align 8, !dbg !705
  %21 = add i64 %gcov_ctr98, 1, !dbg !705
  store i64 %21, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 13), align 8, !dbg !705
  %call58 = call fastcc i32 @trace_boot_hist_add_handlers(ptr noundef nonnull %call55, ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.75) #18, !dbg !706
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58), !dbg !707
  %cmp59 = icmp slt i32 %call58, 0, !dbg !707
  br i1 %cmp59, label %if.then60, label %land.lhs.true57.if.end61_crit_edge, !dbg !703

land.lhs.true57.if.end61_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #15, !dbg !703
  br label %if.end61, !dbg !703

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #15, !dbg !708
  %gcov_ctr99 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 14), align 16, !dbg !708
  %22 = add i64 %gcov_ctr99, 1, !dbg !708
  store i64 %22, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 14), align 16, !dbg !708
  br label %cleanup, !dbg !708

if.end61:                                         ; preds = %land.lhs.true57.if.end61_crit_edge, %if.end54.if.end61_crit_edge
  %call62 = call ptr @xbc_node_find_subkey(ptr noundef %hnode, ptr noundef nonnull @.str.85) #16, !dbg !709
  %tobool63.not = icmp eq ptr %call62, null, !dbg !710
  br i1 %tobool63.not, label %if.end61.if.end68_crit_edge, label %land.lhs.true64, !dbg !711

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15, !dbg !711
  br label %if.end68, !dbg !711

land.lhs.true64:                                  ; preds = %if.end61
  %gcov_ctr100 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 15), align 8, !dbg !712
  %23 = add i64 %gcov_ctr100, 1, !dbg !712
  store i64 %23, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 15), align 8, !dbg !712
  %call65 = call fastcc i32 @trace_boot_hist_add_handlers(ptr noundef nonnull %call62, ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.29) #18, !dbg !713
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65), !dbg !714
  %cmp66 = icmp slt i32 %call65, 0, !dbg !714
  br i1 %cmp66, label %if.then67, label %land.lhs.true64.if.end68_crit_edge, !dbg !710

land.lhs.true64.if.end68_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15, !dbg !710
  br label %if.end68, !dbg !710

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15, !dbg !715
  %gcov_ctr101 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 16), align 16, !dbg !715
  %24 = add i64 %gcov_ctr101, 1, !dbg !715
  store i64 %24, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 16), align 16, !dbg !715
  br label %cleanup, !dbg !715

if.end68:                                         ; preds = %land.lhs.true64.if.end68_crit_edge, %if.end61.if.end68_crit_edge
  %call69 = call ptr @xbc_node_find_value(ptr noundef %hnode, ptr noundef nonnull @.str.35, ptr noundef null) #16, !dbg !716
  %tobool70.not = icmp eq ptr %call69, null, !dbg !717
  br i1 %tobool70.not, label %if.end68.if.end73_crit_edge, label %if.then71, !dbg !717

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15, !dbg !717
  br label %if.end73, !dbg !717

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15, !dbg !718
  %gcov_ctr102 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 17), align 8, !dbg !718
  %25 = add i64 %gcov_ctr102, 1, !dbg !718
  store i64 %25, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 17), align 8, !dbg !718
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef nonnull %buf.addr, ptr noundef %add.ptr, ptr noundef nonnull @.str.86, ptr noundef nonnull %call69) #18, !dbg !719
  br label %if.end73, !dbg !719

if.end73:                                         ; preds = %if.then71, %if.end68.if.end73_crit_edge
  %26 = ptrtoint ptr %buf.addr to i32, !dbg !720
  call void @__asan_load4_noabort(i32 %26), !dbg !720
  %27 = load ptr, ptr %buf.addr, align 4, !dbg !720
  %cmp74 = icmp eq ptr %27, %add.ptr, !dbg !721
  br i1 %cmp74, label %if.then75, label %if.end81, !dbg !720

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15, !dbg !722
  %gcov_ctr103 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 18), align 16, !dbg !722
  %28 = add i64 %gcov_ctr103, 1, !dbg !722
  store i64 %28, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 18), align 16, !dbg !722
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #16, !dbg !722
  br label %cleanup, !dbg !723

if.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15, !dbg !724
  %gcov_ctr104 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 19), align 8, !dbg !724
  %29 = add i64 %gcov_ctr104, 1, !dbg !724
  store i64 %29, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.148, i32 0, i32 19), align 8, !dbg !724
  br label %cleanup, !dbg !724

cleanup:                                          ; preds = %if.end81, %if.then75, %if.then67, %if.then60, %if.then53, %if.then12, %if.then8, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then8 ], [ -22, %if.then12 ], [ -22, %if.then53 ], [ -22, %if.then60 ], [ -22, %if.then67 ], [ -7, %if.then75 ], [ 0, %if.end81 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %knode) #17, !dbg !726
  ret i32 %retval.0, !dbg !726
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @append_printf(ptr nocapture noundef %bufp, ptr noundef %end, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #7 section ".init.text" align 64 !dbg !727 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #15, !dbg !728
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #17, !dbg !729
  %0 = ptrtoint ptr %args to i32, !dbg !730
  call void @__asan_store4_noabort(i32 %0), !dbg !730
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !dbg !730, !annotation !321
  %1 = ptrtoint ptr %bufp to i32, !dbg !731
  call void @__asan_load4_noabort(i32 %1), !dbg !731
  %2 = load ptr, ptr %bufp, align 4, !dbg !731
  %cmp = icmp eq ptr %2, %end, !dbg !732
  br i1 %cmp, label %if.then, label %if.end, !dbg !731

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !733
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.149, align 16, !dbg !733
  %3 = add i64 %gcov_ctr, 1, !dbg !733
  store i64 %3, ptr @__llvm_gcov_ctr.149, align 16, !dbg !733
  br label %cleanup, !dbg !733

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args), !dbg !734
  %4 = ptrtoint ptr %bufp to i32, !dbg !735
  call void @__asan_load4_noabort(i32 %4), !dbg !735
  %5 = load ptr, ptr %bufp, align 4, !dbg !735
  %sub.ptr.lhs.cast = ptrtoint ptr %end to i32, !dbg !736
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32, !dbg !736
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !736
  %6 = ptrtoint ptr %args to i32, !dbg !737
  call void @__asan_load4_noabort(i32 %6), !dbg !737
  %.fca.0.load = load i32, ptr %args, align 4, !dbg !737
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0, !dbg !737
  %call = call i32 @vsnprintf(ptr noundef %5, i32 noundef %sub.ptr.sub, ptr noundef %fmt, [1 x i32] %.fca.0.insert), !dbg !737
  %7 = ptrtoint ptr %bufp to i32, !dbg !738
  call void @__asan_load4_noabort(i32 %7), !dbg !738
  %8 = load ptr, ptr %bufp, align 4, !dbg !738
  %sub.ptr.rhs.cast2 = ptrtoint ptr %8 to i32, !dbg !739
  %sub.ptr.sub3 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast2, !dbg !739
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub.ptr.sub3), !dbg !740
  %cmp4 = icmp slt i32 %call, %sub.ptr.sub3, !dbg !740
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !741

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !742
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 1), align 8, !dbg !742
  %9 = add i64 %gcov_ctr8, 1, !dbg !742
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 1), align 8, !dbg !742
  %10 = ptrtoint ptr %bufp to i32, !dbg !743
  call void @__asan_load4_noabort(i32 %10), !dbg !743
  %11 = load ptr, ptr %bufp, align 4, !dbg !743
  %add.ptr = getelementptr i8, ptr %11, i32 %call, !dbg !743
  br label %if.end6, !dbg !744

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !745
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 2), align 16, !dbg !745
  %12 = add i64 %gcov_ctr9, 1, !dbg !745
  store i64 %12, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.149, i32 0, i32 2), align 16, !dbg !745
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %storemerge = phi ptr [ %end, %if.else ], [ %add.ptr, %if.then5 ], !dbg !746
  %13 = ptrtoint ptr %bufp to i32, !dbg !746
  call void @__asan_store4_noabort(i32 %13), !dbg !746
  store ptr %storemerge, ptr %bufp, align 4, !dbg !746
  call void @llvm.va_end(ptr nonnull %args), !dbg !747
  br label %cleanup, !dbg !748

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #17, !dbg !749
  ret void, !dbg !749
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trace_boot_hist_add_array(ptr noundef %hnode, ptr nocapture noundef %bufp, ptr noundef %end, ptr noundef %key) unnamed_addr #0 section ".init.text" align 64 !dbg !750 {
entry:
  %anode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15, !dbg !751
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %anode) #17, !dbg !752
  %0 = ptrtoint ptr %anode to i32, !dbg !753
  call void @__asan_store4_noabort(i32 %0), !dbg !753
  store ptr inttoptr (i32 -1 to ptr), ptr %anode, align 4, !dbg !753, !annotation !321
  %call = call ptr @xbc_node_find_value(ptr noundef %hnode, ptr noundef %key, ptr noundef nonnull %anode) #16, !dbg !754
  %tobool.not = icmp eq ptr %call, null, !dbg !755
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !755

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %anode to i32, !dbg !756
  call void @__asan_load4_noabort(i32 %1), !dbg !756
  %2 = load ptr, ptr %anode, align 4, !dbg !756
  %tobool1.not = icmp eq ptr %2, null, !dbg !756
  br i1 %tobool1.not, label %do.end, label %if.end, !dbg !757

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15, !dbg !758
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 1), align 8, !dbg !758
  %3 = add i64 %gcov_ctr18, 1, !dbg !758
  store i64 %3, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 1), align 8, !dbg !758
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %key) #16, !dbg !758
  br label %cleanup, !dbg !759

if.end:                                           ; preds = %if.then
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef %bufp, ptr noundef %end, ptr noundef nonnull @.str.92, ptr noundef %key) #18, !dbg !760
  %4 = ptrtoint ptr %anode to i32, !dbg !761
  call void @__asan_load4_noabort(i32 %4), !dbg !761
  %5 = load ptr, ptr %anode, align 4, !dbg !761
  %call5 = call ptr @xbc_node_get_data(ptr noundef %5) #16, !dbg !761
  %6 = ptrtoint ptr %anode to i32, !dbg !761
  call void @__asan_load4_noabort(i32 %6), !dbg !761
  %7 = load ptr, ptr %anode, align 4, !dbg !761
  %cmp.not29 = icmp eq ptr %7, null, !dbg !761
  br i1 %cmp.not29, label %if.end.if.end15_crit_edge, label %if.end.for.body_crit_edge, !dbg !761

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body, !dbg !761

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !761
  br label %if.end15, !dbg !761

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %if.end.for.body_crit_edge
  %sep.031 = phi i8 [ %sep.1, %cond.end.for.body_crit_edge ], [ 61, %if.end.for.body_crit_edge ]
  %p.030 = phi ptr [ %cond, %cond.end.for.body_crit_edge ], [ %call5, %if.end.for.body_crit_edge ]
  %conv = zext i8 %sep.031 to i32, !dbg !762
  call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef %bufp, ptr noundef %end, ptr noundef nonnull @.str.93, i32 noundef %conv, ptr noundef %p.030) #18, !dbg !763
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %sep.031), !dbg !764
  %cmp8 = icmp eq i8 %sep.031, 61, !dbg !764
  br i1 %cmp8, label %if.then10, label %for.body.for.inc_crit_edge, !dbg !765

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !765
  br label %for.inc, !dbg !765

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !766
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 2), align 16, !dbg !766
  %8 = add i64 %gcov_ctr19, 1, !dbg !766
  store i64 %8, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 2), align 16, !dbg !766
  br label %for.inc, !dbg !767

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %sep.1 = phi i8 [ 44, %if.then10 ], [ %sep.031, %for.body.for.inc_crit_edge ], !dbg !768
  %9 = ptrtoint ptr %anode to i32, !dbg !761
  call void @__asan_load4_noabort(i32 %9), !dbg !761
  %10 = load ptr, ptr %anode, align 4, !dbg !761
  %call12 = call ptr @xbc_node_get_child(ptr noundef %10) #16, !dbg !761
  %11 = ptrtoint ptr %anode to i32, !dbg !761
  call void @__asan_store4_noabort(i32 %11), !dbg !761
  store ptr %call12, ptr %anode, align 4, !dbg !761
  %tobool13.not = icmp eq ptr %call12, null, !dbg !761
  br i1 %tobool13.not, label %cond.false, label %cond.true, !dbg !761

cond.true:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !761
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 3), align 8, !dbg !761
  %12 = add i64 %gcov_ctr20, 1, !dbg !761
  store i64 %12, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 3), align 8, !dbg !761
  %call14 = call ptr @xbc_node_get_data(ptr noundef nonnull %call12) #16, !dbg !761
  br label %cond.end, !dbg !761

cond.false:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !761
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 4), align 16, !dbg !761
  %13 = add i64 %gcov_ctr21, 1, !dbg !761
  store i64 %13, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 4), align 16, !dbg !761
  br label %cond.end, !dbg !761

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call14, %cond.true ], [ null, %cond.false ], !dbg !761
  %14 = ptrtoint ptr %anode to i32, !dbg !761
  call void @__asan_load4_noabort(i32 %14), !dbg !761
  %15 = load ptr, ptr %anode, align 4, !dbg !761
  %cmp.not = icmp eq ptr %15, null, !dbg !761
  br i1 %cmp.not, label %cond.end.if.end15_crit_edge, label %cond.end.for.body_crit_edge, !dbg !761, !llvm.loop !769

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !761
  br label %for.body, !dbg !761

cond.end.if.end15_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !761
  br label %if.end15, !dbg !761

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !771
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.150, align 16, !dbg !771
  %16 = add i64 %gcov_ctr, 1, !dbg !771
  store i64 %16, ptr @__llvm_gcov_ctr.150, align 16, !dbg !771
  br label %cleanup, !dbg !771

if.end15:                                         ; preds = %cond.end.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 5), align 8, !dbg !772
  %17 = add i64 %gcov_ctr22, 1, !dbg !772
  store i64 %17, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.150, i32 0, i32 5), align 8, !dbg !772
  br label %cleanup, !dbg !772

cleanup:                                          ; preds = %if.end15, %if.else, %do.end
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %do.end ], [ -2, %if.else ], !dbg !768
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anode) #17, !dbg !773
  ret i32 %retval.0, !dbg !773
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @xbc_node_find_next_key_value(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @append_str_nospace(ptr nocapture noundef %bufp, ptr noundef %end, ptr nocapture noundef readonly %str) unnamed_addr #8 section ".init.text" align 64 !dbg !774 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !775
  %0 = ptrtoint ptr %bufp to i32, !dbg !776
  call void @__asan_load4_noabort(i32 %0), !dbg !776
  %1 = load ptr, ptr %bufp, align 4, !dbg !776
  %add.ptr = getelementptr i8, ptr %end, i32 -1
  %cmp1 = icmp ult ptr %1, %add.ptr, !dbg !777
  br i1 %cmp1, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge, !dbg !778

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !778
  br label %while.end, !dbg !778

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs, !dbg !778

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %p.04 = phi ptr [ %p.1, %if.end.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %str.addr.02 = phi ptr [ %incdec.ptr7, %if.end.land.rhs_crit_edge ], [ %str, %entry.land.rhs_crit_edge ]
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.151, align 16, !dbg !779
  %2 = add i64 %gcov_ctr, 1, !dbg !779
  store i64 %2, ptr @__llvm_gcov_ctr.151, align 16, !dbg !779
  %3 = ptrtoint ptr %str.addr.02 to i32, !dbg !780
  call void @__asan_load1_noabort(i32 %3), !dbg !780
  %4 = load i8, ptr %str.addr.02, align 1, !dbg !780
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4), !dbg !781
  %cmp1.not = icmp eq i8 %4, 0, !dbg !781
  br i1 %cmp1.not, label %land.rhs.while.end_crit_edge, label %while.body, !dbg !782

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15, !dbg !782
  br label %while.end, !dbg !782

while.body:                                       ; preds = %land.rhs
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 1), align 8, !dbg !783
  %5 = add i64 %gcov_ctr14, 1, !dbg !783
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 1), align 8, !dbg !783
  %6 = ptrtoint ptr %str.addr.02 to i32, !dbg !783
  call void @__asan_load1_noabort(i32 %6), !dbg !783
  %7 = load i8, ptr %str.addr.02, align 1, !dbg !783
  %conv3 = zext i8 %7 to i32, !dbg !783
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv3, !dbg !783
  %8 = ptrtoint ptr %arrayidx to i32, !dbg !783
  call void @__asan_load1_noabort(i32 %8), !dbg !783
  %9 = load i8, ptr %arrayidx, align 1, !dbg !783
  %10 = and i8 %9, 32, !dbg !783
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10), !dbg !783
  %cmp5.not = icmp eq i8 %10, 0, !dbg !783
  br i1 %cmp5.not, label %if.then, label %while.body.if.end_crit_edge, !dbg !784

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !784
  br label %if.end, !dbg !784

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !785
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 2), align 16, !dbg !785
  %11 = add i64 %gcov_ctr15, 1, !dbg !785
  store i64 %11, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 2), align 16, !dbg !785
  %12 = ptrtoint ptr %str.addr.02 to i32, !dbg !786
  call void @__asan_load1_noabort(i32 %12), !dbg !786
  %13 = load i8, ptr %str.addr.02, align 1, !dbg !786
  %incdec.ptr = getelementptr i8, ptr %p.04, i32 1, !dbg !787
  %14 = ptrtoint ptr %p.04 to i32, !dbg !788
  call void @__asan_store1_noabort(i32 %14), !dbg !788
  store i8 %13, ptr %p.04, align 1, !dbg !788
  br label %if.end, !dbg !789

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %p.1 = phi ptr [ %p.04, %while.body.if.end_crit_edge ], [ %incdec.ptr, %if.then ], !dbg !790
  %incdec.ptr7 = getelementptr i8, ptr %str.addr.02, i32 1, !dbg !791
  %cmp = icmp ult ptr %p.1, %add.ptr, !dbg !777
  br i1 %cmp, label %if.end.land.rhs_crit_edge, label %if.end.while.end_crit_edge, !dbg !778, !llvm.loop !792

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !778
  br label %while.end, !dbg !778

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !778
  br label %land.rhs, !dbg !778

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %1, %entry.while.end_crit_edge ], [ %p.1, %if.end.while.end_crit_edge ], [ %p.04, %land.rhs.while.end_crit_edge ], !dbg !794
  %15 = ptrtoint ptr %p.0.lcssa to i32, !dbg !795
  call void @__asan_store1_noabort(i32 %15), !dbg !795
  store i8 0, ptr %p.0.lcssa, align 1, !dbg !795
  %cmp9 = icmp eq ptr %p.0.lcssa, %add.ptr, !dbg !796
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !797

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !798
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 3), align 8, !dbg !798
  %16 = add i64 %gcov_ctr16, 1, !dbg !798
  store i64 %16, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 3), align 8, !dbg !798
  br label %cleanup, !dbg !799

if.end12:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !800
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 4), align 16, !dbg !800
  %17 = add i64 %gcov_ctr17, 1, !dbg !800
  store i64 %17, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.151, i32 0, i32 4), align 16, !dbg !800
  br label %cleanup, !dbg !801

cleanup:                                          ; preds = %if.end12, %if.then11
  %storemerge = phi ptr [ %p.0.lcssa, %if.end12 ], [ %end, %if.then11 ], !dbg !790
  %18 = ptrtoint ptr %bufp to i32, !dbg !790
  call void @__asan_store4_noabort(i32 %18), !dbg !790
  store ptr %storemerge, ptr %bufp, align 4, !dbg !790
  ret void, !dbg !802
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trace_boot_hist_add_handlers(ptr noundef %hnode, ptr nocapture noundef %bufp, ptr noundef %end, ptr noundef %param) unnamed_addr #0 section ".init.text" align 64 !dbg !803 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !804
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.152, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.152, align 16
  %call = tail call ptr @xbc_node_get_data(ptr noundef %hnode) #16, !dbg !805
  %call1 = tail call fastcc ptr @xbc_node_get_subkey(ptr noundef %hnode) #18, !dbg !806
  %cmp.not33 = icmp eq ptr %call1, null, !dbg !806
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !806

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !806

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !806
  br label %for.end, !dbg !806

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ret.037 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %node.034 = phi ptr [ %call9, %for.inc.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %call2 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %node.034) #16, !dbg !807
  %1 = ptrtoint ptr %call2 to i32, !dbg !808
  call void @__asan_load1_noabort(i32 %1), !dbg !808
  %2 = load i8, ptr %call2, align 1, !dbg !808
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.147, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.147, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %2), !dbg !809
  %cmp.i = icmp ugt i8 %2, 47, !dbg !809
  br i1 %cmp.i, label %isdigit.exit, label %for.body.for.inc_crit_edge, !dbg !811

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !811
  br label %for.inc, !dbg !811

isdigit.exit:                                     ; preds = %for.body
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !812
  %4 = add i64 %gcov_ctr2.i, 1, !dbg !812
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !812
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %2), !dbg !813
  %cmp1.i = icmp ugt i8 %2, 57, !dbg !813
  br i1 %cmp1.i, label %isdigit.exit.for.inc_crit_edge, label %if.end, !dbg !814

isdigit.exit.for.inc_crit_edge:                   ; preds = %isdigit.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !814
  br label %for.inc, !dbg !814

if.end:                                           ; preds = %isdigit.exit
  %call4 = tail call fastcc i32 @trace_boot_hist_add_one_handler(ptr noundef nonnull %node.034, ptr noundef %bufp, ptr noundef %end, ptr noundef %call, ptr noundef %param) #18, !dbg !815
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4), !dbg !816
  %cmp5 = icmp slt i32 %call4, 0, !dbg !816
  br i1 %cmp5, label %if.then7, label %if.end.for.inc_crit_edge, !dbg !817

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !817
  br label %for.inc, !dbg !817

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !818
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 2), align 16, !dbg !818
  %5 = add i64 %gcov_ctr16, 1, !dbg !818
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 2), align 16, !dbg !818
  br label %for.end, !dbg !818

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %isdigit.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 1), %for.body.for.inc_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 1), %isdigit.exit.for.inc_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 3), %if.end.for.inc_crit_edge ]
  %ret.1 = phi i32 [ %ret.037, %for.body.for.inc_crit_edge ], [ %ret.037, %isdigit.exit.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ], !dbg !819
  %6 = ptrtoint ptr %.sink to i32, !dbg !819
  call void @__asan_load8_noabort(i32 %6), !dbg !819
  %gcov_ctr17 = load i64, ptr %.sink, align 8, !dbg !819
  %7 = add i64 %gcov_ctr17, 1, !dbg !819
  store i64 %7, ptr %.sink, align 8, !dbg !819
  %call9 = tail call ptr @xbc_node_get_next(ptr noundef nonnull %node.034) #16, !dbg !806
  %cmp.not = icmp eq ptr %call9, null, !dbg !806
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !806, !llvm.loop !820

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !806
  br label %for.body, !dbg !806

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !806
  br label %for.end, !dbg !806

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then7, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ %call4, %if.then7 ], [ -1, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ], !dbg !819
  %call10 = tail call ptr @xbc_node_find_subkey(ptr noundef %hnode, ptr noundef %param) #16, !dbg !822
  %tobool11.not = icmp eq ptr %call10, null, !dbg !822
  br i1 %tobool11.not, label %for.end.if.end14_crit_edge, label %if.then12, !dbg !822

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !822
  br label %if.end14, !dbg !822

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !823
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 4), align 16, !dbg !823
  %8 = add i64 %gcov_ctr18, 1, !dbg !823
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 4), align 16, !dbg !823
  %call13 = tail call fastcc i32 @trace_boot_hist_add_one_handler(ptr noundef %hnode, ptr noundef %bufp, ptr noundef %end, ptr noundef %call, ptr noundef %param) #18, !dbg !824
  br label %if.end14, !dbg !825

if.end14:                                         ; preds = %if.then12, %for.end.if.end14_crit_edge
  %ret.3 = phi i32 [ %call13, %if.then12 ], [ %ret.2, %for.end.if.end14_crit_edge ], !dbg !819
  ret i32 %ret.3, !dbg !826
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trace_boot_hist_add_one_handler(ptr noundef %hnode, ptr nocapture noundef %bufp, ptr noundef %end, ptr noundef %handler, ptr noundef %param) unnamed_addr #0 section ".init.text" align 64 !dbg !827 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !828
  %call = tail call ptr @xbc_node_find_value(ptr noundef %hnode, ptr noundef %param, ptr noundef null) #16, !dbg !829
  %tobool.not = icmp eq ptr %call, null, !dbg !830
  br i1 %tobool.not, label %do.cond, label %if.end, !dbg !831

do.cond:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !832
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.153, align 16, !dbg !832
  %0 = add i64 %gcov_ctr, 1, !dbg !832
  store i64 %0, ptr @__llvm_gcov_ctr.153, align 16, !dbg !832
  %call1 = tail call ptr @xbc_node_get_data(ptr noundef %hnode) #16, !dbg !832
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %call1, ptr noundef %param) #16, !dbg !832
  br label %cleanup, !dbg !833

if.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef %bufp, ptr noundef %end, ptr noundef nonnull @.str.96, ptr noundef %handler, ptr noundef nonnull %call) #18, !dbg !834
  %call4 = tail call ptr @xbc_node_find_subkey(ptr noundef %hnode, ptr noundef nonnull @.str.97) #16, !dbg !835
  %tobool5.not = icmp eq ptr %call4, null, !dbg !836
  br i1 %tobool5.not, label %if.end8, label %if.end.if.then10_crit_edge, !dbg !837

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !837
  br label %if.then10, !dbg !837

if.end8:                                          ; preds = %if.end
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 1), align 8, !dbg !838
  %1 = add i64 %gcov_ctr52, 1, !dbg !838
  store i64 %1, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 1), align 8, !dbg !838
  %call7 = tail call ptr @xbc_node_find_subkey(ptr noundef %hnode, ptr noundef nonnull @.str.98) #16, !dbg !839
  %tobool9.not = icmp eq ptr %call7, null, !dbg !840
  br i1 %tobool9.not, label %if.else, label %if.end8.if.then10_crit_edge, !dbg !840

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15, !dbg !840
  br label %if.then10, !dbg !840

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %knode.091 = phi ptr [ %call7, %if.end8.if.then10_crit_edge ], [ %call4, %if.end.if.then10_crit_edge ]
  %call11 = tail call ptr @xbc_node_get_child(ptr noundef nonnull %knode.091) #16, !dbg !841
  %tobool12.not = icmp eq ptr %call11, null, !dbg !842
  br i1 %tobool12.not, label %if.then10.do.end17_crit_edge, label %lor.lhs.false, !dbg !843

if.then10.do.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15, !dbg !843
  br label %do.end17, !dbg !843

lor.lhs.false:                                    ; preds = %if.then10
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 2), align 16, !dbg !844
  %2 = add i64 %gcov_ctr53, 1, !dbg !844
  store i64 %2, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 2), align 16, !dbg !844
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.143, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.143, align 8
  %data.i = getelementptr inbounds %struct.xbc_node, ptr %call11, i32 0, i32 3, !dbg !845
  %4 = ptrtoint ptr %data.i to i32, !dbg !845
  call void @__asan_loadN_noabort(i32 %4, i32 2), !dbg !845
  %5 = load i16, ptr %data.i, align 1, !dbg !845
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5), !dbg !847
  %tobool.i = icmp slt i16 %5, 0, !dbg !847
  br i1 %tobool.i, label %for.body.preheader, label %lor.lhs.false.do.end17_crit_edge, !dbg !848

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15, !dbg !848
  br label %do.end17, !dbg !848

do.end17:                                         ; preds = %lor.lhs.false.do.end17_crit_edge, %if.then10.do.end17_crit_edge
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 3), align 8, !dbg !849
  %6 = add i64 %gcov_ctr54, 1, !dbg !849
  store i64 %6, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 3), align 8, !dbg !849
  %call19 = tail call ptr @xbc_node_get_data(ptr noundef %hnode) #16, !dbg !849
  %call20 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %knode.091) #16, !dbg !849
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %call19, ptr noundef %call20) #16, !dbg !849
  br label %cleanup, !dbg !850

for.body.preheader:                               ; preds = %lor.lhs.false
  %call23 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %knode.091) #16, !dbg !851
  tail call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef %bufp, ptr noundef %end, ptr noundef nonnull @.str.102, ptr noundef %call23) #18, !dbg !852
  br label %for.body, !dbg !853

for.body:                                         ; preds = %cond.end, %for.body.preheader
  %call32.sink = phi ptr [ %call32, %cond.end ], [ %call11, %for.body.preheader ]
  %sep.094 = phi i8 [ %sep.1, %cond.end ], [ 40, %for.body.preheader ]
  %call34 = tail call ptr @xbc_node_get_data(ptr noundef nonnull %call32.sink) #16, !dbg !853
  %conv = zext i8 %sep.094 to i32, !dbg !854
  tail call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef %bufp, ptr noundef %end, ptr noundef nonnull @.str.93, i32 noundef %conv, ptr noundef %call34) #18, !dbg !855
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %sep.094), !dbg !856
  %cmp28 = icmp eq i8 %sep.094, 40, !dbg !856
  br i1 %cmp28, label %if.then30, label %for.body.for.inc_crit_edge, !dbg !857

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !857
  br label %for.inc, !dbg !857

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !858
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 5), align 8, !dbg !858
  %7 = add i64 %gcov_ctr56, 1, !dbg !858
  store i64 %7, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 5), align 8, !dbg !858
  br label %for.inc, !dbg !859

for.inc:                                          ; preds = %if.then30, %for.body.for.inc_crit_edge
  %sep.1 = phi i8 [ 44, %if.then30 ], [ %sep.094, %for.body.for.inc_crit_edge ], !dbg !860
  %call32 = tail call ptr @xbc_node_get_child(ptr noundef nonnull %call32.sink) #16, !dbg !853
  %tobool33.not = icmp eq ptr %call32, null, !dbg !853
  br i1 %tobool33.not, label %for.end, label %cond.end, !dbg !853

cond.end:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !853
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 6), align 16, !dbg !853
  %8 = add i64 %gcov_ctr57, 1, !dbg !853
  store i64 %8, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 6), align 16, !dbg !853
  br label %for.body, !dbg !853

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !853
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 7), align 8, !dbg !853
  %9 = add i64 %gcov_ctr58, 1, !dbg !853
  store i64 %9, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 7), align 8, !dbg !853
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 4), align 16, !dbg !861
  %10 = add i64 %gcov_ctr55, 1, !dbg !861
  store i64 %10, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 4), align 16, !dbg !861
  tail call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef %bufp, ptr noundef %end, ptr noundef nonnull @.str.103) #18, !dbg !862
  br label %cleanup, !dbg !863

if.else:                                          ; preds = %if.end8
  %call36 = tail call ptr @xbc_node_find_subkey(ptr noundef %hnode, ptr noundef nonnull @.str.104) #16, !dbg !864
  %tobool37.not = icmp eq ptr %call36, null, !dbg !864
  br i1 %tobool37.not, label %do.end43, label %if.then38, !dbg !864

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15, !dbg !865
  tail call void (ptr, ptr, ptr, ...) @append_printf(ptr noundef %bufp, ptr noundef %end, ptr noundef nonnull @.str.105) #18, !dbg !865
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 9), align 8
  %11 = add i64 %gcov_ctr60, 1
  store i64 %11, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 9), align 8
  br label %cleanup

do.end43:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15, !dbg !866
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 8), align 16, !dbg !866
  %12 = add i64 %gcov_ctr59, 1, !dbg !866
  store i64 %12, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.153, i32 0, i32 8), align 16, !dbg !866
  %call45 = tail call ptr @xbc_node_get_data(ptr noundef %hnode) #16, !dbg !866
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %call45) #16, !dbg !866
  br label %cleanup, !dbg !867

cleanup:                                          ; preds = %do.end43, %if.then38, %for.end, %do.end17, %do.cond
  %retval.0 = phi i32 [ -22, %do.end17 ], [ -22, %do.end43 ], [ -22, %do.cond ], [ 0, %if.then38 ], [ 0, %for.end ], !dbg !860
  ret i32 %retval.0, !dbg !868
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_set_clr_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_boot_set_ftrace_filter(ptr nocapture noundef readonly %tr, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 !dbg !869 {
entry:
  %anode = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15, !dbg !870
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %anode) #17, !dbg !871
  %0 = ptrtoint ptr %anode to i32, !dbg !872
  call void @__asan_store4_noabort(i32 %0), !dbg !872
  store ptr inttoptr (i32 -1 to ptr), ptr %anode, align 4, !dbg !872, !annotation !321
  %call = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.121, ptr noundef nonnull %anode) #16, !dbg !873
  %cmp.not65 = icmp eq ptr %call, null, !dbg !873
  br i1 %cmp.not65, label %entry.for.end_crit_edge, label %for.body.lr.ph, !dbg !873

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !873
  br label %for.end, !dbg !873

for.body.lr.ph:                                   ; preds = %entry
  %ops = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40
  br label %for.body, !dbg !873

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.lr.ph
  %p.066 = phi ptr [ %call, %for.body.lr.ph ], [ %call10, %cond.end.for.body_crit_edge ]
  %call1 = call noalias ptr @kstrdup(ptr noundef nonnull %p.066, i32 noundef 3264) #17, !dbg !874
  %tobool.not = icmp eq ptr %call1, null, !dbg !875
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end, !dbg !876

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !876
  br label %cleanup, !dbg !876

if.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %ops to i32, !dbg !877
  call void @__asan_load4_noabort(i32 %1), !dbg !877
  %2 = load ptr, ptr %ops, align 4, !dbg !877
  %call2 = call i32 @strlen(ptr noundef nonnull %call1) #19, !dbg !878
  %call3 = call i32 @ftrace_set_filter(ptr noundef %2, ptr noundef nonnull %call1, i32 noundef %call2, i32 noundef 0) #17, !dbg !879
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !880
  %cmp4 = icmp slt i32 %call3, 0, !dbg !880
  br i1 %cmp4, label %do.end, label %if.else, !dbg !879

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !881
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !881
  %3 = add i64 %gcov_ctr42, 1, !dbg !881
  store i64 %3, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !881
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull %p.066) #16, !dbg !881
  br label %if.end7, !dbg !881

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !882
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 2), align 16, !dbg !882
  %4 = add i64 %gcov_ctr43, 1, !dbg !882
  store i64 %4, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 2), align 16, !dbg !882
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @ftrace_filter_param to i32)), !dbg !882
  store i8 1, ptr @ftrace_filter_param, align 1, !dbg !882
  br label %if.end7

if.end7:                                          ; preds = %if.else, %do.end
  call void @kfree(ptr noundef nonnull %call1) #17, !dbg !883
  %5 = ptrtoint ptr %anode to i32, !dbg !873
  call void @__asan_load4_noabort(i32 %5), !dbg !873
  %6 = load ptr, ptr %anode, align 4, !dbg !873
  %call8 = call ptr @xbc_node_get_child(ptr noundef %6) #16, !dbg !873
  %7 = ptrtoint ptr %anode to i32, !dbg !873
  call void @__asan_store4_noabort(i32 %7), !dbg !873
  store ptr %call8, ptr %anode, align 4, !dbg !873
  %tobool9.not = icmp eq ptr %call8, null, !dbg !873
  br i1 %tobool9.not, label %if.end7.for.end_crit_edge, label %cond.end, !dbg !873

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15, !dbg !873
  br label %for.end, !dbg !873

cond.end:                                         ; preds = %if.end7
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 3), align 8, !dbg !873
  %8 = add i64 %gcov_ctr44, 1, !dbg !873
  store i64 %8, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 3), align 8, !dbg !873
  %call10 = call ptr @xbc_node_get_data(ptr noundef nonnull %call8) #16, !dbg !873
  %cmp.not = icmp eq ptr %call10, null, !dbg !873
  br i1 %cmp.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge, !dbg !873, !llvm.loop !884

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !873
  br label %for.body, !dbg !873

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !873
  br label %for.end, !dbg !873

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.end7.for.end_crit_edge, %entry.for.end_crit_edge
  %call11 = call ptr @xbc_node_find_value(ptr noundef %node, ptr noundef nonnull @.str.124, ptr noundef nonnull %anode) #16, !dbg !886
  %cmp13.not67 = icmp eq ptr %call11, null, !dbg !886
  br i1 %cmp13.not67, label %for.end.cleanup_crit_edge, label %for.body14.lr.ph, !dbg !886

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !886
  br label %cleanup, !dbg !886

for.body14.lr.ph:                                 ; preds = %for.end
  %ops19 = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 40
  br label %for.body14, !dbg !886

for.body14:                                       ; preds = %cond.end37.for.body14_crit_edge, %for.body14.lr.ph
  %p.168 = phi ptr [ %call11, %for.body14.lr.ph ], [ %call35, %cond.end37.for.body14_crit_edge ]
  %call15 = call noalias ptr @kstrdup(ptr noundef nonnull %p.168, i32 noundef 3264) #17, !dbg !887
  %tobool16.not = icmp eq ptr %call15, null, !dbg !888
  br i1 %tobool16.not, label %for.body14.cleanup_crit_edge, label %if.end18, !dbg !889

for.body14.cleanup_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15, !dbg !889
  br label %cleanup, !dbg !889

if.end18:                                         ; preds = %for.body14
  %9 = ptrtoint ptr %ops19 to i32, !dbg !890
  call void @__asan_load4_noabort(i32 %9), !dbg !890
  %10 = load ptr, ptr %ops19, align 4, !dbg !890
  %call20 = call i32 @strlen(ptr noundef nonnull %call15) #19, !dbg !891
  %call21 = call i32 @ftrace_set_notrace(ptr noundef %10, ptr noundef nonnull %call15, i32 noundef %call20, i32 noundef 0) #17, !dbg !892
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21), !dbg !893
  %cmp22 = icmp slt i32 %call21, 0, !dbg !893
  br i1 %cmp22, label %do.end26, label %if.else29, !dbg !892

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15, !dbg !894
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 5), align 8, !dbg !894
  %11 = add i64 %gcov_ctr46, 1, !dbg !894
  store i64 %11, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 5), align 8, !dbg !894
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull %p.168) #16, !dbg !894
  br label %if.end30, !dbg !894

if.else29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15, !dbg !895
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 6), align 16, !dbg !895
  %12 = add i64 %gcov_ctr47, 1, !dbg !895
  store i64 %12, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 6), align 16, !dbg !895
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @ftrace_filter_param to i32)), !dbg !895
  store i8 1, ptr @ftrace_filter_param, align 1, !dbg !895
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %do.end26
  call void @kfree(ptr noundef nonnull %call15) #17, !dbg !896
  %13 = ptrtoint ptr %anode to i32, !dbg !886
  call void @__asan_load4_noabort(i32 %13), !dbg !886
  %14 = load ptr, ptr %anode, align 4, !dbg !886
  %call32 = call ptr @xbc_node_get_child(ptr noundef %14) #16, !dbg !886
  %15 = ptrtoint ptr %anode to i32, !dbg !886
  call void @__asan_store4_noabort(i32 %15), !dbg !886
  store ptr %call32, ptr %anode, align 4, !dbg !886
  %tobool33.not = icmp eq ptr %call32, null, !dbg !886
  br i1 %tobool33.not, label %if.end30.cleanup_crit_edge, label %cond.end37, !dbg !886

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15, !dbg !886
  br label %cleanup, !dbg !886

cond.end37:                                       ; preds = %if.end30
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 7), align 8, !dbg !886
  %16 = add i64 %gcov_ctr48, 1, !dbg !886
  store i64 %16, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 7), align 8, !dbg !886
  %call35 = call ptr @xbc_node_get_data(ptr noundef nonnull %call32) #16, !dbg !886
  %cmp13.not = icmp eq ptr %call35, null, !dbg !886
  br i1 %cmp13.not, label %cond.end37.cleanup_crit_edge, label %cond.end37.for.body14_crit_edge, !dbg !886, !llvm.loop !897

cond.end37.for.body14_crit_edge:                  ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #15, !dbg !886
  br label %for.body14, !dbg !886

cond.end37.cleanup_crit_edge:                     ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #15, !dbg !886
  br label %cleanup, !dbg !886

cleanup:                                          ; preds = %cond.end37.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.body14.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 8), %for.end.cleanup_crit_edge ], [ getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 4), %for.body14.cleanup_crit_edge ], [ getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 8), %if.end30.cleanup_crit_edge ], [ getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 8), %cond.end37.cleanup_crit_edge ], [ @__llvm_gcov_ctr.154, %for.body.cleanup_crit_edge ]
  %17 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %17)
  %gcov_ctr49 = load i64, ptr %.sink, align 16
  %18 = add i64 %gcov_ctr49, 1
  store i64 %18, ptr %.sink, align 16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anode) #17, !dbg !899
  ret void, !dbg !899
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_set_tracer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_alloc_snapshot_instance(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_set_filter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_set_notrace(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_array_get_by_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_array_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #11 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 122820918) #17
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #17
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #17
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 26
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #15
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @llvm_gcda_summary_info() #17
  tail call void @llvm_gcda_end_file() #17
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #12 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.130, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.131, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.132, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.133, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.134, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) @__llvm_gcov_ctr.135, i8 0, i64 168, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.136, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.137, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.138, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.139, align 8
  store i64 0, ptr @__llvm_gcov_ctr.140, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.141, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) @__llvm_gcov_ctr.142, i8 0, i64 144, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.143, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.144, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.145, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.146, i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.147, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @__llvm_gcov_ctr.148, i8 0, i64 160, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.149, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.150, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.151, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.152, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.153, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.154, i8 0, i64 80, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #11 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #17
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 124)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold inlinehint nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { noinline nounwind uwtable(sync) }
attributes #12 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind uwtable(sync) }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !116, !117, !119, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !164, !165, !166, !167, !169, !171, !173, !174, !175, !176, !178, !180, !182, !184, !185, !186, !188, !190, !192, !194, !196, !197, !198, !200, !202, !203, !204, !206, !207, !208, !210, !212, !213, !214, !215, !217, !219, !220, !221, !223, !225, !226, !227, !228, !230, !232, !233, !235, !237, !238, !239}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.gcov = !{!248}
!llvm.ident = !{!249}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_boot.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__initcall__kmod_trace_boot__262_671_trace_boot_init1s, !3, !"__initcall__kmod_trace_boot__262_671_trace_boot_init1s", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_boot.c", i32 671, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_boot.c", i32 651, i32 29}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_boot.c", i32 663, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace.h", i32 419, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_boot.c", i32 33, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_boot.c", i32 35, i32 4}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @trace_boot_set_instance_options._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @trace_boot_set_instance_options._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/trace/trace_boot.c", i32 40, i32 4}
!20 = !{ptr @trace_boot_set_instance_options._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @trace_boot_set_instance_options._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_boot.c", i32 43, i32 32}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/trace/trace_boot.c", i32 46, i32 4}
!26 = !{ptr @trace_boot_set_instance_options._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @trace_boot_set_instance_options._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/trace/trace_boot.c", i32 53, i32 32}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/trace/trace_boot.c", i32 56, i32 4}
!32 = !{ptr @trace_boot_set_instance_options._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @trace_boot_set_instance_options._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_boot.c", i32 59, i32 32}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_boot.c", i32 63, i32 4}
!38 = !{ptr @trace_boot_set_instance_options._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @trace_boot_set_instance_options._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_boot.c", i32 65, i32 4}
!42 = !{ptr @trace_boot_set_instance_options._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @trace_boot_set_instance_options._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/trace/trace_boot.c", i32 68, i32 32}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/trace/trace_boot.c", i32 75, i32 5}
!48 = !{ptr @trace_boot_set_instance_options._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @trace_boot_set_instance_options._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/trace/trace_boot.c", i32 524, i32 36}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/trace/trace_boot.c", i32 530, i32 21}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/trace/trace_boot.c", i32 473, i32 21}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/trace/trace_boot.c", i32 476, i32 21}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/trace/trace_boot.c", i32 483, i32 3}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @trace_boot_init_one_event._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @trace_boot_init_one_event._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/trace/trace_boot.c", i32 487, i32 33}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/trace/trace_boot.c", i32 490, i32 4}
!67 = !{ptr @trace_boot_init_one_event._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @trace_boot_init_one_event._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/trace/trace_boot.c", i32 492, i32 4}
!71 = !{ptr @trace_boot_init_one_event._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @trace_boot_init_one_event._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/trace/trace_boot.c", i32 496, i32 3}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/trace/trace_boot.c", i32 498, i32 5}
!77 = !{ptr @trace_boot_init_one_event._entry.43, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @trace_boot_init_one_event._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../kernel/trace/trace_boot.c", i32 500, i32 5}
!81 = !{ptr @trace_boot_init_one_event._entry.46, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @trace_boot_init_one_event._entry_ptr.48, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../kernel/trace/trace_boot.c", i32 502, i32 39}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/trace/trace_boot.c", i32 510, i32 4}
!87 = !{ptr @trace_boot_init_one_event._entry.50, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @trace_boot_init_one_event._entry_ptr.52, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../kernel/trace/trace_boot.c", i32 110, i32 2}
!91 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../kernel/trace/trace_boot.c", i32 115, i32 4}
!93 = !{ptr @.str.55, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @trace_boot_add_kprobe_event._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @trace_boot_add_kprobe_event._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/trace/trace_boot.c", i32 121, i32 4}
!98 = !{ptr @trace_boot_add_kprobe_event._entry.56, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @trace_boot_add_kprobe_event._entry_ptr.58, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../kernel/trace/trace_boot.c", i32 153, i32 2}
!102 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../kernel/trace/trace_boot.c", i32 161, i32 3}
!104 = !{ptr @.str.61, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @trace_boot_add_synth_event._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @trace_boot_add_synth_event._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../kernel/trace/trace_boot.c", i32 436, i32 5}
!109 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @trace_boot_init_histograms._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @trace_boot_init_histograms._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/trace/trace_boot.c", i32 441, i32 34}
!114 = !{ptr @trace_boot_init_histograms._entry.65, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../kernel/trace/trace_boot.c", i32 447, i32 5}
!116 = !{ptr @trace_boot_init_histograms._entry_ptr.66, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../kernel/trace/trace_boot.c", i32 358, i32 4}
!119 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @trace_boot_compose_hist_cmd._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @trace_boot_compose_hist_cmd._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/trace/trace_boot.c", i32 362, i32 52}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../kernel/trace/trace_boot.c", i32 365, i32 52}
!126 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../kernel/trace/trace_boot.c", i32 369, i32 33}
!128 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../kernel/trace/trace_boot.c", i32 371, i32 28}
!130 = !{ptr @.str.73, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/trace/trace_boot.c", i32 373, i32 33}
!132 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/trace/trace_boot.c", i32 375, i32 28}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/trace/trace_boot.c", i32 377, i32 37}
!136 = !{ptr @.str.76, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../kernel/trace/trace_boot.c", i32 381, i32 29}
!138 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../kernel/trace/trace_boot.c", i32 388, i32 33}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/trace/trace_boot.c", i32 389, i32 28}
!142 = !{ptr @.str.79, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/trace/trace_boot.c", i32 390, i32 38}
!144 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../kernel/trace/trace_boot.c", i32 391, i32 28}
!146 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/trace/trace_boot.c", i32 392, i32 38}
!148 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/trace/trace_boot.c", i32 393, i32 28}
!150 = !{ptr @.str.83, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../kernel/trace/trace_boot.c", i32 396, i32 37}
!152 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/trace/trace_boot.c", i32 399, i32 37}
!154 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../kernel/trace/trace_boot.c", i32 402, i32 37}
!156 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../kernel/trace/trace_boot.c", i32 408, i32 28}
!158 = !{ptr @.str.88, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../kernel/trace/trace_boot.c", i32 411, i32 3}
!160 = !{ptr @trace_boot_compose_hist_cmd._entry.87, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @trace_boot_compose_hist_cmd._entry_ptr.89, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.90, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/trace/trace_boot.c", i32 229, i32 4}
!164 = !{ptr @.str.91, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @trace_boot_hist_add_array._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @trace_boot_hist_add_array._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.92, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../kernel/trace/trace_boot.c", i32 233, i32 28}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../kernel/trace/trace_boot.c", i32 236, i32 29}
!171 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../kernel/trace/trace_boot.c", i32 258, i32 3}
!173 = !{ptr @.str.95, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @trace_boot_hist_add_one_handler._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @trace_boot_hist_add_one_handler._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/trace/trace_boot.c", i32 262, i32 27}
!178 = !{ptr @.str.97, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/trace/trace_boot.c", i32 265, i32 38}
!180 = !{ptr @.str.98, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/trace/trace_boot.c", i32 267, i32 39}
!182 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/trace/trace_boot.c", i32 272, i32 4}
!184 = !{ptr @trace_boot_hist_add_one_handler._entry.99, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @trace_boot_hist_add_one_handler._entry_ptr.101, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/trace/trace_boot.c", i32 278, i32 28}
!188 = !{ptr @.str.103, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../kernel/trace/trace_boot.c", i32 285, i32 28}
!190 = !{ptr @.str.104, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../kernel/trace/trace_boot.c", i32 286, i32 41}
!192 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../kernel/trace/trace_boot.c", i32 287, i32 28}
!194 = !{ptr @.str.107, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../kernel/trace/trace_boot.c", i32 289, i32 3}
!196 = !{ptr @trace_boot_hist_add_one_handler._entry.106, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @trace_boot_hist_add_one_handler._entry_ptr.108, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.109, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../kernel/trace/trace_boot.c", i32 89, i32 2}
!200 = !{ptr @.str.110, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../kernel/trace/trace_boot.c", i32 91, i32 4}
!202 = !{ptr @trace_boot_enable_events._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @trace_boot_enable_events._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.112, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../kernel/trace/trace_boot.c", i32 96, i32 4}
!206 = !{ptr @trace_boot_enable_events._entry.111, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @trace_boot_enable_events._entry_ptr.113, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../kernel/trace/trace_boot.c", i32 598, i32 32}
!210 = !{ptr @.str.115, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../kernel/trace/trace_boot.c", i32 601, i32 4}
!212 = !{ptr @.str.116, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @trace_boot_enable_tracer._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @trace_boot_enable_tracer._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.117, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../kernel/trace/trace_boot.c", i32 605, i32 32}
!217 = !{ptr @.str.119, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../kernel/trace/trace_boot.c", i32 607, i32 4}
!219 = !{ptr @trace_boot_enable_tracer._entry.118, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @trace_boot_enable_tracer._entry_ptr.120, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.121, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../kernel/trace/trace_boot.c", i32 566, i32 2}
!223 = !{ptr @.str.122, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../kernel/trace/trace_boot.c", i32 571, i32 4}
!225 = !{ptr @.str.123, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @trace_boot_set_ftrace_filter._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @trace_boot_set_ftrace_filter._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.124, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../kernel/trace/trace_boot.c", i32 576, i32 2}
!230 = !{ptr @trace_boot_set_ftrace_filter._entry.125, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../kernel/trace/trace_boot.c", i32 581, i32 4}
!232 = !{ptr @trace_boot_set_ftrace_filter._entry_ptr.126, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.127, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../kernel/trace/trace_boot.c", i32 627, i32 36}
!235 = !{ptr @.str.128, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../kernel/trace/trace_boot.c", i32 638, i32 4}
!237 = !{ptr @.str.129, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @trace_boot_init_instances._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @trace_boot_init_instances._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{i32 2, !"Debug Info Version", i32 3}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_boot.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_boot.gcda", !0}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = distinct !DISubprogram(name: "trace_boot_init", scope: !1, file: !1, line: 646, type: !251, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!251 = !DISubroutineType(types: !252)
!252 = !{}
!253 = !DILocation(line: 647, scope: !250)
!254 = !DILocation(line: 161, column: 9, scope: !255, inlinedAt: !257)
!255 = distinct !DISubprogram(name: "xbc_find_node", scope: !256, file: !256, line: 159, type: !251, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!256 = !DIFile(filename: "../include/linux/bootconfig.h", directory: "/llk/linux-5.17/build_arm_allyes")
!257 = distinct !DILocation(line: 651, column: 15, scope: !250)
!258 = !DILocation(line: 652, column: 7, scope: !250)
!259 = !DILocation(line: 652, column: 6, scope: !250)
!260 = !DILocation(line: 653, column: 3, scope: !250)
!261 = !DILocation(line: 292, column: 9, scope: !262, inlinedAt: !264)
!262 = distinct !DISubprogram(name: "list_empty", scope: !263, file: !263, line: 290, type: !251, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!263 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!264 = distinct !DILocation(line: 414, column: 6, scope: !265, inlinedAt: !267)
!265 = distinct !DISubprogram(name: "top_trace_array", scope: !266, file: !266, line: 410, type: !251, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!266 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!267 = distinct !DILocation(line: 655, column: 7, scope: !250)
!268 = !DILocation(line: 292, column: 31, scope: !262, inlinedAt: !264)
!269 = !DILocation(line: 414, column: 6, scope: !265, inlinedAt: !267)
!270 = !DILocation(line: 0, scope: !265, inlinedAt: !267)
!271 = !DILocation(line: 656, column: 6, scope: !250)
!272 = !DILocation(line: 417, column: 7, scope: !265, inlinedAt: !267)
!273 = !DILocation(line: 419, column: 2, scope: !265, inlinedAt: !267)
!274 = !{!"branch_weights", i32 1, i32 2000}
!275 = !DILocation(line: 656, column: 7, scope: !250)
!276 = !DILocation(line: 657, column: 3, scope: !250)
!277 = !DILocation(line: 660, column: 31, scope: !250)
!278 = !DILocation(line: 660, column: 2, scope: !250)
!279 = !DILocation(line: 661, column: 2, scope: !250)
!280 = !DILocation(line: 663, column: 2, scope: !250)
!281 = !DILocation(line: 665, column: 2, scope: !250)
!282 = !DILocation(line: 666, column: 1, scope: !250)
!283 = distinct !DISubprogram(name: "trace_boot_init_one_instance", scope: !1, file: !1, line: 612, type: !251, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!284 = !DILocation(line: 613, scope: !283)
!285 = !DILocation(line: 614, column: 2, scope: !283)
!286 = !DILocation(line: 615, column: 2, scope: !283)
!287 = !DILocation(line: 616, column: 2, scope: !283)
!288 = !DILocation(line: 617, column: 2, scope: !283)
!289 = !DILocation(line: 618, column: 1, scope: !283)
!290 = distinct !DISubprogram(name: "trace_boot_init_instances", scope: !1, file: !1, line: 621, type: !251, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!291 = !DILocation(line: 622, scope: !290)
!292 = !DILocation(line: 627, column: 9, scope: !290)
!293 = !DILocation(line: 628, column: 7, scope: !290)
!294 = !DILocation(line: 628, column: 6, scope: !290)
!295 = !DILocation(line: 0, scope: !290)
!296 = !DILocation(line: 629, column: 3, scope: !290)
!297 = !DILocation(line: 631, column: 2, scope: !290)
!298 = !DILocation(line: 632, column: 7, scope: !290)
!299 = !DILocation(line: 633, column: 8, scope: !290)
!300 = !DILocation(line: 633, column: 10, scope: !290)
!301 = !DILocation(line: 633, column: 14, scope: !290)
!302 = !DILocation(line: 633, column: 13, scope: !290)
!303 = !DILocation(line: 633, column: 16, scope: !290)
!304 = !DILocation(line: 633, column: 7, scope: !290)
!305 = !DILocation(line: 634, column: 4, scope: !290)
!306 = !DILocation(line: 636, column: 8, scope: !290)
!307 = !DILocation(line: 637, column: 8, scope: !290)
!308 = !DILocation(line: 637, column: 7, scope: !290)
!309 = !DILocation(line: 638, column: 4, scope: !290)
!310 = !DILocation(line: 639, column: 4, scope: !290)
!311 = !DILocation(line: 641, column: 32, scope: !290)
!312 = !DILocation(line: 641, column: 3, scope: !290)
!313 = !DILocation(line: 642, column: 3, scope: !290)
!314 = !DILocation(line: 643, column: 2, scope: !290)
!315 = distinct !{!315, !297, !314}
!316 = !DILocation(line: 644, column: 1, scope: !290)
!317 = distinct !DISubprogram(name: "trace_boot_set_instance_options", scope: !1, file: !1, line: 25, type: !251, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!318 = !DILocation(line: 26, scope: !317)
!319 = !DILocation(line: 27, column: 2, scope: !317)
!320 = !DILocation(line: 27, column: 19, scope: !317)
!321 = !{!"auto-init"}
!322 = !DILocation(line: 29, column: 2, scope: !317)
!323 = !DILocation(line: 29, column: 7, scope: !317)
!324 = !DILocation(line: 30, column: 2, scope: !317)
!325 = !DILocation(line: 30, column: 16, scope: !317)
!326 = !DILocation(line: 33, column: 2, scope: !317)
!327 = !DILocation(line: 34, column: 7, scope: !317)
!328 = !DILocation(line: 34, column: 40, scope: !317)
!329 = !DILocation(line: 35, column: 4, scope: !317)
!330 = !DILocation(line: 36, column: 4, scope: !317)
!331 = !DILocation(line: 39, column: 7, scope: !317)
!332 = !DILocation(line: 39, column: 34, scope: !317)
!333 = !DILocation(line: 40, column: 4, scope: !317)
!334 = !DILocation(line: 41, column: 2, scope: !317)
!335 = distinct !{!335, !326, !334}
!336 = !DILocation(line: 43, column: 26, scope: !317)
!337 = !DILocation(line: 43, column: 6, scope: !317)
!338 = !DILocation(line: 44, column: 6, scope: !317)
!339 = !DILocation(line: 44, column: 8, scope: !317)
!340 = !DILocation(line: 44, column: 12, scope: !317)
!341 = !DILocation(line: 44, column: 11, scope: !317)
!342 = !DILocation(line: 44, column: 14, scope: !317)
!343 = !DILocation(line: 40, column: 10, scope: !344, inlinedAt: !346)
!344 = distinct !DISubprogram(name: "kstrtoul", scope: !345, file: !345, line: 30, type: !251, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!345 = !DIFile(filename: "../include/linux/kstrtox.h", directory: "/llk/linux-5.17/build_arm_allyes")
!346 = distinct !DILocation(line: 45, column: 7, scope: !317)
!347 = !DILocation(line: 45, column: 7, scope: !317)
!348 = !DILocation(line: 46, column: 4, scope: !317)
!349 = !DILocation(line: 47, column: 7, scope: !317)
!350 = !DILocation(line: 48, column: 22, scope: !317)
!351 = !DILocation(line: 48, column: 4, scope: !317)
!352 = !DILocation(line: 50, column: 23, scope: !317)
!353 = !DILocation(line: 50, column: 4, scope: !317)
!354 = !DILocation(line: 53, column: 6, scope: !317)
!355 = !DILocation(line: 54, column: 6, scope: !317)
!356 = !DILocation(line: 54, column: 8, scope: !317)
!357 = !DILocation(line: 54, column: 12, scope: !317)
!358 = !DILocation(line: 54, column: 11, scope: !317)
!359 = !DILocation(line: 54, column: 14, scope: !317)
!360 = !DILocation(line: 55, column: 7, scope: !317)
!361 = !DILocation(line: 55, column: 32, scope: !317)
!362 = !DILocation(line: 56, column: 4, scope: !317)
!363 = !DILocation(line: 57, column: 2, scope: !317)
!364 = !DILocation(line: 59, column: 6, scope: !317)
!365 = !DILocation(line: 60, column: 6, scope: !317)
!366 = !DILocation(line: 60, column: 8, scope: !317)
!367 = !DILocation(line: 60, column: 12, scope: !317)
!368 = !DILocation(line: 60, column: 11, scope: !317)
!369 = !DILocation(line: 60, column: 14, scope: !317)
!370 = !DILocation(line: 61, column: 7, scope: !317)
!371 = !DILocation(line: 61, column: 5, scope: !317)
!372 = !DILocation(line: 62, column: 9, scope: !317)
!373 = !DILocation(line: 62, column: 7, scope: !317)
!374 = !DILocation(line: 63, column: 4, scope: !317)
!375 = !DILocation(line: 64, column: 38, scope: !317)
!376 = !DILocation(line: 64, column: 7, scope: !317)
!377 = !DILocation(line: 64, column: 63, scope: !317)
!378 = !DILocation(line: 65, column: 4, scope: !317)
!379 = !DILocation(line: 66, column: 2, scope: !317)
!380 = !DILocation(line: 68, column: 6, scope: !317)
!381 = !DILocation(line: 69, column: 6, scope: !317)
!382 = !DILocation(line: 69, column: 8, scope: !317)
!383 = !DILocation(line: 69, column: 12, scope: !317)
!384 = !DILocation(line: 69, column: 11, scope: !317)
!385 = !DILocation(line: 69, column: 14, scope: !317)
!386 = !DILocation(line: 70, column: 3, scope: !317)
!387 = !DILocation(line: 70, column: 17, scope: !317)
!388 = !DILocation(line: 72, column: 7, scope: !317)
!389 = !DILocation(line: 73, column: 25, scope: !317)
!390 = !DILocation(line: 676, column: 57, scope: !391, inlinedAt: !393)
!391 = distinct !DISubprogram(name: "cpumask_parse", scope: !392, file: !392, line: 674, type: !251, scopeLine: 675, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!392 = !DIFile(filename: "../include/linux/cpumask.h", directory: "/llk/linux-5.17/build_arm_allyes")
!393 = distinct !DILocation(line: 73, column: 8, scope: !317)
!394 = !DILocation(line: 676, column: 9, scope: !391, inlinedAt: !393)
!395 = !DILocation(line: 73, column: 35, scope: !317)
!396 = !DILocation(line: 73, column: 39, scope: !317)
!397 = !DILocation(line: 74, column: 28, scope: !317)
!398 = !DILocation(line: 74, column: 32, scope: !317)
!399 = !DILocation(line: 74, column: 8, scope: !317)
!400 = !DILocation(line: 74, column: 42, scope: !317)
!401 = !DILocation(line: 73, column: 8, scope: !317)
!402 = !DILocation(line: 75, column: 5, scope: !317)
!403 = !DILocation(line: 76, column: 21, scope: !317)
!404 = !DILocation(line: 76, column: 4, scope: !317)
!405 = !DILocation(line: 77, column: 3, scope: !317)
!406 = !DILocation(line: 78, column: 2, scope: !317)
!407 = !DILocation(line: 79, column: 1, scope: !317)
!408 = distinct !DISubprogram(name: "trace_boot_init_events", scope: !1, file: !1, line: 518, type: !251, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!409 = !DILocation(line: 519, scope: !408)
!410 = !DILocation(line: 524, column: 9, scope: !408)
!411 = !DILocation(line: 525, column: 7, scope: !408)
!412 = !DILocation(line: 525, column: 6, scope: !408)
!413 = !DILocation(line: 0, scope: !408)
!414 = !DILocation(line: 526, column: 3, scope: !408)
!415 = !DILocation(line: 528, column: 2, scope: !408)
!416 = !DILocation(line: 529, column: 10, scope: !408)
!417 = !DILocation(line: 530, column: 8, scope: !408)
!418 = !DILocation(line: 530, column: 7, scope: !408)
!419 = !DILocation(line: 535, column: 3, scope: !408)
!420 = !DILocation(line: 536, column: 11, scope: !408)
!421 = !DILocation(line: 537, column: 9, scope: !408)
!422 = !DILocation(line: 537, column: 8, scope: !408)
!423 = !DILocation(line: 538, column: 12, scope: !408)
!424 = !DILocation(line: 539, column: 5, scope: !408)
!425 = !DILocation(line: 541, column: 30, scope: !408)
!426 = !DILocation(line: 541, column: 4, scope: !408)
!427 = !DILocation(line: 542, column: 3, scope: !408)
!428 = distinct !{!428, !419, !427}
!429 = !DILocation(line: 544, column: 7, scope: !408)
!430 = !DILocation(line: 545, column: 29, scope: !408)
!431 = !DILocation(line: 545, column: 11, scope: !408)
!432 = !DILocation(line: 546, column: 4, scope: !408)
!433 = !DILocation(line: 547, column: 3, scope: !408)
!434 = !DILocation(line: 548, column: 2, scope: !408)
!435 = distinct !{!435, !415, !434}
!436 = !DILocation(line: 531, column: 15, scope: !408)
!437 = !DILocation(line: 550, column: 6, scope: !408)
!438 = !DILocation(line: 551, column: 29, scope: !408)
!439 = !DILocation(line: 551, column: 3, scope: !408)
!440 = !DILocation(line: 552, column: 1, scope: !408)
!441 = distinct !DISubprogram(name: "trace_boot_enable_events", scope: !1, file: !1, line: 83, type: !251, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!442 = !DILocation(line: 84, scope: !441)
!443 = !DILocation(line: 85, column: 2, scope: !441)
!444 = !DILocation(line: 85, column: 19, scope: !441)
!445 = !DILocation(line: 86, column: 2, scope: !441)
!446 = !DILocation(line: 86, column: 7, scope: !441)
!447 = !DILocation(line: 89, column: 2, scope: !441)
!448 = !DILocation(line: 90, column: 7, scope: !441)
!449 = !DILocation(line: 90, column: 40, scope: !441)
!450 = !DILocation(line: 91, column: 4, scope: !441)
!451 = !DILocation(line: 92, column: 4, scope: !441)
!452 = !DILocation(line: 95, column: 7, scope: !441)
!453 = !DILocation(line: 95, column: 40, scope: !441)
!454 = !DILocation(line: 96, column: 4, scope: !441)
!455 = !DILocation(line: 97, column: 2, scope: !441)
!456 = distinct !{!456, !447, !455}
!457 = !DILocation(line: 98, column: 1, scope: !441)
!458 = distinct !DISubprogram(name: "trace_boot_enable_tracer", scope: !1, file: !1, line: 592, type: !251, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!459 = !DILocation(line: 593, scope: !458)
!460 = !DILocation(line: 596, column: 2, scope: !458)
!461 = !DILocation(line: 598, column: 6, scope: !458)
!462 = !DILocation(line: 599, column: 6, scope: !458)
!463 = !DILocation(line: 599, column: 8, scope: !458)
!464 = !DILocation(line: 599, column: 12, scope: !458)
!465 = !DILocation(line: 599, column: 11, scope: !458)
!466 = !DILocation(line: 599, column: 14, scope: !458)
!467 = !DILocation(line: 600, column: 7, scope: !458)
!468 = !DILocation(line: 600, column: 33, scope: !458)
!469 = !DILocation(line: 601, column: 4, scope: !458)
!470 = !DILocation(line: 602, column: 2, scope: !458)
!471 = !DILocation(line: 605, column: 6, scope: !458)
!472 = !DILocation(line: 606, column: 39, scope: !458)
!473 = !DILocation(line: 606, column: 7, scope: !458)
!474 = !DILocation(line: 606, column: 43, scope: !458)
!475 = !DILocation(line: 607, column: 4, scope: !458)
!476 = !DILocation(line: 609, column: 1, scope: !458)
!477 = distinct !DISubprogram(name: "xbc_node_get_subkey", scope: !256, file: !256, line: 171, type: !251, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!478 = !DILocation(line: 172, scope: !477)
!479 = !DILocation(line: 173, column: 27, scope: !477)
!480 = !DILocation(line: 175, column: 6, scope: !477)
!481 = !DILocation(line: 175, column: 12, scope: !477)
!482 = !DILocation(line: 175, column: 33, scope: !477)
!483 = !DILocation(line: 82, column: 15, scope: !484, inlinedAt: !485)
!484 = distinct !DISubprogram(name: "xbc_node_is_value", scope: !256, file: !256, line: 80, type: !251, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!485 = distinct !DILocation(line: 175, column: 15, scope: !477)
!486 = !DILocation(line: 82, column: 9, scope: !484, inlinedAt: !485)
!487 = !DILocation(line: 176, column: 28, scope: !477)
!488 = !DILocation(line: 176, column: 10, scope: !477)
!489 = !DILocation(line: 176, column: 3, scope: !477)
!490 = !DILocation(line: 178, column: 10, scope: !477)
!491 = !DILocation(line: 178, column: 3, scope: !477)
!492 = !DILocation(line: 0, scope: !477)
!493 = !DILocation(line: 179, column: 1, scope: !477)
!494 = distinct !DISubprogram(name: "trace_boot_init_one_event", scope: !1, file: !1, line: 462, type: !251, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!495 = !DILocation(line: 464, scope: !494)
!496 = !DILocation(line: 466, column: 2, scope: !494)
!497 = !DILocation(line: 466, column: 19, scope: !494)
!498 = !DILocation(line: 467, column: 2, scope: !494)
!499 = !DILocation(line: 467, column: 7, scope: !494)
!500 = !DILocation(line: 470, column: 10, scope: !494)
!501 = !DILocation(line: 471, column: 10, scope: !494)
!502 = !DILocation(line: 473, column: 7, scope: !494)
!503 = !DILocation(line: 473, column: 6, scope: !494)
!504 = !DILocation(line: 474, column: 7, scope: !494)
!505 = !DILocation(line: 474, column: 49, scope: !494)
!506 = !DILocation(line: 0, scope: !494)
!507 = !DILocation(line: 475, column: 4, scope: !494)
!508 = !DILocation(line: 474, column: 51, scope: !494)
!509 = !DILocation(line: 476, column: 7, scope: !494)
!510 = !DILocation(line: 476, column: 6, scope: !494)
!511 = !DILocation(line: 477, column: 7, scope: !494)
!512 = !DILocation(line: 477, column: 48, scope: !494)
!513 = !DILocation(line: 478, column: 4, scope: !494)
!514 = !DILocation(line: 477, column: 50, scope: !494)
!515 = !DILocation(line: 480, column: 2, scope: !494)
!516 = !DILocation(line: 481, column: 9, scope: !494)
!517 = !DILocation(line: 482, column: 7, scope: !494)
!518 = !DILocation(line: 482, column: 6, scope: !494)
!519 = !DILocation(line: 483, column: 3, scope: !494)
!520 = !DILocation(line: 484, column: 3, scope: !494)
!521 = !DILocation(line: 487, column: 6, scope: !494)
!522 = !DILocation(line: 488, column: 6, scope: !494)
!523 = !DILocation(line: 488, column: 8, scope: !494)
!524 = !DILocation(line: 488, column: 12, scope: !494)
!525 = !DILocation(line: 488, column: 11, scope: !494)
!526 = !DILocation(line: 488, column: 14, scope: !494)
!527 = !DILocation(line: 489, column: 7, scope: !494)
!528 = !DILocation(line: 489, column: 40, scope: !494)
!529 = !DILocation(line: 490, column: 4, scope: !494)
!530 = !DILocation(line: 491, column: 12, scope: !494)
!531 = !DILocation(line: 491, column: 42, scope: !494)
!532 = !DILocation(line: 492, column: 4, scope: !494)
!533 = !DILocation(line: 496, column: 3, scope: !494)
!534 = !DILocation(line: 497, column: 8, scope: !494)
!535 = !DILocation(line: 497, column: 41, scope: !494)
!536 = !DILocation(line: 498, column: 5, scope: !494)
!537 = !DILocation(line: 499, column: 13, scope: !494)
!538 = !DILocation(line: 499, column: 46, scope: !494)
!539 = !DILocation(line: 500, column: 5, scope: !494)
!540 = distinct !{!540, !533, !541}
!541 = !DILocation(line: 501, column: 3, scope: !494)
!542 = !DILocation(line: 502, column: 11, scope: !494)
!543 = !DILocation(line: 502, column: 9, scope: !494)
!544 = !DILocation(line: 503, column: 7, scope: !494)
!545 = !DILocation(line: 504, column: 31, scope: !494)
!546 = !DILocation(line: 504, column: 4, scope: !494)
!547 = !DILocation(line: 508, column: 6, scope: !494)
!548 = !DILocation(line: 509, column: 7, scope: !494)
!549 = !DILocation(line: 509, column: 46, scope: !494)
!550 = !DILocation(line: 510, column: 4, scope: !494)
!551 = !DILocation(line: 512, column: 2, scope: !494)
!552 = !DILocation(line: 508, column: 47, scope: !494)
!553 = !DILocation(line: 514, column: 2, scope: !494)
!554 = !DILocation(line: 515, column: 1, scope: !494)
!555 = distinct !DISubprogram(name: "trace_boot_add_kprobe_event", scope: !1, file: !1, line: 102, type: !251, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!556 = !DILocation(line: 103, scope: !555)
!557 = !DILocation(line: 104, column: 2, scope: !555)
!558 = !DILocation(line: 104, column: 22, scope: !555)
!559 = !DILocation(line: 105, column: 2, scope: !555)
!560 = !DILocation(line: 105, column: 19, scope: !555)
!561 = !DILocation(line: 106, column: 2, scope: !555)
!562 = !DILocation(line: 106, column: 7, scope: !555)
!563 = !DILocation(line: 110, column: 2, scope: !555)
!564 = !DILocation(line: 111, column: 3, scope: !555)
!565 = !DILocation(line: 113, column: 9, scope: !555)
!566 = !DILocation(line: 114, column: 7, scope: !555)
!567 = !DILocation(line: 115, column: 4, scope: !555)
!568 = !DILocation(line: 116, column: 4, scope: !555)
!569 = !DILocation(line: 119, column: 9, scope: !555)
!570 = !DILocation(line: 120, column: 7, scope: !555)
!571 = !DILocation(line: 121, column: 4, scope: !555)
!572 = !DILocation(line: 122, column: 4, scope: !555)
!573 = distinct !{!573, !563, !574}
!574 = !DILocation(line: 124, column: 2, scope: !555)
!575 = !DILocation(line: 0, scope: !555)
!576 = !DILocation(line: 127, column: 1, scope: !555)
!577 = !DILocation(line: 126, column: 2, scope: !555)
!578 = distinct !DISubprogram(name: "trace_boot_add_synth_event", scope: !1, file: !1, line: 139, type: !251, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!579 = !DILocation(line: 140, scope: !578)
!580 = !DILocation(line: 141, column: 2, scope: !578)
!581 = !DILocation(line: 141, column: 22, scope: !578)
!582 = !DILocation(line: 142, column: 2, scope: !578)
!583 = !DILocation(line: 142, column: 19, scope: !578)
!584 = !DILocation(line: 143, column: 2, scope: !578)
!585 = !DILocation(line: 143, column: 7, scope: !578)
!586 = !DILocation(line: 147, column: 2, scope: !578)
!587 = !DILocation(line: 149, column: 8, scope: !578)
!588 = !DILocation(line: 150, column: 6, scope: !578)
!589 = !DILocation(line: 151, column: 10, scope: !578)
!590 = !DILocation(line: 151, column: 3, scope: !578)
!591 = !DILocation(line: 153, column: 2, scope: !578)
!592 = !DILocation(line: 154, column: 9, scope: !578)
!593 = !DILocation(line: 155, column: 7, scope: !578)
!594 = !DILocation(line: 156, column: 11, scope: !578)
!595 = !DILocation(line: 156, column: 4, scope: !578)
!596 = distinct !{!596, !591, !597}
!597 = !DILocation(line: 157, column: 2, scope: !578)
!598 = !DILocation(line: 159, column: 8, scope: !578)
!599 = !DILocation(line: 160, column: 10, scope: !578)
!600 = !DILocation(line: 160, column: 6, scope: !578)
!601 = !DILocation(line: 161, column: 3, scope: !578)
!602 = !DILocation(line: 163, column: 9, scope: !578)
!603 = !DILocation(line: 163, column: 2, scope: !578)
!604 = !DILocation(line: 0, scope: !578)
!605 = !DILocation(line: 164, column: 1, scope: !578)
!606 = distinct !DISubprogram(name: "trace_boot_init_histograms", scope: !1, file: !1, line: 419, type: !251, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!607 = !DILocation(line: 421, scope: !606)
!608 = !DILocation(line: 426, column: 2, scope: !606)
!609 = !DILocation(line: 427, column: 7, scope: !606)
!610 = !DILocation(line: 428, column: 16, scope: !606)
!611 = !DILocation(line: 45, column: 13, scope: !612, inlinedAt: !614)
!612 = distinct !DISubprogram(name: "isdigit", scope: !613, file: !613, line: 43, type: !251, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!613 = !DIFile(filename: "../include/linux/ctype.h", directory: "/llk/linux-5.17/build_arm_allyes")
!614 = distinct !DILocation(line: 428, column: 8, scope: !606)
!615 = !DILocation(line: 45, column: 18, scope: !612, inlinedAt: !614)
!616 = !DILocation(line: 45, column: 21, scope: !612, inlinedAt: !614)
!617 = !DILocation(line: 45, column: 23, scope: !612, inlinedAt: !614)
!618 = !DILocation(line: 428, column: 7, scope: !606)
!619 = !DILocation(line: 431, column: 7, scope: !606)
!620 = !DILocation(line: 431, column: 52, scope: !606)
!621 = !DILocation(line: 432, column: 10, scope: !606)
!622 = !DILocation(line: 433, column: 9, scope: !606)
!623 = !DILocation(line: 433, column: 8, scope: !606)
!624 = !DILocation(line: 435, column: 8, scope: !606)
!625 = !DILocation(line: 435, column: 41, scope: !606)
!626 = !DILocation(line: 436, column: 5, scope: !606)
!627 = !DILocation(line: 437, column: 10, scope: !606)
!628 = !DILocation(line: 437, column: 4, scope: !606)
!629 = !DILocation(line: 438, column: 3, scope: !606)
!630 = !DILocation(line: 0, scope: !606)
!631 = distinct !{!631, !608, !632}
!632 = !DILocation(line: 439, column: 2, scope: !606)
!633 = !DILocation(line: 441, column: 6, scope: !606)
!634 = !DILocation(line: 442, column: 7, scope: !606)
!635 = !DILocation(line: 442, column: 53, scope: !606)
!636 = !DILocation(line: 443, column: 10, scope: !606)
!637 = !DILocation(line: 444, column: 9, scope: !606)
!638 = !DILocation(line: 444, column: 8, scope: !606)
!639 = !DILocation(line: 446, column: 8, scope: !606)
!640 = !DILocation(line: 446, column: 41, scope: !606)
!641 = !DILocation(line: 447, column: 5, scope: !606)
!642 = !DILocation(line: 448, column: 10, scope: !606)
!643 = !DILocation(line: 448, column: 4, scope: !606)
!644 = !DILocation(line: 449, column: 3, scope: !606)
!645 = !DILocation(line: 450, column: 2, scope: !606)
!646 = !DILocation(line: 451, column: 1, scope: !606)
!647 = distinct !DISubprogram(name: "trace_boot_compose_hist_cmd", scope: !1, file: !1, line: 346, type: !251, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!648 = !DILocation(line: 347, scope: !647)
!649 = !DILocation(line: 348, column: 2, scope: !647)
!650 = !DILocation(line: 348, column: 26, scope: !647)
!651 = !DILocation(line: 349, column: 18, scope: !647)
!652 = !DILocation(line: 353, column: 2, scope: !647)
!653 = !DILocation(line: 355, column: 8, scope: !647)
!654 = !DILocation(line: 356, column: 10, scope: !647)
!655 = !DILocation(line: 356, column: 6, scope: !647)
!656 = !DILocation(line: 357, column: 7, scope: !647)
!657 = !DILocation(line: 357, column: 11, scope: !647)
!658 = !DILocation(line: 358, column: 4, scope: !647)
!659 = !DILocation(line: 362, column: 8, scope: !647)
!660 = !DILocation(line: 363, column: 10, scope: !647)
!661 = !DILocation(line: 363, column: 6, scope: !647)
!662 = !DILocation(line: 364, column: 10, scope: !647)
!663 = !DILocation(line: 364, column: 3, scope: !647)
!664 = !DILocation(line: 365, column: 8, scope: !647)
!665 = !DILocation(line: 366, column: 10, scope: !647)
!666 = !DILocation(line: 366, column: 6, scope: !647)
!667 = !DILocation(line: 367, column: 10, scope: !647)
!668 = !DILocation(line: 367, column: 3, scope: !647)
!669 = !DILocation(line: 369, column: 6, scope: !647)
!670 = !DILocation(line: 370, column: 6, scope: !647)
!671 = !DILocation(line: 371, column: 23, scope: !647)
!672 = !DILocation(line: 371, column: 3, scope: !647)
!673 = !DILocation(line: 373, column: 6, scope: !647)
!674 = !DILocation(line: 374, column: 6, scope: !647)
!675 = !DILocation(line: 375, column: 23, scope: !647)
!676 = !DILocation(line: 375, column: 3, scope: !647)
!677 = !DILocation(line: 377, column: 9, scope: !647)
!678 = !DILocation(line: 378, column: 6, scope: !647)
!679 = !DILocation(line: 379, column: 3, scope: !647)
!680 = !DILocation(line: 381, column: 24, scope: !647)
!681 = !DILocation(line: 382, column: 11, scope: !647)
!682 = !DILocation(line: 381, column: 4, scope: !647)
!683 = !DILocation(line: 383, column: 4, scope: !647)
!684 = distinct !{!684, !679, !685}
!685 = !DILocation(line: 384, column: 3, scope: !647)
!686 = !DILocation(line: 385, column: 2, scope: !647)
!687 = !DILocation(line: 388, column: 6, scope: !647)
!688 = !DILocation(line: 389, column: 3, scope: !647)
!689 = !DILocation(line: 390, column: 11, scope: !647)
!690 = !DILocation(line: 391, column: 23, scope: !647)
!691 = !DILocation(line: 391, column: 3, scope: !647)
!692 = !DILocation(line: 392, column: 11, scope: !647)
!693 = !DILocation(line: 393, column: 23, scope: !647)
!694 = !DILocation(line: 393, column: 3, scope: !647)
!695 = !DILocation(line: 396, column: 9, scope: !647)
!696 = !DILocation(line: 397, column: 6, scope: !647)
!697 = !DILocation(line: 397, column: 11, scope: !647)
!698 = !DILocation(line: 397, column: 43, scope: !647)
!699 = !DILocation(line: 397, column: 14, scope: !647)
!700 = !DILocation(line: 397, column: 67, scope: !647)
!701 = !DILocation(line: 398, column: 3, scope: !647)
!702 = !DILocation(line: 399, column: 9, scope: !647)
!703 = !DILocation(line: 400, column: 6, scope: !647)
!704 = !DILocation(line: 400, column: 11, scope: !647)
!705 = !DILocation(line: 400, column: 43, scope: !647)
!706 = !DILocation(line: 400, column: 14, scope: !647)
!707 = !DILocation(line: 400, column: 67, scope: !647)
!708 = !DILocation(line: 401, column: 3, scope: !647)
!709 = !DILocation(line: 402, column: 9, scope: !647)
!710 = !DILocation(line: 403, column: 6, scope: !647)
!711 = !DILocation(line: 403, column: 11, scope: !647)
!712 = !DILocation(line: 403, column: 43, scope: !647)
!713 = !DILocation(line: 403, column: 14, scope: !647)
!714 = !DILocation(line: 403, column: 69, scope: !647)
!715 = !DILocation(line: 404, column: 3, scope: !647)
!716 = !DILocation(line: 406, column: 6, scope: !647)
!717 = !DILocation(line: 407, column: 6, scope: !647)
!718 = !DILocation(line: 408, column: 23, scope: !647)
!719 = !DILocation(line: 408, column: 3, scope: !647)
!720 = !DILocation(line: 410, column: 6, scope: !647)
!721 = !DILocation(line: 410, column: 10, scope: !647)
!722 = !DILocation(line: 411, column: 3, scope: !647)
!723 = !DILocation(line: 412, column: 3, scope: !647)
!724 = !DILocation(line: 415, column: 2, scope: !647)
!725 = !DILocation(line: 0, scope: !647)
!726 = !DILocation(line: 416, column: 1, scope: !647)
!727 = distinct !DISubprogram(name: "append_printf", scope: !1, file: !1, line: 176, type: !251, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!728 = !DILocation(line: 177, scope: !727)
!729 = !DILocation(line: 178, column: 2, scope: !727)
!730 = !DILocation(line: 178, column: 10, scope: !727)
!731 = !DILocation(line: 181, column: 6, scope: !727)
!732 = !DILocation(line: 181, column: 12, scope: !727)
!733 = !DILocation(line: 182, column: 3, scope: !727)
!734 = !DILocation(line: 184, column: 2, scope: !727)
!735 = !DILocation(line: 185, column: 18, scope: !727)
!736 = !DILocation(line: 185, column: 29, scope: !727)
!737 = !DILocation(line: 185, column: 8, scope: !727)
!738 = !DILocation(line: 186, column: 18, scope: !727)
!739 = !DILocation(line: 186, column: 16, scope: !727)
!740 = !DILocation(line: 186, column: 10, scope: !727)
!741 = !DILocation(line: 186, column: 6, scope: !727)
!742 = !DILocation(line: 187, column: 12, scope: !727)
!743 = !DILocation(line: 187, column: 9, scope: !727)
!744 = !DILocation(line: 188, column: 2, scope: !727)
!745 = !DILocation(line: 189, column: 11, scope: !727)
!746 = !DILocation(line: 0, scope: !727)
!747 = !DILocation(line: 192, column: 2, scope: !727)
!748 = !DILocation(line: 194, column: 2, scope: !727)
!749 = !DILocation(line: 195, column: 1, scope: !727)
!750 = distinct !DISubprogram(name: "trace_boot_hist_add_array", scope: !1, file: !1, line: 219, type: !251, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!751 = !DILocation(line: 221, scope: !750)
!752 = !DILocation(line: 222, column: 2, scope: !750)
!753 = !DILocation(line: 222, column: 19, scope: !750)
!754 = !DILocation(line: 226, column: 6, scope: !750)
!755 = !DILocation(line: 227, column: 6, scope: !750)
!756 = !DILocation(line: 228, column: 8, scope: !750)
!757 = !DILocation(line: 228, column: 7, scope: !750)
!758 = !DILocation(line: 229, column: 4, scope: !750)
!759 = !DILocation(line: 230, column: 4, scope: !750)
!760 = !DILocation(line: 233, column: 3, scope: !750)
!761 = !DILocation(line: 235, column: 3, scope: !750)
!762 = !DILocation(line: 236, column: 37, scope: !750)
!763 = !DILocation(line: 236, column: 4, scope: !750)
!764 = !DILocation(line: 237, column: 12, scope: !750)
!765 = !DILocation(line: 237, column: 8, scope: !750)
!766 = !DILocation(line: 238, column: 9, scope: !750)
!767 = !DILocation(line: 238, column: 5, scope: !750)
!768 = !DILocation(line: 0, scope: !750)
!769 = distinct !{!769, !761, !770}
!770 = !DILocation(line: 239, column: 3, scope: !750)
!771 = !DILocation(line: 241, column: 3, scope: !750)
!772 = !DILocation(line: 243, column: 2, scope: !750)
!773 = !DILocation(line: 244, column: 1, scope: !750)
!774 = distinct !DISubprogram(name: "append_str_nospace", scope: !1, file: !1, line: 198, type: !251, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!775 = !DILocation(line: 199, scope: !774)
!776 = !DILocation(line: 200, column: 12, scope: !774)
!777 = !DILocation(line: 203, column: 11, scope: !774)
!778 = !DILocation(line: 203, column: 21, scope: !774)
!779 = !DILocation(line: 203, column: 25, scope: !774)
!780 = !DILocation(line: 203, column: 24, scope: !774)
!781 = !DILocation(line: 203, column: 29, scope: !774)
!782 = !DILocation(line: 203, column: 2, scope: !774)
!783 = !DILocation(line: 204, column: 8, scope: !774)
!784 = !DILocation(line: 204, column: 7, scope: !774)
!785 = !DILocation(line: 205, column: 14, scope: !774)
!786 = !DILocation(line: 205, column: 13, scope: !774)
!787 = !DILocation(line: 205, column: 7, scope: !774)
!788 = !DILocation(line: 205, column: 11, scope: !774)
!789 = !DILocation(line: 205, column: 4, scope: !774)
!790 = !DILocation(line: 0, scope: !774)
!791 = !DILocation(line: 206, column: 6, scope: !774)
!792 = distinct !{!792, !782, !793}
!793 = !DILocation(line: 207, column: 2, scope: !774)
!794 = !DILocation(line: 200, column: 8, scope: !774)
!795 = !DILocation(line: 208, column: 5, scope: !774)
!796 = !DILocation(line: 209, column: 8, scope: !774)
!797 = !DILocation(line: 209, column: 6, scope: !774)
!798 = !DILocation(line: 210, column: 11, scope: !774)
!799 = !DILocation(line: 211, column: 3, scope: !774)
!800 = !DILocation(line: 213, column: 8, scope: !774)
!801 = !DILocation(line: 215, column: 2, scope: !774)
!802 = !DILocation(line: 216, column: 1, scope: !774)
!803 = distinct !DISubprogram(name: "trace_boot_hist_add_handlers", scope: !1, file: !1, line: 298, type: !251, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!804 = !DILocation(line: 300, scope: !803)
!805 = !DILocation(line: 305, column: 12, scope: !803)
!806 = !DILocation(line: 307, column: 2, scope: !803)
!807 = !DILocation(line: 308, column: 7, scope: !803)
!808 = !DILocation(line: 309, column: 16, scope: !803)
!809 = !DILocation(line: 45, column: 13, scope: !612, inlinedAt: !810)
!810 = distinct !DILocation(line: 309, column: 8, scope: !803)
!811 = !DILocation(line: 45, column: 18, scope: !612, inlinedAt: !810)
!812 = !DILocation(line: 45, column: 21, scope: !612, inlinedAt: !810)
!813 = !DILocation(line: 45, column: 23, scope: !612, inlinedAt: !810)
!814 = !DILocation(line: 309, column: 7, scope: !803)
!815 = !DILocation(line: 312, column: 9, scope: !803)
!816 = !DILocation(line: 313, column: 11, scope: !803)
!817 = !DILocation(line: 313, column: 7, scope: !803)
!818 = !DILocation(line: 314, column: 4, scope: !803)
!819 = !DILocation(line: 0, scope: !803)
!820 = distinct !{!820, !806, !821}
!821 = !DILocation(line: 315, column: 2, scope: !803)
!822 = !DILocation(line: 317, column: 6, scope: !803)
!823 = !DILocation(line: 318, column: 41, scope: !803)
!824 = !DILocation(line: 318, column: 9, scope: !803)
!825 = !DILocation(line: 318, column: 3, scope: !803)
!826 = !DILocation(line: 320, column: 2, scope: !803)
!827 = distinct !DISubprogram(name: "trace_boot_hist_add_one_handler", scope: !1, file: !1, line: 247, type: !251, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!828 = !DILocation(line: 250, scope: !827)
!829 = !DILocation(line: 256, column: 6, scope: !827)
!830 = !DILocation(line: 257, column: 7, scope: !827)
!831 = !DILocation(line: 257, column: 6, scope: !827)
!832 = !DILocation(line: 258, column: 3, scope: !827)
!833 = !DILocation(line: 260, column: 3, scope: !827)
!834 = !DILocation(line: 262, column: 2, scope: !827)
!835 = !DILocation(line: 265, column: 10, scope: !827)
!836 = !DILocation(line: 266, column: 7, scope: !827)
!837 = !DILocation(line: 266, column: 6, scope: !827)
!838 = !DILocation(line: 267, column: 32, scope: !827)
!839 = !DILocation(line: 267, column: 11, scope: !827)
!840 = !DILocation(line: 269, column: 6, scope: !827)
!841 = !DILocation(line: 270, column: 11, scope: !827)
!842 = !DILocation(line: 271, column: 8, scope: !827)
!843 = !DILocation(line: 271, column: 14, scope: !827)
!844 = !DILocation(line: 271, column: 36, scope: !827)
!845 = !DILocation(line: 82, column: 15, scope: !484, inlinedAt: !846)
!846 = distinct !DILocation(line: 271, column: 18, scope: !827)
!847 = !DILocation(line: 82, column: 9, scope: !484, inlinedAt: !846)
!848 = !DILocation(line: 271, column: 7, scope: !827)
!849 = !DILocation(line: 272, column: 4, scope: !827)
!850 = !DILocation(line: 275, column: 4, scope: !827)
!851 = !DILocation(line: 278, column: 35, scope: !827)
!852 = !DILocation(line: 278, column: 3, scope: !827)
!853 = !DILocation(line: 280, column: 3, scope: !827)
!854 = !DILocation(line: 281, column: 37, scope: !827)
!855 = !DILocation(line: 281, column: 4, scope: !827)
!856 = !DILocation(line: 282, column: 12, scope: !827)
!857 = !DILocation(line: 282, column: 8, scope: !827)
!858 = !DILocation(line: 283, column: 9, scope: !827)
!859 = !DILocation(line: 283, column: 5, scope: !827)
!860 = !DILocation(line: 0, scope: !827)
!861 = !DILocation(line: 285, column: 17, scope: !827)
!862 = !DILocation(line: 285, column: 3, scope: !827)
!863 = !DILocation(line: 286, column: 2, scope: !827)
!864 = !DILocation(line: 286, column: 13, scope: !827)
!865 = !DILocation(line: 287, column: 3, scope: !827)
!866 = !DILocation(line: 289, column: 3, scope: !827)
!867 = !DILocation(line: 291, column: 3, scope: !827)
!868 = !DILocation(line: 295, column: 1, scope: !827)
!869 = distinct !DISubprogram(name: "trace_boot_set_ftrace_filter", scope: !1, file: !1, line: 560, type: !251, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !252)
!870 = !DILocation(line: 561, scope: !869)
!871 = !DILocation(line: 562, column: 2, scope: !869)
!872 = !DILocation(line: 562, column: 19, scope: !869)
!873 = !DILocation(line: 566, column: 2, scope: !869)
!874 = !DILocation(line: 567, column: 7, scope: !869)
!875 = !DILocation(line: 568, column: 8, scope: !869)
!876 = !DILocation(line: 568, column: 7, scope: !869)
!877 = !DILocation(line: 570, column: 29, scope: !869)
!878 = !DILocation(line: 570, column: 37, scope: !869)
!879 = !DILocation(line: 570, column: 7, scope: !869)
!880 = !DILocation(line: 570, column: 51, scope: !869)
!881 = !DILocation(line: 571, column: 4, scope: !869)
!882 = !DILocation(line: 573, column: 24, scope: !869)
!883 = !DILocation(line: 574, column: 3, scope: !869)
!884 = distinct !{!884, !873, !885}
!885 = !DILocation(line: 575, column: 2, scope: !869)
!886 = !DILocation(line: 576, column: 2, scope: !869)
!887 = !DILocation(line: 577, column: 7, scope: !869)
!888 = !DILocation(line: 578, column: 8, scope: !869)
!889 = !DILocation(line: 578, column: 7, scope: !869)
!890 = !DILocation(line: 580, column: 30, scope: !869)
!891 = !DILocation(line: 580, column: 38, scope: !869)
!892 = !DILocation(line: 580, column: 7, scope: !869)
!893 = !DILocation(line: 580, column: 52, scope: !869)
!894 = !DILocation(line: 581, column: 4, scope: !869)
!895 = !DILocation(line: 583, column: 24, scope: !869)
!896 = !DILocation(line: 584, column: 3, scope: !869)
!897 = distinct !{!897, !886, !898}
!898 = !DILocation(line: 585, column: 2, scope: !869)
!899 = !DILocation(line: 586, column: 1, scope: !869)
