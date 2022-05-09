; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_probe.c_pt.bc'
source_filename = "../kernel/trace/trace_probe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_probe_log = type { ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fetch_type = type { ptr, i32, i32, ptr, ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.trace_probe = type { %struct.list_head, ptr, i32, i32, [0 x %struct.probe_arg] }
%struct.probe_arg = type { ptr, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.fetch_insn = type { i32, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i32 }
%struct.trace_probe_event = type { i32, %struct.trace_event_class, %struct.trace_event_call, %struct.list_head, %struct.list_head, [0 x %struct.trace_uprobe_filter] }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.74, %struct.trace_event, ptr, ptr, %union.anon.76, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.trace_uprobe_filter = type { %struct.rwlock_t, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.event_file_link = type { ptr, %struct.list_head }
%struct.anon.101 = type { i8, i8, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@print_type_format_u8 = dso_local constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@print_type_format_u16 = dso_local constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@print_type_format_u32 = dso_local constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%Lu\00", [28 x i8] zeroinitializer }, align 32
@print_type_format_u64 = dso_local constant { [4 x i8], [28 x i8] } { [4 x i8] c"%Lu\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@print_type_format_s8 = dso_local constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@print_type_format_s16 = dso_local constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@print_type_format_s32 = dso_local constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%Ld\00", [28 x i8] zeroinitializer }, align 32
@print_type_format_s64 = dso_local constant { [4 x i8], [28 x i8] } { [4 x i8] c"%Ld\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%x\00", [27 x i8] zeroinitializer }, align 32
@print_type_format_x8 = dso_local constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%x\00", [27 x i8] zeroinitializer }, align 32
@print_type_format_x16 = dso_local constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%x\00", [27 x i8] zeroinitializer }, align 32
@print_type_format_x32 = dso_local constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%x\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%Lx\00", [26 x i8] zeroinitializer }, align 32
@print_type_format_x64 = dso_local constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%Lx\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pS\00", [28 x i8] zeroinitializer }, align 32
@print_type_format_symbol = dso_local constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pS\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(fault)\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\22%s\22\00", [27 x i8] zeroinitializer }, align 32
@print_type_format_string = dso_local constant { [7 x i8], [25 x i8] } { [7 x i8] c"\\\22%s\\\22\00", [25 x i8] zeroinitializer }, align 32
@trace_probe_log = internal global { %struct.trace_probe_log, [16 x i8] } zeroinitializer, align 32
@trace_probe_err_text = internal global { [54 x ptr], [40 x i8] } { [54 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"+-\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"arg%d\00", [26 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@event_mutex = external dso_local global %struct.mutex, align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/trace/trace_probe.c\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s=%s\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to find the given file\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Not a regular file\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid reference counter offset\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Reference counter brace is not closed\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Reference counter has wrong suffix\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid uprobe offset\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Maxactive is not for kprobe\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid maxactive number\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Maxactive is too big\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid probed address or symbol\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Retprobe address must be an function entry\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid probed address suffix\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Group name is not specified\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Group name is too long\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Group name must follow the same rules as C identifiers\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Event name is not specified\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Event name is too long\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Event name must follow the same rules as C identifiers\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Given group/event name is already used by another event\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"$retval is not available on probe\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid stack number\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid argument number\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid $-valiable specified\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid register name\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid memory address\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid immediate value\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"String is not closed with '\22'\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"File offset is not available with kprobe\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid file offset value\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Symbol is not available with uprobe\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dereference is too much nested\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Dereference needs a brace\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid dereference offset\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dereference brace is not closed\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"$comm can not be dereferenced\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid fetch argument\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Array is not closed\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Array has wrong suffix\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid array size\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Array number is too big\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown type is specified\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"String accepts only memory argument\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid bitfield\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Argument name is too long\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Argument name is not specified\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Argument name must follow the same rules as C identifiers\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"This argument name is already used\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Argument expression is too long\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No argument expression\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Probe point is not an instruction boundary\00", [53 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register probe event\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Probe type is different from existing probe\00", [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Argument type or name is different from existing probe\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"There is already the exact same probe event\00", [52 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"common_type\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"common_flags\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"common_preempt_count\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"common_pid\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"common_tgid\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__probe_ip\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__probe_ret_ip\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__probe_func\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"$comm\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\\\22\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"string\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s[%d]\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ustring\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x32\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@probe_fetch_types = internal constant { [16 x %struct.fetch_type], [96 x i8] } { [16 x %struct.fetch_type] [%struct.fetch_type { ptr @.str.77, i32 4, i32 1, ptr @print_type_string, ptr @print_type_format_string, ptr @.str.85 }, %struct.fetch_type { ptr @.str.79, i32 4, i32 1, ptr @print_type_string, ptr @print_type_format_string, ptr @.str.85 }, %struct.fetch_type { ptr @.str.81, i32 1, i32 0, ptr @print_type_u8, ptr @print_type_format_u8, ptr @.str.81 }, %struct.fetch_type { ptr @.str.82, i32 2, i32 0, ptr @print_type_u16, ptr @print_type_format_u16, ptr @.str.82 }, %struct.fetch_type { ptr @.str.83, i32 4, i32 0, ptr @print_type_u32, ptr @print_type_format_u32, ptr @.str.83 }, %struct.fetch_type { ptr @.str.84, i32 8, i32 0, ptr @print_type_u64, ptr @print_type_format_u64, ptr @.str.84 }, %struct.fetch_type { ptr @.str.86, i32 1, i32 1, ptr @print_type_s8, ptr @print_type_format_s8, ptr @.str.86 }, %struct.fetch_type { ptr @.str.87, i32 2, i32 1, ptr @print_type_s16, ptr @print_type_format_s16, ptr @.str.87 }, %struct.fetch_type { ptr @.str.88, i32 4, i32 1, ptr @print_type_s32, ptr @print_type_format_s32, ptr @.str.88 }, %struct.fetch_type { ptr @.str.89, i32 8, i32 1, ptr @print_type_s64, ptr @print_type_format_s64, ptr @.str.89 }, %struct.fetch_type { ptr @.str.90, i32 1, i32 0, ptr @print_type_x8, ptr @print_type_format_x8, ptr @.str.81 }, %struct.fetch_type { ptr @.str.91, i32 2, i32 0, ptr @print_type_x16, ptr @print_type_format_x16, ptr @.str.82 }, %struct.fetch_type { ptr @.str.80, i32 4, i32 0, ptr @print_type_x32, ptr @print_type_format_x32, ptr @.str.83 }, %struct.fetch_type { ptr @.str.92, i32 8, i32 0, ptr @print_type_x64, ptr @print_type_format_x64, ptr @.str.84 }, %struct.fetch_type { ptr @.str.93, i32 4, i32 0, ptr @print_type_symbol, ptr @print_type_format_symbol, ptr @.str.83 }, %struct.fetch_type zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"s8\00", [29 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s16\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s32\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s64\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"x8\00", [29 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x16\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x64\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"symbol\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"retval\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stack\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"comm\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(%lx)\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c", REC->__probe_ip\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(%lx <- %lx)\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c", REC->__probe_func, REC->__probe_ret_ip\00", [55 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__set_print_fmt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\22%s\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s=\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"{%s\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c",%s\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"}\00", [30 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c", __get_str(%s[%d])\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", REC->%s[%d]\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c", __get_str(%s)\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c", REC->%s\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ftrace_events = external dso_local global %struct.list_head, align 4
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.112 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.113 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.114 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.115 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.116 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.117 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.118 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.119 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.120 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.121 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.122 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.123 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.124 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.125 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.126 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.127 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.128 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.129 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.130 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.131 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.132 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.133 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.134 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.135 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.136 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.137 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.138 = internal global [57 x i64] zeroinitializer
@__llvm_gcov_ctr.139 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.140 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.141 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.142 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.143 = internal global [26 x i64] zeroinitializer
@__llvm_gcov_ctr.144 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.145 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.146 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.147 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.148 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.149 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.150 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.151 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.152 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.153 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.154 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.155 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.156 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.157 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.158 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.159 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.160 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.161 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.162 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.163 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.164 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.165 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.166 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.167 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.168 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.169 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.170 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.171 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.172 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.173 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.174 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.175 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.176 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.177 = internal global [32 x i64] zeroinitializer
@__llvm_gcov_ctr.178 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.179 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.180 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.181 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.182 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.183 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.184 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.185 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.186 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.187 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.188 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.189 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.190 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.191 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.192 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.193 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.194 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.195 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.196 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.197 = internal global [4 x i64] zeroinitializer
@0 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_probe.gcda\00", [33 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [87 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -761931248, i32 1224543753 }, %emit_function_args_ty { i32 1, i32 1217139955, i32 1224543753 }, %emit_function_args_ty { i32 2, i32 727714466, i32 1224543753 }, %emit_function_args_ty { i32 3, i32 541938299, i32 1224543753 }, %emit_function_args_ty { i32 4, i32 -247017562, i32 1224543753 }, %emit_function_args_ty { i32 5, i32 -1785006834, i32 1224543753 }, %emit_function_args_ty { i32 6, i32 830643008, i32 1224543753 }, %emit_function_args_ty { i32 7, i32 1119311238, i32 1224543753 }, %emit_function_args_ty { i32 8, i32 937544687, i32 1224543753 }, %emit_function_args_ty { i32 9, i32 1706586413, i32 1224543753 }, %emit_function_args_ty { i32 10, i32 -374578048, i32 1224543753 }, %emit_function_args_ty { i32 11, i32 -1544411485, i32 1224543753 }, %emit_function_args_ty { i32 12, i32 189962800, i32 1224543753 }, %emit_function_args_ty { i32 13, i32 1807123472, i32 1224543753 }, %emit_function_args_ty { i32 14, i32 -103466465, i32 1224543753 }, %emit_function_args_ty { i32 15, i32 236810036, i32 1224543753 }, %emit_function_args_ty { i32 16, i32 -121878773, i32 1224543753 }, %emit_function_args_ty { i32 17, i32 -955820909, i32 1224543753 }, %emit_function_args_ty { i32 18, i32 720244741, i32 1224543753 }, %emit_function_args_ty { i32 19, i32 1682868866, i32 1224543753 }, %emit_function_args_ty { i32 20, i32 436087400, i32 1224543753 }, %emit_function_args_ty { i32 21, i32 -670822656, i32 1224543753 }, %emit_function_args_ty { i32 22, i32 460453695, i32 1224543753 }, %emit_function_args_ty { i32 23, i32 -1499158623, i32 1224543753 }, %emit_function_args_ty { i32 24, i32 -1901892572, i32 1224543753 }, %emit_function_args_ty { i32 25, i32 -1066695210, i32 1224543753 }, %emit_function_args_ty { i32 26, i32 -523448297, i32 1224543753 }, %emit_function_args_ty { i32 27, i32 -1645491292, i32 1224543753 }, %emit_function_args_ty { i32 28, i32 364970914, i32 1224543753 }, %emit_function_args_ty { i32 29, i32 -1083674541, i32 1224543753 }, %emit_function_args_ty { i32 30, i32 -76885115, i32 1224543753 }, %emit_function_args_ty { i32 31, i32 2092244167, i32 1224543753 }, %emit_function_args_ty { i32 32, i32 1070859451, i32 1224543753 }, %emit_function_args_ty { i32 33, i32 -400554785, i32 1224543753 }, %emit_function_args_ty { i32 34, i32 -132246790, i32 1224543753 }, %emit_function_args_ty { i32 35, i32 -1758282682, i32 1224543753 }, %emit_function_args_ty { i32 36, i32 201613120, i32 1224543753 }, %emit_function_args_ty { i32 37, i32 -1708490279, i32 1224543753 }, %emit_function_args_ty { i32 38, i32 -544580945, i32 1224543753 }, %emit_function_args_ty { i32 39, i32 -481620889, i32 1224543753 }, %emit_function_args_ty { i32 40, i32 -1856728879, i32 1224543753 }, %emit_function_args_ty { i32 41, i32 -547586780, i32 1224543753 }, %emit_function_args_ty { i32 42, i32 181361786, i32 1224543753 }, %emit_function_args_ty { i32 43, i32 1043771267, i32 1224543753 }, %emit_function_args_ty { i32 44, i32 467393255, i32 1224543753 }, %emit_function_args_ty { i32 45, i32 -20435385, i32 1224543753 }, %emit_function_args_ty { i32 46, i32 577304209, i32 1224543753 }, %emit_function_args_ty { i32 47, i32 -1807479858, i32 1224543753 }, %emit_function_args_ty { i32 48, i32 -1520414420, i32 1224543753 }, %emit_function_args_ty { i32 49, i32 215078902, i32 1224543753 }, %emit_function_args_ty { i32 50, i32 1062195387, i32 1224543753 }, %emit_function_args_ty { i32 51, i32 -443816403, i32 1224543753 }, %emit_function_args_ty { i32 52, i32 905978206, i32 1224543753 }, %emit_function_args_ty { i32 53, i32 -2011736816, i32 1224543753 }, %emit_function_args_ty { i32 54, i32 -2055431399, i32 1224543753 }, %emit_function_args_ty { i32 55, i32 -832158144, i32 1224543753 }, %emit_function_args_ty { i32 56, i32 -435248465, i32 1224543753 }, %emit_function_args_ty { i32 57, i32 -373966809, i32 1224543753 }, %emit_function_args_ty { i32 58, i32 997484024, i32 1224543753 }, %emit_function_args_ty { i32 59, i32 682655918, i32 1224543753 }, %emit_function_args_ty { i32 60, i32 -642860353, i32 1224543753 }, %emit_function_args_ty { i32 61, i32 -1274119278, i32 1224543753 }, %emit_function_args_ty { i32 62, i32 812839554, i32 1224543753 }, %emit_function_args_ty { i32 63, i32 -923041819, i32 1224543753 }, %emit_function_args_ty { i32 64, i32 985763153, i32 1224543753 }, %emit_function_args_ty { i32 65, i32 1366964667, i32 1224543753 }, %emit_function_args_ty { i32 66, i32 1532585480, i32 1224543753 }, %emit_function_args_ty { i32 67, i32 -2128825591, i32 1224543753 }, %emit_function_args_ty { i32 68, i32 -117061252, i32 1224543753 }, %emit_function_args_ty { i32 69, i32 -2128255985, i32 1224543753 }, %emit_function_args_ty { i32 70, i32 1473378369, i32 1224543753 }, %emit_function_args_ty { i32 71, i32 707062012, i32 1224543753 }, %emit_function_args_ty { i32 72, i32 954112334, i32 1224543753 }, %emit_function_args_ty { i32 73, i32 579058549, i32 1224543753 }, %emit_function_args_ty { i32 74, i32 651191103, i32 1224543753 }, %emit_function_args_ty { i32 75, i32 -1782918348, i32 1224543753 }, %emit_function_args_ty { i32 76, i32 795548855, i32 1224543753 }, %emit_function_args_ty { i32 77, i32 727036892, i32 1224543753 }, %emit_function_args_ty { i32 78, i32 1841983822, i32 1224543753 }, %emit_function_args_ty { i32 79, i32 1624494247, i32 1224543753 }, %emit_function_args_ty { i32 80, i32 -963894156, i32 1224543753 }, %emit_function_args_ty { i32 81, i32 -986448294, i32 1224543753 }, %emit_function_args_ty { i32 82, i32 -1342645549, i32 1224543753 }, %emit_function_args_ty { i32 83, i32 -1696498604, i32 1224543753 }, %emit_function_args_ty { i32 84, i32 1112388048, i32 1224543753 }, %emit_function_args_ty { i32 85, i32 -567024349, i32 1224543753 }, %emit_function_args_ty { i32 86, i32 1034924534, i32 1224543753 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [87 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.112 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.113 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.114 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.115 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.116 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.117 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.118 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.119 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.120 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.121 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.122 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.123 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.124 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.125 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.126 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.127 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.128 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.129 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.130 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.131 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.132 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.133 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.134 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.135 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.136 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.137 }, %emit_arcs_args_ty { i32 57, ptr @__llvm_gcov_ctr.138 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.139 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.140 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.141 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.142 }, %emit_arcs_args_ty { i32 26, ptr @__llvm_gcov_ctr.143 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.144 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.145 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.146 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.147 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.148 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.149 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.150 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.151 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.152 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.153 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.154 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.155 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.156 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.157 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.158 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.159 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.160 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.161 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.162 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.163 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.164 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.165 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.166 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.167 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.168 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.169 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.170 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.171 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.172 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.173 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.174 }, %emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr.175 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.176 }, %emit_arcs_args_ty { i32 32, ptr @__llvm_gcov_ctr.177 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.178 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.179 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.180 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.181 }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.182 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.183 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.184 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.185 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.186 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.187 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.188 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.189 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.190 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.191 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.192 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.193 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.194 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.195 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.196 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.197 }]
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 21]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 21]
@__sancov_gen_cov_switch_values.200 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.201 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.202 = internal global [8 x i64] [i64 6, i64 8, i64 36, i64 37, i64 43, i64 45, i64 64, i64 92]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@___asan_gen_.207 = private unnamed_addr constant [21 x i8] c"print_type_format_u8\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 41, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant [22 x i8] c"print_type_format_u16\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 42, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [22 x i8] c"print_type_format_u32\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 43, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant [22 x i8] c"print_type_format_u64\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 44, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [21 x i8] c"print_type_format_s8\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 45, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant [22 x i8] c"print_type_format_s16\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 46, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [22 x i8] c"print_type_format_s32\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 47, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [22 x i8] c"print_type_format_s64\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 48, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant [21 x i8] c"print_type_format_x8\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 49, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"print_type_format_x16\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 50, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"print_type_format_x32\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 51, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant [22 x i8] c"print_type_format_x64\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 52, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 56, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant [25 x i8] c"print_type_format_symbol\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 59, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 67, i32 21 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 69, i32 23 }
@___asan_gen_.270 = private unnamed_addr constant [25 x i8] c"print_type_format_string\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 74, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant [16 x i8] c"trace_probe_log\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 143, i32 31 }
@___asan_gen_.276 = private unnamed_addr constant [21 x i8] c"trace_probe_err_text\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 19, i32 20 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 216, i32 24 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 792, i32 38 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1088, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1186, i32 30 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 19, i32 47 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 22, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 23, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 24, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 25, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 26, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 27, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 28, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 29, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 618, i32 18 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 618, i32 48 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 620, i32 38 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 638, i32 28 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 655, i32 32 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 106, i32 10 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 122, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 124, i32 27 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 126, i32 27 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 128, i32 27 }
@___asan_gen_.507 = private unnamed_addr constant [18 x i8] c"probe_fetch_types\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 77, i32 32 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 79, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 88, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 89, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 90, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 91, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 92, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 93, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 95, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 96, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 282, i32 18 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 289, i32 40 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 306, i32 25 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 873, i32 9 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 874, i32 9 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 877, i32 9 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 878, i32 9 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 881, i32 9 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 889, i32 42 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 893, i32 43 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 895, i32 44 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 898, i32 45 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 900, i32 44 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 902, i32 44 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 913, i32 11 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 915, i32 11 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 922, i32 11 }
@___asan_gen_.588 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.589 = private constant [30 x i8] c"../kernel/trace/trace_probe.c\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 924, i32 11 }
@___asan_gen_.591 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [129 x ptr] [ptr @.str, ptr @print_type_format_u8, ptr @print_type_format_u16, ptr @print_type_format_u32, ptr @.str.1, ptr @print_type_format_u64, ptr @.str.2, ptr @print_type_format_s8, ptr @print_type_format_s16, ptr @print_type_format_s32, ptr @.str.3, ptr @print_type_format_s64, ptr @.str.4, ptr @print_type_format_x8, ptr @print_type_format_x16, ptr @print_type_format_x32, ptr @.str.5, ptr @print_type_format_x64, ptr @.str.6, ptr @print_type_format_symbol, ptr @.str.7, ptr @.str.8, ptr @print_type_format_string, ptr @trace_probe_log, ptr @trace_probe_err_text, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @probe_fetch_types, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], section "llvm.metadata"
@1 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_u8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_u16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_u32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_u64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_s8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_s16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_s32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_s64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_x8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_x16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_x32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_x64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_symbol to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_type_format_string to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_probe_log to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_probe_err_text to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_fetch_types to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_u8(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !215 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !218
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !219
  call void @__asan_load1_noabort(i32 %1), !dbg !219
  %2 = load i8, ptr %data, align 1, !dbg !219
  %conv = zext i8 %2 to i32, !dbg !219
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str, i32 noundef %conv) #20, !dbg !219
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !220
  %4 = ptrtoint ptr %full.i to i32, !dbg !220
  call void @__asan_load4_noabort(i32 %4), !dbg !220
  %5 = load i32, ptr %full.i, align 8, !dbg !220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !224
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !224
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !225

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !225
  br label %trace_seq_has_overflowed.exit, !dbg !225

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !226
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !226
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !226
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !226
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !227
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !227
  call void @__asan_load4_noabort(i32 %8), !dbg !227
  %9 = load i32, ptr %len.i.i, align 8, !dbg !227
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !231
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !231
  call void @__asan_load4_noabort(i32 %10), !dbg !231
  %11 = load i32, ptr %size.i.i, align 4, !dbg !231
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !232
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !232
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !225
  br label %trace_seq_has_overflowed.exit, !dbg !225

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !219
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_u16(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !233 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !234
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.113, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.113, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !235
  call void @__asan_load2_noabort(i32 %1), !dbg !235
  %2 = load i16, ptr %data, align 2, !dbg !235
  %conv = zext i16 %2 to i32, !dbg !235
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str, i32 noundef %conv) #20, !dbg !235
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !236
  %4 = ptrtoint ptr %full.i to i32, !dbg !236
  call void @__asan_load4_noabort(i32 %4), !dbg !236
  %5 = load i32, ptr %full.i, align 8, !dbg !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !238
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !238
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !239

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !239
  br label %trace_seq_has_overflowed.exit, !dbg !239

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !240
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !240
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !240
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !240
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !241
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !241
  call void @__asan_load4_noabort(i32 %8), !dbg !241
  %9 = load i32, ptr %len.i.i, align 8, !dbg !241
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !243
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !243
  call void @__asan_load4_noabort(i32 %10), !dbg !243
  %11 = load i32, ptr %size.i.i, align 4, !dbg !243
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !244
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !244
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !239
  br label %trace_seq_has_overflowed.exit, !dbg !239

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !235
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_u32(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !245 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !246
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.114, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !247
  call void @__asan_load4_noabort(i32 %1), !dbg !247
  %2 = load i32, ptr %data, align 4, !dbg !247
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str, i32 noundef %2) #20, !dbg !247
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !248
  %4 = ptrtoint ptr %full.i to i32, !dbg !248
  call void @__asan_load4_noabort(i32 %4), !dbg !248
  %5 = load i32, ptr %full.i, align 8, !dbg !248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !250
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !250
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !251

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !251
  br label %trace_seq_has_overflowed.exit, !dbg !251

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !252
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !252
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !252
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !252
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !253
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !253
  call void @__asan_load4_noabort(i32 %8), !dbg !253
  %9 = load i32, ptr %len.i.i, align 8, !dbg !253
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !255
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !255
  call void @__asan_load4_noabort(i32 %10), !dbg !255
  %11 = load i32, ptr %size.i.i, align 4, !dbg !255
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !256
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !256
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !251
  br label %trace_seq_has_overflowed.exit, !dbg !251

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !247
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_u64(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !257 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !258
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.115, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.115, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !259
  call void @__asan_load8_noabort(i32 %1), !dbg !259
  %2 = load i64, ptr %data, align 8, !dbg !259
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i64 noundef %2) #20, !dbg !259
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !260
  %4 = ptrtoint ptr %full.i to i32, !dbg !260
  call void @__asan_load4_noabort(i32 %4), !dbg !260
  %5 = load i32, ptr %full.i, align 8, !dbg !260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !262
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !262
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !263

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !263
  br label %trace_seq_has_overflowed.exit, !dbg !263

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !264
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !264
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !264
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !264
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !265
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !265
  call void @__asan_load4_noabort(i32 %8), !dbg !265
  %9 = load i32, ptr %len.i.i, align 8, !dbg !265
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !267
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !267
  call void @__asan_load4_noabort(i32 %10), !dbg !267
  %11 = load i32, ptr %size.i.i, align 4, !dbg !267
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !268
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !268
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !263
  br label %trace_seq_has_overflowed.exit, !dbg !263

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !259
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_s8(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !269 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !270
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.116, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.116, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !271
  call void @__asan_load1_noabort(i32 %1), !dbg !271
  %2 = load i8, ptr %data, align 1, !dbg !271
  %conv = sext i8 %2 to i32, !dbg !271
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, i32 noundef %conv) #20, !dbg !271
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !272
  %4 = ptrtoint ptr %full.i to i32, !dbg !272
  call void @__asan_load4_noabort(i32 %4), !dbg !272
  %5 = load i32, ptr %full.i, align 8, !dbg !272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !274
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !274
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !275

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !275
  br label %trace_seq_has_overflowed.exit, !dbg !275

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !276
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !276
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !276
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !276
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !277
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !277
  call void @__asan_load4_noabort(i32 %8), !dbg !277
  %9 = load i32, ptr %len.i.i, align 8, !dbg !277
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !279
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !279
  call void @__asan_load4_noabort(i32 %10), !dbg !279
  %11 = load i32, ptr %size.i.i, align 4, !dbg !279
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !280
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !280
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !275
  br label %trace_seq_has_overflowed.exit, !dbg !275

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !271
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_s16(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !281 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !282
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.117, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.117, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !283
  call void @__asan_load2_noabort(i32 %1), !dbg !283
  %2 = load i16, ptr %data, align 2, !dbg !283
  %conv = sext i16 %2 to i32, !dbg !283
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, i32 noundef %conv) #20, !dbg !283
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !284
  %4 = ptrtoint ptr %full.i to i32, !dbg !284
  call void @__asan_load4_noabort(i32 %4), !dbg !284
  %5 = load i32, ptr %full.i, align 8, !dbg !284
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !286
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !286
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !287

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !287
  br label %trace_seq_has_overflowed.exit, !dbg !287

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !288
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !288
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !288
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !288
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !289
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !289
  call void @__asan_load4_noabort(i32 %8), !dbg !289
  %9 = load i32, ptr %len.i.i, align 8, !dbg !289
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !291
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !291
  call void @__asan_load4_noabort(i32 %10), !dbg !291
  %11 = load i32, ptr %size.i.i, align 4, !dbg !291
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !292
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !292
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !287
  br label %trace_seq_has_overflowed.exit, !dbg !287

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !283
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_s32(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !293 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !294
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.118, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.118, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !295
  call void @__asan_load4_noabort(i32 %1), !dbg !295
  %2 = load i32, ptr %data, align 4, !dbg !295
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, i32 noundef %2) #20, !dbg !295
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !296
  %4 = ptrtoint ptr %full.i to i32, !dbg !296
  call void @__asan_load4_noabort(i32 %4), !dbg !296
  %5 = load i32, ptr %full.i, align 8, !dbg !296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !298
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !298
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !299

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !299
  br label %trace_seq_has_overflowed.exit, !dbg !299

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !300
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !300
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !300
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !300
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !301
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !301
  call void @__asan_load4_noabort(i32 %8), !dbg !301
  %9 = load i32, ptr %len.i.i, align 8, !dbg !301
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !303
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !303
  call void @__asan_load4_noabort(i32 %10), !dbg !303
  %11 = load i32, ptr %size.i.i, align 4, !dbg !303
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !304
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !304
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !299
  br label %trace_seq_has_overflowed.exit, !dbg !299

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !295
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_s64(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !305 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !306
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.119, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !307
  call void @__asan_load8_noabort(i32 %1), !dbg !307
  %2 = load i64, ptr %data, align 8, !dbg !307
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i64 noundef %2) #20, !dbg !307
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !308
  %4 = ptrtoint ptr %full.i to i32, !dbg !308
  call void @__asan_load4_noabort(i32 %4), !dbg !308
  %5 = load i32, ptr %full.i, align 8, !dbg !308
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !310
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !310
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !311

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !311
  br label %trace_seq_has_overflowed.exit, !dbg !311

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !312
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !312
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !312
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !312
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !313
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !313
  call void @__asan_load4_noabort(i32 %8), !dbg !313
  %9 = load i32, ptr %len.i.i, align 8, !dbg !313
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !315
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !315
  call void @__asan_load4_noabort(i32 %10), !dbg !315
  %11 = load i32, ptr %size.i.i, align 4, !dbg !315
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !316
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !316
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !311
  br label %trace_seq_has_overflowed.exit, !dbg !311

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !307
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_x8(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !317 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !318
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.120, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.120, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !319
  call void @__asan_load1_noabort(i32 %1), !dbg !319
  %2 = load i8, ptr %data, align 1, !dbg !319
  %conv = zext i8 %2 to i32, !dbg !319
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.4, i32 noundef %conv) #20, !dbg !319
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !320
  %4 = ptrtoint ptr %full.i to i32, !dbg !320
  call void @__asan_load4_noabort(i32 %4), !dbg !320
  %5 = load i32, ptr %full.i, align 8, !dbg !320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !322
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !322
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !323

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !323
  br label %trace_seq_has_overflowed.exit, !dbg !323

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !324
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !324
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !324
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !324
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !325
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !325
  call void @__asan_load4_noabort(i32 %8), !dbg !325
  %9 = load i32, ptr %len.i.i, align 8, !dbg !325
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !327
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !327
  call void @__asan_load4_noabort(i32 %10), !dbg !327
  %11 = load i32, ptr %size.i.i, align 4, !dbg !327
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !328
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !328
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !323
  br label %trace_seq_has_overflowed.exit, !dbg !323

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !319
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_x16(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !329 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !330
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.121, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !331
  call void @__asan_load2_noabort(i32 %1), !dbg !331
  %2 = load i16, ptr %data, align 2, !dbg !331
  %conv = zext i16 %2 to i32, !dbg !331
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.4, i32 noundef %conv) #20, !dbg !331
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !332
  %4 = ptrtoint ptr %full.i to i32, !dbg !332
  call void @__asan_load4_noabort(i32 %4), !dbg !332
  %5 = load i32, ptr %full.i, align 8, !dbg !332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !334
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !334
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !335

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !335
  br label %trace_seq_has_overflowed.exit, !dbg !335

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !336
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !336
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !336
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !336
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !337
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !337
  call void @__asan_load4_noabort(i32 %8), !dbg !337
  %9 = load i32, ptr %len.i.i, align 8, !dbg !337
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !339
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !339
  call void @__asan_load4_noabort(i32 %10), !dbg !339
  %11 = load i32, ptr %size.i.i, align 4, !dbg !339
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !340
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !340
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !335
  br label %trace_seq_has_overflowed.exit, !dbg !335

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !331
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_x32(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !341 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !342
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.122, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.122, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !343
  call void @__asan_load4_noabort(i32 %1), !dbg !343
  %2 = load i32, ptr %data, align 4, !dbg !343
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.4, i32 noundef %2) #20, !dbg !343
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !344
  %4 = ptrtoint ptr %full.i to i32, !dbg !344
  call void @__asan_load4_noabort(i32 %4), !dbg !344
  %5 = load i32, ptr %full.i, align 8, !dbg !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !346
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !346
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !347

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !347
  br label %trace_seq_has_overflowed.exit, !dbg !347

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !348
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !348
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !348
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !348
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !349
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !349
  call void @__asan_load4_noabort(i32 %8), !dbg !349
  %9 = load i32, ptr %len.i.i, align 8, !dbg !349
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !351
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !351
  call void @__asan_load4_noabort(i32 %10), !dbg !351
  %11 = load i32, ptr %size.i.i, align 4, !dbg !351
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !352
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !352
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !347
  br label %trace_seq_has_overflowed.exit, !dbg !347

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !343
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_x64(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !353 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !354
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.123, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.123, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !355
  call void @__asan_load8_noabort(i32 %1), !dbg !355
  %2 = load i64, ptr %data, align 8, !dbg !355
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, i64 noundef %2) #20, !dbg !355
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !356
  %4 = ptrtoint ptr %full.i to i32, !dbg !356
  call void @__asan_load4_noabort(i32 %4), !dbg !356
  %5 = load i32, ptr %full.i, align 8, !dbg !356
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5), !dbg !358
  %tobool.not.i = icmp eq i32 %5, 0, !dbg !358
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !359

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !359
  br label %trace_seq_has_overflowed.exit, !dbg !359

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !360
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !360
  %6 = add i64 %gcov_ctr1.i, 1, !dbg !360
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !360
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !361
  %8 = ptrtoint ptr %len.i.i to i32, !dbg !361
  call void @__asan_load4_noabort(i32 %8), !dbg !361
  %9 = load i32, ptr %len.i.i, align 8, !dbg !361
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !363
  %10 = ptrtoint ptr %size.i.i to i32, !dbg !363
  call void @__asan_load4_noabort(i32 %10), !dbg !363
  %11 = load i32, ptr %size.i.i, align 4, !dbg !363
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11), !dbg !364
  %cmp.i.i = icmp ule i32 %9, %11, !dbg !364
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !359
  br label %trace_seq_has_overflowed.exit, !dbg !359

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %12 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %12, !dbg !355
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_symbol(ptr noundef %s, ptr nocapture noundef readonly %data, ptr nocapture readnone %ent) #0 align 64 !dbg !365 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !366
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.124, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.124, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !367
  call void @__asan_load4_noabort(i32 %1), !dbg !367
  %2 = load i32, ptr %data, align 4, !dbg !367
  %3 = inttoptr i32 %2 to ptr, !dbg !368
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.6, ptr noundef %3) #20, !dbg !369
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !370
  %5 = ptrtoint ptr %full.i to i32, !dbg !370
  call void @__asan_load4_noabort(i32 %5), !dbg !370
  %6 = load i32, ptr %full.i, align 8, !dbg !370
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !372
  %tobool.not.i = icmp eq i32 %6, 0, !dbg !372
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.trace_seq_has_overflowed.exit_crit_edge, !dbg !373

entry.trace_seq_has_overflowed.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !373
  br label %trace_seq_has_overflowed.exit, !dbg !373

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !374
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !374
  %7 = add i64 %gcov_ctr1.i, 1, !dbg !374
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !374
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %8 = add i64 %gcov_ctr.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !375
  %9 = ptrtoint ptr %len.i.i to i32, !dbg !375
  call void @__asan_load4_noabort(i32 %9), !dbg !375
  %10 = load i32, ptr %len.i.i, align 8, !dbg !375
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !377
  %11 = ptrtoint ptr %size.i.i to i32, !dbg !377
  call void @__asan_load4_noabort(i32 %11), !dbg !377
  %12 = load i32, ptr %size.i.i, align 4, !dbg !377
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12), !dbg !378
  %cmp.i.i = icmp ule i32 %10, %12, !dbg !378
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !373
  br label %trace_seq_has_overflowed.exit, !dbg !373

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %entry.trace_seq_has_overflowed.exit_crit_edge
  %13 = phi i32 [ 0, %entry.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %13, !dbg !379
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @print_type_string(ptr noundef %s, ptr nocapture noundef readonly %data, ptr noundef %ent) #0 align 64 !dbg !380 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !381
  %0 = ptrtoint ptr %data to i32, !dbg !382
  call void @__asan_load4_noabort(i32 %0), !dbg !382
  %1 = load i32, ptr %data, align 4, !dbg !382
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1), !dbg !383
  %tobool.not = icmp ult i32 %1, 65536, !dbg !383
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !385
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.125, align 8, !dbg !385
  %2 = add i64 %gcov_ctr, 1, !dbg !385
  store i64 %2, ptr @__llvm_gcov_ctr.125, align 8, !dbg !385
  tail call void @trace_seq_puts(ptr noundef %s, ptr noundef nonnull @.str.7) #20, !dbg !386
  br label %if.end, !dbg !386

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !387
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 1), align 8, !dbg !387
  %3 = add i64 %gcov_ctr2, 1, !dbg !387
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 1), align 8, !dbg !387
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.126, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.126, align 8
  %5 = ptrtoint ptr %data to i32, !dbg !388
  call void @__asan_load4_noabort(i32 %5), !dbg !388
  %6 = load i32, ptr %data, align 4, !dbg !388
  %and.i = and i32 %6, 65535, !dbg !388
  %add.ptr.i = getelementptr i8, ptr %ent, i32 %and.i, !dbg !392
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef %add.ptr.i) #20, !dbg !393
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %gcov_ctr.i6 = load i64, ptr @__llvm_gcov_ctr.112, align 8
  %7 = add i64 %gcov_ctr.i6, 1
  store i64 %7, ptr @__llvm_gcov_ctr.112, align 8
  %full.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 2, !dbg !394
  %8 = ptrtoint ptr %full.i to i32, !dbg !394
  call void @__asan_load4_noabort(i32 %8), !dbg !394
  %9 = load i32, ptr %full.i, align 8, !dbg !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9), !dbg !396
  %tobool.not.i = icmp eq i32 %9, 0, !dbg !396
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end.trace_seq_has_overflowed.exit_crit_edge, !dbg !397

if.end.trace_seq_has_overflowed.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !397
  br label %trace_seq_has_overflowed.exit, !dbg !397

lor.rhs.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !398
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !398
  %10 = add i64 %gcov_ctr1.i, 1, !dbg !398
  store i64 %10, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !398
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.173, align 8
  %11 = add i64 %gcov_ctr.i.i, 1
  store i64 %11, ptr @__llvm_gcov_ctr.173, align 8
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 2, !dbg !399
  %12 = ptrtoint ptr %len.i.i to i32, !dbg !399
  call void @__asan_load4_noabort(i32 %12), !dbg !399
  %13 = load i32, ptr %len.i.i, align 8, !dbg !399
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %s, i32 0, i32 1, i32 1, !dbg !401
  %14 = ptrtoint ptr %size.i.i to i32, !dbg !401
  call void @__asan_load4_noabort(i32 %14), !dbg !401
  %15 = load i32, ptr %size.i.i, align 4, !dbg !401
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15), !dbg !402
  %cmp.i.i = icmp ule i32 %13, %15, !dbg !402
  %phi.cast = zext i1 %cmp.i.i to i32, !dbg !397
  br label %trace_seq_has_overflowed.exit, !dbg !397

trace_seq_has_overflowed.exit:                    ; preds = %lor.rhs.i, %if.end.trace_seq_has_overflowed.exit_crit_edge
  %16 = phi i32 [ 0, %if.end.trace_seq_has_overflowed.exit_crit_edge ], [ %phi.cast, %lor.rhs.i ]
  ret i32 %16, !dbg !403
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @trace_probe_log_init(ptr noundef %subsystem, i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #3 align 64 !dbg !404 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !405
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.127, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.127, align 8
  store ptr %subsystem, ptr @trace_probe_log, align 4, !dbg !406
  store i32 %argc, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 2), align 4, !dbg !407
  store ptr %argv, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 1), align 4, !dbg !408
  store i32 0, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 3), align 4, !dbg !409
  ret void, !dbg !410
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @trace_probe_log_clear() local_unnamed_addr #4 align 64 !dbg !411 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !412
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.128, align 8, !dbg !413
  %0 = add i64 %gcov_ctr, 1, !dbg !413
  store i64 %0, ptr @__llvm_gcov_ctr.128, align 8, !dbg !413
  %1 = call ptr @memset(ptr @trace_probe_log, i32 0, i32 16), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @trace_probe_log_set_index(i32 noundef %index) local_unnamed_addr #3 align 64 !dbg !415 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !416
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.129, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.129, align 8
  store i32 %index, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 3), align 4, !dbg !417
  ret void, !dbg !418
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__trace_probe_log_err(i32 noundef %offset, i32 noundef %err_type) local_unnamed_addr #0 align 64 !dbg !419 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !420
  %0 = load ptr, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 1), align 4, !dbg !421
  %tobool.not = icmp eq ptr %0, null, !dbg !422
  br i1 %tobool.not, label %if.then, label %for.cond.preheader, !dbg !423

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !424
  %cmp59 = icmp sgt i32 %1, 0, !dbg !424
  br i1 %cmp59, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge, !dbg !425

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19, !dbg !425
  br label %for.end, !dbg !425

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %2 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 3), align 4
  br label %for.body, !dbg !425

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !426
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.130, align 16
  %3 = add i64 %gcov_ctr, 1
  store i64 %3, ptr @__llvm_gcov_ctr.130, align 16
  br label %cleanup, !dbg !427

for.body:                                         ; preds = %if.end3.for.body_crit_edge, %for.body.lr.ph
  %pos.062 = phi i32 [ 0, %for.body.lr.ph ], [ %pos.1, %if.end3.for.body_crit_edge ]
  %len.061 = phi i32 [ 0, %for.body.lr.ph ], [ %add4, %if.end3.for.body_crit_edge ]
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end3.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.060, i32 %2), !dbg !428
  %cmp1 = icmp eq i32 %i.060, %2, !dbg !428
  br i1 %cmp1, label %if.then2, label %for.body.if.end3_crit_edge, !dbg !429

for.body.if.end3_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !429
  br label %if.end3, !dbg !429

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !430
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 1), align 8, !dbg !430
  %4 = add i64 %gcov_ctr31, 1, !dbg !430
  store i64 %4, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 1), align 8, !dbg !430
  br label %if.end3, !dbg !431

if.end3:                                          ; preds = %if.then2, %for.body.if.end3_crit_edge
  %pos.1 = phi i32 [ %len.061, %if.then2 ], [ %pos.062, %for.body.if.end3_crit_edge ], !dbg !426
  %arrayidx = getelementptr ptr, ptr %0, i32 %i.060, !dbg !432
  %5 = ptrtoint ptr %arrayidx to i32, !dbg !432
  call void @__asan_load4_noabort(i32 %5), !dbg !432
  %6 = load ptr, ptr %arrayidx, align 4, !dbg !432
  %call = tail call i32 @strlen(ptr noundef %6) #21, !dbg !433
  %add = add i32 %len.061, 1, !dbg !434
  %add4 = add i32 %add, %call, !dbg !435
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 2), align 16, !dbg !436
  %7 = add i64 %gcov_ctr32, 1, !dbg !436
  store i64 %7, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 2), align 16, !dbg !436
  %inc = add nuw nsw i32 %i.060, 1, !dbg !436
  %exitcond.not = icmp eq i32 %inc, %1, !dbg !424
  br i1 %exitcond.not, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge, !dbg !425, !llvm.loop !437

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19, !dbg !425
  br label %for.body, !dbg !425

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19, !dbg !425
  br label %for.end, !dbg !425

for.end:                                          ; preds = %if.end3.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add4, %if.end3.for.end_crit_edge ], !dbg !426
  %pos.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %pos.1, %if.end3.for.end_crit_edge ], !dbg !426
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.131, align 8
  %8 = add i64 %gcov_ctr.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.131, align 8
  %gcov_ctr12.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !439
  %9 = add i64 %gcov_ctr12.i.i, 1, !dbg !439
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !439
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len.0.lcssa, i32 noundef 3520) #22, !dbg !445
  %tobool6.not = icmp eq ptr %call9.i.i, null, !dbg !446
  br i1 %tobool6.not, label %if.then7, label %if.end8, !dbg !447

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !426
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 4), align 16
  %10 = add i64 %gcov_ctr34, 1
  store i64 %10, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 4), align 16
  br label %cleanup, !dbg !448

if.end8:                                          ; preds = %for.end
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 3), align 8, !dbg !449
  %11 = add i64 %gcov_ctr33, 1, !dbg !449
  store i64 %11, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 3), align 8, !dbg !449
  %12 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 3), align 4, !dbg !449
  %13 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 2), align 4, !dbg !450
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13), !dbg !451
  %cmp9.not = icmp slt i32 %12, %13, !dbg !451
  br i1 %cmp9.not, label %if.end8.if.end11_crit_edge, label %if.then10, !dbg !452

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19, !dbg !452
  br label %if.end11, !dbg !452

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19, !dbg !453
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 5), align 8, !dbg !453
  %14 = add i64 %gcov_ctr35, 1, !dbg !453
  store i64 %14, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 5), align 8, !dbg !453
  %.pr = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 2), align 4, !dbg !454
  br label %if.end11, !dbg !455

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %15 = phi i32 [ %.pr, %if.then10 ], [ %13, %if.end8.if.end11_crit_edge ], !dbg !454
  %offset.addr.0 = phi i32 [ 0, %if.then10 ], [ %offset, %if.end8.if.end11_crit_edge ]
  %pos.2 = phi i32 [ %len.0.lcssa, %if.then10 ], [ %pos.0.lcssa, %if.end8.if.end11_crit_edge ], !dbg !426
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15), !dbg !456
  %cmp1364 = icmp sgt i32 %15, 0, !dbg !456
  br i1 %cmp1364, label %for.body14.preheader, label %if.end11.for.end23_crit_edge, !dbg !457

if.end11.for.end23_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19, !dbg !457
  br label %for.end23, !dbg !457

for.body14.preheader:                             ; preds = %if.end11
  %16 = load ptr, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 1), align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.trace_probe_log, ptr @trace_probe_log, i32 0, i32 2), align 4
  br label %for.body14, !dbg !457

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.preheader
  %i.166 = phi i32 [ %inc22, %for.body14.for.body14_crit_edge ], [ 0, %for.body14.preheader ]
  %p.065 = phi ptr [ %add.ptr, %for.body14.for.body14_crit_edge ], [ %call9.i.i, %for.body14.preheader ]
  %arrayidx15 = getelementptr ptr, ptr %16, i32 %i.166, !dbg !458
  %18 = ptrtoint ptr %arrayidx15 to i32, !dbg !458
  call void @__asan_load4_noabort(i32 %18), !dbg !458
  %19 = load ptr, ptr %arrayidx15, align 4, !dbg !458
  %call16 = tail call i32 @strlen(ptr noundef %19) #21, !dbg !459
  %call18 = tail call ptr @strcpy(ptr noundef %p.065, ptr noundef %19) #21, !dbg !460
  %arrayidx19 = getelementptr i8, ptr %p.065, i32 %call16, !dbg !461
  %20 = ptrtoint ptr %arrayidx19 to i32, !dbg !462
  call void @__asan_store1_noabort(i32 %20), !dbg !462
  store i8 32, ptr %arrayidx19, align 1, !dbg !462
  %add20 = add i32 %call16, 1, !dbg !463
  %add.ptr = getelementptr i8, ptr %p.065, i32 %add20, !dbg !464
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 6), align 16, !dbg !465
  %21 = add i64 %gcov_ctr36, 1, !dbg !465
  store i64 %21, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.130, i32 0, i32 6), align 16, !dbg !465
  %inc22 = add nuw nsw i32 %i.166, 1, !dbg !465
  %cmp13 = icmp slt i32 %inc22, %17, !dbg !456
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.body14.for.end23_crit_edge, !dbg !457, !llvm.loop !466

for.body14.for.end23_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #19, !dbg !457
  br label %for.end23, !dbg !457

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #19, !dbg !457
  br label %for.body14, !dbg !457

for.end23:                                        ; preds = %for.body14.for.end23_crit_edge, %if.end11.for.end23_crit_edge
  %p.0.lcssa = phi ptr [ %call9.i.i, %if.end11.for.end23_crit_edge ], [ %add.ptr, %for.body14.for.end23_crit_edge ], !dbg !426
  %add.ptr24 = getelementptr i8, ptr %p.0.lcssa, i32 -1, !dbg !468
  %22 = ptrtoint ptr %add.ptr24 to i32, !dbg !469
  call void @__asan_store1_noabort(i32 %22), !dbg !469
  store i8 0, ptr %add.ptr24, align 1, !dbg !469
  %23 = load ptr, ptr @trace_probe_log, align 4, !dbg !470
  %conv = trunc i32 %err_type to i8, !dbg !471
  %add25 = add i32 %pos.2, %offset.addr.0, !dbg !472
  %conv26 = trunc i32 %add25 to i8, !dbg !473
  tail call void @tracing_log_err(ptr noundef null, ptr noundef %23, ptr noundef nonnull %call9.i.i, ptr noundef nonnull @trace_probe_err_text, i8 noundef zeroext %conv, i8 noundef zeroext %conv26) #20, !dbg !474
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #20, !dbg !475
  br label %cleanup, !dbg !476

cleanup:                                          ; preds = %for.end23, %if.then7, %if.then
  ret void, !dbg !476
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_log_err(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @traceprobe_split_symbol_offset(ptr noundef %symbol, ptr noundef %offset) local_unnamed_addr #0 align 64 !dbg !477 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !478
  %tobool.not = icmp eq ptr %offset, null, !dbg !479
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !480

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !481
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.132, align 16, !dbg !481
  %0 = add i64 %gcov_ctr, 1, !dbg !481
  store i64 %0, ptr @__llvm_gcov_ctr.132, align 16, !dbg !481
  br label %cleanup, !dbg !481

if.end:                                           ; preds = %entry
  %call = tail call ptr @strpbrk(ptr noundef %symbol, ptr noundef nonnull @.str.9), !dbg !482
  %tobool1.not = icmp eq ptr %call, null, !dbg !483
  br i1 %tobool1.not, label %if.else, label %if.then2, !dbg !483

if.then2:                                         ; preds = %if.end
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.133, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.133, align 8
  %call.i = tail call i32 @_kstrtol(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %offset) #20, !dbg !484
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !488
  %tobool4.not = icmp eq i32 %call.i, 0, !dbg !488
  br i1 %tobool4.not, label %if.end6, label %if.then5, !dbg !488

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19, !dbg !489
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 2), align 16, !dbg !489
  %2 = add i64 %gcov_ctr10, 1, !dbg !489
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 2), align 16, !dbg !489
  br label %cleanup, !dbg !490

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19, !dbg !491
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 1), align 8, !dbg !491
  %3 = add i64 %gcov_ctr9, 1, !dbg !491
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 1), align 8, !dbg !491
  %4 = ptrtoint ptr %call to i32, !dbg !492
  call void @__asan_store1_noabort(i32 %4), !dbg !492
  store i8 0, ptr %call, align 1, !dbg !492
  br label %cleanup, !dbg !493

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !494
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 3), align 8, !dbg !494
  %5 = add i64 %gcov_ctr11, 1, !dbg !494
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 3), align 8, !dbg !494
  %6 = ptrtoint ptr %offset to i32, !dbg !495
  call void @__asan_store4_noabort(i32 %6), !dbg !495
  store i32 0, ptr %offset, align 4, !dbg !495
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end6, %if.then5, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ -22, %if.then ], [ 0, %if.else ], [ 0, %if.end6 ], !dbg !496
  ret i32 %retval.0, !dbg !497
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @traceprobe_parse_event_name(ptr nocapture noundef %pevent, ptr nocapture noundef writeonly %pgroup, ptr noundef %buf, i32 noundef %offset) local_unnamed_addr #0 align 64 !dbg !498 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !499
  %0 = ptrtoint ptr %pevent to i32, !dbg !500
  call void @__asan_load4_noabort(i32 %0), !dbg !500
  %1 = load ptr, ptr %pevent, align 4, !dbg !500
  %call = tail call ptr @strchr(ptr noundef %1, i32 noundef 47), !dbg !501
  %tobool.not = icmp eq ptr %call, null, !dbg !502
  br i1 %tobool.not, label %if.end, label %entry.if.then3_crit_edge, !dbg !503

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !503
  br label %if.then3, !dbg !503

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.134, align 16, !dbg !504
  %2 = add i64 %gcov_ctr, 1, !dbg !504
  store i64 %2, ptr @__llvm_gcov_ctr.134, align 16, !dbg !504
  %call1 = tail call ptr @strchr(ptr noundef %1, i32 noundef 46), !dbg !505
  %tobool2.not = icmp eq ptr %call1, null, !dbg !506
  br i1 %tobool2.not, label %if.end.if.end22_crit_edge, label %if.end.if.then3_crit_edge, !dbg !506

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !506
  br label %if.then3, !dbg !506

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !506
  br label %if.end22, !dbg !506

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %slash.0106 = phi ptr [ %call1, %if.end.if.then3_crit_edge ], [ %call, %entry.if.then3_crit_edge ]
  %cmp = icmp eq ptr %slash.0106, %1, !dbg !507
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !508

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19, !dbg !509
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !509
  %3 = add i64 %gcov_ctr35, 1, !dbg !509
  store i64 %3, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 1), align 8, !dbg !509
  tail call void @__trace_probe_log_err(i32 noundef %offset, i32 noundef 12), !dbg !509
  br label %cleanup, !dbg !510

if.end5:                                          ; preds = %if.then3
  %sub.ptr.lhs.cast = ptrtoint ptr %slash.0106 to i32, !dbg !511
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32, !dbg !511
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !511
  %add = add i32 %sub.ptr.sub, 1, !dbg !512
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add), !dbg !513
  %cmp6 = icmp sgt i32 %add, 64, !dbg !513
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !514

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19, !dbg !515
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !515
  %4 = add i64 %gcov_ctr36, 1, !dbg !515
  store i64 %4, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 2), align 16, !dbg !515
  tail call void @__trace_probe_log_err(i32 noundef %offset, i32 noundef 13), !dbg !515
  br label %cleanup, !dbg !516

if.end8:                                          ; preds = %if.end5
  %call13 = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef %1, i32 noundef %add) #20, !dbg !517
  %5 = ptrtoint ptr %buf to i32, !dbg !518
  call void @__asan_load1_noabort(i32 %5), !dbg !518
  %6 = load i8, ptr %buf, align 1, !dbg !518
  %conv.i = zext i8 %6 to i32, !dbg !518
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i, !dbg !518
  %7 = ptrtoint ptr %arrayidx.i to i32, !dbg !518
  call void @__asan_load1_noabort(i32 %7), !dbg !518
  %8 = load i8, ptr %arrayidx.i, align 1, !dbg !518
  %9 = and i8 %8, 3, !dbg !518
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9), !dbg !518
  %cmp.not.i = icmp eq i8 %9, 0, !dbg !518
  br i1 %cmp.not.i, label %land.lhs.true.i, label %if.end8.if.end.i_crit_edge, !dbg !522

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19, !dbg !522
  br label %if.end.i, !dbg !522

land.lhs.true.i:                                  ; preds = %if.end8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.135, align 16, !dbg !523
  %10 = add i64 %gcov_ctr.i, 1, !dbg !523
  store i64 %10, ptr @__llvm_gcov_ctr.135, align 16, !dbg !523
  %11 = ptrtoint ptr %buf to i32, !dbg !524
  call void @__asan_load1_noabort(i32 %11), !dbg !524
  %12 = load i8, ptr %buf, align 1, !dbg !524
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %12), !dbg !525
  %cmp4.not.i = icmp eq i8 %12, 95, !dbg !525
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i, !dbg !526

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !526
  br label %if.end.i, !dbg !526

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !527
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !527
  %13 = add i64 %gcov_ctr23.i, 1, !dbg !527
  store i64 %13, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !527
  br label %if.then15, !dbg !527

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end8.if.end.i_crit_edge
  %incdec.ptr35.i = getelementptr i8, ptr %buf, i32 1, !dbg !528
  %14 = ptrtoint ptr %incdec.ptr35.i to i32, !dbg !529
  call void @__asan_load1_noabort(i32 %14), !dbg !529
  %15 = load i8, ptr %incdec.ptr35.i, align 1, !dbg !529
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15), !dbg !530
  %cmp7.not36.i = icmp eq i8 %15, 0, !dbg !530
  br i1 %cmp7.not36.i, label %if.end.i.if.end16_crit_edge, label %if.end.i.while.body.i_crit_edge, !dbg !531

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i, !dbg !531

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !531
  br label %if.end16, !dbg !531

while.body.i:                                     ; preds = %if.end22.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %16 = phi i8 [ %31, %if.end22.i.while.body.i_crit_edge ], [ %15, %if.end.i.while.body.i_crit_edge ]
  %incdec.ptr37.i = phi ptr [ %incdec.ptr.i, %if.end22.i.while.body.i_crit_edge ], [ %incdec.ptr35.i, %if.end.i.while.body.i_crit_edge ]
  %conv6.i = zext i8 %16 to i32, !dbg !529
  %arrayidx10.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6.i, !dbg !532
  %17 = ptrtoint ptr %arrayidx10.i to i32, !dbg !532
  call void @__asan_load1_noabort(i32 %17), !dbg !532
  %18 = load i8, ptr %arrayidx10.i, align 1, !dbg !532
  %19 = and i8 %18, 3, !dbg !532
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19), !dbg !532
  %cmp13.not.i = icmp eq i8 %19, 0, !dbg !532
  br i1 %cmp13.not.i, label %land.lhs.true15.i, label %while.body.i.if.end22.i_crit_edge, !dbg !533

while.body.i.if.end22.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !533
  br label %if.end22.i, !dbg !533

land.lhs.true15.i:                                ; preds = %while.body.i
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !534
  %20 = add i64 %gcov_ctr24.i, 1, !dbg !534
  store i64 %20, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !534
  %21 = ptrtoint ptr %incdec.ptr37.i to i32, !dbg !535
  call void @__asan_load1_noabort(i32 %21), !dbg !535
  %22 = load i8, ptr %incdec.ptr37.i, align 1, !dbg !535
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.174, align 8
  %23 = add i64 %gcov_ctr.i.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.174, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %22), !dbg !536
  %cmp.i.i = icmp ugt i8 %22, 47, !dbg !536
  br i1 %cmp.i.i, label %isdigit.exit.i, label %land.lhs.true15.i.land.lhs.true17.i_crit_edge, !dbg !540

land.lhs.true15.i.land.lhs.true17.i_crit_edge:    ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !540
  br label %land.lhs.true17.i, !dbg !540

isdigit.exit.i:                                   ; preds = %land.lhs.true15.i
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !541
  %24 = add i64 %gcov_ctr2.i.i, 1, !dbg !541
  store i64 %24, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !541
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %22), !dbg !542
  %cmp1.i.i = icmp ugt i8 %22, 57, !dbg !542
  br i1 %cmp1.i.i, label %isdigit.exit.i.land.lhs.true17.i_crit_edge, label %isdigit.exit.i.if.end22.i_crit_edge, !dbg !543

isdigit.exit.i.if.end22.i_crit_edge:              ; preds = %isdigit.exit.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !543
  br label %if.end22.i, !dbg !543

isdigit.exit.i.land.lhs.true17.i_crit_edge:       ; preds = %isdigit.exit.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !543
  br label %land.lhs.true17.i, !dbg !543

land.lhs.true17.i:                                ; preds = %isdigit.exit.i.land.lhs.true17.i_crit_edge, %land.lhs.true15.i.land.lhs.true17.i_crit_edge
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !544
  %25 = add i64 %gcov_ctr25.i, 1, !dbg !544
  store i64 %25, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !544
  %26 = ptrtoint ptr %incdec.ptr37.i to i32, !dbg !545
  call void @__asan_load1_noabort(i32 %26), !dbg !545
  %27 = load i8, ptr %incdec.ptr37.i, align 1, !dbg !545
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %27), !dbg !546
  %cmp19.not.i = icmp eq i8 %27, 95, !dbg !546
  br i1 %cmp19.not.i, label %land.lhs.true17.i.if.end22.i_crit_edge, label %if.then21.i, !dbg !547

land.lhs.true17.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !547
  br label %if.end22.i, !dbg !547

if.then21.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !548
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !548
  %28 = add i64 %gcov_ctr26.i, 1, !dbg !548
  store i64 %28, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !548
  br label %if.then15, !dbg !548

if.end22.i:                                       ; preds = %land.lhs.true17.i.if.end22.i_crit_edge, %isdigit.exit.i.if.end22.i_crit_edge, %while.body.i.if.end22.i_crit_edge
  %gcov_ctr27.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !531
  %29 = add i64 %gcov_ctr27.i, 1, !dbg !531
  store i64 %29, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !531
  %incdec.ptr.i = getelementptr i8, ptr %incdec.ptr37.i, i32 1, !dbg !528
  %30 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !529
  call void @__asan_load1_noabort(i32 %30), !dbg !529
  %31 = load i8, ptr %incdec.ptr.i, align 1, !dbg !529
  %cmp7.not.i = icmp eq i8 %31, 0, !dbg !530
  br i1 %cmp7.not.i, label %if.end22.i.if.end16_crit_edge, label %if.end22.i.while.body.i_crit_edge, !dbg !531, !llvm.loop !549

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !531
  br label %while.body.i, !dbg !531

if.end22.i.if.end16_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !531
  br label %if.end16, !dbg !531

if.then15:                                        ; preds = %if.then21.i, %if.then.i
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 3), align 8, !dbg !551
  %32 = add i64 %gcov_ctr37, 1, !dbg !551
  store i64 %32, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 3), align 8, !dbg !551
  tail call void @__trace_probe_log_err(i32 noundef %offset, i32 noundef 14), !dbg !551
  br label %cleanup, !dbg !552

if.end16:                                         ; preds = %if.end22.i.if.end16_crit_edge, %if.end.i.if.end16_crit_edge
  %gcov_ctr28.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !553
  %33 = add i64 %gcov_ctr28.i, 1, !dbg !553
  store i64 %33, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !553
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 4), align 16, !dbg !554
  %34 = add i64 %gcov_ctr38, 1, !dbg !554
  store i64 %34, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 4), align 16, !dbg !554
  %35 = ptrtoint ptr %pgroup to i32, !dbg !555
  call void @__asan_store4_noabort(i32 %35), !dbg !555
  store ptr %buf, ptr %pgroup, align 4, !dbg !555
  %add.ptr = getelementptr i8, ptr %slash.0106, i32 1, !dbg !556
  %36 = ptrtoint ptr %pevent to i32, !dbg !557
  call void @__asan_store4_noabort(i32 %36), !dbg !557
  store ptr %add.ptr, ptr %pevent, align 4, !dbg !557
  %add21 = add i32 %add, %offset, !dbg !558
  br label %if.end22, !dbg !559

if.end22:                                         ; preds = %if.end16, %if.end.if.end22_crit_edge
  %offset.addr.0 = phi i32 [ %add21, %if.end16 ], [ %offset, %if.end.if.end22_crit_edge ]
  %event.0 = phi ptr [ %add.ptr, %if.end16 ], [ %1, %if.end.if.end22_crit_edge ], !dbg !560
  %call23 = tail call i32 @strlen(ptr noundef %event.0) #21, !dbg !561
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23), !dbg !562
  %cmp24 = icmp eq i32 %call23, 0, !dbg !562
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !563

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19, !dbg !564
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 5), align 8, !dbg !564
  %37 = add i64 %gcov_ctr39, 1, !dbg !564
  store i64 %37, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 5), align 8, !dbg !564
  tail call void @__trace_probe_log_err(i32 noundef %offset.addr.0, i32 noundef 15), !dbg !564
  br label %cleanup, !dbg !565

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call23), !dbg !566
  %cmp26 = icmp sgt i32 %call23, 64, !dbg !566
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !567

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19, !dbg !568
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 6), align 16, !dbg !568
  %38 = add i64 %gcov_ctr40, 1, !dbg !568
  store i64 %38, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 6), align 16, !dbg !568
  tail call void @__trace_probe_log_err(i32 noundef %offset.addr.0, i32 noundef 16), !dbg !568
  br label %cleanup, !dbg !569

if.end29:                                         ; preds = %if.else
  %39 = ptrtoint ptr %event.0 to i32, !dbg !570
  call void @__asan_load1_noabort(i32 %39), !dbg !570
  %40 = load i8, ptr %event.0, align 1, !dbg !570
  %conv.i68 = zext i8 %40 to i32, !dbg !570
  %arrayidx.i69 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i68, !dbg !570
  %41 = ptrtoint ptr %arrayidx.i69 to i32, !dbg !570
  call void @__asan_load1_noabort(i32 %41), !dbg !570
  %42 = load i8, ptr %arrayidx.i69, align 1, !dbg !570
  %43 = and i8 %42, 3, !dbg !570
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43), !dbg !570
  %cmp.not.i70 = icmp eq i8 %43, 0, !dbg !570
  br i1 %cmp.not.i70, label %land.lhs.true.i73, label %if.end29.if.end.i78_crit_edge, !dbg !572

if.end29.if.end.i78_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19, !dbg !572
  br label %if.end.i78, !dbg !572

land.lhs.true.i73:                                ; preds = %if.end29
  %gcov_ctr.i71 = load i64, ptr @__llvm_gcov_ctr.135, align 16, !dbg !573
  %44 = add i64 %gcov_ctr.i71, 1, !dbg !573
  store i64 %44, ptr @__llvm_gcov_ctr.135, align 16, !dbg !573
  %45 = ptrtoint ptr %event.0 to i32, !dbg !574
  call void @__asan_load1_noabort(i32 %45), !dbg !574
  %46 = load i8, ptr %event.0, align 1, !dbg !574
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %46), !dbg !575
  %cmp4.not.i72 = icmp eq i8 %46, 95, !dbg !575
  br i1 %cmp4.not.i72, label %land.lhs.true.i73.if.end.i78_crit_edge, label %if.then.i75, !dbg !576

land.lhs.true.i73.if.end.i78_crit_edge:           ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #19, !dbg !576
  br label %if.end.i78, !dbg !576

if.then.i75:                                      ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #19, !dbg !577
  %gcov_ctr23.i74 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !577
  %47 = add i64 %gcov_ctr23.i74, 1, !dbg !577
  store i64 %47, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !577
  br label %if.then31, !dbg !577

if.end.i78:                                       ; preds = %land.lhs.true.i73.if.end.i78_crit_edge, %if.end29.if.end.i78_crit_edge
  %incdec.ptr35.i76 = getelementptr i8, ptr %event.0, i32 1, !dbg !578
  %48 = ptrtoint ptr %incdec.ptr35.i76 to i32, !dbg !579
  call void @__asan_load1_noabort(i32 %48), !dbg !579
  %49 = load i8, ptr %incdec.ptr35.i76, align 1, !dbg !579
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49), !dbg !580
  %cmp7.not36.i77 = icmp eq i8 %49, 0, !dbg !580
  br i1 %cmp7.not36.i77, label %if.end.i78.if.end32_crit_edge, label %if.end.i78.while.body.i83_crit_edge, !dbg !581

if.end.i78.while.body.i83_crit_edge:              ; preds = %if.end.i78
  br label %while.body.i83, !dbg !581

if.end.i78.if.end32_crit_edge:                    ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #19, !dbg !581
  br label %if.end32, !dbg !581

while.body.i83:                                   ; preds = %if.end22.i99.while.body.i83_crit_edge, %if.end.i78.while.body.i83_crit_edge
  %50 = phi i8 [ %65, %if.end22.i99.while.body.i83_crit_edge ], [ %49, %if.end.i78.while.body.i83_crit_edge ]
  %incdec.ptr37.i79 = phi ptr [ %incdec.ptr.i97, %if.end22.i99.while.body.i83_crit_edge ], [ %incdec.ptr35.i76, %if.end.i78.while.body.i83_crit_edge ]
  %conv6.i80 = zext i8 %50 to i32, !dbg !579
  %arrayidx10.i81 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6.i80, !dbg !582
  %51 = ptrtoint ptr %arrayidx10.i81 to i32, !dbg !582
  call void @__asan_load1_noabort(i32 %51), !dbg !582
  %52 = load i8, ptr %arrayidx10.i81, align 1, !dbg !582
  %53 = and i8 %52, 3, !dbg !582
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53), !dbg !582
  %cmp13.not.i82 = icmp eq i8 %53, 0, !dbg !582
  br i1 %cmp13.not.i82, label %land.lhs.true15.i87, label %while.body.i83.if.end22.i99_crit_edge, !dbg !583

while.body.i83.if.end22.i99_crit_edge:            ; preds = %while.body.i83
  call void @__sanitizer_cov_trace_pc() #19, !dbg !583
  br label %if.end22.i99, !dbg !583

land.lhs.true15.i87:                              ; preds = %while.body.i83
  %gcov_ctr24.i84 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !584
  %54 = add i64 %gcov_ctr24.i84, 1, !dbg !584
  store i64 %54, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !584
  %55 = ptrtoint ptr %incdec.ptr37.i79 to i32, !dbg !585
  call void @__asan_load1_noabort(i32 %55), !dbg !585
  %56 = load i8, ptr %incdec.ptr37.i79, align 1, !dbg !585
  %gcov_ctr.i.i85 = load i64, ptr @__llvm_gcov_ctr.174, align 8
  %57 = add i64 %gcov_ctr.i.i85, 1
  store i64 %57, ptr @__llvm_gcov_ctr.174, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %56), !dbg !586
  %cmp.i.i86 = icmp ugt i8 %56, 47, !dbg !586
  br i1 %cmp.i.i86, label %isdigit.exit.i90, label %land.lhs.true15.i87.land.lhs.true17.i93_crit_edge, !dbg !588

land.lhs.true15.i87.land.lhs.true17.i93_crit_edge: ; preds = %land.lhs.true15.i87
  call void @__sanitizer_cov_trace_pc() #19, !dbg !588
  br label %land.lhs.true17.i93, !dbg !588

isdigit.exit.i90:                                 ; preds = %land.lhs.true15.i87
  %gcov_ctr2.i.i88 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !589
  %58 = add i64 %gcov_ctr2.i.i88, 1, !dbg !589
  store i64 %58, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !589
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %56), !dbg !590
  %cmp1.i.i89 = icmp ugt i8 %56, 57, !dbg !590
  br i1 %cmp1.i.i89, label %isdigit.exit.i90.land.lhs.true17.i93_crit_edge, label %isdigit.exit.i90.if.end22.i99_crit_edge, !dbg !591

isdigit.exit.i90.if.end22.i99_crit_edge:          ; preds = %isdigit.exit.i90
  call void @__sanitizer_cov_trace_pc() #19, !dbg !591
  br label %if.end22.i99, !dbg !591

isdigit.exit.i90.land.lhs.true17.i93_crit_edge:   ; preds = %isdigit.exit.i90
  call void @__sanitizer_cov_trace_pc() #19, !dbg !591
  br label %land.lhs.true17.i93, !dbg !591

land.lhs.true17.i93:                              ; preds = %isdigit.exit.i90.land.lhs.true17.i93_crit_edge, %land.lhs.true15.i87.land.lhs.true17.i93_crit_edge
  %gcov_ctr25.i91 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !592
  %59 = add i64 %gcov_ctr25.i91, 1, !dbg !592
  store i64 %59, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !592
  %60 = ptrtoint ptr %incdec.ptr37.i79 to i32, !dbg !593
  call void @__asan_load1_noabort(i32 %60), !dbg !593
  %61 = load i8, ptr %incdec.ptr37.i79, align 1, !dbg !593
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %61), !dbg !594
  %cmp19.not.i92 = icmp eq i8 %61, 95, !dbg !594
  br i1 %cmp19.not.i92, label %land.lhs.true17.i93.if.end22.i99_crit_edge, label %if.then21.i95, !dbg !595

land.lhs.true17.i93.if.end22.i99_crit_edge:       ; preds = %land.lhs.true17.i93
  call void @__sanitizer_cov_trace_pc() #19, !dbg !595
  br label %if.end22.i99, !dbg !595

if.then21.i95:                                    ; preds = %land.lhs.true17.i93
  call void @__sanitizer_cov_trace_pc() #19, !dbg !596
  %gcov_ctr26.i94 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !596
  %62 = add i64 %gcov_ctr26.i94, 1, !dbg !596
  store i64 %62, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !596
  br label %if.then31, !dbg !596

if.end22.i99:                                     ; preds = %land.lhs.true17.i93.if.end22.i99_crit_edge, %isdigit.exit.i90.if.end22.i99_crit_edge, %while.body.i83.if.end22.i99_crit_edge
  %gcov_ctr27.i96 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !581
  %63 = add i64 %gcov_ctr27.i96, 1, !dbg !581
  store i64 %63, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !581
  %incdec.ptr.i97 = getelementptr i8, ptr %incdec.ptr37.i79, i32 1, !dbg !578
  %64 = ptrtoint ptr %incdec.ptr.i97 to i32, !dbg !579
  call void @__asan_load1_noabort(i32 %64), !dbg !579
  %65 = load i8, ptr %incdec.ptr.i97, align 1, !dbg !579
  %cmp7.not.i98 = icmp eq i8 %65, 0, !dbg !580
  br i1 %cmp7.not.i98, label %if.end22.i99.if.end32_crit_edge, label %if.end22.i99.while.body.i83_crit_edge, !dbg !581, !llvm.loop !597

if.end22.i99.while.body.i83_crit_edge:            ; preds = %if.end22.i99
  call void @__sanitizer_cov_trace_pc() #19, !dbg !581
  br label %while.body.i83, !dbg !581

if.end22.i99.if.end32_crit_edge:                  ; preds = %if.end22.i99
  call void @__sanitizer_cov_trace_pc() #19, !dbg !581
  br label %if.end32, !dbg !581

if.then31:                                        ; preds = %if.then21.i95, %if.then.i75
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 7), align 8, !dbg !599
  %66 = add i64 %gcov_ctr41, 1, !dbg !599
  store i64 %66, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 7), align 8, !dbg !599
  tail call void @__trace_probe_log_err(i32 noundef %offset.addr.0, i32 noundef 17), !dbg !599
  br label %cleanup, !dbg !600

if.end32:                                         ; preds = %if.end22.i99.if.end32_crit_edge, %if.end.i78.if.end32_crit_edge
  %gcov_ctr28.i100 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !601
  %67 = add i64 %gcov_ctr28.i100, 1, !dbg !601
  store i64 %67, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !601
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 8), align 16, !dbg !602
  %68 = add i64 %gcov_ctr42, 1, !dbg !602
  store i64 %68, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.134, i32 0, i32 8), align 16, !dbg !602
  br label %cleanup, !dbg !602

cleanup:                                          ; preds = %if.end32, %if.then31, %if.then27, %if.then25, %if.then15, %if.then7, %if.then4
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then7 ], [ -22, %if.then25 ], [ -22, %if.then27 ], [ 0, %if.end32 ], [ -22, %if.then31 ], [ -22, %if.then15 ], !dbg !560
  ret i32 %retval.0, !dbg !603
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @traceprobe_parse_probe_arg(ptr noundef %tp, i32 noundef %i, ptr noundef %arg, i32 noundef %flags) local_unnamed_addr #0 align 64 !dbg !604 {
entry:
  %code.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19, !dbg !605
  %args = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 4, !dbg !606
  %arrayidx = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, !dbg !607
  %nr_args = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 3, !dbg !608
  %0 = ptrtoint ptr %nr_args to i32, !dbg !609
  call void @__asan_load4_noabort(i32 %0), !dbg !609
  %1 = load i32, ptr %nr_args, align 4, !dbg !609
  %inc = add i32 %1, 1, !dbg !609
  store i32 %inc, ptr %nr_args, align 4, !dbg !609
  %call = tail call ptr @strchr(ptr noundef %arg, i32 noundef 61), !dbg !610
  %tobool.not = icmp eq ptr %call, null, !dbg !611
  br i1 %tobool.not, label %if.else9, label %if.then, !dbg !611

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32, !dbg !612
  %sub.ptr.rhs.cast = ptrtoint ptr %arg to i32, !dbg !612
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !612
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.ptr.sub), !dbg !613
  %cmp = icmp sgt i32 %sub.ptr.sub, 32, !dbg !613
  br i1 %cmp, label %if.then1, label %if.else, !dbg !614

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19, !dbg !615
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.136, align 16, !dbg !615
  %2 = add i64 %gcov_ctr, 1, !dbg !615
  store i64 %2, ptr @__llvm_gcov_ctr.136, align 16, !dbg !615
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 43), !dbg !615
  br label %cleanup, !dbg !616

if.else:                                          ; preds = %if.then
  %cmp2 = icmp eq ptr %call, %arg, !dbg !617
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !618

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19, !dbg !619
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 1), align 8, !dbg !619
  %3 = add i64 %gcov_ctr32, 1, !dbg !619
  store i64 %3, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 1), align 8, !dbg !619
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 44), !dbg !619
  br label %cleanup, !dbg !620

if.end4:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19, !dbg !621
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 2), align 16, !dbg !621
  %4 = add i64 %gcov_ctr33, 1, !dbg !621
  store i64 %4, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 2), align 16, !dbg !621
  %call8 = tail call ptr @kmemdup_nul(ptr noundef %arg, i32 noundef %sub.ptr.sub, i32 noundef 3264) #20, !dbg !622
  %name = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 4, !dbg !623
  %5 = ptrtoint ptr %name to i32, !dbg !624
  call void @__asan_store4_noabort(i32 %5), !dbg !624
  store ptr %call8, ptr %name, align 4, !dbg !624
  %incdec.ptr = getelementptr i8, ptr %call, i32 1, !dbg !625
  br label %if.end12, !dbg !626

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !627
  %add = add i32 %i, 1, !dbg !627
  %call10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, i32 noundef %add) #20, !dbg !628
  %name11 = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 4, !dbg !629
  %6 = ptrtoint ptr %name11 to i32, !dbg !630
  call void @__asan_store4_noabort(i32 %6), !dbg !630
  store ptr %call10, ptr %name11, align 4, !dbg !630
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.end4
  %body.0 = phi ptr [ %incdec.ptr, %if.end4 ], [ %arg, %if.else9 ], !dbg !631
  %name13 = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 4, !dbg !632
  %7 = ptrtoint ptr %name13 to i32, !dbg !632
  call void @__asan_load4_noabort(i32 %7), !dbg !632
  %8 = load ptr, ptr %name13, align 4, !dbg !632
  %tobool14.not = icmp eq ptr %8, null, !dbg !633
  br i1 %tobool14.not, label %if.then15, label %if.end16, !dbg !634

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19, !dbg !635
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 3), align 8, !dbg !635
  %9 = add i64 %gcov_ctr34, 1, !dbg !635
  store i64 %9, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 3), align 8, !dbg !635
  br label %cleanup, !dbg !635

if.end16:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %8 to i32, !dbg !636
  call void @__asan_load1_noabort(i32 %10), !dbg !636
  %11 = load i8, ptr %8, align 1, !dbg !636
  %conv.i = zext i8 %11 to i32, !dbg !636
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i, !dbg !636
  %12 = ptrtoint ptr %arrayidx.i to i32, !dbg !636
  call void @__asan_load1_noabort(i32 %12), !dbg !636
  %13 = load i8, ptr %arrayidx.i, align 1, !dbg !636
  %14 = and i8 %13, 3, !dbg !636
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14), !dbg !636
  %cmp.not.i = icmp eq i8 %14, 0, !dbg !636
  br i1 %cmp.not.i, label %land.lhs.true.i, label %if.end16.if.end.i_crit_edge, !dbg !638

if.end16.if.end.i_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19, !dbg !638
  br label %if.end.i, !dbg !638

land.lhs.true.i:                                  ; preds = %if.end16
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.135, align 16, !dbg !639
  %15 = add i64 %gcov_ctr.i, 1, !dbg !639
  store i64 %15, ptr @__llvm_gcov_ctr.135, align 16, !dbg !639
  %16 = ptrtoint ptr %8 to i32, !dbg !640
  call void @__asan_load1_noabort(i32 %16), !dbg !640
  %17 = load i8, ptr %8, align 1, !dbg !640
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %17), !dbg !641
  %cmp4.not.i = icmp eq i8 %17, 95, !dbg !641
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i, !dbg !642

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !642
  br label %if.end.i, !dbg !642

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !643
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !643
  %18 = add i64 %gcov_ctr23.i, 1, !dbg !643
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !643
  br label %if.then19, !dbg !643

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end16.if.end.i_crit_edge
  %incdec.ptr35.i = getelementptr i8, ptr %8, i32 1, !dbg !644
  %19 = ptrtoint ptr %incdec.ptr35.i to i32, !dbg !645
  call void @__asan_load1_noabort(i32 %19), !dbg !645
  %20 = load i8, ptr %incdec.ptr35.i, align 1, !dbg !645
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20), !dbg !646
  %cmp7.not36.i = icmp eq i8 %20, 0, !dbg !646
  br i1 %cmp7.not36.i, label %if.end.i.if.end20_crit_edge, label %if.end.i.while.body.i_crit_edge, !dbg !647

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i, !dbg !647

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !647
  br label %if.end20, !dbg !647

while.body.i:                                     ; preds = %if.end22.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %21 = phi i8 [ %36, %if.end22.i.while.body.i_crit_edge ], [ %20, %if.end.i.while.body.i_crit_edge ]
  %incdec.ptr37.i = phi ptr [ %incdec.ptr.i, %if.end22.i.while.body.i_crit_edge ], [ %incdec.ptr35.i, %if.end.i.while.body.i_crit_edge ]
  %conv6.i = zext i8 %21 to i32, !dbg !645
  %arrayidx10.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv6.i, !dbg !648
  %22 = ptrtoint ptr %arrayidx10.i to i32, !dbg !648
  call void @__asan_load1_noabort(i32 %22), !dbg !648
  %23 = load i8, ptr %arrayidx10.i, align 1, !dbg !648
  %24 = and i8 %23, 3, !dbg !648
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24), !dbg !648
  %cmp13.not.i = icmp eq i8 %24, 0, !dbg !648
  br i1 %cmp13.not.i, label %land.lhs.true15.i, label %while.body.i.if.end22.i_crit_edge, !dbg !649

while.body.i.if.end22.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !649
  br label %if.end22.i, !dbg !649

land.lhs.true15.i:                                ; preds = %while.body.i
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !650
  %25 = add i64 %gcov_ctr24.i, 1, !dbg !650
  store i64 %25, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !650
  %26 = ptrtoint ptr %incdec.ptr37.i to i32, !dbg !651
  call void @__asan_load1_noabort(i32 %26), !dbg !651
  %27 = load i8, ptr %incdec.ptr37.i, align 1, !dbg !651
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.174, align 8
  %28 = add i64 %gcov_ctr.i.i, 1
  store i64 %28, ptr @__llvm_gcov_ctr.174, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %27), !dbg !652
  %cmp.i.i = icmp ugt i8 %27, 47, !dbg !652
  br i1 %cmp.i.i, label %isdigit.exit.i, label %land.lhs.true15.i.land.lhs.true17.i_crit_edge, !dbg !654

land.lhs.true15.i.land.lhs.true17.i_crit_edge:    ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !654
  br label %land.lhs.true17.i, !dbg !654

isdigit.exit.i:                                   ; preds = %land.lhs.true15.i
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !655
  %29 = add i64 %gcov_ctr2.i.i, 1, !dbg !655
  store i64 %29, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !655
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %27), !dbg !656
  %cmp1.i.i = icmp ugt i8 %27, 57, !dbg !656
  br i1 %cmp1.i.i, label %isdigit.exit.i.land.lhs.true17.i_crit_edge, label %isdigit.exit.i.if.end22.i_crit_edge, !dbg !657

isdigit.exit.i.if.end22.i_crit_edge:              ; preds = %isdigit.exit.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !657
  br label %if.end22.i, !dbg !657

isdigit.exit.i.land.lhs.true17.i_crit_edge:       ; preds = %isdigit.exit.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !657
  br label %land.lhs.true17.i, !dbg !657

land.lhs.true17.i:                                ; preds = %isdigit.exit.i.land.lhs.true17.i_crit_edge, %land.lhs.true15.i.land.lhs.true17.i_crit_edge
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !658
  %30 = add i64 %gcov_ctr25.i, 1, !dbg !658
  store i64 %30, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 3), align 8, !dbg !658
  %31 = ptrtoint ptr %incdec.ptr37.i to i32, !dbg !659
  call void @__asan_load1_noabort(i32 %31), !dbg !659
  %32 = load i8, ptr %incdec.ptr37.i, align 1, !dbg !659
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %32), !dbg !660
  %cmp19.not.i = icmp eq i8 %32, 95, !dbg !660
  br i1 %cmp19.not.i, label %land.lhs.true17.i.if.end22.i_crit_edge, label %if.then21.i, !dbg !661

land.lhs.true17.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !661
  br label %if.end22.i, !dbg !661

if.then21.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !662
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !662
  %33 = add i64 %gcov_ctr26.i, 1, !dbg !662
  store i64 %33, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 4), align 16, !dbg !662
  br label %if.then19, !dbg !662

if.end22.i:                                       ; preds = %land.lhs.true17.i.if.end22.i_crit_edge, %isdigit.exit.i.if.end22.i_crit_edge, %while.body.i.if.end22.i_crit_edge
  %gcov_ctr27.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !647
  %34 = add i64 %gcov_ctr27.i, 1, !dbg !647
  store i64 %34, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 5), align 8, !dbg !647
  %incdec.ptr.i = getelementptr i8, ptr %incdec.ptr37.i, i32 1, !dbg !644
  %35 = ptrtoint ptr %incdec.ptr.i to i32, !dbg !645
  call void @__asan_load1_noabort(i32 %35), !dbg !645
  %36 = load i8, ptr %incdec.ptr.i, align 1, !dbg !645
  %cmp7.not.i = icmp eq i8 %36, 0, !dbg !646
  br i1 %cmp7.not.i, label %if.end22.i.if.end20_crit_edge, label %if.end22.i.while.body.i_crit_edge, !dbg !647, !llvm.loop !663

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !647
  br label %while.body.i, !dbg !647

if.end22.i.if.end20_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !647
  br label %if.end20, !dbg !647

if.then19:                                        ; preds = %if.then21.i, %if.then.i
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 4), align 16, !dbg !665
  %37 = add i64 %gcov_ctr35, 1, !dbg !665
  store i64 %37, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 4), align 16, !dbg !665
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 45), !dbg !665
  br label %cleanup, !dbg !666

if.end20:                                         ; preds = %if.end22.i.if.end20_crit_edge, %if.end.i.if.end20_crit_edge
  %gcov_ctr28.i = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !667
  %38 = add i64 %gcov_ctr28.i, 1, !dbg !667
  store i64 %38, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 6), align 16, !dbg !667
  %39 = ptrtoint ptr %name13 to i32, !dbg !668
  call void @__asan_load4_noabort(i32 %39), !dbg !668
  %40 = load ptr, ptr %name13, align 4, !dbg !668
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.67, ptr noundef %40) #23, !dbg !669
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !672
  %cmp1.i = icmp eq i32 %call.i, 0, !dbg !672
  br i1 %cmp1.i, label %if.end20.if.then.i60_crit_edge, label %if.end.i62, !dbg !669

if.end20.if.then.i60_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19, !dbg !669
  br label %if.then.i60, !dbg !669

if.then.i60:                                      ; preds = %if.end.6.i.if.then.i60_crit_edge, %if.end.5.i.if.then.i60_crit_edge, %if.end.4.i.if.then.i60_crit_edge, %if.end.3.i.if.then.i60_crit_edge, %if.end.2.i.if.then.i60_crit_edge, %if.end.1.i.if.then.i60_crit_edge, %if.end.i62.if.then.i60_crit_edge, %if.end20.if.then.i60_crit_edge
  %gcov_ctr14.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !673
  %41 = add i64 %gcov_ctr14.i, 1, !dbg !673
  store i64 %41, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !673
  br label %if.then25, !dbg !673

if.end.i62:                                       ; preds = %if.end20
  %gcov_ctr.i61 = load i64, ptr @__llvm_gcov_ctr.137, align 16, !dbg !674
  %42 = add i64 %gcov_ctr.i61, 1, !dbg !674
  store i64 %42, ptr @__llvm_gcov_ctr.137, align 16, !dbg !674
  %call.1.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.68, ptr noundef %40) #23, !dbg !669
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i), !dbg !672
  %cmp1.1.i = icmp eq i32 %call.1.i, 0, !dbg !672
  br i1 %cmp1.1.i, label %if.end.i62.if.then.i60_crit_edge, label %if.end.1.i, !dbg !669

if.end.i62.if.then.i60_crit_edge:                 ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #19, !dbg !669
  br label %if.then.i60, !dbg !669

if.end.1.i:                                       ; preds = %if.end.i62
  %43 = add i64 %gcov_ctr.i61, 2, !dbg !674
  store i64 %43, ptr @__llvm_gcov_ctr.137, align 16, !dbg !674
  %call.2.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.69, ptr noundef %40) #23, !dbg !669
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i), !dbg !672
  %cmp1.2.i = icmp eq i32 %call.2.i, 0, !dbg !672
  br i1 %cmp1.2.i, label %if.end.1.i.if.then.i60_crit_edge, label %if.end.2.i, !dbg !669

if.end.1.i.if.then.i60_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !669
  br label %if.then.i60, !dbg !669

if.end.2.i:                                       ; preds = %if.end.1.i
  %44 = add i64 %gcov_ctr.i61, 3, !dbg !674
  store i64 %44, ptr @__llvm_gcov_ctr.137, align 16, !dbg !674
  %call.3.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.70, ptr noundef %40) #23, !dbg !669
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i), !dbg !672
  %cmp1.3.i = icmp eq i32 %call.3.i, 0, !dbg !672
  br i1 %cmp1.3.i, label %if.end.2.i.if.then.i60_crit_edge, label %if.end.3.i, !dbg !669

if.end.2.i.if.then.i60_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !669
  br label %if.then.i60, !dbg !669

if.end.3.i:                                       ; preds = %if.end.2.i
  %45 = add i64 %gcov_ctr.i61, 4, !dbg !674
  store i64 %45, ptr @__llvm_gcov_ctr.137, align 16, !dbg !674
  %call.4.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.71, ptr noundef %40) #23, !dbg !669
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i), !dbg !672
  %cmp1.4.i = icmp eq i32 %call.4.i, 0, !dbg !672
  br i1 %cmp1.4.i, label %if.end.3.i.if.then.i60_crit_edge, label %if.end.4.i, !dbg !669

if.end.3.i.if.then.i60_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !669
  br label %if.then.i60, !dbg !669

if.end.4.i:                                       ; preds = %if.end.3.i
  %46 = add i64 %gcov_ctr.i61, 5, !dbg !674
  store i64 %46, ptr @__llvm_gcov_ctr.137, align 16, !dbg !674
  %call.5.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.72, ptr noundef %40) #23, !dbg !669
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i), !dbg !672
  %cmp1.5.i = icmp eq i32 %call.5.i, 0, !dbg !672
  br i1 %cmp1.5.i, label %if.end.4.i.if.then.i60_crit_edge, label %if.end.5.i, !dbg !669

if.end.4.i.if.then.i60_crit_edge:                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !669
  br label %if.then.i60, !dbg !669

if.end.5.i:                                       ; preds = %if.end.4.i
  %47 = add i64 %gcov_ctr.i61, 6, !dbg !674
  store i64 %47, ptr @__llvm_gcov_ctr.137, align 16, !dbg !674
  %call.6.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.73, ptr noundef %40) #23, !dbg !669
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i), !dbg !672
  %cmp1.6.i = icmp eq i32 %call.6.i, 0, !dbg !672
  br i1 %cmp1.6.i, label %if.end.5.i.if.then.i60_crit_edge, label %if.end.6.i, !dbg !669

if.end.5.i.if.then.i60_crit_edge:                 ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !669
  br label %if.then.i60, !dbg !669

if.end.6.i:                                       ; preds = %if.end.5.i
  %48 = add i64 %gcov_ctr.i61, 7, !dbg !674
  store i64 %48, ptr @__llvm_gcov_ctr.137, align 16, !dbg !674
  %call.7.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.74, ptr noundef %40) #23, !dbg !669
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i), !dbg !672
  %cmp1.7.i = icmp eq i32 %call.7.i, 0, !dbg !672
  br i1 %cmp1.7.i, label %if.end.6.i.if.then.i60_crit_edge, label %if.end.7.i, !dbg !669

if.end.6.i.if.then.i60_crit_edge:                 ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !669
  br label %if.then.i60, !dbg !669

if.end.7.i:                                       ; preds = %if.end.6.i
  %49 = add i64 %gcov_ctr.i61, 8, !dbg !674
  store i64 %49, ptr @__llvm_gcov_ctr.137, align 16, !dbg !674
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i), !dbg !675
  %cmp325.i = icmp sgt i32 %i, 0, !dbg !675
  br i1 %cmp325.i, label %if.end.7.i.for.body4.i_crit_edge, label %if.end.7.i.if.end26_crit_edge, !dbg !676

if.end.7.i.if.end26_crit_edge:                    ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !676
  br label %if.end26, !dbg !676

if.end.7.i.for.body4.i_crit_edge:                 ; preds = %if.end.7.i
  br label %for.body4.i, !dbg !676

for.body4.i:                                      ; preds = %for.inc11.i.for.body4.i_crit_edge, %if.end.7.i.for.body4.i_crit_edge
  %i.126.i = phi i32 [ %inc12.i, %for.inc11.i.for.body4.i_crit_edge ], [ 0, %if.end.7.i.for.body4.i_crit_edge ]
  %name6.i = getelementptr %struct.probe_arg, ptr %args, i32 %i.126.i, i32 4, !dbg !677
  %50 = ptrtoint ptr %name6.i to i32, !dbg !677
  call void @__asan_load4_noabort(i32 %50), !dbg !677
  %51 = load ptr, ptr %name6.i, align 4, !dbg !677
  %call7.i = tail call i32 @strcmp(ptr noundef %51, ptr noundef %40) #23, !dbg !678
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i), !dbg !679
  %cmp8.i = icmp eq i32 %call7.i, 0, !dbg !679
  br i1 %cmp8.i, label %if.then9.i, label %for.inc11.i, !dbg !678

if.then9.i:                                       ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !680
  %gcov_ctr15.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 2), align 16, !dbg !680
  %52 = add i64 %gcov_ctr15.i, 1, !dbg !680
  store i64 %52, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 2), align 16, !dbg !680
  br label %if.then25, !dbg !680

for.inc11.i:                                      ; preds = %for.body4.i
  %gcov_ctr16.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 3), align 8, !dbg !681
  %53 = add i64 %gcov_ctr16.i, 1, !dbg !681
  store i64 %53, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 3), align 8, !dbg !681
  %inc12.i = add nuw nsw i32 %i.126.i, 1, !dbg !681
  %exitcond.not.i = icmp eq i32 %inc12.i, %i, !dbg !675
  br i1 %exitcond.not.i, label %for.inc11.i.if.end26_crit_edge, label %for.inc11.i.for.body4.i_crit_edge, !dbg !676, !llvm.loop !682

for.inc11.i.for.body4.i_crit_edge:                ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !676
  br label %for.body4.i, !dbg !676

for.inc11.i.if.end26_crit_edge:                   ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !676
  br label %if.end26, !dbg !676

if.then25:                                        ; preds = %if.then9.i, %if.then.i60
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 6), align 16, !dbg !684
  %54 = add i64 %gcov_ctr37, 1, !dbg !684
  store i64 %54, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 6), align 16, !dbg !684
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 46), !dbg !684
  br label %cleanup, !dbg !685

if.end26:                                         ; preds = %for.inc11.i.if.end26_crit_edge, %if.end.7.i.if.end26_crit_edge
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 4), align 16, !dbg !686
  %55 = add i64 %gcov_ctr17.i, 1, !dbg !686
  store i64 %55, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 4), align 16, !dbg !686
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 5), align 8, !dbg !687
  %56 = add i64 %gcov_ctr36, 1, !dbg !687
  store i64 %56, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.136, i32 0, i32 5), align 8, !dbg !687
  %size = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 2, !dbg !688
  %sub.ptr.lhs.cast27 = ptrtoint ptr %body.0 to i32, !dbg !689
  %sub.ptr.rhs.cast28 = ptrtoint ptr %arg to i32, !dbg !689
  %sub.ptr.sub29 = sub i32 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28, !dbg !689
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code.i) #20, !dbg !690
  %57 = ptrtoint ptr %code.i to i32, !dbg !693
  call void @__asan_store4_noabort(i32 %57), !dbg !693
  store ptr inttoptr (i32 -1 to ptr), ptr %code.i, align 4, !dbg !693, !annotation !694
  %call.i64 = tail call noalias ptr @kstrdup(ptr noundef %body.0, i32 noundef 3264) #20, !dbg !695
  %tobool.not.i = icmp eq ptr %call.i64, null, !dbg !696
  br i1 %tobool.not.i, label %if.then.i66, label %if.end.i67, !dbg !697

if.then.i66:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19, !dbg !698
  %gcov_ctr.i65 = load i64, ptr @__llvm_gcov_ctr.138, align 16, !dbg !698
  %58 = add i64 %gcov_ctr.i65, 1, !dbg !698
  store i64 %58, ptr @__llvm_gcov_ctr.138, align 16, !dbg !698
  br label %traceprobe_parse_probe_arg_body.exit, !dbg !698

if.end.i67:                                       ; preds = %if.end26
  %call1.i = tail call i32 @strlen(ptr noundef nonnull %call.i64) #23, !dbg !699
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call1.i), !dbg !700
  %cmp.i = icmp sgt i32 %call1.i, 63, !dbg !700
  br i1 %cmp.i, label %if.then2.i, label %if.else.i, !dbg !701

if.then2.i:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #19, !dbg !702
  %gcov_ctr331.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 1), align 8, !dbg !702
  %59 = add i64 %gcov_ctr331.i, 1, !dbg !702
  store i64 %59, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 1), align 8, !dbg !702
  tail call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub29, i32 noundef 47) #20, !dbg !702
  br label %out.i, !dbg !703

if.else.i:                                        ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !704
  %cmp3.i = icmp eq i32 %call1.i, 0, !dbg !704
  br i1 %cmp3.i, label %if.then4.i, label %if.end6.i, !dbg !705

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !706
  %gcov_ctr332.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 2), align 16, !dbg !706
  %60 = add i64 %gcov_ctr332.i, 1, !dbg !706
  store i64 %60, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 2), align 16, !dbg !706
  tail call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub29, i32 noundef 48) #20, !dbg !706
  br label %out.i, !dbg !707

if.end6.i:                                        ; preds = %if.else.i
  %call7.i68 = tail call noalias ptr @kstrdup(ptr noundef nonnull %call.i64, i32 noundef 3264) #20, !dbg !708
  %comm.i = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 5, !dbg !709
  %61 = ptrtoint ptr %comm.i to i32, !dbg !710
  call void @__asan_store4_noabort(i32 %61), !dbg !710
  store ptr %call7.i68, ptr %comm.i, align 4, !dbg !710
  %tobool9.not.i = icmp eq ptr %call7.i68, null, !dbg !711
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end11.i, !dbg !712

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !713
  %gcov_ctr333.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 3), align 8, !dbg !713
  %62 = add i64 %gcov_ctr333.i, 1, !dbg !713
  store i64 %62, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 3), align 8, !dbg !713
  br label %out.i, !dbg !713

if.end11.i:                                       ; preds = %if.end6.i
  %call12.i = tail call ptr @strchr(ptr noundef nonnull %call.i64, i32 noundef 58) #20, !dbg !714
  %tobool13.not.i = icmp eq ptr %call12.i, null, !dbg !715
  br i1 %tobool13.not.i, label %if.end11.i.if.end54.i_crit_edge, label %if.then14.i, !dbg !715

if.end11.i.if.end54.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !715
  br label %if.end54.i, !dbg !715

if.then14.i:                                      ; preds = %if.end11.i
  %63 = ptrtoint ptr %call12.i to i32, !dbg !716
  call void @__asan_store1_noabort(i32 %63), !dbg !716
  store i8 0, ptr %call12.i, align 1, !dbg !716
  %incdec.ptr.i69 = getelementptr i8, ptr %call12.i, i32 1, !dbg !717
  %call15.i = tail call ptr @strchr(ptr noundef %incdec.ptr.i69, i32 noundef 91) #20, !dbg !718
  %tobool16.not.i = icmp eq ptr %call15.i, null, !dbg !719
  br i1 %tobool16.not.i, label %if.then14.i.if.end53.i_crit_edge, label %if.then17.i, !dbg !719

if.then14.i.if.end53.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !719
  br label %if.end53.i, !dbg !719

if.then17.i:                                      ; preds = %if.then14.i
  %incdec.ptr18.i = getelementptr i8, ptr %call15.i, i32 1, !dbg !720
  %64 = ptrtoint ptr %call15.i to i32, !dbg !721
  call void @__asan_store1_noabort(i32 %64), !dbg !721
  store i8 0, ptr %call15.i, align 1, !dbg !721
  %call19.i = tail call ptr @strchr(ptr noundef %incdec.ptr18.i, i32 noundef 93) #20, !dbg !722
  %tobool20.not.i = icmp eq ptr %call19.i, null, !dbg !723
  br i1 %tobool20.not.i, label %if.then21.i70, label %if.else23.i, !dbg !724

if.then21.i70:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !725
  %gcov_ctr334.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 4), align 16, !dbg !725
  %65 = add i64 %gcov_ctr334.i, 1, !dbg !725
  store i64 %65, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 4), align 16, !dbg !725
  %call22.i = tail call i32 @strlen(ptr noundef %incdec.ptr18.i) #23, !dbg !726
  %add.ptr.i = getelementptr i8, ptr %incdec.ptr18.i, i32 %call22.i, !dbg !727
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32, !dbg !728
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call.i64 to i32, !dbg !728
  %sub.ptr.sub.i = sub i32 %sub.ptr.sub29, %sub.ptr.rhs.cast.i, !dbg !728
  %add.i = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i, !dbg !729
  tail call void @__trace_probe_log_err(i32 noundef %add.i, i32 noundef 36) #20, !dbg !730
  br label %out.i, !dbg !731

if.else23.i:                                      ; preds = %if.then17.i
  %arrayidx.i71 = getelementptr i8, ptr %call19.i, i32 1, !dbg !732
  %66 = ptrtoint ptr %arrayidx.i71 to i32, !dbg !732
  call void @__asan_load1_noabort(i32 %66), !dbg !732
  %67 = load i8, ptr %arrayidx.i71, align 1, !dbg !732
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67), !dbg !733
  %cmp24.not.i = icmp eq i8 %67, 0, !dbg !733
  br i1 %cmp24.not.i, label %if.end33.i, label %if.then26.i, !dbg !732

if.then26.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !734
  %gcov_ctr335.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 5), align 8, !dbg !734
  %68 = add i64 %gcov_ctr335.i, 1, !dbg !734
  store i64 %68, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 5), align 8, !dbg !734
  %add.ptr27.i = getelementptr i8, ptr %call19.i, i32 %sub.ptr.sub29, !dbg !734
  %add.ptr28.i = getelementptr i8, ptr %add.ptr27.i, i32 1, !dbg !734
  %sub.ptr.lhs.cast29.i = ptrtoint ptr %add.ptr28.i to i32, !dbg !734
  %sub.ptr.rhs.cast30.i = ptrtoint ptr %call.i64 to i32, !dbg !734
  %sub.ptr.sub31.i = sub i32 %sub.ptr.lhs.cast29.i, %sub.ptr.rhs.cast30.i, !dbg !734
  tail call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub31.i, i32 noundef 37) #20, !dbg !734
  br label %out.i, !dbg !735

if.end33.i:                                       ; preds = %if.else23.i
  %69 = ptrtoint ptr %call19.i to i32, !dbg !736
  call void @__asan_store1_noabort(i32 %69), !dbg !736
  store i8 0, ptr %call19.i, align 1, !dbg !736
  %count.i = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 3, !dbg !737
  %call34.i = tail call i32 @kstrtouint(ptr noundef %incdec.ptr18.i, i32 noundef 0, ptr noundef %count.i) #20, !dbg !738
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i), !dbg !738
  %tobool35.not.i = icmp eq i32 %call34.i, 0, !dbg !738
  br i1 %tobool35.not.i, label %lor.lhs.false.i, label %if.end33.i.if.then38.i_crit_edge, !dbg !739

if.end33.i.if.then38.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !739
  br label %if.then38.i, !dbg !739

lor.lhs.false.i:                                  ; preds = %if.end33.i
  %gcov_ctr336.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 6), align 16, !dbg !740
  %70 = add i64 %gcov_ctr336.i, 1, !dbg !740
  store i64 %70, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 6), align 16, !dbg !740
  %71 = ptrtoint ptr %count.i to i32, !dbg !741
  call void @__asan_load4_noabort(i32 %71), !dbg !741
  %72 = load i32, ptr %count.i, align 4, !dbg !741
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72), !dbg !740
  %tobool37.not.i = icmp eq i32 %72, 0, !dbg !740
  br i1 %tobool37.not.i, label %lor.lhs.false.i.if.then38.i_crit_edge, label %if.end43.i, !dbg !738

lor.lhs.false.i.if.then38.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !738
  br label %if.then38.i, !dbg !738

if.then38.i:                                      ; preds = %lor.lhs.false.i.if.then38.i_crit_edge, %if.end33.i.if.then38.i_crit_edge
  %gcov_ctr337.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 7), align 8, !dbg !742
  %73 = add i64 %gcov_ctr337.i, 1, !dbg !742
  store i64 %73, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 7), align 8, !dbg !742
  %add.ptr39.i = getelementptr i8, ptr %incdec.ptr18.i, i32 %sub.ptr.sub29, !dbg !742
  %sub.ptr.lhs.cast40.i = ptrtoint ptr %add.ptr39.i to i32, !dbg !742
  %sub.ptr.rhs.cast41.i = ptrtoint ptr %call.i64 to i32, !dbg !742
  %sub.ptr.sub42.i = sub i32 %sub.ptr.lhs.cast40.i, %sub.ptr.rhs.cast41.i, !dbg !742
  tail call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub42.i, i32 noundef 38) #20, !dbg !742
  br label %out.i, !dbg !743

if.end43.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %72), !dbg !744
  %cmp45.i = icmp ugt i32 %72, 64, !dbg !744
  br i1 %cmp45.i, label %if.then47.i, label %if.end52.i, !dbg !745

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !746
  %gcov_ctr338.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 8), align 16, !dbg !746
  %74 = add i64 %gcov_ctr338.i, 1, !dbg !746
  store i64 %74, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 8), align 16, !dbg !746
  %add.ptr48.i = getelementptr i8, ptr %incdec.ptr18.i, i32 %sub.ptr.sub29, !dbg !746
  %sub.ptr.lhs.cast49.i = ptrtoint ptr %add.ptr48.i to i32, !dbg !746
  %sub.ptr.rhs.cast50.i = ptrtoint ptr %call.i64 to i32, !dbg !746
  %sub.ptr.sub51.i = sub i32 %sub.ptr.lhs.cast49.i, %sub.ptr.rhs.cast50.i, !dbg !746
  tail call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub51.i, i32 noundef 39) #20, !dbg !746
  br label %out.i, !dbg !747

if.end52.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !748
  %gcov_ctr339.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 9), align 8, !dbg !748
  %75 = add i64 %gcov_ctr339.i, 1, !dbg !748
  store i64 %75, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 9), align 8, !dbg !748
  br label %if.end53.i, !dbg !748

if.end53.i:                                       ; preds = %if.end52.i, %if.then14.i.if.end53.i_crit_edge
  %gcov_ctr340.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 10), align 16, !dbg !749
  %76 = add i64 %gcov_ctr340.i, 1, !dbg !749
  store i64 %76, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 10), align 16, !dbg !749
  br label %if.end54.i, !dbg !749

if.end54.i:                                       ; preds = %if.end53.i, %if.end11.i.if.end54.i_crit_edge
  %t.0.i = phi ptr [ %incdec.ptr.i69, %if.end53.i ], [ null, %if.end11.i.if.end54.i_crit_edge ], !dbg !750
  %call55.i = tail call i32 @strcmp(ptr noundef nonnull %call.i64, ptr noundef nonnull dereferenceable(6) @.str.75) #23, !dbg !751
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i), !dbg !752
  %cmp56.i = icmp eq i32 %call55.i, 0, !dbg !752
  br i1 %cmp56.i, label %if.end54.i.if.then62.i_crit_edge, label %lor.lhs.false58.i, !dbg !753

if.end54.i.if.then62.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !753
  br label %if.then62.i, !dbg !753

lor.lhs.false58.i:                                ; preds = %if.end54.i
  %gcov_ctr341.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 11), align 8, !dbg !754
  %77 = add i64 %gcov_ctr341.i, 1, !dbg !754
  store i64 %77, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 11), align 8, !dbg !754
  %call59.i = tail call i32 @strncmp(ptr noundef nonnull %call.i64, ptr noundef nonnull dereferenceable(3) @.str.76, i32 noundef 2) #20, !dbg !755
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i), !dbg !756
  %cmp60.i = icmp eq i32 %call59.i, 0, !dbg !756
  br i1 %cmp60.i, label %lor.lhs.false58.i.if.then62.i_crit_edge, label %if.else72.i, !dbg !751

lor.lhs.false58.i.if.then62.i_crit_edge:          ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !751
  br label %if.then62.i, !dbg !751

if.then62.i:                                      ; preds = %lor.lhs.false58.i.if.then62.i_crit_edge, %if.end54.i.if.then62.i_crit_edge
  %count63.i = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 3, !dbg !757
  %78 = ptrtoint ptr %count63.i to i32, !dbg !757
  call void @__asan_load4_noabort(i32 %78), !dbg !757
  %79 = load i32, ptr %count63.i, align 4, !dbg !757
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79), !dbg !758
  %tobool64.not.i = icmp eq i32 %79, 0, !dbg !758
  br i1 %tobool64.not.i, label %lor.lhs.false65.i, label %if.then62.i.if.then69.i_crit_edge, !dbg !759

if.then62.i.if.then69.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !759
  br label %if.then69.i, !dbg !759

lor.lhs.false65.i:                                ; preds = %if.then62.i
  %gcov_ctr342.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 12), align 16, !dbg !760
  %80 = add i64 %gcov_ctr342.i, 1, !dbg !760
  store i64 %80, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 12), align 16, !dbg !760
  %tobool66.not.i = icmp eq ptr %t.0.i, null, !dbg !760
  br i1 %tobool66.not.i, label %lor.lhs.false65.i.if.end70.i_crit_edge, label %land.lhs.true.i72, !dbg !761

lor.lhs.false65.i.if.end70.i_crit_edge:           ; preds = %lor.lhs.false65.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !761
  br label %if.end70.i, !dbg !761

land.lhs.true.i72:                                ; preds = %lor.lhs.false65.i
  %gcov_ctr343.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 13), align 8, !dbg !762
  %81 = add i64 %gcov_ctr343.i, 1, !dbg !762
  store i64 %81, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 13), align 8, !dbg !762
  %call67.i = tail call i32 @strcmp(ptr noundef nonnull %t.0.i, ptr noundef nonnull dereferenceable(7) @.str.77) #23, !dbg !763
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i), !dbg !763
  %tobool68.not.i = icmp eq i32 %call67.i, 0, !dbg !763
  br i1 %tobool68.not.i, label %land.lhs.true.i72.if.end70.i_crit_edge, label %land.lhs.true.i72.if.then69.i_crit_edge, !dbg !758

land.lhs.true.i72.if.then69.i_crit_edge:          ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #19, !dbg !758
  br label %if.then69.i, !dbg !758

land.lhs.true.i72.if.end70.i_crit_edge:           ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #19, !dbg !758
  br label %if.end70.i, !dbg !758

if.then69.i:                                      ; preds = %land.lhs.true.i72.if.then69.i_crit_edge, %if.then62.i.if.then69.i_crit_edge
  %gcov_ctr344.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 14), align 16, !dbg !764
  %82 = add i64 %gcov_ctr344.i, 1, !dbg !764
  store i64 %82, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 14), align 16, !dbg !764
  br label %out.i, !dbg !764

if.end70.i:                                       ; preds = %land.lhs.true.i72.if.end70.i_crit_edge, %lor.lhs.false65.i.if.end70.i_crit_edge
  %gcov_ctr345.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 15), align 8, !dbg !765
  %83 = add i64 %gcov_ctr345.i, 1, !dbg !765
  store i64 %83, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 15), align 8, !dbg !765
  %call71.i = tail call fastcc ptr @find_fetch_type(ptr noundef nonnull @.str.77) #20, !dbg !765
  br label %if.end75.i, !dbg !766

if.else72.i:                                      ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !767
  %call73.i = tail call fastcc ptr @find_fetch_type(ptr noundef %t.0.i) #20, !dbg !767
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.else72.i, %if.end70.i
  %call73.sink.i = phi ptr [ %call73.i, %if.else72.i ], [ %call71.i, %if.end70.i ]
  %type74.i = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 7, !dbg !750
  %84 = ptrtoint ptr %type74.i to i32, !dbg !750
  call void @__asan_store4_noabort(i32 %84), !dbg !750
  store ptr %call73.sink.i, ptr %type74.i, align 4, !dbg !750
  %tobool77.not.i = icmp eq ptr %call73.sink.i, null, !dbg !768
  br i1 %tobool77.not.i, label %if.then78.i, label %if.end84.i, !dbg !769

if.then78.i:                                      ; preds = %if.end75.i
  %tobool79.not.i = icmp eq ptr %t.0.i, null, !dbg !770
  br i1 %tobool79.not.i, label %cond.false.i, label %cond.true.i, !dbg !770

cond.true.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !770
  %gcov_ctr346.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 16), align 16, !dbg !770
  %85 = add i64 %gcov_ctr346.i, 1, !dbg !770
  store i64 %85, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 16), align 16, !dbg !770
  %sub.ptr.lhs.cast80.i = ptrtoint ptr %t.0.i to i32, !dbg !770
  %sub.ptr.rhs.cast81.i = ptrtoint ptr %call.i64 to i32, !dbg !770
  %sub.ptr.sub82.i = sub i32 %sub.ptr.lhs.cast80.i, %sub.ptr.rhs.cast81.i, !dbg !770
  br label %cond.end.i, !dbg !770

cond.false.i:                                     ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !770
  %gcov_ctr347.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 17), align 8, !dbg !770
  %86 = add i64 %gcov_ctr347.i, 1, !dbg !770
  store i64 %86, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 17), align 8, !dbg !770
  br label %cond.end.i, !dbg !770

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub.ptr.sub82.i, %cond.true.i ], [ 0, %cond.false.i ], !dbg !770
  %add83.i = add i32 %cond.i, %sub.ptr.sub29, !dbg !770
  tail call void @__trace_probe_log_err(i32 noundef %add83.i, i32 noundef 40) #20, !dbg !770
  br label %out.i, !dbg !771

if.end84.i:                                       ; preds = %if.end75.i
  %87 = ptrtoint ptr %size to i32, !dbg !772
  call void @__asan_load4_noabort(i32 %87), !dbg !772
  %88 = load i32, ptr %size, align 4, !dbg !772
  %offset85.i = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 2, !dbg !773
  %89 = ptrtoint ptr %offset85.i to i32, !dbg !774
  call void @__asan_store4_noabort(i32 %89), !dbg !774
  store i32 %88, ptr %offset85.i, align 4, !dbg !774
  %size87.i = getelementptr inbounds %struct.fetch_type, ptr %call73.sink.i, i32 0, i32 1, !dbg !775
  %90 = ptrtoint ptr %size87.i to i32, !dbg !775
  call void @__asan_load4_noabort(i32 %90), !dbg !775
  %91 = load i32, ptr %size87.i, align 4, !dbg !775
  %count88.i = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 3, !dbg !776
  %92 = ptrtoint ptr %count88.i to i32, !dbg !776
  call void @__asan_load4_noabort(i32 %92), !dbg !776
  %93 = load i32, ptr %count88.i, align 4, !dbg !776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93), !dbg !777
  %tobool89.not.i = icmp eq i32 %93, 0, !dbg !777
  br i1 %tobool89.not.i, label %cond.end92.i, label %cond.end92.i.thread, !dbg !777

cond.end92.i.thread:                              ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !778
  %mul.i80 = mul i32 %93, %91, !dbg !778
  %94 = ptrtoint ptr %size to i32, !dbg !779
  call void @__asan_load4_noabort(i32 %94), !dbg !779
  %95 = load i32, ptr %size, align 4, !dbg !779
  %add94.i81 = add i32 %95, %mul.i80, !dbg !779
  store i32 %add94.i81, ptr %size, align 4, !dbg !779
  br label %if.then97.i, !dbg !780

cond.end92.i:                                     ; preds = %if.end84.i
  %gcov_ctr348.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 18), align 16, !dbg !777
  %96 = add i64 %gcov_ctr348.i, 1, !dbg !777
  store i64 %96, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 18), align 16, !dbg !777
  %97 = ptrtoint ptr %count88.i to i32, !dbg !781
  call void @__asan_load4_noabort(i32 %97), !dbg !781
  %.pr = load i32, ptr %count88.i, align 4, !dbg !781
  %98 = ptrtoint ptr %size to i32, !dbg !779
  call void @__asan_load4_noabort(i32 %98), !dbg !779
  %99 = load i32, ptr %size, align 4, !dbg !779
  %add94.i = add i32 %99, %91, !dbg !779
  store i32 %add94.i, ptr %size, align 4, !dbg !779
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr), !dbg !780
  %tobool96.not.i = icmp eq i32 %.pr, 0, !dbg !780
  br i1 %tobool96.not.i, label %cond.end92.i.if.end111.i_crit_edge, label %cond.end92.i.if.then97.i_crit_edge, !dbg !780

cond.end92.i.if.then97.i_crit_edge:               ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !780
  br label %if.then97.i, !dbg !780

cond.end92.i.if.end111.i_crit_edge:               ; preds = %cond.end92.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !780
  br label %if.end111.i, !dbg !780

if.then97.i:                                      ; preds = %cond.end92.i.if.then97.i_crit_edge, %cond.end92.i.thread
  %100 = ptrtoint ptr %type74.i to i32, !dbg !782
  call void @__asan_load4_noabort(i32 %100), !dbg !782
  %101 = load ptr, ptr %type74.i, align 4, !dbg !782
  %fmttype.i = getelementptr inbounds %struct.fetch_type, ptr %101, i32 0, i32 5, !dbg !783
  %102 = ptrtoint ptr %fmttype.i to i32, !dbg !783
  call void @__asan_load4_noabort(i32 %102), !dbg !783
  %103 = load ptr, ptr %fmttype.i, align 4, !dbg !783
  %call99.i = tail call i32 @strlen(ptr noundef %103) #23, !dbg !784
  %add100.i = add i32 %call99.i, 6, !dbg !785
  %gcov_ctr12.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !786
  %104 = add i64 %gcov_ctr12.i.i, 1, !dbg !786
  store i64 %104, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !786
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add100.i, i32 noundef 3264) #22, !dbg !788
  %fmt.i = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 6, !dbg !789
  %105 = ptrtoint ptr %fmt.i to i32, !dbg !790
  call void @__asan_store4_noabort(i32 %105), !dbg !790
  store ptr %call9.i.i, ptr %fmt.i, align 4, !dbg !790
  %tobool103.not.i = icmp eq ptr %call9.i.i, null, !dbg !791
  br i1 %tobool103.not.i, label %if.then104.i, label %if.end105.i, !dbg !792

if.then104.i:                                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !793
  %gcov_ctr350.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 20), align 16, !dbg !793
  %106 = add i64 %gcov_ctr350.i, 1, !dbg !793
  store i64 %106, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 20), align 16, !dbg !793
  br label %out.i, !dbg !793

if.end105.i:                                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !794
  %gcov_ctr349.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 19), align 8, !dbg !794
  %107 = add i64 %gcov_ctr349.i, 1, !dbg !794
  store i64 %107, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 19), align 8, !dbg !794
  %108 = ptrtoint ptr %fmt.i to i32, !dbg !795
  call void @__asan_load4_noabort(i32 %108), !dbg !795
  %109 = load ptr, ptr %fmt.i, align 4, !dbg !795
  %110 = ptrtoint ptr %type74.i to i32, !dbg !796
  call void @__asan_load4_noabort(i32 %110), !dbg !796
  %111 = load ptr, ptr %type74.i, align 4, !dbg !796
  %fmttype108.i = getelementptr inbounds %struct.fetch_type, ptr %111, i32 0, i32 5, !dbg !797
  %112 = ptrtoint ptr %fmttype108.i to i32, !dbg !797
  call void @__asan_load4_noabort(i32 %112), !dbg !797
  %113 = load ptr, ptr %fmttype108.i, align 4, !dbg !797
  %114 = ptrtoint ptr %count88.i to i32, !dbg !798
  call void @__asan_load4_noabort(i32 %114), !dbg !798
  %115 = load i32, ptr %count88.i, align 4, !dbg !798
  %call110.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %109, i32 noundef %add100.i, ptr noundef nonnull @.str.78, ptr noundef %113, i32 noundef %115) #20, !dbg !799
  br label %if.end111.i, !dbg !800

if.end111.i:                                      ; preds = %if.end105.i, %cond.end92.i.if.end111.i_crit_edge
  %call112.i = tail call fastcc noalias ptr @kcalloc(i32 noundef 16) #20, !dbg !801
  %116 = ptrtoint ptr %code.i to i32, !dbg !802
  call void @__asan_store4_noabort(i32 %116), !dbg !802
  store ptr %call112.i, ptr %code.i, align 4, !dbg !802
  %tobool113.not.i = icmp eq ptr %call112.i, null, !dbg !803
  br i1 %tobool113.not.i, label %if.then114.i, label %if.end115.i, !dbg !804

if.then114.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !805
  %gcov_ctr351.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 21), align 8, !dbg !805
  %117 = add i64 %gcov_ctr351.i, 1, !dbg !805
  store i64 %117, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 21), align 8, !dbg !805
  br label %out.i, !dbg !805

if.end115.i:                                      ; preds = %if.end111.i
  %arrayidx116.i = getelementptr %struct.fetch_insn, ptr %call112.i, i32 15, !dbg !806
  %118 = ptrtoint ptr %arrayidx116.i to i32, !dbg !807
  call void @__asan_store4_noabort(i32 %118), !dbg !807
  store i32 20, ptr %arrayidx116.i, align 4, !dbg !807
  %call119.i = call fastcc i32 @parse_probe_arg(ptr noundef nonnull %call.i64, ptr noundef nonnull %code.i, ptr noundef %arrayidx116.i, i32 noundef %flags, i32 noundef %sub.ptr.sub29) #20, !dbg !808
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i), !dbg !809
  %tobool120.not.i = icmp eq i32 %call119.i, 0, !dbg !809
  br i1 %tobool120.not.i, label %if.end122.i, label %if.then121.i, !dbg !809

if.then121.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !810
  %gcov_ctr352.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 22), align 16, !dbg !810
  %119 = add i64 %gcov_ctr352.i, 1, !dbg !810
  store i64 %119, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 22), align 16, !dbg !810
  br label %if.then308.i, !dbg !810

if.end122.i:                                      ; preds = %if.end115.i
  %120 = ptrtoint ptr %type74.i to i32, !dbg !811
  call void @__asan_load4_noabort(i32 %120), !dbg !811
  %121 = load ptr, ptr %type74.i, align 4, !dbg !811
  %122 = ptrtoint ptr %121 to i32, !dbg !812
  call void @__asan_load4_noabort(i32 %122), !dbg !812
  %123 = load ptr, ptr %121, align 4, !dbg !812
  %call124.i = tail call i32 @strcmp(ptr noundef %123, ptr noundef nonnull dereferenceable(7) @.str.77) #23, !dbg !813
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124.i), !dbg !813
  %tobool125.not.i = icmp eq i32 %call124.i, 0, !dbg !813
  br i1 %tobool125.not.i, label %if.end122.i.if.then131.i_crit_edge, label %lor.lhs.false126.i, !dbg !814

if.end122.i.if.then131.i_crit_edge:               ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !814
  br label %if.then131.i, !dbg !814

lor.lhs.false126.i:                               ; preds = %if.end122.i
  %gcov_ctr353.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 23), align 8, !dbg !815
  %124 = add i64 %gcov_ctr353.i, 1, !dbg !815
  store i64 %124, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 23), align 8, !dbg !815
  %125 = ptrtoint ptr %type74.i to i32, !dbg !816
  call void @__asan_load4_noabort(i32 %125), !dbg !816
  %126 = load ptr, ptr %type74.i, align 4, !dbg !816
  %127 = ptrtoint ptr %126 to i32, !dbg !817
  call void @__asan_load4_noabort(i32 %127), !dbg !817
  %128 = load ptr, ptr %126, align 4, !dbg !817
  %call129.i = tail call i32 @strcmp(ptr noundef %128, ptr noundef nonnull dereferenceable(8) @.str.79) #23, !dbg !818
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i), !dbg !818
  %tobool130.not.i = icmp eq i32 %call129.i, 0, !dbg !818
  br i1 %tobool130.not.i, label %lor.lhs.false126.i.if.then131.i_crit_edge, label %if.else208.i, !dbg !819

lor.lhs.false126.i.if.then131.i_crit_edge:        ; preds = %lor.lhs.false126.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !819
  br label %if.then131.i, !dbg !819

if.then131.i:                                     ; preds = %lor.lhs.false126.i.if.then131.i_crit_edge, %if.end122.i.if.then131.i_crit_edge
  %129 = ptrtoint ptr %code.i to i32, !dbg !820
  call void @__asan_load4_noabort(i32 %129), !dbg !820
  %130 = load ptr, ptr %code.i, align 4, !dbg !820
  %131 = ptrtoint ptr %130 to i32, !dbg !821
  call void @__asan_load4_noabort(i32 %131), !dbg !821
  %132 = load i32, ptr %130, align 4, !dbg !821
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %132), !dbg !822
  %cmp133.not.i = icmp eq i32 %132, 10, !dbg !822
  br i1 %cmp133.not.i, label %if.then131.i.lor.lhs.false169.i_crit_edge, label %land.lhs.true135.i, !dbg !823

if.then131.i.lor.lhs.false169.i_crit_edge:        ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !823
  br label %lor.lhs.false169.i, !dbg !823

land.lhs.true135.i:                               ; preds = %if.then131.i
  %gcov_ctr354.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 24), align 16, !dbg !824
  %133 = add i64 %gcov_ctr354.i, 1, !dbg !824
  store i64 %133, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 24), align 16, !dbg !824
  %134 = ptrtoint ptr %130 to i32, !dbg !825
  call void @__asan_load4_noabort(i32 %134), !dbg !825
  %135 = load i32, ptr %130, align 4, !dbg !825
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %135), !dbg !826
  %cmp137.not.i = icmp eq i32 %135, 11, !dbg !826
  br i1 %cmp137.not.i, label %land.lhs.true135.i.lor.lhs.false169.i_crit_edge, label %land.lhs.true139.i, !dbg !827

land.lhs.true135.i.lor.lhs.false169.i_crit_edge:  ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !827
  br label %lor.lhs.false169.i, !dbg !827

land.lhs.true139.i:                               ; preds = %land.lhs.true135.i
  %gcov_ctr355.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 25), align 8, !dbg !828
  %136 = add i64 %gcov_ctr355.i, 1, !dbg !828
  store i64 %136, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 25), align 8, !dbg !828
  %137 = ptrtoint ptr %130 to i32, !dbg !829
  call void @__asan_load4_noabort(i32 %137), !dbg !829
  %138 = load i32, ptr %130, align 4, !dbg !829
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %138), !dbg !830
  %cmp141.not.i = icmp eq i32 %138, 5, !dbg !830
  br i1 %cmp141.not.i, label %land.lhs.true139.i.if.then184.i_crit_edge, label %land.lhs.true143.i, !dbg !831

land.lhs.true139.i.if.then184.i_crit_edge:        ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !831
  br label %if.then184.i, !dbg !831

land.lhs.true143.i:                               ; preds = %land.lhs.true139.i
  %gcov_ctr356.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 26), align 16, !dbg !832
  %139 = add i64 %gcov_ctr356.i, 1, !dbg !832
  store i64 %139, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 26), align 16, !dbg !832
  %140 = ptrtoint ptr %130 to i32, !dbg !833
  call void @__asan_load4_noabort(i32 %140), !dbg !833
  %141 = load i32, ptr %130, align 4, !dbg !833
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %141), !dbg !834
  %cmp145.not.i = icmp eq i32 %141, 6, !dbg !834
  br i1 %cmp145.not.i, label %land.lhs.true143.i.lor.lhs.false169.i_crit_edge, label %land.lhs.true147.i, !dbg !835

land.lhs.true143.i.lor.lhs.false169.i_crit_edge:  ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !835
  br label %lor.lhs.false169.i, !dbg !835

land.lhs.true147.i:                               ; preds = %land.lhs.true143.i
  %gcov_ctr357.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 27), align 8, !dbg !836
  %142 = add i64 %gcov_ctr357.i, 1, !dbg !836
  store i64 %142, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 27), align 8, !dbg !836
  %143 = ptrtoint ptr %130 to i32, !dbg !837
  call void @__asan_load4_noabort(i32 %143), !dbg !837
  %144 = load i32, ptr %130, align 4, !dbg !837
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %144), !dbg !838
  %cmp149.not.i = icmp eq i32 %144, 9, !dbg !838
  br i1 %cmp149.not.i, label %land.lhs.true147.i.lor.lhs.false169.i_crit_edge, label %land.lhs.true151.i, !dbg !839

land.lhs.true147.i.lor.lhs.false169.i_crit_edge:  ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !839
  br label %lor.lhs.false169.i, !dbg !839

land.lhs.true151.i:                               ; preds = %land.lhs.true147.i
  %gcov_ctr358.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 28), align 16, !dbg !840
  %145 = add i64 %gcov_ctr358.i, 1, !dbg !840
  store i64 %145, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 28), align 16, !dbg !840
  %146 = ptrtoint ptr %130 to i32, !dbg !841
  call void @__asan_load4_noabort(i32 %146), !dbg !841
  %147 = load i32, ptr %130, align 4, !dbg !841
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %147), !dbg !842
  %cmp153.not.i = icmp eq i32 %147, 19, !dbg !842
  br i1 %cmp153.not.i, label %land.lhs.true151.i.lor.lhs.false169.i_crit_edge, label %if.then155.i, !dbg !820

land.lhs.true151.i.lor.lhs.false169.i_crit_edge:  ; preds = %land.lhs.true151.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !820
  br label %lor.lhs.false169.i, !dbg !820

if.then155.i:                                     ; preds = %land.lhs.true151.i
  %tobool156.not.i = icmp eq ptr %t.0.i, null, !dbg !843
  br i1 %tobool156.not.i, label %cond.false161.i, label %cond.true157.i, !dbg !843

cond.true157.i:                                   ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !843
  %gcov_ctr360.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 30), align 16, !dbg !843
  %148 = add i64 %gcov_ctr360.i, 1, !dbg !843
  store i64 %148, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 30), align 16, !dbg !843
  %sub.ptr.lhs.cast158.i = ptrtoint ptr %t.0.i to i32, !dbg !843
  %sub.ptr.rhs.cast159.i = ptrtoint ptr %call.i64 to i32, !dbg !843
  %sub.ptr.sub160.i = sub i32 %sub.ptr.lhs.cast158.i, %sub.ptr.rhs.cast159.i, !dbg !843
  br label %cond.end162.i, !dbg !843

cond.false161.i:                                  ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !843
  %gcov_ctr359.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 29), align 8, !dbg !843
  %149 = add i64 %gcov_ctr359.i, 1, !dbg !843
  store i64 %149, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 29), align 8, !dbg !843
  br label %cond.end162.i, !dbg !843

cond.end162.i:                                    ; preds = %cond.false161.i, %cond.true157.i
  %cond163.i = phi i32 [ %sub.ptr.sub160.i, %cond.true157.i ], [ 0, %cond.false161.i ], !dbg !843
  %add164.i = add i32 %cond163.i, %sub.ptr.sub29, !dbg !843
  tail call void @__trace_probe_log_err(i32 noundef %add164.i, i32 noundef 41) #20, !dbg !843
  br label %if.then308.i, !dbg !844

lor.lhs.false169.i:                               ; preds = %land.lhs.true151.i.lor.lhs.false169.i_crit_edge, %land.lhs.true147.i.lor.lhs.false169.i_crit_edge, %land.lhs.true143.i.lor.lhs.false169.i_crit_edge, %land.lhs.true135.i.lor.lhs.false169.i_crit_edge, %if.then131.i.lor.lhs.false169.i_crit_edge
  %gcov_ctr361.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 31), align 8, !dbg !845
  %150 = add i64 %gcov_ctr361.i, 1, !dbg !845
  store i64 %150, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 31), align 8, !dbg !845
  %151 = ptrtoint ptr %130 to i32, !dbg !846
  call void @__asan_load4_noabort(i32 %151), !dbg !846
  %152 = load i32, ptr %130, align 4, !dbg !846
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %152), !dbg !847
  %cmp171.i = icmp eq i32 %152, 6, !dbg !847
  br i1 %cmp171.i, label %lor.lhs.false169.i.if.then184.i_crit_edge, label %lor.lhs.false173.i, !dbg !848

lor.lhs.false169.i.if.then184.i_crit_edge:        ; preds = %lor.lhs.false169.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !848
  br label %if.then184.i, !dbg !848

lor.lhs.false173.i:                               ; preds = %lor.lhs.false169.i
  %gcov_ctr362.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 32), align 16, !dbg !849
  %153 = add i64 %gcov_ctr362.i, 1, !dbg !849
  store i64 %153, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 32), align 16, !dbg !849
  %154 = ptrtoint ptr %130 to i32, !dbg !850
  call void @__asan_load4_noabort(i32 %154), !dbg !850
  %155 = load i32, ptr %130, align 4, !dbg !850
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %155), !dbg !851
  %cmp175.i = icmp eq i32 %155, 9, !dbg !851
  br i1 %cmp175.i, label %lor.lhs.false173.i.if.then184.i_crit_edge, label %lor.lhs.false177.i, !dbg !852

lor.lhs.false173.i.if.then184.i_crit_edge:        ; preds = %lor.lhs.false173.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !852
  br label %if.then184.i, !dbg !852

lor.lhs.false177.i:                               ; preds = %lor.lhs.false173.i
  %gcov_ctr363.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 33), align 8, !dbg !853
  %156 = add i64 %gcov_ctr363.i, 1, !dbg !853
  store i64 %156, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 33), align 8, !dbg !853
  %157 = ptrtoint ptr %130 to i32, !dbg !854
  call void @__asan_load4_noabort(i32 %157), !dbg !854
  %158 = load i32, ptr %130, align 4, !dbg !854
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %158), !dbg !855
  %cmp179.i = icmp eq i32 %158, 19, !dbg !855
  br i1 %cmp179.i, label %lor.lhs.false177.i.if.then184.i_crit_edge, label %lor.lhs.false181.i, !dbg !856

lor.lhs.false177.i.if.then184.i_crit_edge:        ; preds = %lor.lhs.false177.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !856
  br label %if.then184.i, !dbg !856

lor.lhs.false181.i:                               ; preds = %lor.lhs.false177.i
  %gcov_ctr364.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 34), align 16, !dbg !857
  %159 = add i64 %gcov_ctr364.i, 1, !dbg !857
  store i64 %159, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 34), align 16, !dbg !857
  %160 = ptrtoint ptr %count88.i to i32, !dbg !858
  call void @__asan_load4_noabort(i32 %160), !dbg !858
  %161 = load i32, ptr %count88.i, align 4, !dbg !858
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161), !dbg !857
  %tobool183.not.i = icmp eq i32 %161, 0, !dbg !857
  br i1 %tobool183.not.i, label %lor.lhs.false181.i.if.end191.i_crit_edge, label %lor.lhs.false181.i.if.then184.i_crit_edge, !dbg !859

lor.lhs.false181.i.if.then184.i_crit_edge:        ; preds = %lor.lhs.false181.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !859
  br label %if.then184.i, !dbg !859

lor.lhs.false181.i.if.end191.i_crit_edge:         ; preds = %lor.lhs.false181.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !859
  br label %if.end191.i, !dbg !859

if.then184.i:                                     ; preds = %lor.lhs.false181.i.if.then184.i_crit_edge, %lor.lhs.false177.i.if.then184.i_crit_edge, %lor.lhs.false173.i.if.then184.i_crit_edge, %lor.lhs.false169.i.if.then184.i_crit_edge, %land.lhs.true139.i.if.then184.i_crit_edge
  %incdec.ptr185.i = getelementptr %struct.fetch_insn, ptr %130, i32 1, !dbg !860
  %162 = ptrtoint ptr %code.i to i32, !dbg !860
  call void @__asan_store4_noabort(i32 %162), !dbg !860
  store ptr %incdec.ptr185.i, ptr %code.i, align 4, !dbg !860
  %163 = ptrtoint ptr %incdec.ptr185.i to i32, !dbg !861
  call void @__asan_load4_noabort(i32 %163), !dbg !861
  %164 = load i32, ptr %incdec.ptr185.i, align 4, !dbg !861
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164), !dbg !862
  %cmp187.not.i = icmp eq i32 %164, 0, !dbg !862
  br i1 %cmp187.not.i, label %if.end190.i, label %if.then189.i, !dbg !863

if.then189.i:                                     ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !864
  %gcov_ctr365.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 35), align 8, !dbg !864
  %165 = add i64 %gcov_ctr365.i, 1, !dbg !864
  store i64 %165, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 35), align 8, !dbg !864
  tail call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub29, i32 noundef 30) #20, !dbg !864
  br label %if.then308.i, !dbg !865

if.end190.i:                                      ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !866
  %gcov_ctr366.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 36), align 16, !dbg !866
  %166 = add i64 %gcov_ctr366.i, 1, !dbg !866
  store i64 %166, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 36), align 16, !dbg !866
  br label %if.end191.i, !dbg !866

if.end191.i:                                      ; preds = %if.end190.i, %lor.lhs.false181.i.if.end191.i_crit_edge
  %167 = ptrtoint ptr %type74.i to i32, !dbg !867
  call void @__asan_load4_noabort(i32 %167), !dbg !867
  %168 = load ptr, ptr %type74.i, align 4, !dbg !867
  %169 = ptrtoint ptr %168 to i32, !dbg !868
  call void @__asan_load4_noabort(i32 %169), !dbg !868
  %170 = load ptr, ptr %168, align 4, !dbg !868
  %call194.i = tail call i32 @strcmp(ptr noundef %170, ptr noundef nonnull dereferenceable(8) @.str.79) #23, !dbg !869
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194.i), !dbg !869
  %tobool195.not.i = icmp eq i32 %call194.i, 0, !dbg !869
  br i1 %tobool195.not.i, label %if.end191.i.if.then200.i_crit_edge, label %lor.lhs.false196.i, !dbg !870

if.end191.i.if.then200.i_crit_edge:               ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !870
  br label %if.then200.i, !dbg !870

lor.lhs.false196.i:                               ; preds = %if.end191.i
  %gcov_ctr367.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 37), align 8, !dbg !871
  %171 = add i64 %gcov_ctr367.i, 1, !dbg !871
  store i64 %171, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 37), align 8, !dbg !871
  %172 = ptrtoint ptr %code.i to i32, !dbg !871
  call void @__asan_load4_noabort(i32 %172), !dbg !871
  %173 = load ptr, ptr %code.i, align 4, !dbg !871
  %174 = ptrtoint ptr %173 to i32, !dbg !872
  call void @__asan_load4_noabort(i32 %174), !dbg !872
  %175 = load i32, ptr %173, align 4, !dbg !872
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %175), !dbg !873
  %cmp198.i = icmp eq i32 %175, 11, !dbg !873
  br i1 %cmp198.i, label %lor.lhs.false196.i.if.then200.i_crit_edge, label %if.else202.i, !dbg !874

lor.lhs.false196.i.if.then200.i_crit_edge:        ; preds = %lor.lhs.false196.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !874
  br label %if.then200.i, !dbg !874

if.then200.i:                                     ; preds = %lor.lhs.false196.i.if.then200.i_crit_edge, %if.end191.i.if.then200.i_crit_edge
  %gcov_ctr368.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 38), align 16, !dbg !875
  %176 = add i64 %gcov_ctr368.i, 1, !dbg !875
  store i64 %176, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 38), align 16, !dbg !875
  %177 = ptrtoint ptr %code.i to i32, !dbg !875
  call void @__asan_load4_noabort(i32 %177), !dbg !875
  %178 = load ptr, ptr %code.i, align 4, !dbg !875
  %179 = ptrtoint ptr %178 to i32, !dbg !876
  call void @__asan_store4_noabort(i32 %179), !dbg !876
  store i32 16, ptr %178, align 4, !dbg !876
  br label %if.end204.i, !dbg !875

if.else202.i:                                     ; preds = %lor.lhs.false196.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !877
  %gcov_ctr369.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 39), align 8, !dbg !877
  %180 = add i64 %gcov_ctr369.i, 1, !dbg !877
  store i64 %180, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 39), align 8, !dbg !877
  %181 = ptrtoint ptr %173 to i32, !dbg !878
  call void @__asan_store4_noabort(i32 %181), !dbg !878
  store i32 15, ptr %173, align 4, !dbg !878
  br label %if.end204.i

if.end204.i:                                      ; preds = %if.else202.i, %if.then200.i
  %182 = ptrtoint ptr %type74.i to i32, !dbg !879
  call void @__asan_load4_noabort(i32 %182), !dbg !879
  %183 = load ptr, ptr %type74.i, align 4, !dbg !879
  %size206.i = getelementptr inbounds %struct.fetch_type, ptr %183, i32 0, i32 1, !dbg !880
  %184 = ptrtoint ptr %size206.i to i32, !dbg !880
  call void @__asan_load4_noabort(i32 %184), !dbg !880
  %185 = load i32, ptr %size206.i, align 4, !dbg !880
  %186 = ptrtoint ptr %code.i to i32, !dbg !881
  call void @__asan_load4_noabort(i32 %186), !dbg !881
  %187 = load ptr, ptr %code.i, align 4, !dbg !881
  %188 = getelementptr inbounds %struct.fetch_insn, ptr %187, i32 0, i32 1, !dbg !882
  %189 = ptrtoint ptr %188 to i32, !dbg !883
  call void @__asan_store4_noabort(i32 %189), !dbg !883
  store i32 %185, ptr %188, align 4, !dbg !883
  %dynamic.i = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i, i32 1, !dbg !884
  %190 = ptrtoint ptr %dynamic.i to i32, !dbg !885
  call void @__asan_store1_noabort(i32 %190), !dbg !885
  store i8 1, ptr %dynamic.i, align 4, !dbg !885
  br label %if.end239.i, !dbg !886

if.else208.i:                                     ; preds = %lor.lhs.false126.i
  %191 = ptrtoint ptr %code.i to i32, !dbg !887
  call void @__asan_load4_noabort(i32 %191), !dbg !887
  %192 = load ptr, ptr %code.i, align 4, !dbg !887
  %193 = ptrtoint ptr %192 to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %193), !dbg !888
  %194 = load i32, ptr %192, align 4, !dbg !888
  %195 = zext i32 %194 to i64, !dbg !887
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values), !dbg !887
  switch i32 %194, label %if.else226.i [
    i32 10, label %if.then212.i
    i32 11, label %if.then221.i
  ], !dbg !887

if.then212.i:                                     ; preds = %if.else208.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !889
  %gcov_ctr370.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 40), align 16, !dbg !889
  %196 = add i64 %gcov_ctr370.i, 1, !dbg !889
  store i64 %196, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 40), align 16, !dbg !889
  %197 = ptrtoint ptr %192 to i32, !dbg !890
  call void @__asan_store4_noabort(i32 %197), !dbg !890
  store i32 13, ptr %192, align 4, !dbg !890
  %198 = ptrtoint ptr %type74.i to i32, !dbg !891
  call void @__asan_load4_noabort(i32 %198), !dbg !891
  %199 = load ptr, ptr %type74.i, align 4, !dbg !891
  %size215.i = getelementptr inbounds %struct.fetch_type, ptr %199, i32 0, i32 1, !dbg !892
  %200 = ptrtoint ptr %size215.i to i32, !dbg !892
  call void @__asan_load4_noabort(i32 %200), !dbg !892
  %201 = load i32, ptr %size215.i, align 4, !dbg !892
  %202 = ptrtoint ptr %code.i to i32, !dbg !893
  call void @__asan_load4_noabort(i32 %202), !dbg !893
  %203 = load ptr, ptr %code.i, align 4, !dbg !893
  %204 = getelementptr inbounds %struct.fetch_insn, ptr %203, i32 0, i32 1, !dbg !894
  %205 = ptrtoint ptr %204 to i32, !dbg !895
  call void @__asan_store4_noabort(i32 %205), !dbg !895
  store i32 %201, ptr %204, align 4, !dbg !895
  br label %if.end239.i, !dbg !896

if.then221.i:                                     ; preds = %if.else208.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !897
  %gcov_ctr371.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 41), align 8, !dbg !897
  %206 = add i64 %gcov_ctr371.i, 1, !dbg !897
  store i64 %206, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 41), align 8, !dbg !897
  %207 = ptrtoint ptr %192 to i32, !dbg !898
  call void @__asan_store4_noabort(i32 %207), !dbg !898
  store i32 14, ptr %192, align 4, !dbg !898
  %208 = ptrtoint ptr %type74.i to i32, !dbg !899
  call void @__asan_load4_noabort(i32 %208), !dbg !899
  %209 = load ptr, ptr %type74.i, align 4, !dbg !899
  %size224.i = getelementptr inbounds %struct.fetch_type, ptr %209, i32 0, i32 1, !dbg !900
  %210 = ptrtoint ptr %size224.i to i32, !dbg !900
  call void @__asan_load4_noabort(i32 %210), !dbg !900
  %211 = load i32, ptr %size224.i, align 4, !dbg !900
  %212 = ptrtoint ptr %code.i to i32, !dbg !901
  call void @__asan_load4_noabort(i32 %212), !dbg !901
  %213 = load ptr, ptr %code.i, align 4, !dbg !901
  %214 = getelementptr inbounds %struct.fetch_insn, ptr %213, i32 0, i32 1, !dbg !902
  %215 = ptrtoint ptr %214 to i32, !dbg !903
  call void @__asan_store4_noabort(i32 %215), !dbg !903
  store i32 %211, ptr %214, align 4, !dbg !903
  br label %if.end239.i, !dbg !904

if.else226.i:                                     ; preds = %if.else208.i
  %incdec.ptr227.i = getelementptr %struct.fetch_insn, ptr %192, i32 1, !dbg !905
  %216 = ptrtoint ptr %code.i to i32, !dbg !905
  call void @__asan_store4_noabort(i32 %216), !dbg !905
  store ptr %incdec.ptr227.i, ptr %code.i, align 4, !dbg !905
  %217 = ptrtoint ptr %incdec.ptr227.i to i32, !dbg !906
  call void @__asan_load4_noabort(i32 %217), !dbg !906
  %218 = load i32, ptr %incdec.ptr227.i, align 4, !dbg !906
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218), !dbg !907
  %cmp229.not.i = icmp eq i32 %218, 0, !dbg !907
  br i1 %cmp229.not.i, label %if.end232.i, label %if.then231.i, !dbg !908

if.then231.i:                                     ; preds = %if.else226.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !909
  %gcov_ctr373.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 43), align 8, !dbg !909
  %219 = add i64 %gcov_ctr373.i, 1, !dbg !909
  store i64 %219, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 43), align 8, !dbg !909
  tail call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub29, i32 noundef 30) #20, !dbg !909
  br label %if.then308.i, !dbg !910

if.end232.i:                                      ; preds = %if.else226.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !911
  %gcov_ctr372.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 42), align 16, !dbg !911
  %220 = add i64 %gcov_ctr372.i, 1, !dbg !911
  store i64 %220, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 42), align 16, !dbg !911
  %221 = ptrtoint ptr %incdec.ptr227.i to i32, !dbg !912
  call void @__asan_store4_noabort(i32 %221), !dbg !912
  store i32 12, ptr %incdec.ptr227.i, align 4, !dbg !912
  %222 = ptrtoint ptr %type74.i to i32, !dbg !913
  call void @__asan_load4_noabort(i32 %222), !dbg !913
  %223 = load ptr, ptr %type74.i, align 4, !dbg !913
  %size235.i = getelementptr inbounds %struct.fetch_type, ptr %223, i32 0, i32 1, !dbg !914
  %224 = ptrtoint ptr %size235.i to i32, !dbg !914
  call void @__asan_load4_noabort(i32 %224), !dbg !914
  %225 = load i32, ptr %size235.i, align 4, !dbg !914
  %226 = ptrtoint ptr %code.i to i32, !dbg !915
  call void @__asan_load4_noabort(i32 %226), !dbg !915
  %227 = load ptr, ptr %code.i, align 4, !dbg !915
  %228 = getelementptr inbounds %struct.fetch_insn, ptr %227, i32 0, i32 1, !dbg !916
  %229 = ptrtoint ptr %228 to i32, !dbg !917
  call void @__asan_store4_noabort(i32 %229), !dbg !917
  store i32 %225, ptr %228, align 4, !dbg !917
  br label %if.end239.i

if.end239.i:                                      ; preds = %if.end232.i, %if.then221.i, %if.then212.i, %if.end204.i
  %230 = ptrtoint ptr %code.i to i32, !dbg !918
  call void @__asan_load4_noabort(i32 %230), !dbg !918
  %231 = load ptr, ptr %code.i, align 4, !dbg !918
  %cmp240.not.i = icmp eq ptr %t.0.i, null, !dbg !919
  br i1 %cmp240.not.i, label %if.end239.i.if.end252.i_crit_edge, label %if.then242.i, !dbg !920

if.end239.i.if.end252.i_crit_edge:                ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !920
  br label %if.end252.i, !dbg !920

if.then242.i:                                     ; preds = %if.end239.i
  %232 = ptrtoint ptr %type74.i to i32, !dbg !921
  call void @__asan_load4_noabort(i32 %232), !dbg !921
  %233 = load ptr, ptr %type74.i, align 4, !dbg !921
  %call244.i = call fastcc i32 @__parse_bitfield_probe_arg(ptr noundef nonnull %t.0.i, ptr noundef %233, ptr noundef nonnull %code.i) #20, !dbg !922
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244.i), !dbg !923
  %tobool245.not.i = icmp eq i32 %call244.i, 0, !dbg !923
  br i1 %tobool245.not.i, label %if.end251.i, label %if.then246.i, !dbg !923

if.then246.i:                                     ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !924
  %add.ptr247.i = getelementptr i8, ptr %t.0.i, i32 %sub.ptr.sub29, !dbg !924
  %sub.ptr.lhs.cast248.i = ptrtoint ptr %add.ptr247.i to i32, !dbg !924
  %sub.ptr.rhs.cast249.i = ptrtoint ptr %call.i64 to i32, !dbg !924
  %sub.ptr.sub250.i = sub i32 %sub.ptr.lhs.cast248.i, %sub.ptr.rhs.cast249.i, !dbg !924
  tail call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub250.i, i32 noundef 42) #20, !dbg !924
  br label %if.then308.i, !dbg !925

if.end251.i:                                      ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !926
  %gcov_ctr374.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 44), align 16, !dbg !926
  %234 = add i64 %gcov_ctr374.i, 1, !dbg !926
  store i64 %234, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 44), align 16, !dbg !926
  br label %if.end252.i, !dbg !926

if.end252.i:                                      ; preds = %if.end251.i, %if.end239.i.if.end252.i_crit_edge
  %235 = ptrtoint ptr %count88.i to i32, !dbg !927
  call void @__asan_load4_noabort(i32 %235), !dbg !927
  %236 = load i32, ptr %count88.i, align 4, !dbg !927
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236), !dbg !928
  %tobool254.not.i = icmp eq i32 %236, 0, !dbg !928
  br i1 %tobool254.not.i, label %if.end252.i.if.end286.i_crit_edge, label %if.then255.i, !dbg !928

if.end252.i.if.end286.i_crit_edge:                ; preds = %if.end252.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !928
  br label %if.end286.i, !dbg !928

if.then255.i:                                     ; preds = %if.end252.i
  %237 = ptrtoint ptr %231 to i32, !dbg !929
  call void @__asan_load4_noabort(i32 %237), !dbg !929
  %238 = load i32, ptr %231, align 4, !dbg !929
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %238), !dbg !930
  %cmp257.not.i = icmp eq i32 %238, 13, !dbg !930
  br i1 %cmp257.not.i, label %if.then255.i.if.end277.i_crit_edge, label %land.lhs.true259.i, !dbg !931

if.then255.i.if.end277.i_crit_edge:               ; preds = %if.then255.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !931
  br label %if.end277.i, !dbg !931

land.lhs.true259.i:                               ; preds = %if.then255.i
  %gcov_ctr375.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 45), align 8, !dbg !932
  %239 = add i64 %gcov_ctr375.i, 1, !dbg !932
  store i64 %239, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 45), align 8, !dbg !932
  %240 = ptrtoint ptr %231 to i32, !dbg !933
  call void @__asan_load4_noabort(i32 %240), !dbg !933
  %241 = load i32, ptr %231, align 4, !dbg !933
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %241), !dbg !934
  %cmp261.not.i = icmp eq i32 %241, 15, !dbg !934
  br i1 %cmp261.not.i, label %land.lhs.true259.i.if.end277.i_crit_edge, label %land.lhs.true263.i, !dbg !935

land.lhs.true259.i.if.end277.i_crit_edge:         ; preds = %land.lhs.true259.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !935
  br label %if.end277.i, !dbg !935

land.lhs.true263.i:                               ; preds = %land.lhs.true259.i
  %gcov_ctr376.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 46), align 16, !dbg !936
  %242 = add i64 %gcov_ctr376.i, 1, !dbg !936
  store i64 %242, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 46), align 16, !dbg !936
  %243 = ptrtoint ptr %231 to i32, !dbg !937
  call void @__asan_load4_noabort(i32 %243), !dbg !937
  %244 = load i32, ptr %231, align 4, !dbg !937
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %244), !dbg !938
  %cmp265.not.i = icmp eq i32 %244, 16, !dbg !938
  br i1 %cmp265.not.i, label %land.lhs.true263.i.if.end277.i_crit_edge, label %if.then267.i, !dbg !939

land.lhs.true263.i.if.end277.i_crit_edge:         ; preds = %land.lhs.true263.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !939
  br label %if.end277.i, !dbg !939

if.then267.i:                                     ; preds = %land.lhs.true263.i
  br i1 %cmp240.not.i, label %cond.false273.i, label %cond.true269.i, !dbg !940

cond.true269.i:                                   ; preds = %if.then267.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !940
  %gcov_ctr377.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 47), align 8, !dbg !940
  %245 = add i64 %gcov_ctr377.i, 1, !dbg !940
  store i64 %245, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 47), align 8, !dbg !940
  %sub.ptr.lhs.cast270.i = ptrtoint ptr %t.0.i to i32, !dbg !940
  %sub.ptr.rhs.cast271.i = ptrtoint ptr %call.i64 to i32, !dbg !940
  %sub.ptr.sub272.i = sub i32 %sub.ptr.lhs.cast270.i, %sub.ptr.rhs.cast271.i, !dbg !940
  br label %cond.end274.i, !dbg !940

cond.false273.i:                                  ; preds = %if.then267.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !940
  %gcov_ctr378.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 48), align 16, !dbg !940
  %246 = add i64 %gcov_ctr378.i, 1, !dbg !940
  store i64 %246, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 48), align 16, !dbg !940
  br label %cond.end274.i, !dbg !940

cond.end274.i:                                    ; preds = %cond.false273.i, %cond.true269.i
  %cond275.i = phi i32 [ %sub.ptr.sub272.i, %cond.true269.i ], [ 0, %cond.false273.i ], !dbg !940
  %add276.i = add i32 %cond275.i, %sub.ptr.sub29, !dbg !940
  tail call void @__trace_probe_log_err(i32 noundef %add276.i, i32 noundef 41) #20, !dbg !940
  br label %if.then308.i, !dbg !941

if.end277.i:                                      ; preds = %land.lhs.true263.i.if.end277.i_crit_edge, %land.lhs.true259.i.if.end277.i_crit_edge, %if.then255.i.if.end277.i_crit_edge
  %247 = ptrtoint ptr %code.i to i32, !dbg !942
  call void @__asan_load4_noabort(i32 %247), !dbg !942
  %248 = load ptr, ptr %code.i, align 4, !dbg !942
  %incdec.ptr278.i = getelementptr %struct.fetch_insn, ptr %248, i32 1, !dbg !942
  store ptr %incdec.ptr278.i, ptr %code.i, align 4, !dbg !942
  %249 = ptrtoint ptr %incdec.ptr278.i to i32, !dbg !943
  call void @__asan_load4_noabort(i32 %249), !dbg !943
  %250 = load i32, ptr %incdec.ptr278.i, align 4, !dbg !943
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250), !dbg !944
  %cmp280.not.i = icmp eq i32 %250, 0, !dbg !944
  br i1 %cmp280.not.i, label %if.end283.i, label %if.then282.i, !dbg !945

if.then282.i:                                     ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !946
  %gcov_ctr379.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 49), align 8, !dbg !946
  %251 = add i64 %gcov_ctr379.i, 1, !dbg !946
  store i64 %251, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 49), align 8, !dbg !946
  tail call void @__trace_probe_log_err(i32 noundef %sub.ptr.sub29, i32 noundef 30) #20, !dbg !946
  br label %if.then308.i, !dbg !947

if.end283.i:                                      ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !948
  %gcov_ctr380.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 50), align 16, !dbg !948
  %252 = add i64 %gcov_ctr380.i, 1, !dbg !948
  store i64 %252, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 50), align 16, !dbg !948
  %253 = ptrtoint ptr %incdec.ptr278.i to i32, !dbg !949
  call void @__asan_store4_noabort(i32 %253), !dbg !949
  store i32 18, ptr %incdec.ptr278.i, align 4, !dbg !949
  %254 = ptrtoint ptr %count88.i to i32, !dbg !950
  call void @__asan_load4_noabort(i32 %254), !dbg !950
  %255 = load i32, ptr %count88.i, align 4, !dbg !950
  %256 = ptrtoint ptr %code.i to i32, !dbg !951
  call void @__asan_load4_noabort(i32 %256), !dbg !951
  %257 = load ptr, ptr %code.i, align 4, !dbg !951
  %258 = getelementptr inbounds %struct.fetch_insn, ptr %257, i32 0, i32 1, !dbg !952
  %259 = ptrtoint ptr %258 to i32, !dbg !953
  call void @__asan_store4_noabort(i32 %259), !dbg !953
  store i32 %255, ptr %258, align 4, !dbg !953
  br label %if.end286.i, !dbg !954

if.end286.i:                                      ; preds = %if.end283.i, %if.end252.i.if.end286.i_crit_edge
  %260 = ptrtoint ptr %code.i to i32, !dbg !955
  call void @__asan_load4_noabort(i32 %260), !dbg !955
  %261 = load ptr, ptr %code.i, align 4, !dbg !955
  %incdec.ptr287.i = getelementptr %struct.fetch_insn, ptr %261, i32 1, !dbg !955
  store ptr %incdec.ptr287.i, ptr %code.i, align 4, !dbg !955
  %262 = ptrtoint ptr %incdec.ptr287.i to i32, !dbg !956
  call void @__asan_store4_noabort(i32 %262), !dbg !956
  store i32 20, ptr %incdec.ptr287.i, align 4, !dbg !956
  %263 = load ptr, ptr %code.i, align 4, !dbg !957
  %sub.ptr.lhs.cast289.i = ptrtoint ptr %263 to i32, !dbg !958
  %sub.ptr.rhs.cast290.i = ptrtoint ptr %call112.i to i32, !dbg !958
  %sub.ptr.sub291.i = sub i32 %sub.ptr.lhs.cast289.i, %sub.ptr.rhs.cast290.i, !dbg !958
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub291.i, 12, !dbg !958
  %add292.i = add nsw i32 %sub.ptr.div.i, 1, !dbg !959
  %call293.i = tail call fastcc noalias ptr @kcalloc(i32 noundef %add292.i) #20, !dbg !960
  %264 = ptrtoint ptr %arrayidx to i32, !dbg !961
  call void @__asan_store4_noabort(i32 %264), !dbg !961
  store ptr %call293.i, ptr %arrayidx, align 4, !dbg !961
  %tobool296.not.i = icmp eq ptr %call293.i, null, !dbg !962
  br i1 %tobool296.not.i, label %if.then297.i, label %fail.i, !dbg !963

if.then297.i:                                     ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !964
  %gcov_ctr381.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 51), align 8, !dbg !964
  %265 = add i64 %gcov_ctr381.i, 1, !dbg !964
  store i64 %265, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 51), align 8, !dbg !964
  br label %if.then308.i, !dbg !965

fail.i:                                           ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !966
  %gcov_ctr382.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 52), align 16, !dbg !966
  %266 = add i64 %gcov_ctr382.i, 1, !dbg !966
  store i64 %266, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 52), align 16, !dbg !966
  %267 = ptrtoint ptr %arrayidx to i32, !dbg !967
  call void @__asan_load4_noabort(i32 %267), !dbg !967
  %268 = load ptr, ptr %arrayidx, align 4, !dbg !967
  %269 = ptrtoint ptr %code.i to i32, !dbg !968
  call void @__asan_load4_noabort(i32 %269), !dbg !968
  %270 = load ptr, ptr %code.i, align 4, !dbg !968
  %sub.ptr.lhs.cast300.i = ptrtoint ptr %270 to i32, !dbg !969
  %sub.ptr.sub302.i = sub i32 12, %sub.ptr.rhs.cast290.i, !dbg !969
  %mul305.i = add i32 %sub.ptr.sub302.i, %sub.ptr.lhs.cast300.i, !dbg !970
  %271 = call ptr @memcpy(ptr %268, ptr %call112.i, i32 %mul305.i), !dbg !971
  br label %if.end322.i, !dbg !972

if.then308.i:                                     ; preds = %if.then297.i, %if.then282.i, %cond.end274.i, %if.then246.i, %if.then231.i, %if.then189.i, %cond.end162.i, %if.then121.i
  %ret.0.ph.i = phi i32 [ -22, %if.then189.i ], [ -22, %cond.end162.i ], [ -22, %if.then231.i ], [ -12, %if.then297.i ], [ -22, %if.then282.i ], [ -22, %cond.end274.i ], [ %call244.i, %if.then246.i ], [ %call119.i, %if.then121.i ]
  %gcov_ctr383.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 53), align 8, !dbg !973
  %272 = add i64 %gcov_ctr383.i, 1, !dbg !973
  store i64 %272, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 53), align 8, !dbg !973
  %add.ptr309.i = getelementptr %struct.fetch_insn, ptr %call112.i, i32 16
  %273 = ptrtoint ptr %code.i to i32, !dbg !750
  call void @__asan_store4_noabort(i32 %273), !dbg !750
  store ptr %call112.i, ptr %code.i, align 4, !dbg !750
  %cmp310499.i = icmp ult ptr %call112.i, %add.ptr309.i, !dbg !974
  br i1 %cmp310499.i, label %if.then308.i.for.body.i_crit_edge, label %if.then308.i.if.end322.i_crit_edge, !dbg !975

if.then308.i.if.end322.i_crit_edge:               ; preds = %if.then308.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !975
  br label %if.end322.i, !dbg !975

if.then308.i.for.body.i_crit_edge:                ; preds = %if.then308.i
  br label %for.body.i, !dbg !975

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then308.i.for.body.i_crit_edge
  %storemerge500.i = phi ptr [ %incdec.ptr321.i, %for.inc.i.for.body.i_crit_edge ], [ %call112.i, %if.then308.i.for.body.i_crit_edge ]
  %gcov_ctr384.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 54), align 16, !dbg !976
  %274 = add i64 %gcov_ctr384.i, 1, !dbg !976
  store i64 %274, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 54), align 16, !dbg !976
  %275 = ptrtoint ptr %storemerge500.i to i32, !dbg !977
  call void @__asan_load4_noabort(i32 %275), !dbg !977
  %276 = load i32, ptr %storemerge500.i, align 4, !dbg !977
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %276), !dbg !978
  %cmp313.i = icmp eq i32 %276, 21, !dbg !978
  br i1 %cmp313.i, label %for.body.i.if.then319.i_crit_edge, label %lor.lhs.false315.i, !dbg !979

for.body.i.if.then319.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !979
  br label %if.then319.i, !dbg !979

lor.lhs.false315.i:                               ; preds = %for.body.i
  %gcov_ctr385.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 55), align 8, !dbg !980
  %277 = add i64 %gcov_ctr385.i, 1, !dbg !980
  store i64 %277, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 55), align 8, !dbg !980
  %278 = ptrtoint ptr %storemerge500.i to i32, !dbg !981
  call void @__asan_load4_noabort(i32 %278), !dbg !981
  %279 = load i32, ptr %storemerge500.i, align 4, !dbg !981
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %279), !dbg !982
  %cmp317.i = icmp eq i32 %279, 9, !dbg !982
  br i1 %cmp317.i, label %lor.lhs.false315.i.if.then319.i_crit_edge, label %lor.lhs.false315.i.for.inc.i_crit_edge, !dbg !976

lor.lhs.false315.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false315.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !976
  br label %for.inc.i, !dbg !976

lor.lhs.false315.i.if.then319.i_crit_edge:        ; preds = %lor.lhs.false315.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !976
  br label %if.then319.i, !dbg !976

if.then319.i:                                     ; preds = %lor.lhs.false315.i.if.then319.i_crit_edge, %for.body.i.if.then319.i_crit_edge
  %gcov_ctr386.i = load i64, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 56), align 16, !dbg !983
  %280 = add i64 %gcov_ctr386.i, 1, !dbg !983
  store i64 %280, ptr getelementptr inbounds ([57 x i64], ptr @__llvm_gcov_ctr.138, i32 0, i32 56), align 16, !dbg !983
  %281 = getelementptr inbounds %struct.fetch_insn, ptr %storemerge500.i, i32 0, i32 1, !dbg !984
  %282 = ptrtoint ptr %281 to i32, !dbg !984
  call void @__asan_load4_noabort(i32 %282), !dbg !984
  %283 = load ptr, ptr %281, align 4, !dbg !984
  tail call void @kfree(ptr noundef %283) #20, !dbg !985
  br label %for.inc.i, !dbg !985

for.inc.i:                                        ; preds = %if.then319.i, %lor.lhs.false315.i.for.inc.i_crit_edge
  %284 = ptrtoint ptr %code.i to i32, !dbg !986
  call void @__asan_load4_noabort(i32 %284), !dbg !986
  %285 = load ptr, ptr %code.i, align 4, !dbg !986
  %incdec.ptr321.i = getelementptr %struct.fetch_insn, ptr %285, i32 1, !dbg !986
  store ptr %incdec.ptr321.i, ptr %code.i, align 4, !dbg !750
  %cmp310.i = icmp ult ptr %incdec.ptr321.i, %add.ptr309.i, !dbg !974
  br i1 %cmp310.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end322.i_crit_edge, !dbg !975, !llvm.loop !987

for.inc.i.if.end322.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !975
  br label %if.end322.i, !dbg !975

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !975
  br label %for.body.i, !dbg !975

if.end322.i:                                      ; preds = %for.inc.i.if.end322.i_crit_edge, %if.then308.i.if.end322.i_crit_edge, %fail.i
  %ret.0498.i = phi i32 [ 0, %fail.i ], [ %ret.0.ph.i, %if.then308.i.if.end322.i_crit_edge ], [ %ret.0.ph.i, %for.inc.i.if.end322.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call112.i) #20, !dbg !989
  br label %out.i, !dbg !989

out.i:                                            ; preds = %if.end322.i, %if.then114.i, %if.then104.i, %cond.end.i, %if.then69.i, %if.then47.i, %if.then38.i, %if.then26.i, %if.then21.i70, %if.then10.i, %if.then4.i, %if.then2.i
  %ret.1.i = phi i32 [ -22, %if.then2.i ], [ -22, %if.then4.i ], [ -22, %if.then26.i ], [ -22, %if.then38.i ], [ -22, %if.then47.i ], [ -22, %if.then69.i ], [ %ret.0498.i, %if.end322.i ], [ -12, %if.then114.i ], [ -12, %if.then104.i ], [ -22, %cond.end.i ], [ -22, %if.then21.i70 ], [ -12, %if.then10.i ], !dbg !750
  tail call void @kfree(ptr noundef nonnull %call.i64) #20, !dbg !990
  br label %traceprobe_parse_probe_arg_body.exit, !dbg !991

traceprobe_parse_probe_arg_body.exit:             ; preds = %out.i, %if.then.i66
  %retval.0.i75 = phi i32 [ %ret.1.i, %out.i ], [ -12, %if.then.i66 ], !dbg !750
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code.i) #20, !dbg !992
  br label %cleanup, !dbg !993

cleanup:                                          ; preds = %traceprobe_parse_probe_arg_body.exit, %if.then25, %if.then19, %if.then15, %if.then3, %if.then1
  %retval.0 = phi i32 [ -22, %if.then1 ], [ -22, %if.then3 ], [ -22, %if.then25 ], [ %retval.0.i75, %traceprobe_parse_probe_arg_body.exit ], [ -22, %if.then19 ], [ -12, %if.then15 ], !dbg !631
  ret i32 %retval.0, !dbg !994
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @traceprobe_free_probe_arg(ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 !dbg !995 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !996
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.139, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.139, align 16
  %1 = ptrtoint ptr %arg to i32, !dbg !997
  call void @__asan_load4_noabort(i32 %1), !dbg !997
  %2 = load ptr, ptr %arg, align 4, !dbg !997
  %tobool.not20 = icmp eq ptr %2, null, !dbg !998
  br i1 %tobool.not20, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge, !dbg !999

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs, !dbg !999

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !999
  br label %while.end, !dbg !999

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %code.021 = phi ptr [ %incdec.ptr, %if.end.land.rhs_crit_edge ], [ %2, %entry.land.rhs_crit_edge ]
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.139, i32 0, i32 1), align 8, !dbg !1000
  %3 = add i64 %gcov_ctr7, 1, !dbg !1000
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.139, i32 0, i32 1), align 8, !dbg !1000
  %4 = ptrtoint ptr %code.021 to i32, !dbg !1001
  call void @__asan_load4_noabort(i32 %4), !dbg !1001
  %5 = load i32, ptr %code.021, align 4, !dbg !1001
  %6 = zext i32 %5 to i64, !dbg !1002
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.198), !dbg !1002
  switch i32 %5, label %lor.lhs.false [
    i32 20, label %land.rhs.while.end_crit_edge
    i32 21, label %land.rhs.if.then_crit_edge
  ], !dbg !1002

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1002
  br label %if.then, !dbg !1002

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1002
  br label %while.end, !dbg !1002

lor.lhs.false:                                    ; preds = %land.rhs
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.139, i32 0, i32 2), align 16, !dbg !1003
  %7 = add i64 %gcov_ctr8, 1, !dbg !1003
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.139, i32 0, i32 2), align 16, !dbg !1003
  %8 = ptrtoint ptr %code.021 to i32, !dbg !1004
  call void @__asan_load4_noabort(i32 %8), !dbg !1004
  %9 = load i32, ptr %code.021, align 4, !dbg !1004
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9), !dbg !1005
  %cmp5 = icmp eq i32 %9, 9, !dbg !1005
  br i1 %cmp5, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge, !dbg !1006

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1006
  br label %if.end, !dbg !1006

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1006
  br label %if.then, !dbg !1006

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.rhs.if.then_crit_edge
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.139, i32 0, i32 3), align 8, !dbg !1007
  %10 = add i64 %gcov_ctr9, 1, !dbg !1007
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.139, i32 0, i32 3), align 8, !dbg !1007
  %11 = getelementptr inbounds %struct.fetch_insn, ptr %code.021, i32 0, i32 1, !dbg !1008
  %12 = ptrtoint ptr %11 to i32, !dbg !1008
  call void @__asan_load4_noabort(i32 %12), !dbg !1008
  %13 = load ptr, ptr %11, align 4, !dbg !1008
  tail call void @kfree(ptr noundef %13) #20, !dbg !1009
  br label %if.end, !dbg !1009

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.139, i32 0, i32 4), align 16, !dbg !1010
  %14 = add i64 %gcov_ctr10, 1, !dbg !1010
  store i64 %14, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.139, i32 0, i32 4), align 16, !dbg !1010
  %incdec.ptr = getelementptr %struct.fetch_insn, ptr %code.021, i32 1, !dbg !1010
  %tobool.not = icmp eq ptr %incdec.ptr, null, !dbg !998
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge, !dbg !999, !llvm.loop !1011

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !999
  br label %land.rhs, !dbg !999

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !999
  br label %while.end, !dbg !999

while.end:                                        ; preds = %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %15 = ptrtoint ptr %arg to i32, !dbg !1013
  call void @__asan_load4_noabort(i32 %15), !dbg !1013
  %16 = load ptr, ptr %arg, align 4, !dbg !1013
  tail call void @kfree(ptr noundef %16) #20, !dbg !1014
  %name = getelementptr inbounds %struct.probe_arg, ptr %arg, i32 0, i32 4, !dbg !1015
  %17 = ptrtoint ptr %name to i32, !dbg !1015
  call void @__asan_load4_noabort(i32 %17), !dbg !1015
  %18 = load ptr, ptr %name, align 4, !dbg !1015
  tail call void @kfree(ptr noundef %18) #20, !dbg !1016
  %comm = getelementptr inbounds %struct.probe_arg, ptr %arg, i32 0, i32 5, !dbg !1017
  %19 = ptrtoint ptr %comm to i32, !dbg !1017
  call void @__asan_load4_noabort(i32 %19), !dbg !1017
  %20 = load ptr, ptr %comm, align 4, !dbg !1017
  tail call void @kfree(ptr noundef %20) #20, !dbg !1018
  %fmt = getelementptr inbounds %struct.probe_arg, ptr %arg, i32 0, i32 6, !dbg !1019
  %21 = ptrtoint ptr %fmt to i32, !dbg !1019
  call void @__asan_load4_noabort(i32 %21), !dbg !1019
  %22 = load ptr, ptr %fmt, align 4, !dbg !1019
  tail call void @kfree(ptr noundef %22) #20, !dbg !1020
  ret void, !dbg !1021
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @traceprobe_update_arg(ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 !dbg !1022 {
entry:
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1023
  %0 = ptrtoint ptr %arg to i32, !dbg !1024
  call void @__asan_load4_noabort(i32 %0), !dbg !1024
  %1 = load ptr, ptr %arg, align 4, !dbg !1024
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #20, !dbg !1025
  %2 = ptrtoint ptr %offset to i32, !dbg !1026
  call void @__asan_store4_noabort(i32 %2), !dbg !1026
  store i32 -1, ptr %offset, align 4, !dbg !1026, !annotation !694
  %tobool.not53 = icmp eq ptr %1, null, !dbg !1027
  br i1 %tobool.not53, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge, !dbg !1028

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs, !dbg !1028

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1028
  br label %while.end, !dbg !1028

land.rhs:                                         ; preds = %if.end24.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %c.056 = phi i8 [ %c.2, %if.end24.land.rhs_crit_edge ], [ -1, %entry.land.rhs_crit_edge ]
  %code.054 = phi ptr [ %incdec.ptr, %if.end24.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.140, align 16, !dbg !1029
  %3 = add i64 %gcov_ctr, 1, !dbg !1029
  store i64 %3, ptr @__llvm_gcov_ctr.140, align 16, !dbg !1029
  %4 = ptrtoint ptr %code.054 to i32, !dbg !1030
  call void @__asan_load4_noabort(i32 %4), !dbg !1030
  %5 = load i32, ptr %code.054, align 4, !dbg !1030
  %6 = zext i32 %5 to i64, !dbg !1031
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.199), !dbg !1031
  switch i32 %5, label %land.rhs.if.end24_crit_edge [
    i32 20, label %land.rhs.while.end_crit_edge
    i32 21, label %if.then
  ], !dbg !1031

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1031
  br label %while.end, !dbg !1031

land.rhs.if.end24_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1031
  br label %if.end24, !dbg !1031

if.then:                                          ; preds = %land.rhs
  %arrayidx = getelementptr %struct.fetch_insn, ptr %code.054, i32 1, !dbg !1032
  %7 = ptrtoint ptr %arrayidx to i32, !dbg !1033
  call void @__asan_load4_noabort(i32 %7), !dbg !1033
  %8 = load i32, ptr %arrayidx, align 4, !dbg !1033
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8), !dbg !1034
  %cmp5.not = icmp eq i32 %8, 5, !dbg !1034
  br i1 %cmp5.not, label %if.end, label %if.then6, !dbg !1032

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1035
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 1), align 8, !dbg !1035
  %9 = add i64 %gcov_ctr29, 1, !dbg !1035
  store i64 %9, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 1), align 8, !dbg !1035
  br label %cleanup, !dbg !1035

if.end:                                           ; preds = %if.then
  %10 = getelementptr inbounds %struct.fetch_insn, ptr %code.054, i32 0, i32 1, !dbg !1036
  %11 = ptrtoint ptr %10 to i32, !dbg !1036
  call void @__asan_load4_noabort(i32 %11), !dbg !1036
  %12 = load ptr, ptr %10, align 4, !dbg !1036
  %call = call ptr @strpbrk(ptr noundef %12, ptr noundef nonnull @.str.9), !dbg !1037
  %tobool7.not = icmp eq ptr %call, null, !dbg !1038
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8, !dbg !1038

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1038
  br label %if.end9, !dbg !1038

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1039
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 2), align 16, !dbg !1039
  %13 = add i64 %gcov_ctr30, 1, !dbg !1039
  store i64 %13, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 2), align 16, !dbg !1039
  %14 = ptrtoint ptr %call to i32, !dbg !1040
  call void @__asan_load1_noabort(i32 %14), !dbg !1040
  %15 = load i8, ptr %call, align 1, !dbg !1040
  br label %if.end9, !dbg !1041

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %c.1 = phi i8 [ %15, %if.then8 ], [ %c.056, %if.end.if.end9_crit_edge ], !dbg !1042
  %16 = ptrtoint ptr %10 to i32, !dbg !1043
  call void @__asan_load4_noabort(i32 %16), !dbg !1043
  %17 = load ptr, ptr %10, align 4, !dbg !1043
  %call.i = call ptr @strpbrk(ptr noundef %17, ptr noundef nonnull @.str.9) #20, !dbg !1044
  %tobool1.not.i = icmp eq ptr %call.i, null, !dbg !1046
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i, !dbg !1046

if.then2.i:                                       ; preds = %if.end9
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.133, align 8
  %18 = add i64 %gcov_ctr.i.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.133, align 8
  %call.i.i = call i32 @_kstrtol(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %offset) #20, !dbg !1047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !1049
  %tobool4.not.i = icmp eq i32 %call.i.i, 0, !dbg !1049
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then12, !dbg !1049

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1050
  %gcov_ctr9.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 1), align 8, !dbg !1050
  %19 = add i64 %gcov_ctr9.i, 1, !dbg !1050
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 1), align 8, !dbg !1050
  %20 = ptrtoint ptr %call.i to i32, !dbg !1051
  call void @__asan_store1_noabort(i32 %20), !dbg !1051
  store i8 0, ptr %call.i, align 1, !dbg !1051
  br label %if.end13, !dbg !1052

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1053
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 3), align 8, !dbg !1053
  %21 = add i64 %gcov_ctr11.i, 1, !dbg !1053
  store i64 %21, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 3), align 8, !dbg !1053
  %22 = ptrtoint ptr %offset to i32, !dbg !1054
  call void @__asan_store4_noabort(i32 %22), !dbg !1054
  store i32 0, ptr %offset, align 4, !dbg !1054
  br label %if.end13

if.then12:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1055
  %gcov_ctr10.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 2), align 16, !dbg !1055
  %23 = add i64 %gcov_ctr10.i, 1, !dbg !1055
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.132, i32 0, i32 2), align 16, !dbg !1055
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 3), align 8, !dbg !1056
  %24 = add i64 %gcov_ctr31, 1, !dbg !1056
  store i64 %24, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 3), align 8, !dbg !1056
  br label %cleanup, !dbg !1057

if.end13:                                         ; preds = %if.else.i, %if.end6.i
  %25 = ptrtoint ptr %10 to i32, !dbg !1058
  call void @__asan_load4_noabort(i32 %25), !dbg !1058
  %26 = load ptr, ptr %10, align 4, !dbg !1058
  %call14 = call i32 @kallsyms_lookup_name(ptr noundef %26) #20, !dbg !1059
  %27 = getelementptr %struct.fetch_insn, ptr %code.054, i32 1, i32 1, !dbg !1060
  %28 = ptrtoint ptr %27 to i32, !dbg !1061
  call void @__asan_store4_noabort(i32 %28), !dbg !1061
  store i32 %call14, ptr %27, align 4, !dbg !1061
  br i1 %tobool7.not, label %if.end13.if.end18_crit_edge, label %if.then17, !dbg !1062

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1062
  br label %if.end18, !dbg !1062

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1063
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 4), align 16, !dbg !1063
  %29 = add i64 %gcov_ctr32, 1, !dbg !1063
  store i64 %29, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 4), align 16, !dbg !1063
  %30 = ptrtoint ptr %call to i32, !dbg !1064
  call void @__asan_store1_noabort(i32 %30), !dbg !1064
  store i8 %c.1, ptr %call, align 1, !dbg !1064
  %31 = ptrtoint ptr %27 to i32, !dbg !1065
  call void @__asan_load4_noabort(i32 %31), !dbg !1065
  %.pr = load i32, ptr %27, align 4, !dbg !1065
  br label %if.end18, !dbg !1066

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %32 = phi i32 [ %.pr, %if.then17 ], [ %call14, %if.end13.if.end18_crit_edge ], !dbg !1065
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32), !dbg !1067
  %tobool20.not = icmp eq i32 %32, 0, !dbg !1067
  br i1 %tobool20.not, label %if.then21, label %if.end22, !dbg !1068

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1069
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 5), align 8, !dbg !1069
  %33 = add i64 %gcov_ctr33, 1, !dbg !1069
  store i64 %33, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 5), align 8, !dbg !1069
  br label %cleanup, !dbg !1069

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1070
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 6), align 16, !dbg !1070
  %34 = add i64 %gcov_ctr34, 1, !dbg !1070
  store i64 %34, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 6), align 16, !dbg !1070
  %35 = ptrtoint ptr %offset to i32, !dbg !1070
  call void @__asan_load4_noabort(i32 %35), !dbg !1070
  %36 = load i32, ptr %offset, align 4, !dbg !1070
  %37 = ptrtoint ptr %27 to i32, !dbg !1071
  call void @__asan_load4_noabort(i32 %37), !dbg !1071
  %38 = load i32, ptr %27, align 4, !dbg !1071
  %add = add i32 %38, %36, !dbg !1071
  store i32 %add, ptr %27, align 4, !dbg !1071
  br label %if.end24, !dbg !1072

if.end24:                                         ; preds = %if.end22, %land.rhs.if.end24_crit_edge
  %c.2 = phi i8 [ %c.1, %if.end22 ], [ %c.056, %land.rhs.if.end24_crit_edge ], !dbg !1042
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 7), align 8, !dbg !1073
  %39 = add i64 %gcov_ctr35, 1, !dbg !1073
  store i64 %39, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 7), align 8, !dbg !1073
  %incdec.ptr = getelementptr %struct.fetch_insn, ptr %code.054, i32 1, !dbg !1073
  %tobool.not = icmp eq ptr %incdec.ptr, null, !dbg !1027
  br i1 %tobool.not, label %if.end24.while.end_crit_edge, label %if.end24.land.rhs_crit_edge, !dbg !1028, !llvm.loop !1074

if.end24.land.rhs_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1028
  br label %land.rhs, !dbg !1028

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1028
  br label %while.end, !dbg !1028

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 8), align 16, !dbg !1076
  %40 = add i64 %gcov_ctr36, 1, !dbg !1076
  store i64 %40, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.140, i32 0, i32 8), align 16, !dbg !1076
  br label %cleanup, !dbg !1076

cleanup:                                          ; preds = %while.end, %if.then21, %if.then12, %if.then6
  %retval.0 = phi i32 [ -22, %if.then6 ], [ %call.i.i, %if.then12 ], [ -2, %if.then21 ], [ 0, %while.end ], !dbg !1042
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #20, !dbg !1077
  ret i32 %retval.0, !dbg !1077
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kallsyms_lookup_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @traceprobe_set_print_fmt(ptr nocapture noundef readonly %tp, i32 noundef %ptype) local_unnamed_addr #0 align 64 !dbg !1078 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1079
  %gcov_ctr.i16 = load i64, ptr @__llvm_gcov_ctr.142, align 8
  %0 = add i64 %gcov_ctr.i16, 1
  store i64 %0, ptr @__llvm_gcov_ctr.142, align 8
  %event.i = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !1080
  %1 = ptrtoint ptr %event.i to i32, !dbg !1080
  call void @__asan_load4_noabort(i32 %1), !dbg !1080
  %2 = load ptr, ptr %event.i, align 4, !dbg !1080
  %call2 = tail call fastcc i32 @__set_print_fmt(ptr noundef %tp, ptr noundef null, i32 noundef 0, i32 noundef %ptype), !dbg !1083
  %add = add i32 %call2, 1, !dbg !1084
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !1085
  %3 = add i64 %gcov_ctr12.i, 1, !dbg !1085
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !1085
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #22, !dbg !1087
  %tobool.not = icmp eq ptr %call9.i, null, !dbg !1088
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1089

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1090
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.141, align 8, !dbg !1090
  %4 = add i64 %gcov_ctr, 1, !dbg !1090
  store i64 %4, ptr @__llvm_gcov_ctr.141, align 8, !dbg !1090
  br label %cleanup, !dbg !1090

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1091
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.141, i32 0, i32 1), align 8, !dbg !1091
  %5 = add i64 %gcov_ctr9, 1, !dbg !1091
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.141, i32 0, i32 1), align 8, !dbg !1091
  %call5 = tail call fastcc i32 @__set_print_fmt(ptr noundef %tp, ptr noundef nonnull %call9.i, i32 noundef %add, i32 noundef %ptype), !dbg !1092
  %print_fmt6 = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 0, i32 2, i32 4, !dbg !1093
  %6 = ptrtoint ptr %print_fmt6 to i32, !dbg !1094
  call void @__asan_store4_noabort(i32 %6), !dbg !1094
  store ptr %call9.i, ptr %print_fmt6, align 4, !dbg !1094
  br label %cleanup, !dbg !1095

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then ], !dbg !1096
  ret i32 %retval.0, !dbg !1097
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__set_print_fmt(ptr nocapture noundef readonly %tp, ptr nocapture noundef writeonly %buf, i32 noundef %len, i32 noundef %ptype) unnamed_addr #0 align 64 !dbg !1098 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1099
  %0 = zext i32 %ptype to i64, !dbg !1100
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.200), !dbg !1100
  switch i32 %ptype, label %land.rhs [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ], !dbg !1100

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1101
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.143, align 16, !dbg !1101
  %1 = add i64 %gcov_ctr, 1, !dbg !1101
  store i64 %1, ptr @__llvm_gcov_ctr.143, align 16, !dbg !1101
  br label %sw.epilog, !dbg !1102

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1103
  %gcov_ctr176 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 1), align 8, !dbg !1103
  %2 = add i64 %gcov_ctr176, 1, !dbg !1103
  store i64 %2, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 1), align 8, !dbg !1103
  br label %sw.epilog, !dbg !1104

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1105
  %gcov_ctr177 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 2), align 16, !dbg !1105
  %3 = add i64 %gcov_ctr177, 1, !dbg !1105
  store i64 %3, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 2), align 16, !dbg !1105
  br label %sw.epilog, !dbg !1106

land.rhs:                                         ; preds = %entry
  %gcov_ctr178 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 3), align 8, !dbg !1107
  %4 = add i64 %gcov_ctr178, 1, !dbg !1107
  store i64 %4, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 3), align 8, !dbg !1107
  %.b282 = load i1, ptr @__set_print_fmt.__already_done, align 1, !dbg !1107
  br i1 %.b282, label %land.rhs.if.end27_crit_edge, label %if.then, !dbg !1107, !prof !1108

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1107
  br label %if.end27, !dbg !1107

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1107
  store i1 true, ptr @__set_print_fmt.__already_done, align 1, !dbg !1107
  %gcov_ctr179 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 4), align 16, !dbg !1107
  %5 = add i64 %gcov_ctr179, 1, !dbg !1107
  store i64 %5, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 4), align 16, !dbg !1107
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 885, i32 noundef 9, ptr noundef null) #20, !dbg !1107
  %gcov_ctr180 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 5), align 8, !dbg !1107
  %6 = add i64 %gcov_ctr180, 1, !dbg !1107
  store i64 %6, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 5), align 8, !dbg !1107
  br label %if.end27, !dbg !1107

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge
  %gcov_ctr181 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 6), align 16, !dbg !1107
  %7 = add i64 %gcov_ctr181, 1, !dbg !1107
  store i64 %7, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 6), align 16, !dbg !1107
  br label %cleanup, !dbg !1109

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %fmt.0 = phi ptr [ @.str.101, %sw.bb2 ], [ @.str.99, %sw.bb1 ], [ @.str.97, %sw.bb ], !dbg !1110
  %arg.0 = phi ptr [ @.str.101, %sw.bb2 ], [ @.str.100, %sw.bb1 ], [ @.str.98, %sw.bb ], !dbg !1110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len), !dbg !1111
  %tobool35.not = icmp eq i32 %len, 0, !dbg !1111
  br i1 %tobool35.not, label %cond.false, label %sw.epilog.cond.end_crit_edge, !dbg !1111

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1111
  br label %cond.end, !dbg !1111

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1111
  %gcov_ctr182 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 7), align 8, !dbg !1111
  %8 = add i64 %gcov_ctr182, 1, !dbg !1111
  store i64 %8, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 7), align 8, !dbg !1111
  br label %cond.end, !dbg !1111

cond.end:                                         ; preds = %cond.false, %sw.epilog.cond.end_crit_edge
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.102, ptr noundef nonnull %fmt.0), !dbg !1112
  %nr_args = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 3
  %9 = ptrtoint ptr %nr_args to i32, !dbg !1113
  call void @__asan_load4_noabort(i32 %9), !dbg !1113
  %10 = load i32, ptr %nr_args, align 4, !dbg !1113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10), !dbg !1114
  %cmp286.not = icmp eq i32 %10, 0, !dbg !1114
  br i1 %cmp286.not, label %cond.end.for.end96_crit_edge, label %for.body.lr.ph, !dbg !1115

cond.end.for.end96_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1115
  br label %for.end96, !dbg !1115

for.body.lr.ph:                                   ; preds = %cond.end
  %args = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 4
  br label %for.body, !dbg !1115

for.body:                                         ; preds = %for.inc94.for.body_crit_edge, %for.body.lr.ph
  %pos.0289 = phi i32 [ %call, %for.body.lr.ph ], [ %pos.2, %for.inc94.for.body_crit_edge ]
  %i.0287 = phi i32 [ 0, %for.body.lr.ph ], [ %inc95, %for.inc94.for.body_crit_edge ]
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %pos.0289, !dbg !1116
  br i1 %tobool35.not, label %cond.false41, label %cond.true39, !dbg !1117

cond.true39:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1117
  %sub40 = sub i32 %len, %pos.0289, !dbg !1117
  br label %cond.end42, !dbg !1117

cond.false41:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1117
  %gcov_ctr183 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 8), align 16, !dbg !1117
  %11 = add i64 %gcov_ctr183, 1, !dbg !1117
  store i64 %11, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 8), align 16, !dbg !1117
  br label %cond.end42, !dbg !1117

cond.end42:                                       ; preds = %cond.false41, %cond.true39
  %cond43 = phi i32 [ %sub40, %cond.true39 ], [ 0, %cond.false41 ], !dbg !1117
  %name = getelementptr %struct.probe_arg, ptr %args, i32 %i.0287, i32 4, !dbg !1118
  %12 = ptrtoint ptr %name to i32, !dbg !1118
  call void @__asan_load4_noabort(i32 %12), !dbg !1118
  %13 = load ptr, ptr %name, align 4, !dbg !1118
  %call44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr37, i32 noundef %cond43, ptr noundef nonnull @.str.103, ptr noundef %13), !dbg !1119
  %add45 = add i32 %call44, %pos.0289, !dbg !1120
  %count = getelementptr %struct.probe_arg, ptr %args, i32 %i.0287, i32 3, !dbg !1121
  %14 = ptrtoint ptr %count to i32, !dbg !1121
  call void @__asan_load4_noabort(i32 %14), !dbg !1121
  %15 = load i32, ptr %count, align 4, !dbg !1121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15), !dbg !1122
  %tobool46.not = icmp eq i32 %15, 0, !dbg !1122
  %add.ptr82 = getelementptr i8, ptr %buf, i32 %add45, !dbg !1110
  br i1 %tobool46.not, label %if.else, label %if.then47, !dbg !1122

if.then47:                                        ; preds = %cond.end42
  br i1 %tobool35.not, label %cond.false52, label %cond.true50, !dbg !1123

cond.true50:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1123
  %sub51 = sub i32 %len, %add45, !dbg !1123
  br label %cond.end53, !dbg !1123

cond.false52:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1123
  %gcov_ctr184 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 9), align 8, !dbg !1123
  %16 = add i64 %gcov_ctr184, 1, !dbg !1123
  store i64 %16, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 9), align 8, !dbg !1123
  br label %cond.end53, !dbg !1123

cond.end53:                                       ; preds = %cond.false52, %cond.true50
  %cond54 = phi i32 [ %sub51, %cond.true50 ], [ 0, %cond.false52 ], !dbg !1123
  %type = getelementptr %struct.probe_arg, ptr %args, i32 %i.0287, i32 7, !dbg !1124
  %17 = ptrtoint ptr %type to i32, !dbg !1124
  call void @__asan_load4_noabort(i32 %17), !dbg !1124
  %18 = load ptr, ptr %type, align 4, !dbg !1124
  %fmt55 = getelementptr inbounds %struct.fetch_type, ptr %18, i32 0, i32 4, !dbg !1125
  %19 = ptrtoint ptr %fmt55 to i32, !dbg !1125
  call void @__asan_load4_noabort(i32 %19), !dbg !1125
  %20 = load ptr, ptr %fmt55, align 4, !dbg !1125
  %call56 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr82, i32 noundef %cond54, ptr noundef nonnull @.str.104, ptr noundef %20), !dbg !1126
  %add57 = add i32 %call56, %add45, !dbg !1127
  %21 = ptrtoint ptr %count to i32, !dbg !1128
  call void @__asan_load4_noabort(i32 %21), !dbg !1128
  %22 = load i32, ptr %count, align 4, !dbg !1128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22), !dbg !1129
  %cmp60283 = icmp ugt i32 %22, 1, !dbg !1129
  br i1 %cmp60283, label %cond.end53.for.body61_crit_edge, label %cond.end53.for.end_crit_edge, !dbg !1130

cond.end53.for.end_crit_edge:                     ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1130
  br label %for.end, !dbg !1130

cond.end53.for.body61_crit_edge:                  ; preds = %cond.end53
  br label %for.body61, !dbg !1130

for.body61:                                       ; preds = %cond.end67.for.body61_crit_edge, %cond.end53.for.body61_crit_edge
  %pos.1285 = phi i32 [ %add72, %cond.end67.for.body61_crit_edge ], [ %add57, %cond.end53.for.body61_crit_edge ]
  %j.0284 = phi i32 [ %inc, %cond.end67.for.body61_crit_edge ], [ 1, %cond.end53.for.body61_crit_edge ]
  %add.ptr62 = getelementptr i8, ptr %buf, i32 %pos.1285, !dbg !1131
  br i1 %tobool35.not, label %cond.false66, label %cond.true64, !dbg !1132

cond.true64:                                      ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1132
  %gcov_ctr185 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 10), align 16, !dbg !1132
  %23 = add i64 %gcov_ctr185, 1, !dbg !1132
  store i64 %23, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 10), align 16, !dbg !1132
  %sub65 = sub i32 %len, %pos.1285, !dbg !1132
  br label %cond.end67, !dbg !1132

cond.false66:                                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1132
  %gcov_ctr186 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 11), align 8, !dbg !1132
  %24 = add i64 %gcov_ctr186, 1, !dbg !1132
  store i64 %24, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 11), align 8, !dbg !1132
  br label %cond.end67, !dbg !1132

cond.end67:                                       ; preds = %cond.false66, %cond.true64
  %cond68 = phi i32 [ %sub65, %cond.true64 ], [ 0, %cond.false66 ], !dbg !1132
  %25 = ptrtoint ptr %type to i32, !dbg !1133
  call void @__asan_load4_noabort(i32 %25), !dbg !1133
  %26 = load ptr, ptr %type, align 4, !dbg !1133
  %fmt70 = getelementptr inbounds %struct.fetch_type, ptr %26, i32 0, i32 4, !dbg !1134
  %27 = ptrtoint ptr %fmt70 to i32, !dbg !1134
  call void @__asan_load4_noabort(i32 %27), !dbg !1134
  %28 = load ptr, ptr %fmt70, align 4, !dbg !1134
  %call71 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr62, i32 noundef %cond68, ptr noundef nonnull @.str.105, ptr noundef %28), !dbg !1135
  %add72 = add i32 %call71, %pos.1285, !dbg !1136
  %inc = add nuw i32 %j.0284, 1, !dbg !1137
  %29 = ptrtoint ptr %count to i32, !dbg !1128
  call void @__asan_load4_noabort(i32 %29), !dbg !1128
  %30 = load i32, ptr %count, align 4, !dbg !1128
  %cmp60 = icmp ult i32 %inc, %30, !dbg !1129
  br i1 %cmp60, label %cond.end67.for.body61_crit_edge, label %cond.end67.for.end_crit_edge, !dbg !1130, !llvm.loop !1138

cond.end67.for.end_crit_edge:                     ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1130
  br label %for.end, !dbg !1130

cond.end67.for.body61_crit_edge:                  ; preds = %cond.end67
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1130
  br label %for.body61, !dbg !1130

for.end:                                          ; preds = %cond.end67.for.end_crit_edge, %cond.end53.for.end_crit_edge
  %pos.1.lcssa = phi i32 [ %add57, %cond.end53.for.end_crit_edge ], [ %add72, %cond.end67.for.end_crit_edge ], !dbg !1110
  %add.ptr73 = getelementptr i8, ptr %buf, i32 %pos.1.lcssa, !dbg !1140
  br i1 %tobool35.not, label %cond.false77, label %cond.true75, !dbg !1141

cond.true75:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1141
  %gcov_ctr187 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 12), align 16, !dbg !1141
  %31 = add i64 %gcov_ctr187, 1, !dbg !1141
  store i64 %31, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 12), align 16, !dbg !1141
  %sub76 = sub i32 %len, %pos.1.lcssa, !dbg !1141
  br label %cond.end78, !dbg !1141

cond.false77:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1141
  %gcov_ctr188 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 13), align 8, !dbg !1141
  %32 = add i64 %gcov_ctr188, 1, !dbg !1141
  store i64 %32, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 13), align 8, !dbg !1141
  br label %cond.end78, !dbg !1141

cond.end78:                                       ; preds = %cond.false77, %cond.true75
  %cond79 = phi i32 [ %sub76, %cond.true75 ], [ 0, %cond.false77 ], !dbg !1141
  %call80 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr73, i32 noundef %cond79, ptr noundef nonnull @.str.106), !dbg !1142
  %add81 = add i32 %call80, %pos.1.lcssa, !dbg !1143
  br label %for.inc94, !dbg !1144

if.else:                                          ; preds = %cond.end42
  br i1 %tobool35.not, label %cond.false86, label %cond.true84, !dbg !1145

cond.true84:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1145
  %gcov_ctr189 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 14), align 16, !dbg !1145
  %33 = add i64 %gcov_ctr189, 1, !dbg !1145
  store i64 %33, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 14), align 16, !dbg !1145
  %sub85 = sub i32 %len, %add45, !dbg !1145
  br label %cond.end87, !dbg !1145

cond.false86:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1145
  %gcov_ctr190 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 15), align 8, !dbg !1145
  %34 = add i64 %gcov_ctr190, 1, !dbg !1145
  store i64 %34, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 15), align 8, !dbg !1145
  br label %cond.end87, !dbg !1145

cond.end87:                                       ; preds = %cond.false86, %cond.true84
  %cond88 = phi i32 [ %sub85, %cond.true84 ], [ 0, %cond.false86 ], !dbg !1145
  %type89 = getelementptr %struct.probe_arg, ptr %args, i32 %i.0287, i32 7, !dbg !1146
  %35 = ptrtoint ptr %type89 to i32, !dbg !1146
  call void @__asan_load4_noabort(i32 %35), !dbg !1146
  %36 = load ptr, ptr %type89, align 4, !dbg !1146
  %fmt90 = getelementptr inbounds %struct.fetch_type, ptr %36, i32 0, i32 4, !dbg !1147
  %37 = ptrtoint ptr %fmt90 to i32, !dbg !1147
  call void @__asan_load4_noabort(i32 %37), !dbg !1147
  %38 = load ptr, ptr %fmt90, align 4, !dbg !1147
  %call91 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr82, i32 noundef %cond88, ptr noundef nonnull @.str.107, ptr noundef %38), !dbg !1148
  %add92 = add i32 %call91, %add45, !dbg !1149
  br label %for.inc94

for.inc94:                                        ; preds = %cond.end87, %cond.end78
  %pos.2 = phi i32 [ %add81, %cond.end78 ], [ %add92, %cond.end87 ], !dbg !1110
  %inc95 = add nuw i32 %i.0287, 1, !dbg !1150
  %39 = ptrtoint ptr %nr_args to i32, !dbg !1113
  call void @__asan_load4_noabort(i32 %39), !dbg !1113
  %40 = load i32, ptr %nr_args, align 4, !dbg !1113
  %cmp = icmp ult i32 %inc95, %40, !dbg !1114
  br i1 %cmp, label %for.inc94.for.body_crit_edge, label %for.inc94.for.end96_crit_edge, !dbg !1115, !llvm.loop !1151

for.inc94.for.end96_crit_edge:                    ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1115
  br label %for.end96, !dbg !1115

for.inc94.for.body_crit_edge:                     ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1115
  br label %for.body, !dbg !1115

for.end96:                                        ; preds = %for.inc94.for.end96_crit_edge, %cond.end.for.end96_crit_edge
  %pos.0.lcssa = phi i32 [ %call, %cond.end.for.end96_crit_edge ], [ %pos.2, %for.inc94.for.end96_crit_edge ], !dbg !1110
  %add.ptr97 = getelementptr i8, ptr %buf, i32 %pos.0.lcssa, !dbg !1153
  br i1 %tobool35.not, label %cond.false101, label %cond.true99, !dbg !1154

cond.true99:                                      ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1154
  %sub100 = sub i32 %len, %pos.0.lcssa, !dbg !1154
  br label %cond.end102, !dbg !1154

cond.false101:                                    ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1154
  %gcov_ctr191 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 16), align 16, !dbg !1154
  %41 = add i64 %gcov_ctr191, 1, !dbg !1154
  store i64 %41, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 16), align 16, !dbg !1154
  br label %cond.end102, !dbg !1154

cond.end102:                                      ; preds = %cond.false101, %cond.true99
  %cond103 = phi i32 [ %sub100, %cond.true99 ], [ 0, %cond.false101 ], !dbg !1154
  %call104 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr97, i32 noundef %cond103, ptr noundef nonnull @.str.102, ptr noundef nonnull %arg.0), !dbg !1155
  %add105 = add i32 %call104, %pos.0.lcssa, !dbg !1156
  %42 = ptrtoint ptr %nr_args to i32, !dbg !1157
  call void @__asan_load4_noabort(i32 %42), !dbg !1157
  %43 = load i32, ptr %nr_args, align 4, !dbg !1157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43), !dbg !1158
  %cmp108295.not = icmp eq i32 %43, 0, !dbg !1158
  br i1 %cmp108295.not, label %cond.end102.cleanup_crit_edge, label %for.body109.lr.ph, !dbg !1159

cond.end102.cleanup_crit_edge:                    ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1159
  br label %cleanup, !dbg !1159

for.body109.lr.ph:                                ; preds = %cond.end102
  %args110 = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 4
  br label %for.body109, !dbg !1159

for.body109:                                      ; preds = %for.inc168.for.body109_crit_edge, %for.body109.lr.ph
  %pos.3299 = phi i32 [ %add105, %for.body109.lr.ph ], [ %pos.5, %for.inc168.for.body109_crit_edge ]
  %i.1296 = phi i32 [ 0, %for.body109.lr.ph ], [ %inc169, %for.inc168.for.body109_crit_edge ]
  %count113 = getelementptr %struct.probe_arg, ptr %args110, i32 %i.1296, i32 3, !dbg !1160
  %44 = ptrtoint ptr %count113 to i32, !dbg !1160
  call void @__asan_load4_noabort(i32 %44), !dbg !1160
  %45 = load i32, ptr %count113, align 4, !dbg !1160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45), !dbg !1161
  %tobool114.not = icmp eq i32 %45, 0, !dbg !1161
  %type145 = getelementptr %struct.probe_arg, ptr %args110, i32 %i.1296, i32 7, !dbg !1110
  %46 = ptrtoint ptr %type145 to i32, !dbg !1110
  call void @__asan_load4_noabort(i32 %46), !dbg !1110
  %47 = load ptr, ptr %type145, align 4, !dbg !1110
  %48 = ptrtoint ptr %47 to i32, !dbg !1110
  call void @__asan_load4_noabort(i32 %48), !dbg !1110
  %49 = load ptr, ptr %47, align 4, !dbg !1110
  %call147 = tail call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(7) @.str.77) #21, !dbg !1110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147), !dbg !1110
  %cmp148 = icmp eq i32 %call147, 0, !dbg !1110
  br i1 %tobool114.not, label %if.else144, label %if.then115, !dbg !1161

if.then115:                                       ; preds = %for.body109
  br i1 %cmp148, label %if.then115.if.then124_crit_edge, label %lor.lhs.false, !dbg !1162

if.then115.if.then124_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1162
  br label %if.then124, !dbg !1162

lor.lhs.false:                                    ; preds = %if.then115
  %gcov_ctr192 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 17), align 8, !dbg !1163
  %50 = add i64 %gcov_ctr192, 1, !dbg !1163
  store i64 %50, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 17), align 8, !dbg !1163
  %51 = ptrtoint ptr %type145 to i32, !dbg !1164
  call void @__asan_load4_noabort(i32 %51), !dbg !1164
  %52 = load ptr, ptr %type145, align 4, !dbg !1164
  %53 = ptrtoint ptr %52 to i32, !dbg !1165
  call void @__asan_load4_noabort(i32 %53), !dbg !1165
  %54 = load ptr, ptr %52, align 4, !dbg !1165
  %call122 = tail call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(8) @.str.79) #21, !dbg !1166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122), !dbg !1167
  %cmp123 = icmp eq i32 %call122, 0, !dbg !1167
  br i1 %cmp123, label %lor.lhs.false.if.then124_crit_edge, label %if.else125, !dbg !1168

lor.lhs.false.if.then124_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1168
  br label %if.then124, !dbg !1168

if.then124:                                       ; preds = %lor.lhs.false.if.then124_crit_edge, %if.then115.if.then124_crit_edge
  %gcov_ctr193 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 18), align 16, !dbg !1169
  %55 = add i64 %gcov_ctr193, 1, !dbg !1169
  store i64 %55, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 18), align 16, !dbg !1169
  br label %if.end126, !dbg !1170

if.else125:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1171
  %gcov_ctr194 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 19), align 8, !dbg !1171
  %56 = add i64 %gcov_ctr194, 1, !dbg !1171
  store i64 %56, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 19), align 8, !dbg !1171
  br label %if.end126

if.end126:                                        ; preds = %if.else125, %if.then124
  %fmt.1 = phi ptr [ @.str.108, %if.then124 ], [ @.str.109, %if.else125 ], !dbg !1110
  %57 = ptrtoint ptr %count113 to i32, !dbg !1172
  call void @__asan_load4_noabort(i32 %57), !dbg !1172
  %58 = load i32, ptr %count113, align 4, !dbg !1172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58), !dbg !1173
  %cmp129291.not = icmp eq i32 %58, 0, !dbg !1173
  br i1 %cmp129291.not, label %if.end126.for.inc168_crit_edge, label %for.body130.lr.ph, !dbg !1174

if.end126.for.inc168_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1174
  br label %for.inc168, !dbg !1174

for.body130.lr.ph:                                ; preds = %if.end126
  %name138 = getelementptr %struct.probe_arg, ptr %args110, i32 %i.1296, i32 4
  br label %for.body130, !dbg !1174

for.body130:                                      ; preds = %cond.end136.for.body130_crit_edge, %for.body130.lr.ph
  %pos.4293 = phi i32 [ %pos.3299, %for.body130.lr.ph ], [ %add140, %cond.end136.for.body130_crit_edge ]
  %j.1292 = phi i32 [ 0, %for.body130.lr.ph ], [ %inc142, %cond.end136.for.body130_crit_edge ]
  %add.ptr131 = getelementptr i8, ptr %buf, i32 %pos.4293, !dbg !1175
  br i1 %tobool35.not, label %cond.false135, label %cond.true133, !dbg !1176

cond.true133:                                     ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1176
  %gcov_ctr195 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 20), align 16, !dbg !1176
  %59 = add i64 %gcov_ctr195, 1, !dbg !1176
  store i64 %59, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 20), align 16, !dbg !1176
  %sub134 = sub i32 %len, %pos.4293, !dbg !1176
  br label %cond.end136, !dbg !1176

cond.false135:                                    ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1176
  %gcov_ctr196 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 21), align 8, !dbg !1176
  %60 = add i64 %gcov_ctr196, 1, !dbg !1176
  store i64 %60, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 21), align 8, !dbg !1176
  br label %cond.end136, !dbg !1176

cond.end136:                                      ; preds = %cond.false135, %cond.true133
  %cond137 = phi i32 [ %sub134, %cond.true133 ], [ 0, %cond.false135 ], !dbg !1176
  %61 = ptrtoint ptr %name138 to i32, !dbg !1177
  call void @__asan_load4_noabort(i32 %61), !dbg !1177
  %62 = load ptr, ptr %name138, align 4, !dbg !1177
  %call139 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr131, i32 noundef %cond137, ptr noundef nonnull %fmt.1, ptr noundef %62, i32 noundef %j.1292), !dbg !1178
  %add140 = add i32 %call139, %pos.4293, !dbg !1179
  %inc142 = add nuw i32 %j.1292, 1, !dbg !1180
  %63 = ptrtoint ptr %count113 to i32, !dbg !1172
  call void @__asan_load4_noabort(i32 %63), !dbg !1172
  %64 = load i32, ptr %count113, align 4, !dbg !1172
  %cmp129 = icmp ult i32 %inc142, %64, !dbg !1173
  br i1 %cmp129, label %cond.end136.for.body130_crit_edge, label %cond.end136.for.inc168_crit_edge, !dbg !1174, !llvm.loop !1181

cond.end136.for.inc168_crit_edge:                 ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1174
  br label %for.inc168, !dbg !1174

cond.end136.for.body130_crit_edge:                ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1174
  br label %for.body130, !dbg !1174

if.else144:                                       ; preds = %for.body109
  br i1 %cmp148, label %if.else144.if.then154_crit_edge, label %lor.lhs.false149, !dbg !1183

if.else144.if.then154_crit_edge:                  ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1183
  br label %if.then154, !dbg !1183

lor.lhs.false149:                                 ; preds = %if.else144
  %gcov_ctr197 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 22), align 16, !dbg !1184
  %65 = add i64 %gcov_ctr197, 1, !dbg !1184
  store i64 %65, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 22), align 16, !dbg !1184
  %66 = ptrtoint ptr %type145 to i32, !dbg !1185
  call void @__asan_load4_noabort(i32 %66), !dbg !1185
  %67 = load ptr, ptr %type145, align 4, !dbg !1185
  %68 = ptrtoint ptr %67 to i32, !dbg !1186
  call void @__asan_load4_noabort(i32 %68), !dbg !1186
  %69 = load ptr, ptr %67, align 4, !dbg !1186
  %call152 = tail call i32 @strcmp(ptr noundef %69, ptr noundef nonnull dereferenceable(8) @.str.79) #21, !dbg !1187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152), !dbg !1188
  %cmp153 = icmp eq i32 %call152, 0, !dbg !1188
  br i1 %cmp153, label %lor.lhs.false149.if.then154_crit_edge, label %if.else155, !dbg !1189

lor.lhs.false149.if.then154_crit_edge:            ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1189
  br label %if.then154, !dbg !1189

if.then154:                                       ; preds = %lor.lhs.false149.if.then154_crit_edge, %if.else144.if.then154_crit_edge
  %gcov_ctr199 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 24), align 16, !dbg !1190
  %70 = add i64 %gcov_ctr199, 1, !dbg !1190
  store i64 %70, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 24), align 16, !dbg !1190
  br label %if.end156, !dbg !1191

if.else155:                                       ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1192
  %gcov_ctr198 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 23), align 8, !dbg !1192
  %71 = add i64 %gcov_ctr198, 1, !dbg !1192
  store i64 %71, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 23), align 8, !dbg !1192
  br label %if.end156

if.end156:                                        ; preds = %if.else155, %if.then154
  %fmt.2 = phi ptr [ @.str.110, %if.then154 ], [ @.str.111, %if.else155 ], !dbg !1110
  %add.ptr157 = getelementptr i8, ptr %buf, i32 %pos.3299, !dbg !1193
  br i1 %tobool35.not, label %cond.false161, label %cond.true159, !dbg !1194

cond.true159:                                     ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1194
  %sub160 = sub i32 %len, %pos.3299, !dbg !1194
  br label %cond.end162, !dbg !1194

cond.false161:                                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1194
  %gcov_ctr200 = load i64, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 25), align 8, !dbg !1194
  %72 = add i64 %gcov_ctr200, 1, !dbg !1194
  store i64 %72, ptr getelementptr inbounds ([26 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 25), align 8, !dbg !1194
  br label %cond.end162, !dbg !1194

cond.end162:                                      ; preds = %cond.false161, %cond.true159
  %cond163 = phi i32 [ %sub160, %cond.true159 ], [ 0, %cond.false161 ], !dbg !1194
  %name164 = getelementptr %struct.probe_arg, ptr %args110, i32 %i.1296, i32 4, !dbg !1195
  %73 = ptrtoint ptr %name164 to i32, !dbg !1195
  call void @__asan_load4_noabort(i32 %73), !dbg !1195
  %74 = load ptr, ptr %name164, align 4, !dbg !1195
  %call165 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr157, i32 noundef %cond163, ptr noundef nonnull %fmt.2, ptr noundef %74), !dbg !1196
  %add166 = add i32 %call165, %pos.3299, !dbg !1197
  br label %for.inc168

for.inc168:                                       ; preds = %cond.end162, %cond.end136.for.inc168_crit_edge, %if.end126.for.inc168_crit_edge
  %pos.5 = phi i32 [ %add166, %cond.end162 ], [ %pos.3299, %if.end126.for.inc168_crit_edge ], [ %add140, %cond.end136.for.inc168_crit_edge ], !dbg !1110
  %inc169 = add nuw i32 %i.1296, 1, !dbg !1198
  %75 = ptrtoint ptr %nr_args to i32, !dbg !1157
  call void @__asan_load4_noabort(i32 %75), !dbg !1157
  %76 = load i32, ptr %nr_args, align 4, !dbg !1157
  %cmp108 = icmp ult i32 %inc169, %76, !dbg !1158
  br i1 %cmp108, label %for.inc168.for.body109_crit_edge, label %for.inc168.cleanup_crit_edge, !dbg !1159, !llvm.loop !1199

for.inc168.cleanup_crit_edge:                     ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1159
  br label %cleanup, !dbg !1159

for.inc168.for.body109_crit_edge:                 ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1159
  br label %for.body109, !dbg !1159

cleanup:                                          ; preds = %for.inc168.cleanup_crit_edge, %cond.end102.cleanup_crit_edge, %if.end27
  %retval.0 = phi i32 [ 0, %if.end27 ], [ %add105, %cond.end102.cleanup_crit_edge ], [ %pos.5, %for.inc168.cleanup_crit_edge ], !dbg !1110
  ret i32 %retval.0, !dbg !1201
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @traceprobe_define_arg_fields(ptr noundef %event_call, i32 noundef %offset, ptr nocapture noundef readonly %tp) local_unnamed_addr #0 align 64 !dbg !1202 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1203
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.145, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.145, align 16
  %nr_args = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 3
  %1 = ptrtoint ptr %nr_args to i32, !dbg !1204
  call void @__asan_load4_noabort(i32 %1), !dbg !1204
  %2 = load i32, ptr %nr_args, align 4, !dbg !1204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2), !dbg !1205
  %cmp38.not = icmp eq i32 %2, 0, !dbg !1205
  br i1 %cmp38.not, label %entry.cleanup16_crit_edge, label %entry.for.body_crit_edge, !dbg !1206

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !1206

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1206
  br label %cleanup16, !dbg !1206

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i.039, i32 7, !dbg !1207
  %3 = ptrtoint ptr %type to i32, !dbg !1207
  call void @__asan_load4_noabort(i32 %3), !dbg !1207
  %4 = load ptr, ptr %type, align 4, !dbg !1207
  %fmttype = getelementptr inbounds %struct.fetch_type, ptr %4, i32 0, i32 5, !dbg !1208
  %size2 = getelementptr inbounds %struct.fetch_type, ptr %4, i32 0, i32 1, !dbg !1209
  %5 = ptrtoint ptr %size2 to i32, !dbg !1209
  call void @__asan_load4_noabort(i32 %5), !dbg !1209
  %6 = load i32, ptr %size2, align 4, !dbg !1209
  %fmt3 = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i.039, i32 6, !dbg !1210
  %7 = ptrtoint ptr %fmt3 to i32, !dbg !1210
  call void @__asan_load4_noabort(i32 %7), !dbg !1210
  %8 = load ptr, ptr %fmt3, align 4, !dbg !1210
  %tobool.not = icmp eq ptr %8, null, !dbg !1211
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then, !dbg !1211

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1211
  br label %if.end, !dbg !1211

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1212
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1212
  %9 = add i64 %gcov_ctr18, 1, !dbg !1212
  store i64 %9, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1212
  br label %if.end, !dbg !1213

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %fmt.0.in = phi ptr [ %fmt3, %if.then ], [ %fmttype, %for.body.if.end_crit_edge ]
  %10 = ptrtoint ptr %fmt.0.in to i32, !dbg !1214
  call void @__asan_load4_noabort(i32 %10), !dbg !1214
  %fmt.0 = load ptr, ptr %fmt.0.in, align 4, !dbg !1214
  %count = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i.039, i32 3, !dbg !1215
  %11 = ptrtoint ptr %count to i32, !dbg !1215
  call void @__asan_load4_noabort(i32 %11), !dbg !1215
  %12 = load i32, ptr %count, align 4, !dbg !1215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12), !dbg !1216
  %tobool5.not = icmp eq i32 %12, 0, !dbg !1216
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6, !dbg !1216

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1216
  br label %if.end8, !dbg !1216

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1217
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 2), align 16, !dbg !1217
  %13 = add i64 %gcov_ctr19, 1, !dbg !1217
  store i64 %13, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 2), align 16, !dbg !1217
  %14 = ptrtoint ptr %count to i32, !dbg !1218
  call void @__asan_load4_noabort(i32 %14), !dbg !1218
  %15 = load i32, ptr %count, align 4, !dbg !1218
  %mul = mul i32 %15, %6, !dbg !1219
  br label %if.end8, !dbg !1220

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %size.0 = phi i32 [ %mul, %if.then6 ], [ %6, %if.end.if.end8_crit_edge ], !dbg !1214
  %name = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i.039, i32 4, !dbg !1221
  %16 = ptrtoint ptr %name to i32, !dbg !1221
  call void @__asan_load4_noabort(i32 %16), !dbg !1221
  %17 = load ptr, ptr %name, align 4, !dbg !1221
  %offset9 = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i.039, i32 2, !dbg !1222
  %18 = ptrtoint ptr %offset9 to i32, !dbg !1222
  call void @__asan_load4_noabort(i32 %18), !dbg !1222
  %19 = load i32, ptr %offset9, align 4, !dbg !1222
  %add = add i32 %19, %offset, !dbg !1223
  %20 = ptrtoint ptr %type to i32, !dbg !1224
  call void @__asan_load4_noabort(i32 %20), !dbg !1224
  %21 = load ptr, ptr %type, align 4, !dbg !1224
  %is_signed = getelementptr inbounds %struct.fetch_type, ptr %21, i32 0, i32 2, !dbg !1225
  %22 = ptrtoint ptr %is_signed to i32, !dbg !1225
  call void @__asan_load4_noabort(i32 %22), !dbg !1225
  %23 = load i32, ptr %is_signed, align 4, !dbg !1225
  %call = tail call i32 @trace_define_field(ptr noundef %event_call, ptr noundef %fmt.0, ptr noundef %17, i32 noundef %add, i32 noundef %size.0, i32 noundef %23, i32 noundef 0) #20, !dbg !1226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1227
  %tobool11.not = icmp eq i32 %call, 0, !dbg !1227
  br i1 %tobool11.not, label %for.inc, label %if.end8.cleanup16_crit_edge, !dbg !1227

if.end8.cleanup16_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1227
  br label %cleanup16, !dbg !1227

for.inc:                                          ; preds = %if.end8
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 4), align 16, !dbg !1228
  %24 = add i64 %gcov_ctr21, 1, !dbg !1228
  store i64 %24, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 4), align 16, !dbg !1228
  %inc = add nuw i32 %i.039, 1, !dbg !1229
  %25 = ptrtoint ptr %nr_args to i32, !dbg !1204
  call void @__asan_load4_noabort(i32 %25), !dbg !1204
  %26 = load i32, ptr %nr_args, align 4, !dbg !1204
  %cmp = icmp ult i32 %inc, %26, !dbg !1205
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup16_crit_edge, !dbg !1206, !llvm.loop !1230

for.inc.cleanup16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1206
  br label %cleanup16, !dbg !1206

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1206
  br label %for.body, !dbg !1206

cleanup16:                                        ; preds = %for.inc.cleanup16_crit_edge, %if.end8.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 5), %entry.cleanup16_crit_edge ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 3), %if.end8.cleanup16_crit_edge ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 5), %for.inc.cleanup16_crit_edge ]
  %retval.2 = phi i32 [ 0, %entry.cleanup16_crit_edge ], [ %call, %if.end8.cleanup16_crit_edge ], [ 0, %for.inc.cleanup16_crit_edge ], !dbg !1214
  %27 = ptrtoint ptr %.sink to i32, !dbg !1214
  call void @__asan_load8_noabort(i32 %27), !dbg !1214
  %gcov_ctr20 = load i64, ptr %.sink, align 8, !dbg !1214
  %28 = add i64 %gcov_ctr20, 1, !dbg !1214
  store i64 %28, ptr %.sink, align 8, !dbg !1214
  ret i32 %retval.2, !dbg !1231
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_define_field(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_probe_append(ptr noundef %tp, ptr nocapture noundef readonly %to) local_unnamed_addr #0 align 64 !dbg !1232 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1233
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.147, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.147, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.151, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.151, align 8
  %event.i.i = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !1234
  %2 = ptrtoint ptr %event.i.i to i32, !dbg !1234
  call void @__asan_load4_noabort(i32 %2), !dbg !1234
  %3 = load ptr, ptr %event.i.i, align 4, !dbg !1234
  %probes.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %3, i32 0, i32 4, !dbg !1239
  %gcov_ctr.i6.i = load i64, ptr @__llvm_gcov_ctr.153, align 8
  %4 = add i64 %gcov_ctr.i6.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.153, align 8
  %5 = ptrtoint ptr %probes.i.i to i32, !dbg !1240
  call void @__asan_load4_noabort(i32 %5), !dbg !1240
  %6 = load volatile ptr, ptr %probes.i.i, align 4, !dbg !1240
  %cmp.i.not.i = icmp eq ptr %6, %probes.i.i, !dbg !1244
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %land.rhs.i, !dbg !1245

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1245
  br label %if.end, !dbg !1245

land.rhs.i:                                       ; preds = %entry
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !1246
  %7 = add i64 %gcov_ctr4.i, 1, !dbg !1246
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.147, i32 0, i32 1), align 8, !dbg !1246
  %gcov_ctr.i7.i = load i64, ptr @__llvm_gcov_ctr.192, align 8
  %8 = add i64 %gcov_ctr.i7.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.192, align 8
  %9 = add i64 %gcov_ctr.i6.i, 2
  store i64 %9, ptr @__llvm_gcov_ctr.153, align 8
  %10 = ptrtoint ptr %probes.i.i to i32, !dbg !1247
  call void @__asan_load4_noabort(i32 %10), !dbg !1247
  %11 = load volatile ptr, ptr %probes.i.i, align 4, !dbg !1247
  %cmp.i.not.i.i = icmp eq ptr %11, %probes.i.i, !dbg !1251
  br i1 %cmp.i.not.i.i, label %land.rhs.i.return_crit_edge, label %trace_probe_has_sibling.exit, !dbg !1252

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1252
  br label %return, !dbg !1252

trace_probe_has_sibling.exit:                     ; preds = %land.rhs.i
  %gcov_ctr1.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.192, i32 0, i32 1), align 8, !dbg !1253
  %12 = add i64 %gcov_ctr1.i.i, 1, !dbg !1253
  store i64 %12, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.192, i32 0, i32 1), align 8, !dbg !1253
  %prev.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %3, i32 0, i32 4, i32 1, !dbg !1254
  %13 = ptrtoint ptr %prev.i.i to i32, !dbg !1254
  call void @__asan_load4_noabort(i32 %13), !dbg !1254
  %14 = load ptr, ptr %prev.i.i, align 4, !dbg !1254
  %cmp.i8.i.not = icmp eq ptr %11, %14, !dbg !1255
  br i1 %cmp.i8.i.not, label %trace_probe_has_sibling.exit.if.end_crit_edge, label %trace_probe_has_sibling.exit.return_crit_edge, !dbg !1256

trace_probe_has_sibling.exit.return_crit_edge:    ; preds = %trace_probe_has_sibling.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1256
  br label %return, !dbg !1256

trace_probe_has_sibling.exit.if.end_crit_edge:    ; preds = %trace_probe_has_sibling.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1256
  br label %if.end, !dbg !1256

if.end:                                           ; preds = %trace_probe_has_sibling.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 1), align 8, !dbg !1257
  %15 = add i64 %gcov_ctr5, 1, !dbg !1257
  store i64 %15, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.146, i32 0, i32 1), align 8, !dbg !1257
  %gcov_ctr.i11 = load i64, ptr @__llvm_gcov_ctr.148, align 8
  %16 = add i64 %gcov_ctr.i11, 1
  store i64 %16, ptr @__llvm_gcov_ctr.148, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tp) #20, !dbg !1258
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1263

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1264
  %gcov_ctr.i.i12 = load i64, ptr @__llvm_gcov_ctr.193, align 8, !dbg !1264
  %17 = add i64 %gcov_ctr.i.i12, 1, !dbg !1264
  store i64 %17, ptr @__llvm_gcov_ctr.193, align 8, !dbg !1264
  br label %list_del_init.exit, !dbg !1264

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1265
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.193, i32 0, i32 1), align 8, !dbg !1265
  %18 = add i64 %gcov_ctr2.i.i, 1, !dbg !1265
  store i64 %18, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.193, i32 0, i32 1), align 8, !dbg !1265
  %prev.i.i13 = getelementptr inbounds %struct.list_head, ptr %tp, i32 0, i32 1, !dbg !1266
  %19 = ptrtoint ptr %prev.i.i13 to i32, !dbg !1266
  call void @__asan_load4_noabort(i32 %19), !dbg !1266
  %20 = load ptr, ptr %prev.i.i13, align 4, !dbg !1266
  %21 = ptrtoint ptr %tp to i32, !dbg !1267
  call void @__asan_load4_noabort(i32 %21), !dbg !1267
  %22 = load ptr, ptr %tp, align 4, !dbg !1267
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1, !dbg !1268
  %23 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !1271
  call void @__asan_store4_noabort(i32 %23), !dbg !1271
  store ptr %20, ptr %prev1.i.i.i, align 4, !dbg !1271
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.194, align 8, !dbg !1272
  %24 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1272
  store i64 %24, ptr @__llvm_gcov_ctr.194, align 8, !dbg !1272
  %25 = ptrtoint ptr %20 to i32, !dbg !1272
  call void @__asan_store4_noabort(i32 %25), !dbg !1272
  store volatile ptr %22, ptr %20, align 4, !dbg !1272
  br label %list_del_init.exit, !dbg !1273

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.i.i
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.156, align 8, !dbg !1274
  %26 = add i64 %gcov_ctr.i3.i, 1, !dbg !1274
  store i64 %26, ptr @__llvm_gcov_ctr.156, align 8, !dbg !1274
  %27 = ptrtoint ptr %tp to i32, !dbg !1274
  call void @__asan_store4_noabort(i32 %27), !dbg !1274
  store volatile ptr %tp, ptr %tp, align 4, !dbg !1274
  %prev.i4.i = getelementptr inbounds %struct.list_head, ptr %tp, i32 0, i32 1, !dbg !1277
  %28 = ptrtoint ptr %prev.i4.i to i32, !dbg !1278
  call void @__asan_store4_noabort(i32 %28), !dbg !1278
  store ptr %tp, ptr %prev.i4.i, align 4, !dbg !1278
  %29 = ptrtoint ptr %event.i.i to i32, !dbg !1279
  call void @__asan_load4_noabort(i32 %29), !dbg !1279
  %30 = load ptr, ptr %event.i.i, align 4, !dbg !1279
  %gcov_ctr.i14 = load i64, ptr @__llvm_gcov_ctr.149, align 8
  %31 = add i64 %gcov_ctr.i14, 1
  store i64 %31, ptr @__llvm_gcov_ctr.149, align 8
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %30, i32 0, i32 1, !dbg !1280
  %32 = ptrtoint ptr %class.i to i32, !dbg !1283
  call void @__asan_load4_noabort(i32 %32), !dbg !1283
  %33 = load ptr, ptr %class.i, align 4, !dbg !1283
  tail call void @kfree(ptr noundef %33) #20, !dbg !1284
  %34 = getelementptr inbounds %struct.trace_probe_event, ptr %30, i32 0, i32 2, i32 2, !dbg !1285
  %35 = ptrtoint ptr %34 to i32, !dbg !1285
  call void @__asan_load4_noabort(i32 %35), !dbg !1285
  %36 = load ptr, ptr %34, align 4, !dbg !1285
  tail call void @kfree(ptr noundef %36) #20, !dbg !1286
  %print_fmt.i = getelementptr inbounds %struct.trace_probe_event, ptr %30, i32 0, i32 2, i32 4, !dbg !1287
  %37 = ptrtoint ptr %print_fmt.i to i32, !dbg !1287
  call void @__asan_load4_noabort(i32 %37), !dbg !1287
  %38 = load ptr, ptr %print_fmt.i, align 4, !dbg !1287
  tail call void @kfree(ptr noundef %38) #20, !dbg !1288
  tail call void @kfree(ptr noundef %30) #20, !dbg !1289
  %event1 = getelementptr inbounds %struct.trace_probe, ptr %to, i32 0, i32 1, !dbg !1290
  %39 = ptrtoint ptr %event1 to i32, !dbg !1290
  call void @__asan_load4_noabort(i32 %39), !dbg !1290
  %40 = load ptr, ptr %event1, align 4, !dbg !1290
  %41 = ptrtoint ptr %event.i.i to i32, !dbg !1291
  call void @__asan_store4_noabort(i32 %41), !dbg !1291
  store ptr %40, ptr %event.i.i, align 4, !dbg !1291
  %gcov_ctr.i15 = load i64, ptr @__llvm_gcov_ctr.151, align 8
  %42 = add i64 %gcov_ctr.i15, 1
  store i64 %42, ptr @__llvm_gcov_ctr.151, align 8
  %43 = load ptr, ptr %event1, align 4, !dbg !1292
  %probes.i = getelementptr inbounds %struct.trace_probe_event, ptr %43, i32 0, i32 4, !dbg !1294
  %gcov_ctr.i16 = load i64, ptr @__llvm_gcov_ctr.150, align 8
  %44 = add i64 %gcov_ctr.i16, 1
  store i64 %44, ptr @__llvm_gcov_ctr.150, align 8
  %prev.i = getelementptr inbounds %struct.trace_probe_event, ptr %43, i32 0, i32 4, i32 1, !dbg !1295
  %45 = ptrtoint ptr %prev.i to i32, !dbg !1295
  call void @__asan_load4_noabort(i32 %45), !dbg !1295
  %46 = load ptr, ptr %prev.i, align 4, !dbg !1295
  %call.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef %tp, ptr noundef %46, ptr noundef %probes.i) #20, !dbg !1298
  br i1 %call.i.i17, label %if.end.i.i18, label %list_del_init.exit.return_crit_edge, !dbg !1301

list_del_init.exit.return_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1301
  br label %return, !dbg !1301

if.end.i.i18:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1302
  %47 = ptrtoint ptr %prev.i to i32, !dbg !1302
  call void @__asan_store4_noabort(i32 %47), !dbg !1302
  store ptr %tp, ptr %prev.i, align 4, !dbg !1302
  %48 = ptrtoint ptr %tp to i32, !dbg !1303
  call void @__asan_store4_noabort(i32 %48), !dbg !1303
  store ptr %probes.i, ptr %tp, align 4, !dbg !1303
  %49 = ptrtoint ptr %prev.i4.i to i32, !dbg !1304
  call void @__asan_store4_noabort(i32 %49), !dbg !1304
  store ptr %46, ptr %prev.i4.i, align 4, !dbg !1304
  %50 = ptrtoint ptr %46 to i32, !dbg !1305
  call void @__asan_store4_noabort(i32 %50), !dbg !1305
  store volatile ptr %tp, ptr %46, align 4, !dbg !1305
  br label %return, !dbg !1305

return:                                           ; preds = %if.end.i.i18, %list_del_init.exit.return_crit_edge, %trace_probe_has_sibling.exit.return_crit_edge, %land.rhs.i.return_crit_edge
  %__llvm_gcov_ctr.195.sink18.i.i.sink21 = phi ptr [ @__llvm_gcov_ctr.146, %land.rhs.i.return_crit_edge ], [ @__llvm_gcov_ctr.146, %trace_probe_has_sibling.exit.return_crit_edge ], [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.195, i32 0, i32 1), %if.end.i.i18 ], [ @__llvm_gcov_ctr.195, %list_del_init.exit.return_crit_edge ]
  %retval.0 = phi i32 [ -16, %land.rhs.i.return_crit_edge ], [ -16, %trace_probe_has_sibling.exit.return_crit_edge ], [ 0, %if.end.i.i18 ], [ 0, %list_del_init.exit.return_crit_edge ], !dbg !1306
  %51 = ptrtoint ptr %__llvm_gcov_ctr.195.sink18.i.i.sink21 to i32, !dbg !1306
  call void @__asan_load8_noabort(i32 %51), !dbg !1306
  %gcov_ctr.i.i19 = load i64, ptr %__llvm_gcov_ctr.195.sink18.i.i.sink21, align 8, !dbg !1306
  %52 = add i64 %gcov_ctr.i.i19, 1, !dbg !1306
  store i64 %52, ptr %__llvm_gcov_ctr.195.sink18.i.i.sink21, align 8, !dbg !1306
  ret i32 %retval.0, !dbg !1307
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_probe_unlink(ptr noundef %tp) local_unnamed_addr #0 align 64 !dbg !1308 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1309
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.152, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.152, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.148, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.148, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tp) #20, !dbg !1310
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1313

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1314
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.193, align 8, !dbg !1314
  %2 = add i64 %gcov_ctr.i.i, 1, !dbg !1314
  store i64 %2, ptr @__llvm_gcov_ctr.193, align 8, !dbg !1314
  br label %list_del_init.exit, !dbg !1314

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1315
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.193, i32 0, i32 1), align 8, !dbg !1315
  %3 = add i64 %gcov_ctr2.i.i, 1, !dbg !1315
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.193, i32 0, i32 1), align 8, !dbg !1315
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tp, i32 0, i32 1, !dbg !1316
  %4 = ptrtoint ptr %prev.i.i to i32, !dbg !1316
  call void @__asan_load4_noabort(i32 %4), !dbg !1316
  %5 = load ptr, ptr %prev.i.i, align 4, !dbg !1316
  %6 = ptrtoint ptr %tp to i32, !dbg !1317
  call void @__asan_load4_noabort(i32 %6), !dbg !1317
  %7 = load ptr, ptr %tp, align 4, !dbg !1317
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1, !dbg !1318
  %8 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !1320
  call void @__asan_store4_noabort(i32 %8), !dbg !1320
  store ptr %5, ptr %prev1.i.i.i, align 4, !dbg !1320
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.194, align 8, !dbg !1321
  %9 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1321
  store i64 %9, ptr @__llvm_gcov_ctr.194, align 8, !dbg !1321
  %10 = ptrtoint ptr %5 to i32, !dbg !1321
  call void @__asan_store4_noabort(i32 %10), !dbg !1321
  store volatile ptr %7, ptr %5, align 4, !dbg !1321
  br label %list_del_init.exit, !dbg !1322

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.i.i
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.156, align 8, !dbg !1323
  %11 = add i64 %gcov_ctr.i3.i, 1, !dbg !1323
  store i64 %11, ptr @__llvm_gcov_ctr.156, align 8, !dbg !1323
  %12 = ptrtoint ptr %tp to i32, !dbg !1323
  call void @__asan_store4_noabort(i32 %12), !dbg !1323
  store volatile ptr %tp, ptr %tp, align 4, !dbg !1323
  %prev.i4.i = getelementptr inbounds %struct.list_head, ptr %tp, i32 0, i32 1, !dbg !1325
  %13 = ptrtoint ptr %prev.i4.i to i32, !dbg !1326
  call void @__asan_store4_noabort(i32 %13), !dbg !1326
  store ptr %tp, ptr %prev.i4.i, align 4, !dbg !1326
  %gcov_ctr.i7 = load i64, ptr @__llvm_gcov_ctr.151, align 8
  %14 = add i64 %gcov_ctr.i7, 1
  store i64 %14, ptr @__llvm_gcov_ctr.151, align 8
  %event.i = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !1327
  %15 = ptrtoint ptr %event.i to i32, !dbg !1327
  call void @__asan_load4_noabort(i32 %15), !dbg !1327
  %16 = load ptr, ptr %event.i, align 4, !dbg !1327
  %probes.i = getelementptr inbounds %struct.trace_probe_event, ptr %16, i32 0, i32 4, !dbg !1329
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.153, align 8
  %17 = add i64 %gcov_ctr.i8, 1
  store i64 %17, ptr @__llvm_gcov_ctr.153, align 8
  %18 = ptrtoint ptr %probes.i to i32, !dbg !1330
  call void @__asan_load4_noabort(i32 %18), !dbg !1330
  %19 = load volatile ptr, ptr %probes.i, align 4, !dbg !1330
  %cmp.i.not = icmp eq ptr %19, %probes.i, !dbg !1332
  br i1 %cmp.i.not, label %if.then, label %list_del_init.exit.if.end_crit_edge, !dbg !1333

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1333
  br label %if.end, !dbg !1333

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1334
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 1), align 8, !dbg !1334
  %20 = add i64 %gcov_ctr3, 1, !dbg !1334
  store i64 %20, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.152, i32 0, i32 1), align 8, !dbg !1334
  %21 = ptrtoint ptr %event.i to i32, !dbg !1335
  call void @__asan_load4_noabort(i32 %21), !dbg !1335
  %22 = load ptr, ptr %event.i, align 4, !dbg !1335
  %gcov_ctr.i9 = load i64, ptr @__llvm_gcov_ctr.149, align 8
  %23 = add i64 %gcov_ctr.i9, 1
  store i64 %23, ptr @__llvm_gcov_ctr.149, align 8
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %22, i32 0, i32 1, !dbg !1336
  %24 = ptrtoint ptr %class.i to i32, !dbg !1338
  call void @__asan_load4_noabort(i32 %24), !dbg !1338
  %25 = load ptr, ptr %class.i, align 4, !dbg !1338
  tail call void @kfree(ptr noundef %25) #20, !dbg !1339
  %26 = getelementptr inbounds %struct.trace_probe_event, ptr %22, i32 0, i32 2, i32 2, !dbg !1340
  %27 = ptrtoint ptr %26 to i32, !dbg !1340
  call void @__asan_load4_noabort(i32 %27), !dbg !1340
  %28 = load ptr, ptr %26, align 4, !dbg !1340
  tail call void @kfree(ptr noundef %28) #20, !dbg !1341
  %print_fmt.i = getelementptr inbounds %struct.trace_probe_event, ptr %22, i32 0, i32 2, i32 4, !dbg !1342
  %29 = ptrtoint ptr %print_fmt.i to i32, !dbg !1342
  call void @__asan_load4_noabort(i32 %29), !dbg !1342
  %30 = load ptr, ptr %print_fmt.i, align 4, !dbg !1342
  tail call void @kfree(ptr noundef %30) #20, !dbg !1343
  tail call void @kfree(ptr noundef %22) #20, !dbg !1344
  br label %if.end, !dbg !1345

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %31 = ptrtoint ptr %event.i to i32, !dbg !1346
  call void @__asan_store4_noabort(i32 %31), !dbg !1346
  store ptr null, ptr %event.i, align 4, !dbg !1346
  ret void, !dbg !1347
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_probe_cleanup(ptr noundef %tp) local_unnamed_addr #0 align 64 !dbg !1348 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1349
  %nr_args = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 3
  %0 = ptrtoint ptr %nr_args to i32, !dbg !1350
  call void @__asan_load4_noabort(i32 %0), !dbg !1350
  %1 = load i32, ptr %nr_args, align 4, !dbg !1350
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !1351
  %cmp8.not = icmp eq i32 %1, 0, !dbg !1351
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !1352

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !1352

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1352
  br label %for.end, !dbg !1352

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i.09, !dbg !1353
  tail call void @traceprobe_free_probe_arg(ptr noundef %arrayidx), !dbg !1354
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !1355
  %2 = add i64 %gcov_ctr1, 1, !dbg !1355
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !1355
  %inc = add nuw i32 %i.09, 1, !dbg !1355
  %3 = ptrtoint ptr %nr_args to i32, !dbg !1350
  call void @__asan_load4_noabort(i32 %3), !dbg !1350
  %4 = load i32, ptr %nr_args, align 4, !dbg !1350
  %cmp = icmp ult i32 %inc, %4, !dbg !1351
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !dbg !1352, !llvm.loop !1356

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1352
  br label %for.end, !dbg !1352

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1352
  br label %for.body, !dbg !1352

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.154, align 16, !dbg !1358
  %5 = add i64 %gcov_ctr, 1, !dbg !1358
  store i64 %5, ptr @__llvm_gcov_ctr.154, align 16, !dbg !1358
  %event = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !1359
  %6 = ptrtoint ptr %event to i32, !dbg !1359
  call void @__asan_load4_noabort(i32 %6), !dbg !1359
  %7 = load ptr, ptr %event, align 4, !dbg !1359
  %tobool.not = icmp eq ptr %7, null, !dbg !1358
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then, !dbg !1358

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1358
  br label %if.end, !dbg !1358

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1360
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 2), align 16, !dbg !1360
  %8 = add i64 %gcov_ctr2, 1, !dbg !1360
  store i64 %8, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 2), align 16, !dbg !1360
  tail call void @trace_probe_unlink(ptr noundef %tp), !dbg !1361
  br label %if.end, !dbg !1361

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void, !dbg !1362
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_probe_init(ptr noundef %tp, ptr noundef %event, ptr noundef %group, i1 noundef zeroext %alloc_filter) local_unnamed_addr #0 align 64 !dbg !1363 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1364
  %tobool.not = icmp eq ptr %event, null, !dbg !1365
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false, !dbg !1366

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1366
  br label %if.then, !dbg !1366

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.155, align 16, !dbg !1367
  %0 = add i64 %gcov_ctr, 1, !dbg !1367
  store i64 %0, ptr @__llvm_gcov_ctr.155, align 16, !dbg !1367
  %tobool1.not = icmp eq ptr %group, null, !dbg !1367
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end, !dbg !1368

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1368
  br label %if.then, !dbg !1368

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 1), align 8, !dbg !1369
  %1 = add i64 %gcov_ctr36, 1, !dbg !1369
  store i64 %1, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 1), align 8, !dbg !1369
  br label %cleanup, !dbg !1369

if.end:                                           ; preds = %lor.lhs.false
  br i1 %alloc_filter, label %if.then3, label %if.end.if.end4_crit_edge, !dbg !1370

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1370
  br label %if.end4, !dbg !1370

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1371
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 2), align 16, !dbg !1371
  %2 = add i64 %gcov_ctr37, 1, !dbg !1371
  store i64 %2, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 2), align 16, !dbg !1371
  br label %if.end4, !dbg !1372

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %size.0 = phi i32 [ 188, %if.then3 ], [ 132, %if.end.if.end4_crit_edge ], !dbg !1373
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.131, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.131, align 8
  %gcov_ctr12.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !1374
  %4 = add i64 %gcov_ctr12.i.i, 1, !dbg !1374
  store i64 %4, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !1374
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.0, i32 noundef 3520) #22, !dbg !1377
  %event6 = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !1378
  %5 = ptrtoint ptr %event6 to i32, !dbg !1379
  call void @__asan_store4_noabort(i32 %5), !dbg !1379
  store ptr %call9.i.i, ptr %event6, align 4, !dbg !1379
  %tobool8.not = icmp eq ptr %call9.i.i, null, !dbg !1380
  br i1 %tobool8.not, label %if.then9, label %if.end10, !dbg !1381

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1382
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 3), align 8, !dbg !1382
  %6 = add i64 %gcov_ctr38, 1, !dbg !1382
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 3), align 8, !dbg !1382
  br label %cleanup, !dbg !1382

if.end10:                                         ; preds = %if.end4
  %files = getelementptr inbounds %struct.trace_probe_event, ptr %call9.i.i, i32 0, i32 3, !dbg !1383
  %gcov_ctr.i59 = load i64, ptr @__llvm_gcov_ctr.156, align 8, !dbg !1384
  %7 = ptrtoint ptr %files to i32, !dbg !1384
  call void @__asan_store4_noabort(i32 %7), !dbg !1384
  store volatile ptr %files, ptr %files, align 4, !dbg !1384
  %prev.i = getelementptr inbounds %struct.trace_probe_event, ptr %call9.i.i, i32 0, i32 3, i32 1, !dbg !1386
  %8 = ptrtoint ptr %prev.i to i32, !dbg !1387
  call void @__asan_store4_noabort(i32 %8), !dbg !1387
  store ptr %files, ptr %prev.i, align 8, !dbg !1387
  %fields = getelementptr inbounds %struct.trace_probe_event, ptr %call9.i.i, i32 0, i32 1, i32 6, !dbg !1388
  %9 = ptrtoint ptr %fields to i32, !dbg !1389
  call void @__asan_store4_noabort(i32 %9), !dbg !1389
  store volatile ptr %fields, ptr %fields, align 4, !dbg !1389
  %prev.i61 = getelementptr inbounds %struct.trace_probe_event, ptr %call9.i.i, i32 0, i32 1, i32 6, i32 1, !dbg !1391
  %10 = ptrtoint ptr %prev.i61 to i32, !dbg !1392
  call void @__asan_store4_noabort(i32 %10), !dbg !1392
  store ptr %fields, ptr %prev.i61, align 32, !dbg !1392
  %probes = getelementptr inbounds %struct.trace_probe_event, ptr %call9.i.i, i32 0, i32 4, !dbg !1393
  %11 = ptrtoint ptr %probes to i32, !dbg !1394
  call void @__asan_store4_noabort(i32 %11), !dbg !1394
  store volatile ptr %probes, ptr %probes, align 4, !dbg !1394
  %prev.i63 = getelementptr inbounds %struct.trace_probe_event, ptr %call9.i.i, i32 0, i32 4, i32 1, !dbg !1396
  %12 = ptrtoint ptr %prev.i63 to i32, !dbg !1397
  call void @__asan_store4_noabort(i32 %12), !dbg !1397
  store ptr %probes, ptr %prev.i63, align 128, !dbg !1397
  %13 = add i64 %gcov_ctr.i59, 4, !dbg !1398
  store i64 %13, ptr @__llvm_gcov_ctr.156, align 8, !dbg !1398
  %14 = ptrtoint ptr %tp to i32, !dbg !1398
  call void @__asan_store4_noabort(i32 %14), !dbg !1398
  store volatile ptr %tp, ptr %tp, align 4, !dbg !1398
  %prev.i65 = getelementptr inbounds %struct.list_head, ptr %tp, i32 0, i32 1, !dbg !1400
  %15 = ptrtoint ptr %prev.i65 to i32, !dbg !1401
  call void @__asan_store4_noabort(i32 %15), !dbg !1401
  store ptr %tp, ptr %prev.i65, align 4, !dbg !1401
  %gcov_ctr.i66 = load i64, ptr @__llvm_gcov_ctr.157, align 8
  %16 = add i64 %gcov_ctr.i66, 1
  store i64 %16, ptr @__llvm_gcov_ctr.157, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tp, ptr noundef %probes, ptr noundef %probes) #20, !dbg !1402
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_add.exit_crit_edge, !dbg !1406

if.end10.list_add.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1406
  br label %list_add.exit, !dbg !1406

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1407
  %17 = ptrtoint ptr %prev.i63 to i32, !dbg !1407
  call void @__asan_store4_noabort(i32 %17), !dbg !1407
  store ptr %tp, ptr %prev.i63, align 128, !dbg !1407
  %18 = ptrtoint ptr %tp to i32, !dbg !1408
  call void @__asan_store4_noabort(i32 %18), !dbg !1408
  store ptr %probes, ptr %tp, align 4, !dbg !1408
  %19 = ptrtoint ptr %prev.i65 to i32, !dbg !1409
  call void @__asan_store4_noabort(i32 %19), !dbg !1409
  store ptr %probes, ptr %prev.i65, align 4, !dbg !1409
  %20 = ptrtoint ptr %probes to i32, !dbg !1410
  call void @__asan_store4_noabort(i32 %20), !dbg !1410
  store volatile ptr %tp, ptr %probes, align 4, !dbg !1410
  br label %list_add.exit, !dbg !1410

list_add.exit:                                    ; preds = %if.end.i.i, %if.end10.list_add.exit_crit_edge
  %__llvm_gcov_ctr.195.sink18.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.195, i32 0, i32 1), %if.end.i.i ], [ @__llvm_gcov_ctr.195, %if.end10.list_add.exit_crit_edge ]
  %21 = ptrtoint ptr %__llvm_gcov_ctr.195.sink18.i.i to i32, !dbg !1411
  call void @__asan_load8_noabort(i32 %21), !dbg !1411
  %gcov_ctr.i.i = load i64, ptr %__llvm_gcov_ctr.195.sink18.i.i, align 8, !dbg !1411
  %22 = add i64 %gcov_ctr.i.i, 1, !dbg !1411
  store i64 %22, ptr %__llvm_gcov_ctr.195.sink18.i.i, align 8, !dbg !1411
  %gcov_ctr.i67 = load i64, ptr @__llvm_gcov_ctr.142, align 8
  %23 = add i64 %gcov_ctr.i67, 1
  store i64 %23, ptr @__llvm_gcov_ctr.142, align 8
  %24 = ptrtoint ptr %event6 to i32, !dbg !1412
  call void @__asan_load4_noabort(i32 %24), !dbg !1412
  %25 = load ptr, ptr %event6, align 4, !dbg !1412
  %class19 = getelementptr inbounds %struct.trace_probe_event, ptr %25, i32 0, i32 1, !dbg !1414
  %class20 = getelementptr inbounds %struct.trace_probe_event, ptr %25, i32 0, i32 2, i32 1, !dbg !1415
  %26 = ptrtoint ptr %class20 to i32, !dbg !1416
  call void @__asan_store4_noabort(i32 %26), !dbg !1416
  store ptr %class19, ptr %class20, align 4, !dbg !1416
  %call21 = tail call noalias ptr @kstrdup(ptr noundef nonnull %event, i32 noundef 3264) #20, !dbg !1417
  %27 = getelementptr inbounds %struct.trace_probe_event, ptr %25, i32 0, i32 2, i32 2, !dbg !1418
  %28 = ptrtoint ptr %27 to i32, !dbg !1419
  call void @__asan_store4_noabort(i32 %28), !dbg !1419
  store ptr %call21, ptr %27, align 4, !dbg !1419
  %tobool22.not = icmp eq ptr %call21, null, !dbg !1420
  br i1 %tobool22.not, label %if.then23, label %if.end24, !dbg !1421

if.then23:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1422
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 4), align 16, !dbg !1422
  %29 = add i64 %gcov_ctr39, 1, !dbg !1422
  store i64 %29, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 4), align 16, !dbg !1422
  br label %error, !dbg !1423

if.end24:                                         ; preds = %list_add.exit
  %call25 = tail call noalias ptr @kstrdup(ptr noundef nonnull %group, i32 noundef 3264) #20, !dbg !1424
  %30 = ptrtoint ptr %event6 to i32, !dbg !1425
  call void @__asan_load4_noabort(i32 %30), !dbg !1425
  %31 = load ptr, ptr %event6, align 4, !dbg !1425
  %class27 = getelementptr inbounds %struct.trace_probe_event, ptr %31, i32 0, i32 1, !dbg !1426
  %32 = ptrtoint ptr %class27 to i32, !dbg !1427
  call void @__asan_store4_noabort(i32 %32), !dbg !1427
  store ptr %call25, ptr %class27, align 4, !dbg !1427
  %33 = load ptr, ptr %event6, align 4, !dbg !1428
  %class29 = getelementptr inbounds %struct.trace_probe_event, ptr %33, i32 0, i32 1, !dbg !1429
  %34 = ptrtoint ptr %class29 to i32, !dbg !1430
  call void @__asan_load4_noabort(i32 %34), !dbg !1430
  %35 = load ptr, ptr %class29, align 4, !dbg !1430
  %tobool31.not = icmp eq ptr %35, null, !dbg !1431
  br i1 %tobool31.not, label %if.then32, label %if.end33, !dbg !1432

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1433
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 5), align 8, !dbg !1433
  %36 = add i64 %gcov_ctr40, 1, !dbg !1433
  store i64 %36, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 5), align 8, !dbg !1433
  br label %error, !dbg !1434

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1435
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 6), align 16, !dbg !1435
  %37 = add i64 %gcov_ctr41, 1, !dbg !1435
  store i64 %37, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.155, i32 0, i32 6), align 16, !dbg !1435
  br label %cleanup, !dbg !1435

error:                                            ; preds = %if.then32, %if.then23
  %nr_args.i = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 3
  %38 = ptrtoint ptr %nr_args.i to i32, !dbg !1436
  call void @__asan_load4_noabort(i32 %38), !dbg !1436
  %39 = load i32, ptr %nr_args.i, align 4, !dbg !1436
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39), !dbg !1438
  %cmp8.not.i = icmp eq i32 %39, 0, !dbg !1438
  br i1 %cmp8.not.i, label %error.for.end.i_crit_edge, label %error.for.body.i_crit_edge, !dbg !1439

error.for.body.i_crit_edge:                       ; preds = %error
  br label %for.body.i, !dbg !1439

error.for.end.i_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1439
  br label %for.end.i, !dbg !1439

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %error.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %error.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i.09.i, !dbg !1440
  tail call void @traceprobe_free_probe_arg(ptr noundef %arrayidx.i) #20, !dbg !1441
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !1442
  %40 = add i64 %gcov_ctr1.i, 1, !dbg !1442
  store i64 %40, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 1), align 8, !dbg !1442
  %inc.i = add nuw i32 %i.09.i, 1, !dbg !1442
  %41 = ptrtoint ptr %nr_args.i to i32, !dbg !1436
  call void @__asan_load4_noabort(i32 %41), !dbg !1436
  %42 = load i32, ptr %nr_args.i, align 4, !dbg !1436
  %cmp.i = icmp ult i32 %inc.i, %42, !dbg !1438
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge, !dbg !1439, !llvm.loop !1443

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1439
  br label %for.end.i, !dbg !1439

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1439
  br label %for.body.i, !dbg !1439

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %error.for.end.i_crit_edge
  %gcov_ctr.i68 = load i64, ptr @__llvm_gcov_ctr.154, align 16, !dbg !1445
  %43 = add i64 %gcov_ctr.i68, 1, !dbg !1445
  store i64 %43, ptr @__llvm_gcov_ctr.154, align 16, !dbg !1445
  %44 = ptrtoint ptr %event6 to i32, !dbg !1446
  call void @__asan_load4_noabort(i32 %44), !dbg !1446
  %45 = load ptr, ptr %event6, align 4, !dbg !1446
  %tobool.not.i = icmp eq ptr %45, null, !dbg !1445
  br i1 %tobool.not.i, label %for.end.i.cleanup_crit_edge, label %if.then.i, !dbg !1445

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1445
  br label %cleanup, !dbg !1445

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1447
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 2), align 16, !dbg !1447
  %46 = add i64 %gcov_ctr2.i, 1, !dbg !1447
  store i64 %46, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.154, i32 0, i32 2), align 16, !dbg !1447
  tail call void @trace_probe_unlink(ptr noundef %tp) #20, !dbg !1448
  br label %cleanup, !dbg !1448

cleanup:                                          ; preds = %if.then.i, %for.end.i.cleanup_crit_edge, %if.end33, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -12, %if.then9 ], [ -22, %if.then ], [ -12, %for.end.i.cleanup_crit_edge ], [ -12, %if.then.i ], !dbg !1373
  ret i32 %retval.0, !dbg !1449
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_probe_register_event_call(ptr nocapture noundef readonly %tp) local_unnamed_addr #0 align 64 !dbg !1450 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1451
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.142, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.142, align 8
  %event.i = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !1452
  %1 = ptrtoint ptr %event.i to i32, !dbg !1452
  call void @__asan_load4_noabort(i32 %1), !dbg !1452
  %2 = load ptr, ptr %event.i, align 4, !dbg !1452
  %call.i = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 0, i32 2, !dbg !1454
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !1455
  %3 = load i32, ptr @debug_locks, align 4, !dbg !1455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !1455
  %tobool.not = icmp eq i32 %3, 0, !dbg !1455
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !dbg !1455

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1455
  br label %if.end, !dbg !1455

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.158, align 16, !dbg !1455
  %4 = add i64 %gcov_ctr, 1, !dbg !1455
  store i64 %4, ptr @__llvm_gcov_ctr.158, align 16, !dbg !1455
  %gcov_ctr.i55 = load i64, ptr @__llvm_gcov_ctr.159, align 8
  %5 = add i64 %gcov_ctr.i55, 1
  store i64 %5, ptr @__llvm_gcov_ctr.159, align 8
  %call.i56 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #20, !dbg !1456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56), !dbg !1455
  %cmp.not = icmp eq i32 %call.i56, 0, !dbg !1455
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !dbg !1455, !prof !1460

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1455
  br label %if.end, !dbg !1455

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1455
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1088, i32 noundef 9, ptr noundef null) #20, !dbg !1455
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 1), align 8, !dbg !1455
  %6 = add i64 %gcov_ctr43, 1, !dbg !1455
  store i64 %6, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 1), align 8, !dbg !1455
  br label %if.end, !dbg !1455

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr.i57 = load i64, ptr @__llvm_gcov_ctr.161, align 8
  %7 = add i64 %gcov_ctr.i57, 1
  store i64 %7, ptr @__llvm_gcov_ctr.161, align 8
  %8 = ptrtoint ptr %event.i to i32, !dbg !1461
  call void @__asan_load4_noabort(i32 %8), !dbg !1461
  %9 = load ptr, ptr %event.i, align 4, !dbg !1461
  %class.i = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 1, !dbg !1464
  %10 = ptrtoint ptr %class.i to i32, !dbg !1464
  call void @__asan_load4_noabort(i32 %10), !dbg !1464
  %11 = load ptr, ptr %class.i, align 4, !dbg !1464
  %12 = ptrtoint ptr %11 to i32, !dbg !1465
  call void @__asan_load4_noabort(i32 %12), !dbg !1465
  %13 = load ptr, ptr %11, align 4, !dbg !1465
  %gcov_ctr.i59 = load i64, ptr @__llvm_gcov_ctr.162, align 8
  %14 = add i64 %gcov_ctr.i59, 1
  store i64 %14, ptr @__llvm_gcov_ctr.162, align 8
  %flags.i.i = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 8, !dbg !1466
  %15 = ptrtoint ptr %flags.i.i to i32, !dbg !1466
  call void @__asan_load4_noabort(i32 %15), !dbg !1466
  %16 = load i32, ptr %flags.i.i, align 4, !dbg !1466
  %and.i.i = and i32 %16, 16, !dbg !1472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !1472
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !1472
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !1473

if.then.i.i:                                      ; preds = %if.end
  %17 = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 2, !dbg !1474
  %18 = ptrtoint ptr %17 to i32, !dbg !1474
  call void @__asan_load4_noabort(i32 %18), !dbg !1474
  %19 = load ptr, ptr %17, align 4, !dbg !1474
  %tobool1.not.i.i = icmp eq ptr %19, null, !dbg !1475
  br i1 %tobool1.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !dbg !1475

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1476
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.196, i32 0, i32 1), align 8, !dbg !1476
  %20 = add i64 %gcov_ctr2.i.i, 1, !dbg !1476
  store i64 %20, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.196, i32 0, i32 1), align 8, !dbg !1476
  %21 = ptrtoint ptr %19 to i32, !dbg !1477
  call void @__asan_load4_noabort(i32 %21), !dbg !1477
  %22 = load ptr, ptr %19, align 4, !dbg !1477
  br label %trace_probe_name.exit, !dbg !1475

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1475
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.196, align 16, !dbg !1475
  %23 = add i64 %gcov_ctr.i.i, 1, !dbg !1475
  store i64 %23, ptr @__llvm_gcov_ctr.196, align 16, !dbg !1475
  br label %trace_probe_name.exit, !dbg !1475

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1478
  %gcov_ctr3.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.196, i32 0, i32 2), align 16, !dbg !1478
  %24 = add i64 %gcov_ctr3.i.i, 1, !dbg !1478
  store i64 %24, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.196, i32 0, i32 2), align 16, !dbg !1478
  %25 = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 2, !dbg !1479
  %26 = ptrtoint ptr %25 to i32, !dbg !1479
  call void @__asan_load4_noabort(i32 %26), !dbg !1479
  %27 = load ptr, ptr %25, align 4, !dbg !1479
  br label %trace_probe_name.exit, !dbg !1480

trace_probe_name.exit:                            ; preds = %if.else.i.i, %cond.false.i.i, %cond.true.i.i
  %retval.0.i.i = phi ptr [ %27, %if.else.i.i ], [ %22, %cond.true.i.i ], [ null, %cond.false.i.i ], !dbg !1481
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ftrace_events to i32)), !dbg !1482
  %tp_event.031.i = load ptr, ptr @ftrace_events, align 4, !dbg !1482
  %cmp.not32.i = icmp eq ptr %tp_event.031.i, @ftrace_events, !dbg !1482
  br i1 %cmp.not32.i, label %trace_probe_name.exit.find_trace_event_call.exit.thread_crit_edge, label %trace_probe_name.exit.for.body.i_crit_edge, !dbg !1482

trace_probe_name.exit.for.body.i_crit_edge:       ; preds = %trace_probe_name.exit
  br label %for.body.i, !dbg !1482

trace_probe_name.exit.find_trace_event_call.exit.thread_crit_edge: ; preds = %trace_probe_name.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1482
  br label %find_trace_event_call.exit.thread, !dbg !1482

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %trace_probe_name.exit.for.body.i_crit_edge
  %tp_event.033.i = phi ptr [ %tp_event.0.i, %for.inc.i.for.body.i_crit_edge ], [ %tp_event.031.i, %trace_probe_name.exit.for.body.i_crit_edge ]
  %class.i61 = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.033.i, i32 0, i32 1, !dbg !1485
  %28 = ptrtoint ptr %class.i61 to i32, !dbg !1485
  call void @__asan_load4_noabort(i32 %28), !dbg !1485
  %29 = load ptr, ptr %class.i61, align 4, !dbg !1485
  %30 = ptrtoint ptr %29 to i32, !dbg !1486
  call void @__asan_load4_noabort(i32 %30), !dbg !1486
  %31 = load ptr, ptr %29, align 4, !dbg !1486
  %tobool.not.i = icmp eq ptr %31, null, !dbg !1487
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i, !dbg !1488

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1488
  br label %for.inc.i, !dbg !1488

lor.lhs.false.i:                                  ; preds = %for.body.i
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 1), align 8, !dbg !1489
  %32 = add i64 %gcov_ctr17.i, 1, !dbg !1489
  store i64 %32, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 1), align 8, !dbg !1489
  %33 = ptrtoint ptr %class.i61 to i32, !dbg !1490
  call void @__asan_load4_noabort(i32 %33), !dbg !1490
  %34 = load ptr, ptr %class.i61, align 4, !dbg !1490
  %35 = ptrtoint ptr %34 to i32, !dbg !1491
  call void @__asan_load4_noabort(i32 %35), !dbg !1491
  %36 = load ptr, ptr %34, align 4, !dbg !1491
  %call.i62 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %36) #23, !dbg !1492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62), !dbg !1492
  %tobool4.not.i = icmp eq i32 %call.i62, 0, !dbg !1492
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge, !dbg !1493

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1493
  br label %for.inc.i, !dbg !1493

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i.i63 = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.033.i, i32 0, i32 8, !dbg !1494
  %37 = ptrtoint ptr %flags.i.i63 to i32, !dbg !1494
  call void @__asan_load4_noabort(i32 %37), !dbg !1494
  %38 = load i32, ptr %flags.i.i63, align 4, !dbg !1494
  %and.i.i64 = and i32 %38, 16, !dbg !1496
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64), !dbg !1496
  %tobool.not.i.i65 = icmp eq i32 %and.i.i64, 0, !dbg !1496
  br i1 %tobool.not.i.i65, label %if.else.i.i72, label %if.then.i.i67, !dbg !1497

if.then.i.i67:                                    ; preds = %if.end.i
  %39 = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.033.i, i32 0, i32 2, !dbg !1498
  %40 = ptrtoint ptr %39 to i32, !dbg !1498
  call void @__asan_load4_noabort(i32 %40), !dbg !1498
  %41 = load ptr, ptr %39, align 4, !dbg !1498
  %tobool1.not.i.i66 = icmp eq ptr %41, null, !dbg !1499
  br i1 %tobool1.not.i.i66, label %trace_event_name.exit.thread.i, label %cond.true.i.i69, !dbg !1499

cond.true.i.i69:                                  ; preds = %if.then.i.i67
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1500
  %gcov_ctr2.i.i68 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.196, i32 0, i32 1), align 8, !dbg !1500
  %42 = add i64 %gcov_ctr2.i.i68, 1, !dbg !1500
  store i64 %42, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.196, i32 0, i32 1), align 8, !dbg !1500
  %43 = ptrtoint ptr %39 to i32, !dbg !1501
  call void @__asan_load4_noabort(i32 %43), !dbg !1501
  %44 = load ptr, ptr %39, align 4, !dbg !1501
  br label %trace_event_name.exit.i, !dbg !1499

trace_event_name.exit.thread.i:                   ; preds = %if.then.i.i67
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1499
  %gcov_ctr.i.i70 = load i64, ptr @__llvm_gcov_ctr.196, align 16, !dbg !1499
  %45 = add i64 %gcov_ctr.i.i70, 1, !dbg !1499
  store i64 %45, ptr @__llvm_gcov_ctr.196, align 16, !dbg !1499
  br label %for.inc.i, !dbg !1502

if.else.i.i72:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1503
  %gcov_ctr3.i.i71 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.196, i32 0, i32 2), align 16, !dbg !1503
  %46 = add i64 %gcov_ctr3.i.i71, 1, !dbg !1503
  store i64 %46, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.196, i32 0, i32 2), align 16, !dbg !1503
  %47 = getelementptr inbounds %struct.trace_event_call, ptr %tp_event.033.i, i32 0, i32 2, !dbg !1504
  br label %trace_event_name.exit.i, !dbg !1505

trace_event_name.exit.i:                          ; preds = %if.else.i.i72, %cond.true.i.i69
  %retval.0.i.in.i = phi ptr [ %47, %if.else.i.i72 ], [ %44, %cond.true.i.i69 ]
  %48 = ptrtoint ptr %retval.0.i.in.i to i32, !dbg !1506
  call void @__asan_load4_noabort(i32 %48), !dbg !1506
  %retval.0.i.i73 = load ptr, ptr %retval.0.i.in.i, align 4, !dbg !1506
  %tobool6.not.i = icmp eq ptr %retval.0.i.i73, null, !dbg !1507
  br i1 %tobool6.not.i, label %trace_event_name.exit.i.for.inc.i_crit_edge, label %lor.lhs.false7.i, !dbg !1502

trace_event_name.exit.i.for.inc.i_crit_edge:      ; preds = %trace_event_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1502
  br label %for.inc.i, !dbg !1502

lor.lhs.false7.i:                                 ; preds = %trace_event_name.exit.i
  %gcov_ctr19.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 3), align 8, !dbg !1508
  %49 = add i64 %gcov_ctr19.i, 1, !dbg !1508
  store i64 %49, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 3), align 8, !dbg !1508
  %call8.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i, ptr noundef nonnull %retval.0.i.i73) #23, !dbg !1509
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i), !dbg !1509
  %tobool9.not.i = icmp eq i32 %call8.i, 0, !dbg !1509
  br i1 %tobool9.not.i, label %find_trace_event_call.exit, label %lor.lhs.false7.i.for.inc.i_crit_edge, !dbg !1510

lor.lhs.false7.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1510
  br label %for.inc.i, !dbg !1510

for.inc.i:                                        ; preds = %lor.lhs.false7.i.for.inc.i_crit_edge, %trace_event_name.exit.i.for.inc.i_crit_edge, %trace_event_name.exit.thread.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %.sink.i = phi ptr [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 2), %lor.lhs.false.i.for.inc.i_crit_edge ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 2), %for.body.i.for.inc.i_crit_edge ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 4), %trace_event_name.exit.thread.i ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 4), %lor.lhs.false7.i.for.inc.i_crit_edge ], [ getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 4), %trace_event_name.exit.i.for.inc.i_crit_edge ]
  %50 = ptrtoint ptr %.sink.i to i32, !dbg !1511
  call void @__asan_load8_noabort(i32 %50), !dbg !1511
  %gcov_ctr20.i = load i64, ptr %.sink.i, align 16, !dbg !1511
  %51 = add i64 %gcov_ctr20.i, 1, !dbg !1511
  store i64 %51, ptr %.sink.i, align 16, !dbg !1511
  %52 = ptrtoint ptr %tp_event.033.i to i32, !dbg !1482
  call void @__asan_load4_noabort(i32 %52), !dbg !1482
  %tp_event.0.i = load ptr, ptr %tp_event.033.i, align 4, !dbg !1482
  %cmp.not.i = icmp eq ptr %tp_event.0.i, @ftrace_events, !dbg !1482
  br i1 %cmp.not.i, label %for.inc.i.find_trace_event_call.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !1482, !llvm.loop !1512

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1482
  br label %for.body.i, !dbg !1482

for.inc.i.find_trace_event_call.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1482
  br label %find_trace_event_call.exit.thread, !dbg !1482

find_trace_event_call.exit.thread:                ; preds = %for.inc.i.find_trace_event_call.exit.thread_crit_edge, %trace_probe_name.exit.find_trace_event_call.exit.thread_crit_edge
  %gcov_ctr.i74 = load i64, ptr @__llvm_gcov_ctr.160, align 16, !dbg !1514
  %53 = add i64 %gcov_ctr.i74, 1, !dbg !1514
  store i64 %53, ptr @__llvm_gcov_ctr.160, align 16, !dbg !1514
  br label %if.end31, !dbg !1515

find_trace_event_call.exit:                       ; preds = %lor.lhs.false7.i
  %gcov_ctr21.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 5), align 8, !dbg !1516
  %54 = add i64 %gcov_ctr21.i, 1, !dbg !1516
  store i64 %54, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.160, i32 0, i32 5), align 8, !dbg !1516
  %tobool29.not = icmp eq ptr %tp_event.033.i, null, !dbg !1515
  br i1 %tobool29.not, label %find_trace_event_call.exit.if.end31_crit_edge, label %if.then30, !dbg !1515

find_trace_event_call.exit.if.end31_crit_edge:    ; preds = %find_trace_event_call.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1515
  br label %if.end31, !dbg !1515

if.then30:                                        ; preds = %find_trace_event_call.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1517
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 2), align 16, !dbg !1517
  %55 = add i64 %gcov_ctr44, 1, !dbg !1517
  store i64 %55, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 2), align 16, !dbg !1517
  br label %cleanup, !dbg !1517

if.end31:                                         ; preds = %find_trace_event_call.exit.if.end31_crit_edge, %find_trace_event_call.exit.thread
  %event = getelementptr inbounds %struct.trace_probe_event, ptr %2, i32 0, i32 2, i32 3, !dbg !1518
  %call32 = tail call i32 @register_trace_event(ptr noundef %event) #20, !dbg !1519
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32), !dbg !1520
  %tobool33.not = icmp eq i32 %call32, 0, !dbg !1520
  br i1 %tobool33.not, label %if.then34, label %if.end35, !dbg !1521

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1522
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 3), align 8, !dbg !1522
  %56 = add i64 %gcov_ctr45, 1, !dbg !1522
  store i64 %56, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 3), align 8, !dbg !1522
  br label %cleanup, !dbg !1522

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @trace_add_event_call(ptr noundef %call.i) #20, !dbg !1523
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36), !dbg !1524
  %tobool37.not = icmp eq i32 %call36, 0, !dbg !1524
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38, !dbg !1524

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1524
  br label %if.end41, !dbg !1524

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1525
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 4), align 16, !dbg !1525
  %57 = add i64 %gcov_ctr46, 1, !dbg !1525
  store i64 %57, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 4), align 16, !dbg !1525
  %call40 = tail call i32 @unregister_trace_event(ptr noundef %event) #20, !dbg !1526
  br label %if.end41, !dbg !1526

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 5), align 8, !dbg !1527
  %58 = add i64 %gcov_ctr47, 1, !dbg !1527
  store i64 %58, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.158, i32 0, i32 5), align 8, !dbg !1527
  br label %cleanup, !dbg !1528

cleanup:                                          ; preds = %if.end41, %if.then34, %if.then30
  %retval.0 = phi i32 [ -17, %if.then30 ], [ %call36, %if.end41 ], [ -19, %if.then34 ], !dbg !1529
  ret i32 %retval.0, !dbg !1530
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_trace_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_add_event_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_trace_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_probe_add_file(ptr nocapture noundef readonly %tp, ptr noundef %file) local_unnamed_addr #0 align 64 !dbg !1531 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1532
  %gcov_ctr79.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.187, i32 0, i32 1), align 8, !dbg !1533
  %0 = add i64 %gcov_ctr79.i.i, 1, !dbg !1533
  store i64 %0, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.187, i32 0, i32 1), align 8, !dbg !1533
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 2), align 16, !dbg !1537
  %1 = add i64 %gcov_ctr11.i, 1, !dbg !1537
  store i64 %1, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 2), align 16, !dbg !1537
  %gcov_ctr.i24.i = load i64, ptr @__llvm_gcov_ctr.188, align 16, !dbg !1538
  %2 = add i64 %gcov_ctr.i24.i, 1, !dbg !1538
  store i64 %2, ptr @__llvm_gcov_ctr.188, align 16, !dbg !1538
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !1541
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !1541
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 12) #24, !dbg !1542
  %tobool.not = icmp eq ptr %call7.i, null, !dbg !1543
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1544

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1545
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1545
  %4 = add i64 %gcov_ctr, 1, !dbg !1545
  store i64 %4, ptr @__llvm_gcov_ctr.163, align 8, !dbg !1545
  br label %cleanup, !dbg !1545

if.end:                                           ; preds = %entry
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 1), align 8, !dbg !1546
  %5 = add i64 %gcov_ctr3, 1, !dbg !1546
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.163, i32 0, i32 1), align 8, !dbg !1546
  %6 = ptrtoint ptr %call7.i to i32, !dbg !1547
  call void @__asan_store4_noabort(i32 %6), !dbg !1547
  store ptr %file, ptr %call7.i, align 8, !dbg !1547
  %list = getelementptr inbounds %struct.event_file_link, ptr %call7.i, i32 0, i32 1, !dbg !1548
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.156, align 8, !dbg !1549
  %7 = add i64 %gcov_ctr.i, 1, !dbg !1549
  store i64 %7, ptr @__llvm_gcov_ctr.156, align 8, !dbg !1549
  %8 = ptrtoint ptr %list to i32, !dbg !1549
  call void @__asan_store4_noabort(i32 %8), !dbg !1549
  store volatile ptr %list, ptr %list, align 4, !dbg !1549
  %prev.i = getelementptr inbounds %struct.event_file_link, ptr %call7.i, i32 0, i32 1, i32 1, !dbg !1551
  %9 = ptrtoint ptr %prev.i to i32, !dbg !1552
  call void @__asan_store4_noabort(i32 %9), !dbg !1552
  store ptr %list, ptr %prev.i, align 8, !dbg !1552
  %event = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !1553
  %10 = ptrtoint ptr %event to i32, !dbg !1553
  call void @__asan_load4_noabort(i32 %10), !dbg !1553
  %11 = load ptr, ptr %event, align 4, !dbg !1553
  %files = getelementptr inbounds %struct.trace_probe_event, ptr %11, i32 0, i32 3, !dbg !1554
  %gcov_ctr.i8 = load i64, ptr @__llvm_gcov_ctr.164, align 8
  %12 = add i64 %gcov_ctr.i8, 1
  store i64 %12, ptr @__llvm_gcov_ctr.164, align 8
  %prev.i9 = getelementptr inbounds %struct.trace_probe_event, ptr %11, i32 0, i32 3, i32 1, !dbg !1555
  %13 = ptrtoint ptr %prev.i9 to i32, !dbg !1555
  call void @__asan_load4_noabort(i32 %13), !dbg !1555
  %14 = load ptr, ptr %prev.i9, align 4, !dbg !1555
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %14, ptr noundef %files) #20, !dbg !1559
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1562

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1563
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.197, align 16, !dbg !1563
  %15 = add i64 %gcov_ctr.i.i, 1, !dbg !1563
  store i64 %15, ptr @__llvm_gcov_ctr.197, align 16, !dbg !1563
  br label %list_add_tail_rcu.exit, !dbg !1563

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1564
  %16 = ptrtoint ptr %list to i32, !dbg !1564
  call void @__asan_store4_noabort(i32 %16), !dbg !1564
  store ptr %files, ptr %list, align 4, !dbg !1564
  %17 = ptrtoint ptr %prev.i to i32, !dbg !1565
  call void @__asan_store4_noabort(i32 %17), !dbg !1565
  store ptr %14, ptr %prev.i, align 8, !dbg !1565
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !dbg !1566, !srcloc !1567
  %18 = ptrtoint ptr %14 to i32, !dbg !1566
  call void @__asan_store4_noabort(i32 %18), !dbg !1566
  store volatile ptr %list, ptr %14, align 4, !dbg !1566
  %gcov_ctr40.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 3), align 8
  %19 = add i64 %gcov_ctr40.i.i, 1
  store i64 %19, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.197, i32 0, i32 3), align 8
  %20 = ptrtoint ptr %prev.i9 to i32, !dbg !1568
  call void @__asan_store4_noabort(i32 %20), !dbg !1568
  store ptr %list, ptr %prev.i9, align 4, !dbg !1568
  br label %list_add_tail_rcu.exit, !dbg !1569

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %gcov_ctr.i10 = load i64, ptr @__llvm_gcov_ctr.165, align 8
  %21 = add i64 %gcov_ctr.i10, 1
  store i64 %21, ptr @__llvm_gcov_ctr.165, align 8
  %22 = ptrtoint ptr %event to i32, !dbg !1570
  call void @__asan_load4_noabort(i32 %22), !dbg !1570
  %23 = load ptr, ptr %event, align 4, !dbg !1570
  %24 = ptrtoint ptr %23 to i32, !dbg !1573
  call void @__asan_load4_noabort(i32 %24), !dbg !1573
  %25 = load i32, ptr %23, align 4, !dbg !1573
  %or.i = or i32 %25, 1, !dbg !1573
  store i32 %or.i, ptr %23, align 4, !dbg !1573
  br label %cleanup, !dbg !1574

cleanup:                                          ; preds = %list_add_tail_rcu.exit, %if.then
  %retval.0 = phi i32 [ 0, %list_add_tail_rcu.exit ], [ -12, %if.then ], !dbg !1575
  ret i32 %retval.0, !dbg !1576
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @trace_probe_get_file_link(ptr nocapture noundef readonly %tp, ptr noundef readnone %file) local_unnamed_addr #8 align 64 !dbg !1577 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1578
  %event = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !1579
  %0 = ptrtoint ptr %event to i32, !dbg !1579
  call void @__asan_load4_noabort(i32 %0), !dbg !1579
  %1 = load ptr, ptr %event, align 4, !dbg !1579
  %files = getelementptr inbounds %struct.trace_probe_event, ptr %1, i32 0, i32 3, !dbg !1579
  %2 = ptrtoint ptr %files to i32, !dbg !1579
  call void @__asan_load4_noabort(i32 %2), !dbg !1579
  %.pn17 = load ptr, ptr %files, align 4, !dbg !1579
  %cmp.not20 = icmp eq ptr %.pn17, %files, !dbg !1579
  br i1 %cmp.not20, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge, !dbg !1579

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !1579

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1579
  br label %cleanup, !dbg !1579

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn21 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn17, %entry.for.body_crit_edge ]
  %link.022 = getelementptr i8, ptr %.pn21, i32 -4, !dbg !1579
  %3 = ptrtoint ptr %link.022 to i32, !dbg !1580
  call void @__asan_load4_noabort(i32 %3), !dbg !1580
  %4 = load ptr, ptr %link.022, align 4, !dbg !1580
  %cmp4 = icmp eq ptr %4, %file, !dbg !1581
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !1582

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1579
  %link.022.le = getelementptr i8, ptr %.pn21, i32 -4, !dbg !1579
  br label %cleanup, !dbg !1583

for.inc:                                          ; preds = %for.body
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 1), align 8, !dbg !1579
  %5 = add i64 %gcov_ctr10, 1, !dbg !1579
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 1), align 8, !dbg !1579
  %6 = ptrtoint ptr %.pn21 to i32, !dbg !1579
  call void @__asan_load4_noabort(i32 %6), !dbg !1579
  %.pn = load ptr, ptr %.pn21, align 4, !dbg !1579
  %7 = ptrtoint ptr %event to i32, !dbg !1579
  call void @__asan_load4_noabort(i32 %7), !dbg !1579
  %8 = load ptr, ptr %event, align 4, !dbg !1579
  %files2 = getelementptr inbounds %struct.trace_probe_event, ptr %8, i32 0, i32 3, !dbg !1579
  %cmp.not = icmp eq ptr %.pn, %files2, !dbg !1579
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge, !dbg !1579, !llvm.loop !1584

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1579
  br label %for.body, !dbg !1579

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1579
  br label %cleanup, !dbg !1579

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.166, %if.then ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 2), %entry.cleanup_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 2), %for.inc.cleanup_crit_edge ]
  %retval.0 = phi ptr [ %link.022.le, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], !dbg !1586
  %9 = ptrtoint ptr %.sink to i32, !dbg !1586
  call void @__asan_load8_noabort(i32 %9), !dbg !1586
  %gcov_ctr11 = load i64, ptr %.sink, align 16, !dbg !1586
  %10 = add i64 %gcov_ctr11, 1, !dbg !1586
  store i64 %10, ptr %.sink, align 16, !dbg !1586
  ret ptr %retval.0, !dbg !1587
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_probe_remove_file(ptr nocapture noundef readonly %tp, ptr noundef readnone %file) local_unnamed_addr #0 align 64 !dbg !1588 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1589
  %event.i = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 1, !dbg !1590
  %0 = ptrtoint ptr %event.i to i32, !dbg !1590
  call void @__asan_load4_noabort(i32 %0), !dbg !1590
  %1 = load ptr, ptr %event.i, align 4, !dbg !1590
  %files.i = getelementptr inbounds %struct.trace_probe_event, ptr %1, i32 0, i32 3, !dbg !1590
  %2 = ptrtoint ptr %files.i to i32, !dbg !1590
  call void @__asan_load4_noabort(i32 %2), !dbg !1590
  %.pn17.i = load ptr, ptr %files.i, align 4, !dbg !1590
  %cmp.not20.i = icmp eq ptr %.pn17.i, %files.i, !dbg !1590
  br i1 %cmp.not20.i, label %entry.trace_probe_get_file_link.exit.thread_crit_edge, label %entry.for.body.i_crit_edge, !dbg !1590

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i, !dbg !1590

entry.trace_probe_get_file_link.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1590
  br label %trace_probe_get_file_link.exit.thread, !dbg !1590

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn17.i, %entry.for.body.i_crit_edge ]
  %link.022.i = getelementptr i8, ptr %.pn21.i, i32 -4, !dbg !1590
  %3 = ptrtoint ptr %link.022.i to i32, !dbg !1592
  call void @__asan_load4_noabort(i32 %3), !dbg !1592
  %4 = load ptr, ptr %link.022.i, align 4, !dbg !1592
  %cmp4.i = icmp eq ptr %4, %file, !dbg !1593
  br i1 %cmp4.i, label %trace_probe_get_file_link.exit, label %for.inc.i, !dbg !1594

for.inc.i:                                        ; preds = %for.body.i
  %gcov_ctr10.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 1), align 8, !dbg !1590
  %5 = add i64 %gcov_ctr10.i, 1, !dbg !1590
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 1), align 8, !dbg !1590
  %6 = ptrtoint ptr %.pn21.i to i32, !dbg !1590
  call void @__asan_load4_noabort(i32 %6), !dbg !1590
  %.pn.i = load ptr, ptr %.pn21.i, align 4, !dbg !1590
  %7 = ptrtoint ptr %event.i to i32, !dbg !1590
  call void @__asan_load4_noabort(i32 %7), !dbg !1590
  %8 = load ptr, ptr %event.i, align 4, !dbg !1590
  %files2.i = getelementptr inbounds %struct.trace_probe_event, ptr %8, i32 0, i32 3, !dbg !1590
  %cmp.not.i = icmp eq ptr %.pn.i, %files2.i, !dbg !1590
  br i1 %cmp.not.i, label %for.inc.i.trace_probe_get_file_link.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !1590, !llvm.loop !1595

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1590
  br label %for.body.i, !dbg !1590

for.inc.i.trace_probe_get_file_link.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1590
  br label %trace_probe_get_file_link.exit.thread, !dbg !1590

trace_probe_get_file_link.exit.thread:            ; preds = %for.inc.i.trace_probe_get_file_link.exit.thread_crit_edge, %entry.trace_probe_get_file_link.exit.thread_crit_edge
  %gcov_ctr11.i21 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 2), align 16, !dbg !1597
  %9 = add i64 %gcov_ctr11.i21, 1, !dbg !1597
  store i64 %9, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.166, i32 0, i32 2), align 16, !dbg !1597
  br label %if.then, !dbg !1598

trace_probe_get_file_link.exit:                   ; preds = %for.body.i
  %link.022.i.le = getelementptr i8, ptr %.pn21.i, i32 -4, !dbg !1590
  %gcov_ctr11.i = load i64, ptr @__llvm_gcov_ctr.166, align 16, !dbg !1597
  %10 = add i64 %gcov_ctr11.i, 1, !dbg !1597
  store i64 %10, ptr @__llvm_gcov_ctr.166, align 16, !dbg !1597
  %tobool.not = icmp eq ptr %link.022.i.le, null, !dbg !1599
  br i1 %tobool.not, label %trace_probe_get_file_link.exit.if.then_crit_edge, label %if.end, !dbg !1598

trace_probe_get_file_link.exit.if.then_crit_edge: ; preds = %trace_probe_get_file_link.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1598
  br label %if.then, !dbg !1598

if.then:                                          ; preds = %trace_probe_get_file_link.exit.if.then_crit_edge, %trace_probe_get_file_link.exit.thread
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.167, align 16, !dbg !1600
  %11 = add i64 %gcov_ctr, 1, !dbg !1600
  store i64 %11, ptr @__llvm_gcov_ctr.167, align 16, !dbg !1600
  br label %cleanup, !dbg !1600

if.end:                                           ; preds = %trace_probe_get_file_link.exit
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.168, align 8
  %12 = add i64 %gcov_ctr.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.168, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn21.i) #20, !dbg !1601
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1605

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1606
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.193, align 8, !dbg !1606
  %13 = add i64 %gcov_ctr.i.i, 1, !dbg !1606
  store i64 %13, ptr @__llvm_gcov_ctr.193, align 8, !dbg !1606
  br label %list_del_rcu.exit, !dbg !1606

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1607
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.193, i32 0, i32 1), align 8, !dbg !1607
  %14 = add i64 %gcov_ctr2.i.i, 1, !dbg !1607
  store i64 %14, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.193, i32 0, i32 1), align 8, !dbg !1607
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn21.i, i32 0, i32 1, !dbg !1608
  %15 = ptrtoint ptr %prev.i.i to i32, !dbg !1608
  call void @__asan_load4_noabort(i32 %15), !dbg !1608
  %16 = load ptr, ptr %prev.i.i, align 4, !dbg !1608
  %17 = ptrtoint ptr %.pn21.i to i32, !dbg !1609
  call void @__asan_load4_noabort(i32 %17), !dbg !1609
  %18 = load ptr, ptr %.pn21.i, align 4, !dbg !1609
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1, !dbg !1610
  %19 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !1612
  call void @__asan_store4_noabort(i32 %19), !dbg !1612
  store ptr %16, ptr %prev1.i.i.i, align 4, !dbg !1612
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.194, align 8, !dbg !1613
  %20 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1613
  store i64 %20, ptr @__llvm_gcov_ctr.194, align 8, !dbg !1613
  %21 = ptrtoint ptr %16 to i32, !dbg !1613
  call void @__asan_store4_noabort(i32 %21), !dbg !1613
  store volatile ptr %18, ptr %16, align 4, !dbg !1613
  br label %list_del_rcu.exit, !dbg !1614

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.i.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn21.i, i32 0, i32 1, !dbg !1615
  %22 = ptrtoint ptr %prev.i to i32, !dbg !1616
  call void @__asan_store4_noabort(i32 %22), !dbg !1616
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4, !dbg !1616
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.167, i32 0, i32 1), align 8, !dbg !1617
  %23 = add i64 %gcov_ctr8, 1, !dbg !1617
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.167, i32 0, i32 1), align 8, !dbg !1617
  tail call void @kvfree_call_rcu(ptr noundef null, ptr noundef nonnull %link.022.i.le) #20, !dbg !1617
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.167, i32 0, i32 2), align 16, !dbg !1617
  %24 = add i64 %gcov_ctr9, 1, !dbg !1617
  store i64 %24, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.167, i32 0, i32 2), align 16, !dbg !1617
  %25 = ptrtoint ptr %event.i to i32, !dbg !1618
  call void @__asan_load4_noabort(i32 %25), !dbg !1618
  %26 = load ptr, ptr %event.i, align 4, !dbg !1618
  %files = getelementptr inbounds %struct.trace_probe_event, ptr %26, i32 0, i32 3, !dbg !1619
  %gcov_ctr.i16 = load i64, ptr @__llvm_gcov_ctr.153, align 8
  %27 = add i64 %gcov_ctr.i16, 1
  store i64 %27, ptr @__llvm_gcov_ctr.153, align 8
  %28 = ptrtoint ptr %files to i32, !dbg !1620
  call void @__asan_load4_noabort(i32 %28), !dbg !1620
  %29 = load volatile ptr, ptr %files, align 4, !dbg !1620
  %cmp.i.not = icmp eq ptr %29, %files, !dbg !1622
  br i1 %cmp.i.not, label %if.then6, label %list_del_rcu.exit.cleanup_crit_edge, !dbg !1623

list_del_rcu.exit.cleanup_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1623
  br label %cleanup, !dbg !1623

if.then6:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1624
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.167, i32 0, i32 3), align 8, !dbg !1624
  %30 = add i64 %gcov_ctr10, 1, !dbg !1624
  store i64 %30, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.167, i32 0, i32 3), align 8, !dbg !1624
  %gcov_ctr.i17 = load i64, ptr @__llvm_gcov_ctr.169, align 8
  %31 = add i64 %gcov_ctr.i17, 1
  store i64 %31, ptr @__llvm_gcov_ctr.169, align 8
  %32 = ptrtoint ptr %event.i to i32, !dbg !1625
  call void @__asan_load4_noabort(i32 %32), !dbg !1625
  %33 = load ptr, ptr %event.i, align 4, !dbg !1625
  %34 = ptrtoint ptr %33 to i32, !dbg !1628
  call void @__asan_load4_noabort(i32 %34), !dbg !1628
  %35 = load i32, ptr %33, align 4, !dbg !1628
  %and.i = and i32 %35, -2, !dbg !1628
  store i32 %and.i, ptr %33, align 4, !dbg !1628
  br label %cleanup, !dbg !1629

cleanup:                                          ; preds = %if.then6, %list_del_rcu.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ 0, %if.then6 ], [ 0, %list_del_rcu.exit.cleanup_crit_edge ], !dbg !1630
  ret i32 %retval.0, !dbg !1631
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_probe_compare_arg_type(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) local_unnamed_addr #9 align 64 !dbg !1632 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1633
  %nr_args = getelementptr inbounds %struct.trace_probe, ptr %a, i32 0, i32 3, !dbg !1634
  %0 = ptrtoint ptr %nr_args to i32, !dbg !1634
  call void @__asan_load4_noabort(i32 %0), !dbg !1634
  %1 = load i32, ptr %nr_args, align 4, !dbg !1634
  %nr_args1 = getelementptr inbounds %struct.trace_probe, ptr %b, i32 0, i32 3, !dbg !1635
  %2 = ptrtoint ptr %nr_args1 to i32, !dbg !1635
  call void @__asan_load4_noabort(i32 %2), !dbg !1635
  %3 = load i32, ptr %nr_args1, align 4, !dbg !1635
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3), !dbg !1636
  %cmp = icmp ult i32 %1, %3, !dbg !1636
  br i1 %cmp, label %if.then, label %if.end, !dbg !1637

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1638
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.170, align 16, !dbg !1638
  %4 = add i64 %gcov_ctr, 1, !dbg !1638
  store i64 %4, ptr @__llvm_gcov_ctr.170, align 16, !dbg !1638
  %add = add nuw i32 %1, 1, !dbg !1639
  br label %cleanup, !dbg !1640

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3), !dbg !1641
  %cmp5 = icmp ugt i32 %1, %3, !dbg !1641
  br i1 %cmp5, label %if.then6, label %for.cond.preheader, !dbg !1642

for.cond.preheader:                               ; preds = %if.end
  %5 = ptrtoint ptr %nr_args to i32, !dbg !1643
  call void @__asan_load4_noabort(i32 %5), !dbg !1643
  %6 = load i32, ptr %nr_args, align 4, !dbg !1643
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !1644
  %cmp1164.not = icmp eq i32 %6, 0, !dbg !1644
  br i1 %cmp1164.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge, !dbg !1645

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body, !dbg !1645

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1645
  br label %for.end, !dbg !1645

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1646
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 1), align 8, !dbg !1646
  %7 = add i64 %gcov_ctr34, 1, !dbg !1646
  store i64 %7, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 1), align 8, !dbg !1646
  %add8 = add nuw i32 %3, 1, !dbg !1647
  br label %cleanup, !dbg !1648

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %if.end33.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %nr_args1 to i32, !dbg !1649
  call void @__asan_load4_noabort(i32 %8), !dbg !1649
  %9 = load i32, ptr %nr_args1, align 4, !dbg !1649
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %i.065), !dbg !1650
  %cmp13.not = icmp ugt i32 %9, %i.065, !dbg !1650
  br i1 %cmp13.not, label %lor.lhs.false, label %for.body.if.then31_crit_edge, !dbg !1651

for.body.if.then31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1651
  br label %if.then31, !dbg !1651

lor.lhs.false:                                    ; preds = %for.body
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 3), align 8, !dbg !1652
  %10 = add i64 %gcov_ctr36, 1, !dbg !1652
  store i64 %10, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 3), align 8, !dbg !1652
  %type = getelementptr %struct.trace_probe, ptr %a, i32 0, i32 4, i32 %i.065, i32 7, !dbg !1653
  %11 = ptrtoint ptr %type to i32, !dbg !1653
  call void @__asan_load4_noabort(i32 %11), !dbg !1653
  %12 = load ptr, ptr %type, align 4, !dbg !1653
  %type16 = getelementptr %struct.trace_probe, ptr %b, i32 0, i32 4, i32 %i.065, i32 7, !dbg !1654
  %13 = ptrtoint ptr %type16 to i32, !dbg !1654
  call void @__asan_load4_noabort(i32 %13), !dbg !1654
  %14 = load ptr, ptr %type16, align 4, !dbg !1654
  %cmp17.not = icmp eq ptr %12, %14, !dbg !1655
  br i1 %cmp17.not, label %lor.lhs.false18, label %lor.lhs.false.if.then31_crit_edge, !dbg !1656

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1656
  br label %if.then31, !dbg !1656

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 4), align 16, !dbg !1657
  %15 = add i64 %gcov_ctr37, 1, !dbg !1657
  store i64 %15, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 4), align 16, !dbg !1657
  %count = getelementptr %struct.trace_probe, ptr %a, i32 0, i32 4, i32 %i.065, i32 3, !dbg !1658
  %16 = ptrtoint ptr %count to i32, !dbg !1658
  call void @__asan_load4_noabort(i32 %16), !dbg !1658
  %17 = load i32, ptr %count, align 4, !dbg !1658
  %count23 = getelementptr %struct.trace_probe, ptr %b, i32 0, i32 4, i32 %i.065, i32 3, !dbg !1659
  %18 = ptrtoint ptr %count23 to i32, !dbg !1659
  call void @__asan_load4_noabort(i32 %18), !dbg !1659
  %19 = load i32, ptr %count23, align 4, !dbg !1659
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19), !dbg !1660
  %cmp24.not = icmp eq i32 %17, %19, !dbg !1660
  br i1 %cmp24.not, label %lor.lhs.false25, label %lor.lhs.false18.if.then31_crit_edge, !dbg !1661

lor.lhs.false18.if.then31_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1661
  br label %if.then31, !dbg !1661

lor.lhs.false25:                                  ; preds = %lor.lhs.false18
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 5), align 8, !dbg !1662
  %20 = add i64 %gcov_ctr38, 1, !dbg !1662
  store i64 %20, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 5), align 8, !dbg !1662
  %name = getelementptr %struct.trace_probe, ptr %a, i32 0, i32 4, i32 %i.065, i32 4, !dbg !1663
  %21 = ptrtoint ptr %name to i32, !dbg !1663
  call void @__asan_load4_noabort(i32 %21), !dbg !1663
  %22 = load ptr, ptr %name, align 4, !dbg !1663
  %name30 = getelementptr %struct.trace_probe, ptr %b, i32 0, i32 4, i32 %i.065, i32 4, !dbg !1664
  %23 = ptrtoint ptr %name30 to i32, !dbg !1664
  call void @__asan_load4_noabort(i32 %23), !dbg !1664
  %24 = load ptr, ptr %name30, align 4, !dbg !1664
  %call = tail call i32 @strcmp(ptr noundef %22, ptr noundef %24) #21, !dbg !1665
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1665
  %tobool.not = icmp eq i32 %call, 0, !dbg !1665
  br i1 %tobool.not, label %if.end33, label %lor.lhs.false25.if.then31_crit_edge, !dbg !1666

lor.lhs.false25.if.then31_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1666
  br label %if.then31, !dbg !1666

if.then31:                                        ; preds = %lor.lhs.false25.if.then31_crit_edge, %lor.lhs.false18.if.then31_crit_edge, %lor.lhs.false.if.then31_crit_edge, %for.body.if.then31_crit_edge
  %gcov_ctr40 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 7), align 8, !dbg !1667
  %25 = add i64 %gcov_ctr40, 1, !dbg !1667
  store i64 %25, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 7), align 8, !dbg !1667
  %add32 = add nuw i32 %i.065, 1, !dbg !1668
  br label %cleanup, !dbg !1669

if.end33:                                         ; preds = %lor.lhs.false25
  %gcov_ctr39 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 6), align 16, !dbg !1670
  %26 = add i64 %gcov_ctr39, 1, !dbg !1670
  store i64 %26, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 6), align 16, !dbg !1670
  %inc = add nuw i32 %i.065, 1, !dbg !1671
  %27 = ptrtoint ptr %nr_args to i32, !dbg !1643
  call void @__asan_load4_noabort(i32 %27), !dbg !1643
  %28 = load i32, ptr %nr_args, align 4, !dbg !1643
  %cmp11 = icmp ult i32 %inc, %28, !dbg !1644
  br i1 %cmp11, label %if.end33.for.body_crit_edge, label %if.end33.for.end_crit_edge, !dbg !1645, !llvm.loop !1672

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1645
  br label %for.end, !dbg !1645

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1645
  br label %for.body, !dbg !1645

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 2), align 16, !dbg !1673
  %29 = add i64 %gcov_ctr35, 1, !dbg !1673
  store i64 %29, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.170, i32 0, i32 2), align 16, !dbg !1673
  br label %cleanup, !dbg !1673

cleanup:                                          ; preds = %for.end, %if.then31, %if.then6, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ %add8, %if.then6 ], [ %add32, %if.then31 ], [ 0, %for.end ], !dbg !1674
  ret i32 %retval.0, !dbg !1675
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_probe_match_command_args(ptr nocapture noundef readonly %tp, i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #9 align 64 !dbg !1676 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1677
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #20, !dbg !1678
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64), !dbg !1679
  %nr_args = getelementptr inbounds %struct.trace_probe, ptr %tp, i32 0, i32 3, !dbg !1680
  %1 = ptrtoint ptr %nr_args to i32, !dbg !1680
  call void @__asan_load4_noabort(i32 %1), !dbg !1680
  %2 = load i32, ptr %nr_args, align 4, !dbg !1680
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %argc), !dbg !1681
  %cmp = icmp ult i32 %2, %argc, !dbg !1681
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !1682

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc), !dbg !1683
  %cmp120 = icmp sgt i32 %argc, 0, !dbg !1683
  br i1 %cmp120, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge, !dbg !1684

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1684
  br label %for.end, !dbg !1684

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body, !dbg !1684

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1685
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.171, align 16, !dbg !1685
  %3 = add i64 %gcov_ctr, 1, !dbg !1685
  store i64 %3, ptr @__llvm_gcov_ctr.171, align 16, !dbg !1685
  br label %cleanup, !dbg !1685

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %name = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i.021, i32 4, !dbg !1686
  %4 = ptrtoint ptr %name to i32, !dbg !1686
  call void @__asan_load4_noabort(i32 %4), !dbg !1686
  %5 = load ptr, ptr %name, align 4, !dbg !1686
  %comm = getelementptr %struct.trace_probe, ptr %tp, i32 0, i32 4, i32 %i.021, i32 5, !dbg !1687
  %6 = ptrtoint ptr %comm to i32, !dbg !1687
  call void @__asan_load4_noabort(i32 %6), !dbg !1687
  %7 = load ptr, ptr %comm, align 4, !dbg !1687
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef %5, ptr noundef %7), !dbg !1688
  %arrayidx5 = getelementptr ptr, ptr %argv, i32 %i.021, !dbg !1689
  %8 = ptrtoint ptr %arrayidx5 to i32, !dbg !1689
  call void @__asan_load4_noabort(i32 %8), !dbg !1689
  %9 = load ptr, ptr %arrayidx5, align 4, !dbg !1689
  %call6 = call i32 @strcmp(ptr noundef nonnull %buf, ptr noundef %9) #21, !dbg !1690
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6), !dbg !1690
  %tobool.not = icmp eq i32 %call6, 0, !dbg !1690
  br i1 %tobool.not, label %for.inc, label %if.then7, !dbg !1690

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1691
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 1), align 8, !dbg !1691
  %10 = add i64 %gcov_ctr10, 1, !dbg !1691
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 1), align 8, !dbg !1691
  br label %cleanup, !dbg !1691

for.inc:                                          ; preds = %for.body
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 2), align 16, !dbg !1692
  %11 = add i64 %gcov_ctr11, 1, !dbg !1692
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 2), align 16, !dbg !1692
  %inc = add nuw nsw i32 %i.021, 1, !dbg !1692
  %exitcond.not = icmp eq i32 %inc, %argc, !dbg !1683
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !1684, !llvm.loop !1693

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1684
  br label %for.body, !dbg !1684

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1684
  br label %for.end, !dbg !1684

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 3), align 8, !dbg !1695
  %12 = add i64 %gcov_ctr12, 1, !dbg !1695
  store i64 %12, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.171, i32 0, i32 3), align 8, !dbg !1695
  br label %cleanup, !dbg !1695

cleanup:                                          ; preds = %for.end, %if.then7, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then7 ], [ true, %for.end ], !dbg !1696
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #20, !dbg !1697
  ret i1 %retval.0, !dbg !1697
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_probe_create(ptr noundef %raw_command, ptr nocapture noundef readonly %createfn) local_unnamed_addr #0 align 64 !dbg !1698 {
entry:
  %argc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1699
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc) #20, !dbg !1700
  %0 = ptrtoint ptr %argc to i32, !dbg !1701
  call void @__asan_store4_noabort(i32 %0), !dbg !1701
  store i32 0, ptr %argc, align 4, !dbg !1701
  %call = call ptr @argv_split(i32 noundef 3264, ptr noundef %raw_command, ptr noundef nonnull %argc) #20, !dbg !1702
  %tobool.not = icmp eq ptr %call, null, !dbg !1703
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1704

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1705
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.172, align 16, !dbg !1705
  %1 = add i64 %gcov_ctr, 1, !dbg !1705
  store i64 %1, ptr @__llvm_gcov_ctr.172, align 16, !dbg !1705
  br label %cleanup, !dbg !1705

if.end:                                           ; preds = %entry
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 1), align 8, !dbg !1706
  %2 = add i64 %gcov_ctr7, 1, !dbg !1706
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 1), align 8, !dbg !1706
  %3 = ptrtoint ptr %argc to i32, !dbg !1706
  call void @__asan_load4_noabort(i32 %3), !dbg !1706
  %4 = load i32, ptr %argc, align 4, !dbg !1706
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4), !dbg !1706
  %tobool1.not = icmp eq i32 %4, 0, !dbg !1706
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2, !dbg !1706

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1706
  br label %if.end4, !dbg !1706

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1707
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 2), align 16, !dbg !1707
  %5 = add i64 %gcov_ctr8, 1, !dbg !1707
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.172, i32 0, i32 2), align 16, !dbg !1707
  %call3 = call i32 %createfn(i32 noundef %4, ptr noundef nonnull %call) #20, !dbg !1707
  br label %if.end4, !dbg !1708

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ 0, %if.end.if.end4_crit_edge ], !dbg !1709
  call void @argv_free(ptr noundef nonnull %call) #20, !dbg !1710
  br label %cleanup, !dbg !1711

cleanup:                                          ; preds = %if.end4, %if.then
  %retval.0 = phi i32 [ %ret.0, %if.end4 ], [ -12, %if.then ], !dbg !1709
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc) #20, !dbg !1712
  ret i32 %retval.0, !dbg !1712
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @argv_split(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @argv_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_fetch_type(ptr noundef %type) unnamed_addr #0 align 64 !dbg !1713 {
entry:
  %bs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1714
  %tobool.not = icmp eq ptr %type, null, !dbg !1715
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !dbg !1716

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1716
  br label %if.end, !dbg !1716

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1717
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.175, align 16, !dbg !1717
  %0 = add i64 %gcov_ctr, 1, !dbg !1717
  store i64 %0, ptr @__llvm_gcov_ctr.175, align 16, !dbg !1717
  br label %if.end, !dbg !1718

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %type.addr.0 = phi ptr [ %type, %entry.if.end_crit_edge ], [ @.str.80, %if.then ]
  %1 = ptrtoint ptr %type.addr.0 to i32, !dbg !1719
  call void @__asan_load1_noabort(i32 %1), !dbg !1719
  %2 = load i8, ptr %type.addr.0, align 1, !dbg !1719
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %2), !dbg !1720
  %cmp = icmp eq i8 %2, 98, !dbg !1720
  br i1 %cmp, label %if.then2, label %for.body.preheader, !dbg !1719

for.body.preheader:                               ; preds = %if.end
  %call2156 = tail call i32 @strcmp(ptr noundef %type.addr.0, ptr noundef nonnull dereferenceable(7) @.str.77) #21, !dbg !1721
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2156), !dbg !1722
  %cmp2257 = icmp eq i32 %call2156, 0, !dbg !1722
  br i1 %cmp2257, label %for.body.preheader.if.then24_crit_edge, label %for.body.preheader.for.inc_crit_edge, !dbg !1721

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc, !dbg !1721

for.body.preheader.if.then24_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1721
  br label %if.then24, !dbg !1721

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bs) #20, !dbg !1723
  %3 = ptrtoint ptr %bs to i32, !dbg !1724
  call void @__asan_store4_noabort(i32 %3), !dbg !1724
  store i32 -1, ptr %bs, align 4, !dbg !1724, !annotation !694
  %call = tail call ptr @strchr(ptr noundef %type.addr.0, i32 noundef 47), !dbg !1725
  %tobool3.not = icmp eq ptr %call, null, !dbg !1726
  br i1 %tobool3.not, label %if.then4, label %if.end5, !dbg !1727

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1728
  %gcov_ctr28 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 1), align 8
  %4 = add i64 %gcov_ctr28, 1
  store i64 %4, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 1), align 8
  br label %cleanup, !dbg !1729

if.end5:                                          ; preds = %if.then2
  %incdec.ptr = getelementptr i8, ptr %call, i32 1, !dbg !1730
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.179, align 8
  %5 = add i64 %gcov_ctr.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.179, align 8
  %call.i = call i32 @_kstrtoul(ptr noundef %incdec.ptr, i32 noundef 0, ptr noundef nonnull %bs) #20, !dbg !1731
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1734
  %tobool7.not = icmp eq i32 %call.i, 0, !dbg !1734
  br i1 %tobool7.not, label %if.end9, label %if.then8, !dbg !1734

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1728
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 2), align 16
  %6 = add i64 %gcov_ctr29, 1
  store i64 %6, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 2), align 16
  br label %cleanup, !dbg !1735

if.end9:                                          ; preds = %if.end5
  %7 = ptrtoint ptr %bs to i32, !dbg !1736
  call void @__asan_load4_noabort(i32 %7), !dbg !1736
  %8 = load i32, ptr %bs, align 4, !dbg !1736
  %9 = add i32 %8, -8, !dbg !1737
  %10 = call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 29), !dbg !1737
  %11 = zext i32 %10 to i64, !dbg !1737
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.201), !dbg !1737
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 3, label %sw.bb13
    i32 7, label %sw.bb15
  ], !dbg !1737

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1738
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 3), align 8, !dbg !1738
  %12 = add i64 %gcov_ctr30, 1, !dbg !1738
  store i64 %12, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 3), align 8, !dbg !1738
  br label %cleanup.thread, !dbg !1739

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1740
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 4), align 16, !dbg !1740
  %13 = add i64 %gcov_ctr31, 1, !dbg !1740
  store i64 %13, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 4), align 16, !dbg !1740
  br label %cleanup.thread, !dbg !1741

sw.bb13:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1742
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 5), align 8, !dbg !1742
  %14 = add i64 %gcov_ctr32, 1, !dbg !1742
  store i64 %14, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 5), align 8, !dbg !1742
  br label %cleanup.thread, !dbg !1743

sw.bb15:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1744
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 6), align 16, !dbg !1744
  %15 = add i64 %gcov_ctr33, 1, !dbg !1744
  store i64 %15, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 6), align 16, !dbg !1744
  br label %cleanup.thread, !dbg !1745

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1728
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 7), align 8
  %16 = add i64 %gcov_ctr34, 1
  store i64 %16, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 7), align 8
  br label %cleanup, !dbg !1746

cleanup.thread:                                   ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb
  %.str.84.sink = phi ptr [ @.str.84, %sw.bb15 ], [ @.str.83, %sw.bb13 ], [ @.str.82, %sw.bb11 ], [ @.str.81, %sw.bb ]
  %call16 = call fastcc ptr @find_fetch_type(ptr noundef nonnull %.str.84.sink), !dbg !1728
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs) #20, !dbg !1747
  br label %cleanup27

cleanup:                                          ; preds = %sw.default, %if.then8, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bs) #20, !dbg !1747
  br label %fail

for.body:                                         ; preds = %for.inc
  %arrayidx = getelementptr [16 x %struct.fetch_type], ptr @probe_fetch_types, i32 0, i32 %inc, !dbg !1748
  %17 = ptrtoint ptr %arrayidx to i32, !dbg !1749
  call void @__asan_load4_noabort(i32 %17), !dbg !1749
  %18 = load ptr, ptr %arrayidx, align 4, !dbg !1749
  %call21 = tail call i32 @strcmp(ptr noundef %type.addr.0, ptr noundef nonnull %18) #21, !dbg !1721
  %cmp22 = icmp eq i32 %call21, 0, !dbg !1722
  br i1 %cmp22, label %for.body.if.then24_crit_edge, label %for.body.for.inc_crit_edge, !dbg !1721, !llvm.loop !1750

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1721
  br label %for.inc, !dbg !1721

for.body.if.then24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1721
  br label %if.then24, !dbg !1721

if.then24:                                        ; preds = %for.body.if.then24_crit_edge, %for.body.preheader.if.then24_crit_edge
  %arrayidx52.lcssa = phi ptr [ @probe_fetch_types, %for.body.preheader.if.then24_crit_edge ], [ %arrayidx, %for.body.if.then24_crit_edge ]
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 8), align 16, !dbg !1753
  %19 = add i64 %gcov_ctr35, 1, !dbg !1753
  store i64 %19, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 8), align 16, !dbg !1753
  br label %cleanup27, !dbg !1754

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %i.05158 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %gcov_ctr36 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 9), align 8, !dbg !1755
  %20 = add i64 %gcov_ctr36, 1, !dbg !1755
  store i64 %20, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 9), align 8, !dbg !1755
  %inc = add nuw nsw i32 %i.05158, 1, !dbg !1755
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc), !dbg !1751
  %exitcond = icmp eq i32 %inc, 15, !dbg !1751
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1751, !llvm.loop !1750

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1752
  %gcov_ctr37 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 10), align 16, !dbg !1752
  %21 = add i64 %gcov_ctr37, 1, !dbg !1752
  store i64 %21, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 10), align 16, !dbg !1752
  br label %fail, !dbg !1752

fail:                                             ; preds = %for.end, %cleanup
  %gcov_ctr38 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 11), align 8, !dbg !1756
  %22 = add i64 %gcov_ctr38, 1, !dbg !1756
  store i64 %22, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.175, i32 0, i32 11), align 8, !dbg !1756
  br label %cleanup27, !dbg !1756

cleanup27:                                        ; preds = %fail, %if.then24, %cleanup.thread
  %retval.1 = phi ptr [ null, %fail ], [ %arrayidx52.lcssa, %if.then24 ], [ %call16, %cleanup.thread ]
  ret ptr %retval.1, !dbg !1757
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @kcalloc(i32 noundef %n) unnamed_addr #11 align 64 !dbg !1758 {
entry:
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1759
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.176, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.176, align 8
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n, i32 12) #20, !dbg !1760
  %2 = extractvalue { i32, i1 } %1, 1, !dbg !1760
  %gcov_ctr.i1.i = load i64, ptr @__llvm_gcov_ctr.181, align 8
  %3 = add i64 %gcov_ctr.i1.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.181, align 8
  br i1 %2, label %if.then.i, label %if.end7.i, !dbg !1760, !prof !1460

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1763
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.180, align 16, !dbg !1763
  %4 = add i64 %gcov_ctr.i, 1, !dbg !1763
  store i64 %4, ptr @__llvm_gcov_ctr.180, align 16, !dbg !1763
  br label %kmalloc_array.exit, !dbg !1763

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1760
  %5 = extractvalue { i32, i1 } %1, 0, !dbg !1760
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 3), align 8, !dbg !1764
  %6 = add i64 %gcov_ctr11.i, 1, !dbg !1764
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.180, i32 0, i32 3), align 8, !dbg !1764
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #22, !dbg !1765
  br label %kmalloc_array.exit, !dbg !1766

kmalloc_array.exit:                               ; preds = %if.end7.i, %if.then.i
  %retval.0.i = phi ptr [ null, %if.then.i ], [ %call8.i, %if.end7.i ], !dbg !1767
  ret ptr %retval.0.i, !dbg !1768
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_probe_arg(ptr noundef %arg, ptr nocapture noundef %pcode, ptr noundef %end, i32 noundef %flags, i32 noundef %offs) unnamed_addr #0 align 64 !dbg !1769 {
entry:
  %param.i = alloca i32, align 4
  %code = alloca ptr, align 4
  %param = alloca i32, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1770
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.177, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.177, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %code) #20, !dbg !1771
  %1 = ptrtoint ptr %pcode to i32, !dbg !1772
  call void @__asan_load4_noabort(i32 %1), !dbg !1772
  %2 = load ptr, ptr %pcode, align 4, !dbg !1772
  %3 = ptrtoint ptr %code to i32, !dbg !1773
  call void @__asan_store4_noabort(i32 %3), !dbg !1773
  store ptr %2, ptr %code, align 4, !dbg !1773
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #20, !dbg !1774
  %4 = ptrtoint ptr %param to i32, !dbg !1775
  call void @__asan_store4_noabort(i32 %4), !dbg !1775
  store i32 -1, ptr %param, align 4, !dbg !1775, !annotation !694
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #20, !dbg !1776
  %5 = ptrtoint ptr %offset to i32, !dbg !1777
  call void @__asan_store4_noabort(i32 %5), !dbg !1777
  store i32 0, ptr %offset, align 4, !dbg !1777
  %6 = ptrtoint ptr %arg to i32, !dbg !1778
  call void @__asan_load1_noabort(i32 %6), !dbg !1778
  %7 = load i8, ptr %arg, align 1, !dbg !1778
  %8 = zext i8 %7 to i64, !dbg !1779
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.202), !dbg !1779
  switch i8 %7, label %entry.land.lhs.true_crit_edge [
    i8 36, label %sw.bb
    i8 37, label %sw.bb1
    i8 64, label %sw.bb5
    i8 43, label %entry.sw.bb56_crit_edge
    i8 45, label %entry.sw.bb56_crit_edge55
    i8 92, label %sw.bb115
  ], !dbg !1779

entry.sw.bb56_crit_edge55:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1779
  br label %sw.bb56, !dbg !1779

entry.sw.bb56_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1779
  br label %sw.bb56, !dbg !1779

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1779
  br label %land.lhs.true, !dbg !1779

sw.bb:                                            ; preds = %entry
  %gcov_ctr150 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 1), align 8, !dbg !1780
  %9 = add i64 %gcov_ctr150, 1, !dbg !1780
  store i64 %9, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 1), align 8, !dbg !1780
  %add.ptr = getelementptr i8, ptr %arg, i32 1, !dbg !1781
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #20, !dbg !1782
  %10 = ptrtoint ptr %param.i to i32, !dbg !1785
  call void @__asan_store4_noabort(i32 %10), !dbg !1785
  store i32 -1, ptr %param.i, align 4, !dbg !1785, !annotation !694
  %call.i = tail call i32 @strcmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(7) @.str.94) #23, !dbg !1786
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1787
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !1787
  br i1 %cmp.i, label %if.then.i, label %if.else2.i, !dbg !1786

if.then.i:                                        ; preds = %sw.bb
  %and.i = and i32 %flags, 1, !dbg !1788
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !1788
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !1788
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i, !dbg !1789

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1790
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1790
  %11 = add i64 %gcov_ctr.i, 1, !dbg !1790
  store i64 %11, ptr @__llvm_gcov_ctr.182, align 16, !dbg !1790
  %12 = ptrtoint ptr %2 to i32, !dbg !1791
  call void @__asan_store4_noabort(i32 %12), !dbg !1791
  store i32 4, ptr %2, align 4, !dbg !1791
  br label %sw.epilog.thread50, !dbg !1792

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1793
  %gcov_ctr57.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1793
  %13 = add i64 %gcov_ctr57.i, 1, !dbg !1793
  store i64 %13, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 1), align 8, !dbg !1793
  tail call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 19) #20, !dbg !1793
  br label %sw.epilog

if.else2.i:                                       ; preds = %sw.bb
  %call1.i.i = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(6) @.str.95, i32 noundef 5) #20, !dbg !1794
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i), !dbg !1798
  %cmp.i.i = icmp eq i32 %call1.i.i, 0, !dbg !1798
  %__llvm_gcov_ctr.185..i.i = select i1 %cmp.i.i, ptr @__llvm_gcov_ctr.185, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.185, i32 0, i32 1), !dbg !1794
  %14 = ptrtoint ptr %__llvm_gcov_ctr.185..i.i to i32, !dbg !1799
  call void @__asan_load8_noabort(i32 %14), !dbg !1799
  %gcov_ctr2.i.i = load i64, ptr %__llvm_gcov_ctr.185..i.i, align 8, !dbg !1799
  %15 = add i64 %gcov_ctr2.i.i, 1, !dbg !1799
  store i64 %15, ptr %__llvm_gcov_ctr.185..i.i, align 8, !dbg !1799
  br i1 %cmp.i.i, label %if.then5.i, label %if.else32.i, !dbg !1800

if.then5.i:                                       ; preds = %if.else2.i
  %arrayidx.i = getelementptr i8, ptr %arg, i32 6, !dbg !1801
  %16 = ptrtoint ptr %arrayidx.i to i32, !dbg !1801
  call void @__asan_load1_noabort(i32 %16), !dbg !1801
  %17 = load i8, ptr %arrayidx.i, align 1, !dbg !1801
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17), !dbg !1802
  %cmp6.i = icmp eq i8 %17, 0, !dbg !1802
  br i1 %cmp6.i, label %if.then8.i, label %if.else10.i, !dbg !1801

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1803
  %gcov_ctr58.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 2), align 16, !dbg !1803
  %18 = add i64 %gcov_ctr58.i, 1, !dbg !1803
  store i64 %18, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 2), align 16, !dbg !1803
  %19 = ptrtoint ptr %2 to i32, !dbg !1804
  call void @__asan_store4_noabort(i32 %19), !dbg !1804
  store i32 3, ptr %2, align 4, !dbg !1804
  br label %sw.epilog.thread50, !dbg !1805

if.else10.i:                                      ; preds = %if.then5.i
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.174, align 8
  %20 = add i64 %gcov_ctr.i.i, 1
  store i64 %20, ptr @__llvm_gcov_ctr.174, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %17), !dbg !1806
  %cmp.i1.i = icmp ugt i8 %17, 47, !dbg !1806
  br i1 %cmp.i1.i, label %isdigit.exit.i, label %if.else10.i.if.else29.i_crit_edge, !dbg !1808

if.else10.i.if.else29.i_crit_edge:                ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1808
  br label %if.else29.i, !dbg !1808

isdigit.exit.i:                                   ; preds = %if.else10.i
  %gcov_ctr2.i2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !1809
  %21 = add i64 %gcov_ctr2.i2.i, 1, !dbg !1809
  store i64 %21, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !1809
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %17), !dbg !1810
  %cmp1.i.i = icmp ugt i8 %17, 57, !dbg !1810
  br i1 %cmp1.i.i, label %isdigit.exit.i.if.else29.i_crit_edge, label %if.then15.i, !dbg !1811

isdigit.exit.i.if.else29.i_crit_edge:             ; preds = %isdigit.exit.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1811
  br label %if.else29.i, !dbg !1811

if.then15.i:                                      ; preds = %isdigit.exit.i
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.179, align 8
  %22 = add i64 %gcov_ctr.i3.i, 1
  store i64 %22, ptr @__llvm_gcov_ctr.179, align 8
  %call.i.i = call i32 @_kstrtoul(ptr noundef %arrayidx.i, i32 noundef 10, ptr noundef nonnull %param.i) #20, !dbg !1812
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i), !dbg !1814
  %tobool17.not.i = icmp eq i32 %call.i.i, 0, !dbg !1814
  br i1 %tobool17.not.i, label %if.else19.i, label %if.then18.i, !dbg !1814

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1815
  %gcov_ctr60.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 4), align 16, !dbg !1815
  %23 = add i64 %gcov_ctr60.i, 1, !dbg !1815
  store i64 %23, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 4), align 16, !dbg !1815
  br label %inval_var.i, !dbg !1815

if.else19.i:                                      ; preds = %if.then15.i
  %and20.i = and i32 %flags, 2, !dbg !1816
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i), !dbg !1816
  %tobool21.not.i = icmp eq i32 %and20.i, 0, !dbg !1816
  br i1 %tobool21.not.i, label %if.else19.i.if.else25.i_crit_edge, label %land.lhs.true.i, !dbg !1817

if.else19.i.if.else25.i_crit_edge:                ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1817
  br label %if.else25.i, !dbg !1817

land.lhs.true.i:                                  ; preds = %if.else19.i
  %gcov_ctr61.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 5), align 8, !dbg !1818
  %24 = add i64 %gcov_ctr61.i, 1, !dbg !1818
  store i64 %24, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 5), align 8, !dbg !1818
  %25 = ptrtoint ptr %param.i to i32, !dbg !1818
  call void @__asan_load4_noabort(i32 %25), !dbg !1818
  %26 = load i32, ptr %param.i, align 4, !dbg !1818
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %26), !dbg !1819
  %cmp22.i = icmp ugt i32 %26, 4096, !dbg !1819
  br i1 %cmp22.i, label %if.then24.i, label %land.lhs.true.i.if.else25.i_crit_edge, !dbg !1820

land.lhs.true.i.if.else25.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1820
  br label %if.else25.i, !dbg !1820

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1821
  %gcov_ctr62.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 6), align 16, !dbg !1821
  %27 = add i64 %gcov_ctr62.i, 1, !dbg !1821
  store i64 %27, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 6), align 16, !dbg !1821
  call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 20) #20, !dbg !1821
  br label %sw.epilog, !dbg !1822

if.else25.i:                                      ; preds = %land.lhs.true.i.if.else25.i_crit_edge, %if.else19.i.if.else25.i_crit_edge
  %gcov_ctr63.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 7), align 8, !dbg !1823
  %28 = add i64 %gcov_ctr63.i, 1, !dbg !1823
  store i64 %28, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 7), align 8, !dbg !1823
  %29 = ptrtoint ptr %2 to i32, !dbg !1824
  call void @__asan_store4_noabort(i32 %29), !dbg !1824
  store i32 2, ptr %2, align 4, !dbg !1824
  %30 = ptrtoint ptr %param.i to i32, !dbg !1825
  call void @__asan_load4_noabort(i32 %30), !dbg !1825
  %31 = load i32, ptr %param.i, align 4, !dbg !1825
  %32 = getelementptr inbounds %struct.fetch_insn, ptr %2, i32 0, i32 1, !dbg !1826
  %33 = ptrtoint ptr %32 to i32, !dbg !1827
  call void @__asan_store4_noabort(i32 %33), !dbg !1827
  store i32 %31, ptr %32, align 4, !dbg !1827
  br label %sw.epilog.thread50

if.else29.i:                                      ; preds = %isdigit.exit.i.if.else29.i_crit_edge, %if.else10.i.if.else29.i_crit_edge
  %gcov_ctr59.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 3), align 8, !dbg !1828
  %34 = add i64 %gcov_ctr59.i, 1, !dbg !1828
  store i64 %34, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 3), align 8, !dbg !1828
  br label %inval_var.i, !dbg !1828

if.else32.i:                                      ; preds = %if.else2.i
  %call33.i = tail call i32 @strcmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.96) #23, !dbg !1829
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i), !dbg !1830
  %cmp34.i = icmp eq i32 %call33.i, 0, !dbg !1830
  br i1 %cmp34.i, label %if.then36.i, label %if.else38.i, !dbg !1829

if.then36.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1831
  %gcov_ctr64.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 8), align 16, !dbg !1831
  %35 = add i64 %gcov_ctr64.i, 1, !dbg !1831
  store i64 %35, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 8), align 16, !dbg !1831
  %36 = ptrtoint ptr %2 to i32, !dbg !1832
  call void @__asan_store4_noabort(i32 %36), !dbg !1832
  store i32 6, ptr %2, align 4, !dbg !1832
  br label %sw.epilog.thread50, !dbg !1833

if.else38.i:                                      ; preds = %if.else32.i
  %and39.i = and i32 %flags, 8, !dbg !1834
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i), !dbg !1834
  %tobool40.not.i = icmp eq i32 %and39.i, 0, !dbg !1834
  br i1 %tobool40.not.i, label %if.else50.i, label %if.then41.i, !dbg !1835

if.then41.i:                                      ; preds = %if.else38.i
  %37 = getelementptr inbounds %struct.fetch_insn, ptr %2, i32 0, i32 1, !dbg !1836
  %38 = ptrtoint ptr %37 to i32, !dbg !1836
  call void @__asan_load4_noabort(i32 %38), !dbg !1836
  %39 = load ptr, ptr %37, align 4, !dbg !1836
  %tobool42.not.i = icmp eq ptr %39, null, !dbg !1837
  br i1 %tobool42.not.i, label %if.end44.i, label %if.then43.i, !dbg !1837

if.then43.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1838
  %gcov_ctr65.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 9), align 8, !dbg !1838
  %40 = add i64 %gcov_ctr65.i, 1, !dbg !1838
  store i64 %40, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 9), align 8, !dbg !1838
  br label %sw.epilog, !dbg !1838

if.end44.i:                                       ; preds = %if.then41.i
  %call45.i = tail call noalias ptr @kstrdup(ptr noundef %add.ptr, i32 noundef 3264) #20, !dbg !1839
  %41 = ptrtoint ptr %37 to i32, !dbg !1840
  call void @__asan_store4_noabort(i32 %41), !dbg !1840
  store ptr %call45.i, ptr %37, align 4, !dbg !1840
  %tobool46.not.i = icmp eq ptr %call45.i, null, !dbg !1841
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end48.i, !dbg !1842

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1843
  %gcov_ctr66.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 10), align 16, !dbg !1843
  %42 = add i64 %gcov_ctr66.i, 1, !dbg !1843
  store i64 %42, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 10), align 16, !dbg !1843
  br label %sw.epilog, !dbg !1843

if.end48.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1844
  %43 = ptrtoint ptr %2 to i32, !dbg !1844
  call void @__asan_store4_noabort(i32 %43), !dbg !1844
  store i32 19, ptr %2, align 4, !dbg !1844
  %gcov_ctr68.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 12), align 16
  %44 = add i64 %gcov_ctr68.i, 1
  store i64 %44, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 12), align 16
  br label %sw.epilog.thread50

if.else50.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1845
  %gcov_ctr67.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 11), align 8, !dbg !1845
  %45 = add i64 %gcov_ctr67.i, 1, !dbg !1845
  store i64 %45, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.182, i32 0, i32 11), align 8, !dbg !1845
  br label %inval_var.i, !dbg !1845

inval_var.i:                                      ; preds = %if.else50.i, %if.else29.i, %if.then18.i
  call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 22) #20, !dbg !1846
  br label %sw.epilog, !dbg !1847

sw.bb1:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %arg, i32 1, !dbg !1848
  %call3 = tail call i32 @regs_query_register_offset(ptr noundef %add.ptr2) #20, !dbg !1849
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3), !dbg !1850
  %cmp = icmp sgt i32 %call3, -1, !dbg !1850
  br i1 %cmp, label %if.then, label %if.else, !dbg !1851

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1852
  %gcov_ctr151 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 2), align 16, !dbg !1852
  %46 = add i64 %gcov_ctr151, 1, !dbg !1852
  store i64 %46, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 2), align 16, !dbg !1852
  %47 = ptrtoint ptr %code to i32, !dbg !1852
  call void @__asan_load4_noabort(i32 %47), !dbg !1852
  %48 = load ptr, ptr %code, align 4, !dbg !1852
  %49 = ptrtoint ptr %48 to i32, !dbg !1853
  call void @__asan_store4_noabort(i32 %49), !dbg !1853
  store i32 1, ptr %48, align 4, !dbg !1853
  %50 = getelementptr inbounds %struct.fetch_insn, ptr %48, i32 0, i32 1, !dbg !1854
  %51 = ptrtoint ptr %50 to i32, !dbg !1855
  call void @__asan_store4_noabort(i32 %51), !dbg !1855
  store i32 %call3, ptr %50, align 4, !dbg !1855
  br label %land.lhs.true, !dbg !1856

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1857
  %gcov_ctr152 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 3), align 8, !dbg !1857
  %52 = add i64 %gcov_ctr152, 1, !dbg !1857
  store i64 %52, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 3), align 8, !dbg !1857
  tail call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 23), !dbg !1857
  br label %if.end143

sw.bb5:                                           ; preds = %entry
  %arrayidx6 = getelementptr i8, ptr %arg, i32 1, !dbg !1858
  %53 = ptrtoint ptr %arrayidx6 to i32, !dbg !1858
  call void @__asan_load1_noabort(i32 %53), !dbg !1858
  %54 = load i8, ptr %arrayidx6, align 1, !dbg !1858
  %gcov_ctr.i1 = load i64, ptr @__llvm_gcov_ctr.174, align 8
  %55 = add i64 %gcov_ctr.i1, 1
  store i64 %55, ptr @__llvm_gcov_ctr.174, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %54), !dbg !1859
  %cmp.i2 = icmp ugt i8 %54, 47, !dbg !1859
  br i1 %cmp.i2, label %isdigit.exit, label %sw.bb5.if.else16_crit_edge, !dbg !1861

sw.bb5.if.else16_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1861
  br label %if.else16, !dbg !1861

isdigit.exit:                                     ; preds = %sw.bb5
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !1862
  %56 = add i64 %gcov_ctr2.i, 1, !dbg !1862
  store i64 %56, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !1862
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %54), !dbg !1863
  %cmp1.i = icmp ugt i8 %54, 57, !dbg !1863
  br i1 %cmp1.i, label %isdigit.exit.if.else16_crit_edge, label %if.then9, !dbg !1864

isdigit.exit.if.else16_crit_edge:                 ; preds = %isdigit.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1864
  br label %if.else16, !dbg !1864

if.then9:                                         ; preds = %isdigit.exit
  %gcov_ctr.i3 = load i64, ptr @__llvm_gcov_ctr.179, align 8
  %57 = add i64 %gcov_ctr.i3, 1
  store i64 %57, ptr @__llvm_gcov_ctr.179, align 8
  %call.i4 = call i32 @_kstrtoul(ptr noundef %arrayidx6, i32 noundef 0, ptr noundef nonnull %param) #20, !dbg !1865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4), !dbg !1867
  %tobool12.not = icmp eq i32 %call.i4, 0, !dbg !1867
  br i1 %tobool12.not, label %if.end14, label %if.then13, !dbg !1867

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1868
  %gcov_ctr153 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 4), align 16, !dbg !1868
  %58 = add i64 %gcov_ctr153, 1, !dbg !1868
  store i64 %58, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 4), align 16, !dbg !1868
  call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 24), !dbg !1868
  br label %if.end143, !dbg !1869

if.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1870
  %59 = ptrtoint ptr %code to i32, !dbg !1870
  call void @__asan_load4_noabort(i32 %59), !dbg !1870
  %60 = load ptr, ptr %code, align 4, !dbg !1870
  %61 = ptrtoint ptr %60 to i32, !dbg !1871
  call void @__asan_store4_noabort(i32 %61), !dbg !1871
  store i32 5, ptr %60, align 4, !dbg !1871
  %62 = ptrtoint ptr %param to i32, !dbg !1872
  call void @__asan_load4_noabort(i32 %62), !dbg !1872
  %63 = load i32, ptr %param, align 4, !dbg !1872
  br label %if.end48, !dbg !1873

if.else16:                                        ; preds = %isdigit.exit.if.else16_crit_edge, %sw.bb5.if.else16_crit_edge
  %64 = ptrtoint ptr %arrayidx6 to i32, !dbg !1874
  call void @__asan_load1_noabort(i32 %64), !dbg !1874
  %65 = load i8, ptr %arrayidx6, align 1, !dbg !1874
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %65), !dbg !1875
  %cmp19 = icmp eq i8 %65, 43, !dbg !1875
  %and = and i32 %flags, 2, !dbg !1876
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !1876
  %tobool22.not = icmp eq i32 %and, 0, !dbg !1876
  br i1 %cmp19, label %if.then21, label %if.else31, !dbg !1874

if.then21:                                        ; preds = %if.else16
  br i1 %tobool22.not, label %if.end24, label %if.then23, !dbg !1877

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1878
  %gcov_ctr154 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 5), align 8, !dbg !1878
  %66 = add i64 %gcov_ctr154, 1, !dbg !1878
  store i64 %66, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 5), align 8, !dbg !1878
  tail call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 27), !dbg !1878
  br label %cleanup144, !dbg !1879

if.end24:                                         ; preds = %if.then21
  %add.ptr25 = getelementptr i8, ptr %arg, i32 2, !dbg !1880
  %gcov_ctr.i5 = load i64, ptr @__llvm_gcov_ctr.133, align 8
  %67 = add i64 %gcov_ctr.i5, 1
  store i64 %67, ptr @__llvm_gcov_ctr.133, align 8
  %call.i6 = call i32 @_kstrtol(ptr noundef %add.ptr25, i32 noundef 0, ptr noundef nonnull %offset) #20, !dbg !1881
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6), !dbg !1883
  %tobool27.not = icmp eq i32 %call.i6, 0, !dbg !1883
  br i1 %tobool27.not, label %if.end29, label %if.then28, !dbg !1883

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1884
  %gcov_ctr155 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 6), align 16, !dbg !1884
  %68 = add i64 %gcov_ctr155, 1, !dbg !1884
  store i64 %68, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 6), align 16, !dbg !1884
  call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 28), !dbg !1884
  br label %if.end143, !dbg !1885

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1886
  %gcov_ctr156 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 7), align 8, !dbg !1886
  %69 = add i64 %gcov_ctr156, 1, !dbg !1886
  store i64 %69, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 7), align 8, !dbg !1886
  %70 = ptrtoint ptr %code to i32, !dbg !1886
  call void @__asan_load4_noabort(i32 %70), !dbg !1886
  %71 = load ptr, ptr %code, align 4, !dbg !1886
  %72 = ptrtoint ptr %71 to i32, !dbg !1887
  call void @__asan_store4_noabort(i32 %72), !dbg !1887
  store i32 8, ptr %71, align 4, !dbg !1887
  %73 = ptrtoint ptr %offset to i32, !dbg !1888
  call void @__asan_load4_noabort(i32 %73), !dbg !1888
  %74 = load i32, ptr %offset, align 4, !dbg !1888
  br label %if.end48, !dbg !1889

if.else31:                                        ; preds = %if.else16
  br i1 %tobool22.not, label %if.then34, label %if.end35, !dbg !1890

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1891
  %gcov_ctr157 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 8), align 16, !dbg !1891
  %75 = add i64 %gcov_ctr157, 1, !dbg !1891
  store i64 %75, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 8), align 16, !dbg !1891
  tail call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 29), !dbg !1891
  br label %cleanup144, !dbg !1892

if.end35:                                         ; preds = %if.else31
  %76 = ptrtoint ptr %2 to i32, !dbg !1893
  call void @__asan_store4_noabort(i32 %76), !dbg !1893
  store i32 21, ptr %2, align 4, !dbg !1893
  %call38 = tail call noalias ptr @kstrdup(ptr noundef %arrayidx6, i32 noundef 3264) #20, !dbg !1894
  %77 = ptrtoint ptr %code to i32, !dbg !1895
  call void @__asan_load4_noabort(i32 %77), !dbg !1895
  %78 = load ptr, ptr %code, align 4, !dbg !1895
  %79 = getelementptr inbounds %struct.fetch_insn, ptr %78, i32 0, i32 1, !dbg !1896
  %80 = ptrtoint ptr %79 to i32, !dbg !1897
  call void @__asan_store4_noabort(i32 %80), !dbg !1897
  store ptr %call38, ptr %79, align 4, !dbg !1897
  %tobool39.not = icmp eq ptr %call38, null, !dbg !1898
  br i1 %tobool39.not, label %if.then40, label %if.end41, !dbg !1899

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1900
  %gcov_ctr158 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 9), align 8, !dbg !1900
  %81 = add i64 %gcov_ctr158, 1, !dbg !1900
  store i64 %81, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 9), align 8, !dbg !1900
  br label %cleanup144, !dbg !1900

if.end41:                                         ; preds = %if.end35
  %incdec.ptr = getelementptr %struct.fetch_insn, ptr %78, i32 1, !dbg !1901
  %82 = ptrtoint ptr %code to i32, !dbg !1901
  call void @__asan_store4_noabort(i32 %82), !dbg !1901
  store ptr %incdec.ptr, ptr %code, align 4, !dbg !1901
  %cmp42 = icmp eq ptr %incdec.ptr, %end, !dbg !1902
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1901

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1903
  %gcov_ctr159 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 10), align 16, !dbg !1903
  %83 = add i64 %gcov_ctr159, 1, !dbg !1903
  store i64 %83, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 10), align 16, !dbg !1903
  tail call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 30), !dbg !1903
  br label %cleanup144, !dbg !1904

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1905
  %gcov_ctr160 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 11), align 8, !dbg !1905
  %84 = add i64 %gcov_ctr160, 1, !dbg !1905
  store i64 %84, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 11), align 8, !dbg !1905
  %85 = ptrtoint ptr %incdec.ptr to i32, !dbg !1906
  call void @__asan_store4_noabort(i32 %85), !dbg !1906
  store i32 5, ptr %incdec.ptr, align 4, !dbg !1906
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %if.end29, %if.end14
  %.sink = phi i32 [ %74, %if.end29 ], [ 0, %if.end45 ], [ %63, %if.end14 ]
  %86 = ptrtoint ptr %code to i32, !dbg !1876
  call void @__asan_load4_noabort(i32 %86), !dbg !1876
  %.sink54 = load ptr, ptr %code, align 4, !dbg !1876
  %87 = getelementptr inbounds %struct.fetch_insn, ptr %.sink54, i32 0, i32 1, !dbg !1876
  %88 = ptrtoint ptr %87 to i32, !dbg !1876
  call void @__asan_store4_noabort(i32 %88), !dbg !1876
  store i32 %.sink, ptr %87, align 4, !dbg !1876
  %incdec.ptr49 = getelementptr %struct.fetch_insn, ptr %.sink54, i32 1, !dbg !1907
  store ptr %incdec.ptr49, ptr %code, align 4, !dbg !1907
  %cmp50 = icmp eq ptr %incdec.ptr49, %end, !dbg !1908
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1907

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1909
  %gcov_ctr161 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 12), align 16, !dbg !1909
  %89 = add i64 %gcov_ctr161, 1, !dbg !1909
  store i64 %89, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 12), align 16, !dbg !1909
  call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 30), !dbg !1909
  br label %cleanup144, !dbg !1910

if.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1911
  %gcov_ctr162 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 13), align 8, !dbg !1911
  %90 = add i64 %gcov_ctr162, 1, !dbg !1911
  store i64 %90, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 13), align 8, !dbg !1911
  %91 = ptrtoint ptr %pcode to i32, !dbg !1912
  call void @__asan_store4_noabort(i32 %91), !dbg !1912
  store ptr %incdec.ptr49, ptr %pcode, align 4, !dbg !1912
  %92 = ptrtoint ptr %incdec.ptr49 to i32, !dbg !1913
  call void @__asan_store4_noabort(i32 %92), !dbg !1913
  store i32 10, ptr %incdec.ptr49, align 4, !dbg !1913
  %93 = ptrtoint ptr %offset to i32, !dbg !1914
  call void @__asan_load4_noabort(i32 %93), !dbg !1914
  %94 = load i32, ptr %offset, align 4, !dbg !1914
  %95 = ptrtoint ptr %code to i32, !dbg !1915
  call void @__asan_load4_noabort(i32 %95), !dbg !1915
  %96 = load ptr, ptr %code, align 4, !dbg !1915
  %offset55 = getelementptr inbounds %struct.fetch_insn, ptr %96, i32 0, i32 1, i32 0, i32 1, !dbg !1916
  %97 = ptrtoint ptr %offset55 to i32, !dbg !1917
  call void @__asan_store4_noabort(i32 %97), !dbg !1917
  store i32 %94, ptr %offset55, align 4, !dbg !1917
  br label %land.lhs.true, !dbg !1918

sw.bb56:                                          ; preds = %entry.sw.bb56_crit_edge, %entry.sw.bb56_crit_edge55
  %arrayidx57 = getelementptr i8, ptr %arg, i32 1, !dbg !1919
  %98 = ptrtoint ptr %arrayidx57 to i32, !dbg !1919
  call void @__asan_load1_noabort(i32 %98), !dbg !1919
  %99 = load i8, ptr %arrayidx57, align 1, !dbg !1919
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %99), !dbg !1920
  %cmp59 = icmp eq i8 %99, 117, !dbg !1920
  br i1 %cmp59, label %if.then61, label %if.end65thread-pre-split, !dbg !1919

if.then61:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1921
  %gcov_ctr163 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 14), align 16, !dbg !1921
  %100 = add i64 %gcov_ctr163, 1, !dbg !1921
  store i64 %100, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 14), align 16, !dbg !1921
  %101 = ptrtoint ptr %arg to i32, !dbg !1922
  call void @__asan_load1_noabort(i32 %101), !dbg !1922
  %102 = load i8, ptr %arg, align 1, !dbg !1922
  %103 = ptrtoint ptr %arrayidx57 to i32, !dbg !1923
  call void @__asan_store1_noabort(i32 %103), !dbg !1923
  store i8 %102, ptr %arrayidx57, align 1, !dbg !1923
  br label %if.end65, !dbg !1924

if.end65thread-pre-split:                         ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1925
  %104 = ptrtoint ptr %arg to i32, !dbg !1925
  call void @__asan_load1_noabort(i32 %104), !dbg !1925
  %.pr = load i8, ptr %arg, align 1, !dbg !1925
  br label %if.end65, !dbg !1925

if.end65:                                         ; preds = %if.end65thread-pre-split, %if.then61
  %105 = phi i8 [ %.pr, %if.end65thread-pre-split ], [ %102, %if.then61 ], !dbg !1925
  %arg.addr.0 = phi ptr [ %arg, %if.end65thread-pre-split ], [ %arrayidx57, %if.then61 ]
  %deref.0 = phi i32 [ 10, %if.end65thread-pre-split ], [ 11, %if.then61 ], !dbg !1876
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %105), !dbg !1926
  %cmp68 = icmp eq i8 %105, 43, !dbg !1926
  br i1 %cmp68, label %if.then70, label %if.end65.if.end72_crit_edge, !dbg !1925

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1925
  br label %if.end72, !dbg !1925

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1927
  %gcov_ctr164 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 15), align 8, !dbg !1927
  %106 = add i64 %gcov_ctr164, 1, !dbg !1927
  store i64 %106, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 15), align 8, !dbg !1927
  %incdec.ptr71 = getelementptr i8, ptr %arg.addr.0, i32 1, !dbg !1927
  br label %if.end72, !dbg !1928

if.end72:                                         ; preds = %if.then70, %if.end65.if.end72_crit_edge
  %arg.addr.1 = phi ptr [ %incdec.ptr71, %if.then70 ], [ %arg.addr.0, %if.end65.if.end72_crit_edge ], !dbg !1876
  %call73 = tail call ptr @strchr(ptr noundef %arg.addr.1, i32 noundef 40), !dbg !1929
  %tobool74.not = icmp eq ptr %call73, null, !dbg !1930
  br i1 %tobool74.not, label %if.then75, label %if.end76, !dbg !1931

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1932
  %gcov_ctr165 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 16), align 16, !dbg !1932
  %107 = add i64 %gcov_ctr165, 1, !dbg !1932
  store i64 %107, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 16), align 16, !dbg !1932
  tail call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 31), !dbg !1932
  br label %cleanup144, !dbg !1933

if.end76:                                         ; preds = %if.end72
  %108 = ptrtoint ptr %call73 to i32, !dbg !1934
  call void @__asan_store1_noabort(i32 %108), !dbg !1934
  store i8 0, ptr %call73, align 1, !dbg !1934
  %gcov_ctr.i7 = load i64, ptr @__llvm_gcov_ctr.133, align 8
  %109 = add i64 %gcov_ctr.i7, 1
  store i64 %109, ptr @__llvm_gcov_ctr.133, align 8
  %call.i8 = call i32 @_kstrtol(ptr noundef %arg.addr.1, i32 noundef 0, ptr noundef nonnull %offset) #20, !dbg !1935
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8), !dbg !1937
  %tobool78.not = icmp eq i32 %call.i8, 0, !dbg !1937
  br i1 %tobool78.not, label %if.end80, label %if.then79, !dbg !1937

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1938
  %gcov_ctr166 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 17), align 8, !dbg !1938
  %110 = add i64 %gcov_ctr166, 1, !dbg !1938
  store i64 %110, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 17), align 8, !dbg !1938
  call void @__trace_probe_log_err(i32 noundef %offs, i32 noundef 32), !dbg !1938
  br label %if.end143, !dbg !1939

if.end80:                                         ; preds = %if.end76
  %add.ptr81 = getelementptr i8, ptr %call73, i32 1, !dbg !1940
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr81 to i32, !dbg !1941
  %sub.ptr.rhs.cast = ptrtoint ptr %arg.addr.1 to i32, !dbg !1941
  %111 = ptrtoint ptr %arg.addr.1 to i32, !dbg !1942
  call void @__asan_load1_noabort(i32 %111), !dbg !1942
  %112 = load i8, ptr %arg.addr.1, align 1, !dbg !1942
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %112), !dbg !1943
  %cmp84.not = icmp ne i8 %112, 45, !dbg !1943
  %cond = zext i1 %cmp84.not to i32, !dbg !1942
  %sub.ptr.sub = sub i32 %offs, %sub.ptr.rhs.cast, !dbg !1941
  %add = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast, !dbg !1944
  %add86 = add i32 %add, %cond, !dbg !1945
  %call88 = call ptr @strrchr(ptr noundef %add.ptr81, i32 noundef 41), !dbg !1946
  %tobool89.not = icmp eq ptr %call88, null, !dbg !1947
  br i1 %tobool89.not, label %if.then90, label %if.else93, !dbg !1948

if.then90:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1949
  %gcov_ctr167 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 18), align 16, !dbg !1949
  %113 = add i64 %gcov_ctr167, 1, !dbg !1949
  store i64 %113, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 18), align 16, !dbg !1949
  %call91 = call i32 @strlen(ptr noundef %add.ptr81) #21, !dbg !1949
  %add92 = add i32 %call91, %add86, !dbg !1949
  call void @__trace_probe_log_err(i32 noundef %add92, i32 noundef 33), !dbg !1949
  br label %cleanup144, !dbg !1950

if.else93:                                        ; preds = %if.end80
  %call94 = call fastcc ptr @find_fetch_type(ptr noundef null), !dbg !1951
  %114 = ptrtoint ptr %call88 to i32, !dbg !1952
  call void @__asan_store1_noabort(i32 %114), !dbg !1952
  store i8 0, ptr %call88, align 1, !dbg !1952
  %call95 = call fastcc i32 @parse_probe_arg(ptr noundef %add.ptr81, ptr noundef nonnull %code, ptr noundef %end, i32 noundef %flags, i32 noundef %add86), !dbg !1953
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95), !dbg !1954
  %tobool96.not = icmp eq i32 %call95, 0, !dbg !1954
  br i1 %tobool96.not, label %if.end98, label %cleanup, !dbg !1954

if.end98:                                         ; preds = %if.else93
  %115 = ptrtoint ptr %code to i32, !dbg !1955
  call void @__asan_load4_noabort(i32 %115), !dbg !1955
  %116 = load ptr, ptr %code, align 4, !dbg !1955
  %117 = ptrtoint ptr %116 to i32, !dbg !1956
  call void @__asan_load4_noabort(i32 %117), !dbg !1956
  %118 = load i32, ptr %116, align 4, !dbg !1956
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %118), !dbg !1957
  %cmp100 = icmp eq i32 %118, 6, !dbg !1957
  br i1 %cmp100, label %if.end98.if.then105_crit_edge, label %lor.lhs.false, !dbg !1958

if.end98.if.then105_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1958
  br label %if.then105, !dbg !1958

lor.lhs.false:                                    ; preds = %if.end98
  %gcov_ctr169 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 20), align 16, !dbg !1959
  %119 = add i64 %gcov_ctr169, 1, !dbg !1959
  store i64 %119, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 20), align 16, !dbg !1959
  %120 = ptrtoint ptr %116 to i32, !dbg !1960
  call void @__asan_load4_noabort(i32 %120), !dbg !1960
  %121 = load i32, ptr %116, align 4, !dbg !1960
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %121), !dbg !1961
  %cmp103 = icmp eq i32 %121, 9, !dbg !1961
  br i1 %cmp103, label %lor.lhs.false.if.then105_crit_edge, label %if.end106, !dbg !1955

lor.lhs.false.if.then105_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1955
  br label %if.then105, !dbg !1955

if.then105:                                       ; preds = %lor.lhs.false.if.then105_crit_edge, %if.end98.if.then105_crit_edge
  %gcov_ctr170 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 21), align 8, !dbg !1962
  %122 = add i64 %gcov_ctr170, 1, !dbg !1962
  store i64 %122, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 21), align 8, !dbg !1962
  call void @__trace_probe_log_err(i32 noundef %add86, i32 noundef 34), !dbg !1962
  br label %cleanup144, !dbg !1963

if.end106:                                        ; preds = %lor.lhs.false
  %incdec.ptr107 = getelementptr %struct.fetch_insn, ptr %116, i32 1, !dbg !1964
  %123 = ptrtoint ptr %code to i32, !dbg !1964
  call void @__asan_store4_noabort(i32 %123), !dbg !1964
  store ptr %incdec.ptr107, ptr %code, align 4, !dbg !1964
  %cmp108 = icmp eq ptr %incdec.ptr107, %end, !dbg !1965
  br i1 %cmp108, label %if.then110, label %if.end114, !dbg !1964

if.then110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1966
  %gcov_ctr171 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 22), align 16, !dbg !1966
  %124 = add i64 %gcov_ctr171, 1, !dbg !1966
  store i64 %124, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 22), align 16, !dbg !1966
  call void @__trace_probe_log_err(i32 noundef %add86, i32 noundef 30), !dbg !1966
  br label %cleanup144, !dbg !1967

cleanup:                                          ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1876
  %gcov_ctr168 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 19), align 8
  %125 = add i64 %gcov_ctr168, 1
  store i64 %125, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 19), align 8
  br label %if.end143

if.end114:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1968
  %gcov_ctr172 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 23), align 8, !dbg !1968
  %126 = add i64 %gcov_ctr172, 1, !dbg !1968
  store i64 %126, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 23), align 8, !dbg !1968
  %127 = ptrtoint ptr %pcode to i32, !dbg !1969
  call void @__asan_store4_noabort(i32 %127), !dbg !1969
  store ptr %incdec.ptr107, ptr %pcode, align 4, !dbg !1969
  %128 = ptrtoint ptr %incdec.ptr107 to i32, !dbg !1970
  call void @__asan_store4_noabort(i32 %128), !dbg !1970
  store i32 %deref.0, ptr %incdec.ptr107, align 4, !dbg !1970
  %129 = ptrtoint ptr %offset to i32, !dbg !1971
  call void @__asan_load4_noabort(i32 %129), !dbg !1971
  %130 = load i32, ptr %offset, align 4, !dbg !1971
  %131 = ptrtoint ptr %code to i32, !dbg !1972
  call void @__asan_load4_noabort(i32 %131), !dbg !1972
  %132 = load ptr, ptr %code, align 4, !dbg !1972
  %offset113 = getelementptr inbounds %struct.fetch_insn, ptr %132, i32 0, i32 1, i32 0, i32 1, !dbg !1973
  %133 = ptrtoint ptr %offset113 to i32, !dbg !1974
  call void @__asan_store4_noabort(i32 %133), !dbg !1974
  store i32 %130, ptr %offset113, align 4, !dbg !1974
  %gcov_ctr173 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 24), align 16, !dbg !1975
  %134 = add i64 %gcov_ctr173, 1, !dbg !1975
  store i64 %134, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 24), align 16, !dbg !1975
  br label %land.lhs.true, !dbg !1975

sw.bb115:                                         ; preds = %entry
  %arrayidx116 = getelementptr i8, ptr %arg, i32 1, !dbg !1976
  %135 = ptrtoint ptr %arrayidx116 to i32, !dbg !1976
  call void @__asan_load1_noabort(i32 %135), !dbg !1976
  %136 = load i8, ptr %arrayidx116, align 1, !dbg !1976
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %136), !dbg !1977
  %cmp118 = icmp eq i8 %136, 34, !dbg !1977
  br i1 %cmp118, label %if.then120, label %if.else128, !dbg !1976

if.then120:                                       ; preds = %sw.bb115
  %add.ptr121 = getelementptr i8, ptr %arg, i32 2, !dbg !1978
  %call.i9 = tail call i32 @strlen(ptr noundef %add.ptr121) #23, !dbg !1979
  %sub.i = add i32 %call.i9, -1, !dbg !1982
  %arrayidx.i10 = getelementptr i8, ptr %add.ptr121, i32 %sub.i, !dbg !1983
  %137 = ptrtoint ptr %arrayidx.i10 to i32, !dbg !1983
  call void @__asan_load1_noabort(i32 %137), !dbg !1983
  %138 = load i8, ptr %arrayidx.i10, align 1, !dbg !1983
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %138), !dbg !1984
  %cmp.not.i = icmp eq i8 %138, 34, !dbg !1984
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i12, !dbg !1983

if.then.i12:                                      ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1985
  %add122 = add i32 %offs, 2, !dbg !1985
  %gcov_ctr.i11 = load i64, ptr @__llvm_gcov_ctr.183, align 16, !dbg !1986
  %139 = add i64 %gcov_ctr.i11, 1, !dbg !1986
  store i64 %139, ptr @__llvm_gcov_ctr.183, align 16, !dbg !1986
  %add.i = add i32 %add122, %call.i9, !dbg !1986
  tail call void @__trace_probe_log_err(i32 noundef %add.i, i32 noundef 26) #20, !dbg !1986
  br label %if.then125, !dbg !1987

if.end.i:                                         ; preds = %if.then120
  %call3.i = tail call ptr @kstrndup(ptr noundef %add.ptr121, i32 noundef %sub.i, i32 noundef 3264) #20, !dbg !1988
  %tobool.not.i13 = icmp eq ptr %call3.i, null, !dbg !1989
  br i1 %tobool.not.i13, label %if.then4.i, label %if.end126, !dbg !1990

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1991
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 1), align 8, !dbg !1991
  %140 = add i64 %gcov_ctr6.i, 1, !dbg !1991
  store i64 %140, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 1), align 8, !dbg !1991
  br label %if.then125, !dbg !1991

if.then125:                                       ; preds = %if.then4.i, %if.then.i12
  %retval.0.i14.ph = phi i32 [ -12, %if.then4.i ], [ -22, %if.then.i12 ]
  %gcov_ctr174 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 25), align 8, !dbg !1992
  %141 = add i64 %gcov_ctr174, 1, !dbg !1992
  store i64 %141, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 25), align 8, !dbg !1992
  br label %if.end143, !dbg !1992

if.end126:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19, !dbg !1993
  %gcov_ctr7.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 2), align 16, !dbg !1993
  %142 = add i64 %gcov_ctr7.i, 1, !dbg !1993
  store i64 %142, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.183, i32 0, i32 2), align 16, !dbg !1993
  %gcov_ctr175 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 26), align 16, !dbg !1994
  %143 = add i64 %gcov_ctr175, 1, !dbg !1994
  store i64 %143, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 26), align 16, !dbg !1994
  %144 = ptrtoint ptr %code to i32, !dbg !1994
  call void @__asan_load4_noabort(i32 %144), !dbg !1994
  %145 = load ptr, ptr %code, align 4, !dbg !1994
  %146 = ptrtoint ptr %145 to i32, !dbg !1995
  call void @__asan_store4_noabort(i32 %146), !dbg !1995
  store i32 9, ptr %145, align 4, !dbg !1995
  %147 = getelementptr inbounds %struct.fetch_insn, ptr %145, i32 0, i32 1, !dbg !1996
  %148 = ptrtoint ptr %147 to i32, !dbg !1997
  call void @__asan_store4_noabort(i32 %148), !dbg !1997
  store ptr %call3.i, ptr %147, align 4, !dbg !1997
  br label %land.lhs.true, !dbg !1998

if.else128:                                       ; preds = %sw.bb115
  %149 = getelementptr inbounds %struct.fetch_insn, ptr %2, i32 0, i32 1, !dbg !1999
  %gcov_ctr.i.i15 = load i64, ptr @__llvm_gcov_ctr.174, align 8
  %150 = add i64 %gcov_ctr.i.i15, 1
  store i64 %150, ptr @__llvm_gcov_ctr.174, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %136), !dbg !2000
  %cmp.i.i16 = icmp ugt i8 %136, 47, !dbg !2000
  br i1 %cmp.i.i16, label %isdigit.exit.i19, label %if.else128.if.else.i23_crit_edge, !dbg !2004

if.else128.if.else.i23_crit_edge:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2004
  br label %if.else.i23, !dbg !2004

isdigit.exit.i19:                                 ; preds = %if.else128
  %gcov_ctr2.i.i17 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !2005
  %151 = add i64 %gcov_ctr2.i.i17, 1, !dbg !2005
  store i64 %151, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.174, i32 0, i32 1), align 8, !dbg !2005
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %136), !dbg !2006
  %cmp1.i.i18 = icmp ugt i8 %136, 57, !dbg !2006
  br i1 %cmp1.i.i18, label %isdigit.exit.i19.if.else.i23_crit_edge, label %if.then.i22, !dbg !2007

isdigit.exit.i19.if.else.i23_crit_edge:           ; preds = %isdigit.exit.i19
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2007
  br label %if.else.i23, !dbg !2007

if.then.i22:                                      ; preds = %isdigit.exit.i19
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2008
  %gcov_ctr.i20 = load i64, ptr @__llvm_gcov_ctr.184, align 16, !dbg !2008
  %152 = add i64 %gcov_ctr.i20, 1, !dbg !2008
  store i64 %152, ptr @__llvm_gcov_ctr.184, align 16, !dbg !2008
  %gcov_ctr.i26.i = load i64, ptr @__llvm_gcov_ctr.179, align 8
  %153 = add i64 %gcov_ctr.i26.i, 1
  store i64 %153, ptr @__llvm_gcov_ctr.179, align 8
  %call.i.i21 = tail call i32 @_kstrtoul(ptr noundef %arrayidx116, i32 noundef 0, ptr noundef %149) #20, !dbg !2009
  br label %str_to_immediate.exit, !dbg !2011

if.else.i23:                                      ; preds = %isdigit.exit.i19.if.else.i23_crit_edge, %if.else128.if.else.i23_crit_edge
  %154 = ptrtoint ptr %arrayidx116 to i32, !dbg !2012
  call void @__asan_load1_noabort(i32 %154), !dbg !2012
  %155 = load i8, ptr %arrayidx116, align 1, !dbg !2012
  %156 = zext i8 %155 to i64, !dbg !2012
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.203), !dbg !2012
  switch i8 %155, label %str_to_immediate.exit.thread [
    i8 45, label %if.then5.i24
    i8 43, label %if.then12.i
  ], !dbg !2012

if.then5.i24:                                     ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2013
  %gcov_ctr16.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 1), align 8, !dbg !2013
  %157 = add i64 %gcov_ctr16.i, 1, !dbg !2013
  store i64 %157, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 1), align 8, !dbg !2013
  %gcov_ctr.i27.i = load i64, ptr @__llvm_gcov_ctr.133, align 8
  %158 = add i64 %gcov_ctr.i27.i, 1
  store i64 %158, ptr @__llvm_gcov_ctr.133, align 8
  %call.i28.i = tail call i32 @_kstrtol(ptr noundef %arrayidx116, i32 noundef 0, ptr noundef %149) #20, !dbg !2014
  br label %str_to_immediate.exit, !dbg !2016

if.then12.i:                                      ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2017
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 2), align 16, !dbg !2017
  %159 = add i64 %gcov_ctr17.i, 1, !dbg !2017
  store i64 %159, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 2), align 16, !dbg !2017
  %add.ptr.i = getelementptr i8, ptr %arg, i32 2, !dbg !2018
  %gcov_ctr.i29.i = load i64, ptr @__llvm_gcov_ctr.133, align 8
  %160 = add i64 %gcov_ctr.i29.i, 1
  store i64 %160, ptr @__llvm_gcov_ctr.133, align 8
  %call.i30.i = tail call i32 @_kstrtol(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef %149) #20, !dbg !2019
  br label %str_to_immediate.exit, !dbg !2021

str_to_immediate.exit.thread:                     ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2022
  %gcov_ctr18.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 3), align 8, !dbg !2022
  %161 = add i64 %gcov_ctr18.i, 1, !dbg !2022
  store i64 %161, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.184, i32 0, i32 3), align 8, !dbg !2022
  br label %if.then132, !dbg !2023

str_to_immediate.exit:                            ; preds = %if.then12.i, %if.then5.i24, %if.then.i22
  %retval.0.i25 = phi i32 [ %call.i.i21, %if.then.i22 ], [ %call.i28.i, %if.then5.i24 ], [ %call.i30.i, %if.then12.i ], !dbg !2024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i25), !dbg !2023
  %tobool131.not = icmp eq i32 %retval.0.i25, 0, !dbg !2023
  br i1 %tobool131.not, label %if.else134, label %str_to_immediate.exit.if.then132_crit_edge, !dbg !2023

str_to_immediate.exit.if.then132_crit_edge:       ; preds = %str_to_immediate.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2023
  br label %if.then132, !dbg !2023

if.then132:                                       ; preds = %str_to_immediate.exit.if.then132_crit_edge, %str_to_immediate.exit.thread
  %retval.0.i2538 = phi i32 [ -22, %str_to_immediate.exit.thread ], [ %retval.0.i25, %str_to_immediate.exit.if.then132_crit_edge ]
  %gcov_ctr176 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 27), align 8, !dbg !2025
  %162 = add i64 %gcov_ctr176, 1, !dbg !2025
  store i64 %162, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 27), align 8, !dbg !2025
  %add133 = add i32 %offs, 1, !dbg !2025
  tail call void @__trace_probe_log_err(i32 noundef %add133, i32 noundef 25), !dbg !2025
  br label %if.end143, !dbg !2025

if.else134:                                       ; preds = %str_to_immediate.exit
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2026
  %gcov_ctr177 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 28), align 16, !dbg !2026
  %163 = add i64 %gcov_ctr177, 1, !dbg !2026
  store i64 %163, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 28), align 16, !dbg !2026
  %164 = ptrtoint ptr %code to i32, !dbg !2026
  call void @__asan_load4_noabort(i32 %164), !dbg !2026
  %165 = load ptr, ptr %code, align 4, !dbg !2026
  %166 = ptrtoint ptr %165 to i32, !dbg !2027
  call void @__asan_store4_noabort(i32 %166), !dbg !2027
  store i32 5, ptr %165, align 4, !dbg !2027
  br label %land.lhs.true

sw.epilog.thread50:                               ; preds = %if.end48.i, %if.then36.i, %if.else25.i, %if.then8.i, %if.then1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #20, !dbg !2028
  br label %land.lhs.true, !dbg !2029

sw.epilog:                                        ; preds = %inval_var.i, %if.then47.i, %if.then43.i, %if.then24.i, %if.else.i
  %retval.0.i = phi i32 [ -22, %inval_var.i ], [ -14, %if.then43.i ], [ -12, %if.then47.i ], [ -22, %if.else.i ], [ -22, %if.then24.i ], !dbg !2030
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #20, !dbg !2028
  br label %if.end143, !dbg !2029

land.lhs.true:                                    ; preds = %sw.epilog.thread50, %if.else134, %if.end126, %if.end114, %if.end53, %if.then, %entry.land.lhs.true_crit_edge
  %offs.addr.048 = phi i32 [ %offs, %sw.epilog.thread50 ], [ %offs, %if.then ], [ %offs, %if.end53 ], [ %add86, %if.end114 ], [ %offs, %if.else134 ], [ %offs, %if.end126 ], [ %offs, %entry.land.lhs.true_crit_edge ]
  %gcov_ctr178 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 29), align 8, !dbg !2031
  %167 = add i64 %gcov_ctr178, 1, !dbg !2031
  store i64 %167, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 29), align 8, !dbg !2031
  %168 = ptrtoint ptr %code to i32, !dbg !2031
  call void @__asan_load4_noabort(i32 %168), !dbg !2031
  %169 = load ptr, ptr %code, align 4, !dbg !2031
  %170 = ptrtoint ptr %169 to i32, !dbg !2032
  call void @__asan_load4_noabort(i32 %170), !dbg !2032
  %171 = load i32, ptr %169, align 4, !dbg !2032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171), !dbg !2033
  %cmp140 = icmp eq i32 %171, 0, !dbg !2033
  br i1 %cmp140, label %if.then142, label %land.lhs.true.if.end143_crit_edge, !dbg !2034

land.lhs.true.if.end143_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2034
  br label %if.end143, !dbg !2034

if.then142:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2035
  %gcov_ctr179 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 30), align 16, !dbg !2035
  %172 = add i64 %gcov_ctr179, 1, !dbg !2035
  store i64 %172, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 30), align 16, !dbg !2035
  call void @__trace_probe_log_err(i32 noundef %offs.addr.048, i32 noundef 35), !dbg !2035
  br label %if.end143, !dbg !2036

if.end143:                                        ; preds = %if.then142, %land.lhs.true.if.end143_crit_edge, %sw.epilog, %if.then132, %if.then125, %cleanup, %if.then79, %if.then28, %if.then13, %if.else
  %ret.2 = phi i32 [ %retval.0.i, %sw.epilog ], [ -22, %if.then142 ], [ 0, %land.lhs.true.if.end143_crit_edge ], [ %call3, %if.else ], [ %call.i6, %if.then28 ], [ %call.i4, %if.then13 ], [ %call95, %cleanup ], [ %call.i8, %if.then79 ], [ %retval.0.i2538, %if.then132 ], [ %retval.0.i14.ph, %if.then125 ], !dbg !1876
  %gcov_ctr180 = load i64, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 31), align 8, !dbg !2037
  %173 = add i64 %gcov_ctr180, 1, !dbg !2037
  store i64 %173, ptr getelementptr inbounds ([32 x i64], ptr @__llvm_gcov_ctr.177, i32 0, i32 31), align 8, !dbg !2037
  br label %cleanup144, !dbg !2038

cleanup144:                                       ; preds = %if.end143, %if.then110, %if.then105, %if.then90, %if.then75, %if.then52, %if.then44, %if.then40, %if.then34, %if.then23
  %retval.1 = phi i32 [ %ret.2, %if.end143 ], [ -22, %if.then90 ], [ -22, %if.then75 ], [ -22, %if.then52 ], [ -22, %if.then23 ], [ -22, %if.then44 ], [ -12, %if.then40 ], [ -22, %if.then34 ], [ -22, %if.then105 ], [ -22, %if.then110 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #20, !dbg !2039
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #20, !dbg !2039
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %code) #20, !dbg !2039
  ret i32 %retval.1, !dbg !2039
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__parse_bitfield_probe_arg(ptr noundef %bf, ptr nocapture noundef readonly %t, ptr nocapture noundef %pcode) unnamed_addr #0 align 64 !dbg !2040 {
entry:
  %tail = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2041
  %0 = ptrtoint ptr %pcode to i32, !dbg !2042
  call void @__asan_load4_noabort(i32 %0), !dbg !2042
  %1 = load ptr, ptr %pcode, align 4, !dbg !2042
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tail) #20, !dbg !2043
  %2 = ptrtoint ptr %tail to i32, !dbg !2044
  call void @__asan_store4_noabort(i32 %2), !dbg !2044
  store ptr inttoptr (i32 -1 to ptr), ptr %tail, align 4, !dbg !2044, !annotation !694
  %3 = ptrtoint ptr %bf to i32, !dbg !2045
  call void @__asan_load1_noabort(i32 %3), !dbg !2045
  %4 = load i8, ptr %bf, align 1, !dbg !2045
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %4), !dbg !2046
  %cmp.not = icmp eq i8 %4, 98, !dbg !2046
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2045

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2047
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.178, align 16, !dbg !2047
  %5 = add i64 %gcov_ctr, 1, !dbg !2047
  store i64 %5, ptr @__llvm_gcov_ctr.178, align 16, !dbg !2047
  br label %cleanup, !dbg !2047

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %bf, i32 1, !dbg !2048
  %call = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef nonnull %tail, i32 noundef 0) #20, !dbg !2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !2050
  %cmp2 = icmp eq i32 %call, 0, !dbg !2050
  br i1 %cmp2, label %if.end.if.then7_crit_edge, label %lor.lhs.false, !dbg !2051

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2051
  br label %if.then7, !dbg !2051

lor.lhs.false:                                    ; preds = %if.end
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 1), align 8, !dbg !2052
  %6 = add i64 %gcov_ctr41, 1, !dbg !2052
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 1), align 8, !dbg !2052
  %7 = ptrtoint ptr %tail to i32, !dbg !2052
  call void @__asan_load4_noabort(i32 %7), !dbg !2052
  %8 = load ptr, ptr %tail, align 4, !dbg !2052
  %9 = ptrtoint ptr %8 to i32, !dbg !2053
  call void @__asan_load1_noabort(i32 %9), !dbg !2053
  %10 = load i8, ptr %8, align 1, !dbg !2053
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %10), !dbg !2054
  %cmp5.not = icmp eq i8 %10, 64, !dbg !2054
  br i1 %cmp5.not, label %if.end8, label %lor.lhs.false.if.then7_crit_edge, !dbg !2055

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2055
  br label %if.then7, !dbg !2055

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 2), align 16, !dbg !2056
  %11 = add i64 %gcov_ctr42, 1, !dbg !2056
  store i64 %11, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 2), align 16, !dbg !2056
  br label %cleanup, !dbg !2056

if.end8:                                          ; preds = %lor.lhs.false
  %add.ptr9 = getelementptr i8, ptr %8, i32 1, !dbg !2057
  %call10 = call i32 @simple_strtoul(ptr noundef %add.ptr9, ptr noundef nonnull %tail, i32 noundef 0) #20, !dbg !2058
  %12 = ptrtoint ptr %tail to i32, !dbg !2059
  call void @__asan_load4_noabort(i32 %12), !dbg !2059
  %13 = load ptr, ptr %tail, align 4, !dbg !2059
  %cmp11 = icmp eq ptr %13, %add.ptr9, !dbg !2060
  br i1 %cmp11, label %if.end8.if.then17_crit_edge, label %lor.lhs.false13, !dbg !2061

if.end8.if.then17_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2061
  br label %if.then17, !dbg !2061

lor.lhs.false13:                                  ; preds = %if.end8
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 3), align 8, !dbg !2062
  %14 = add i64 %gcov_ctr43, 1, !dbg !2062
  store i64 %14, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 3), align 8, !dbg !2062
  %15 = ptrtoint ptr %13 to i32, !dbg !2063
  call void @__asan_load1_noabort(i32 %15), !dbg !2063
  %16 = load i8, ptr %13, align 1, !dbg !2063
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %16), !dbg !2064
  %cmp15.not = icmp eq i8 %16, 47, !dbg !2064
  br i1 %cmp15.not, label %if.end18, label %lor.lhs.false13.if.then17_crit_edge, !dbg !2059

lor.lhs.false13.if.then17_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2059
  br label %if.then17, !dbg !2059

if.then17:                                        ; preds = %lor.lhs.false13.if.then17_crit_edge, %if.end8.if.then17_crit_edge
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 4), align 16, !dbg !2065
  %17 = add i64 %gcov_ctr44, 1, !dbg !2065
  store i64 %17, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 4), align 16, !dbg !2065
  br label %cleanup, !dbg !2065

if.end18:                                         ; preds = %lor.lhs.false13
  %incdec.ptr = getelementptr %struct.fetch_insn, ptr %1, i32 1, !dbg !2066
  %18 = ptrtoint ptr %incdec.ptr to i32, !dbg !2067
  call void @__asan_load4_noabort(i32 %18), !dbg !2067
  %19 = load i32, ptr %incdec.ptr, align 4, !dbg !2067
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19), !dbg !2068
  %cmp19.not = icmp eq i32 %19, 0, !dbg !2068
  br i1 %cmp19.not, label %if.end22, label %if.then21, !dbg !2069

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2070
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 6), align 16, !dbg !2070
  %20 = add i64 %gcov_ctr46, 1, !dbg !2070
  store i64 %20, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 6), align 16, !dbg !2070
  br label %cleanup, !dbg !2070

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19, !dbg !2071
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 5), align 8, !dbg !2071
  %21 = add i64 %gcov_ctr45, 1, !dbg !2071
  store i64 %21, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.178, i32 0, i32 5), align 8, !dbg !2071
  %22 = ptrtoint ptr %pcode to i32, !dbg !2072
  call void @__asan_store4_noabort(i32 %22), !dbg !2072
  store ptr %incdec.ptr, ptr %pcode, align 4, !dbg !2072
  %23 = ptrtoint ptr %incdec.ptr to i32, !dbg !2073
  call void @__asan_store4_noabort(i32 %23), !dbg !2073
  store i32 17, ptr %incdec.ptr, align 4, !dbg !2073
  %size = getelementptr inbounds %struct.fetch_type, ptr %t, i32 0, i32 1, !dbg !2074
  %24 = ptrtoint ptr %size to i32, !dbg !2074
  call void @__asan_load4_noabort(i32 %24), !dbg !2074
  %25 = load i32, ptr %size, align 4, !dbg !2074
  %26 = shl i32 %25, 3, !dbg !2074
  %add = add i32 %call10, %call, !dbg !2075
  %sub = sub i32 %26, %add, !dbg !2076
  %conv24 = trunc i32 %sub to i8, !dbg !2074
  %27 = getelementptr %struct.fetch_insn, ptr %1, i32 1, i32 1, !dbg !2077
  %lshift = getelementptr inbounds %struct.anon.101, ptr %27, i32 0, i32 1, !dbg !2077
  %28 = ptrtoint ptr %lshift to i32, !dbg !2078
  call void @__asan_store1_noabort(i32 %28), !dbg !2078
  store i8 %conv24, ptr %lshift, align 1, !dbg !2078
  %29 = load i32, ptr %size, align 4, !dbg !2079
  %30 = shl i32 %29, 3, !dbg !2079
  %sub28 = sub i32 %30, %call, !dbg !2080
  %conv29 = trunc i32 %sub28 to i8, !dbg !2079
  %rshift = getelementptr inbounds %struct.anon.101, ptr %27, i32 0, i32 2, !dbg !2081
  %31 = ptrtoint ptr %rshift to i32, !dbg !2082
  call void @__asan_store1_noabort(i32 %31), !dbg !2082
  store i8 %conv29, ptr %rshift, align 2, !dbg !2082
  %32 = load i32, ptr %size, align 4, !dbg !2083
  %conv31 = trunc i32 %32 to i8, !dbg !2084
  %33 = ptrtoint ptr %27 to i32, !dbg !2085
  call void @__asan_store1_noabort(i32 %33), !dbg !2085
  store i8 %conv31, ptr %27, align 4, !dbg !2085
  %34 = load i32, ptr %size, align 4, !dbg !2086
  %35 = shl i32 %34, 3, !dbg !2086
  %div3466 = and i32 %35, 1073741816, !dbg !2086
  call void @__sanitizer_cov_trace_cmp4(i32 %div3466, i32 %add), !dbg !2087
  %cmp36 = icmp ult i32 %div3466, %add, !dbg !2087
  %cond = select i1 %cmp36, i32 -22, i32 0, !dbg !2088
  br label %cleanup, !dbg !2089

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then17, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %if.then7 ], [ -22, %if.then17 ], [ -22, %if.then21 ], [ %cond, %if.end22 ], !dbg !2090
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tail) #20, !dbg !2091
  ret i32 %retval.0, !dbg !2091
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regs_query_register_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #15 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1224543753) #20
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #20
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #20
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 87
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #19
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @llvm_gcda_summary_info() #20
  tail call void @llvm_gcda_end_file() #20
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #16 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.112, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.113, align 8
  store i64 0, ptr @__llvm_gcov_ctr.114, align 8
  store i64 0, ptr @__llvm_gcov_ctr.115, align 8
  store i64 0, ptr @__llvm_gcov_ctr.116, align 8
  store i64 0, ptr @__llvm_gcov_ctr.117, align 8
  store i64 0, ptr @__llvm_gcov_ctr.118, align 8
  store i64 0, ptr @__llvm_gcov_ctr.119, align 8
  store i64 0, ptr @__llvm_gcov_ctr.120, align 8
  store i64 0, ptr @__llvm_gcov_ctr.121, align 8
  store i64 0, ptr @__llvm_gcov_ctr.122, align 8
  store i64 0, ptr @__llvm_gcov_ctr.123, align 8
  store i64 0, ptr @__llvm_gcov_ctr.124, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.125, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.126, align 8
  store i64 0, ptr @__llvm_gcov_ctr.127, align 8
  store i64 0, ptr @__llvm_gcov_ctr.128, align 8
  store i64 0, ptr @__llvm_gcov_ctr.129, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.130, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.131, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.132, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.133, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.134, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.135, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.136, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.137, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(456) @__llvm_gcov_ctr.138, i8 0, i64 456, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.139, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.140, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.141, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.142, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) @__llvm_gcov_ctr.143, i8 0, i64 208, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.144, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.145, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.146, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.147, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.148, align 8
  store i64 0, ptr @__llvm_gcov_ctr.149, align 8
  store i64 0, ptr @__llvm_gcov_ctr.150, align 8
  store i64 0, ptr @__llvm_gcov_ctr.151, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.152, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.153, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.154, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.155, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.156, align 8
  store i64 0, ptr @__llvm_gcov_ctr.157, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.158, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.159, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.160, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.161, align 8
  store i64 0, ptr @__llvm_gcov_ctr.162, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.163, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.164, align 8
  store i64 0, ptr @__llvm_gcov_ctr.165, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.166, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.167, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.168, align 8
  store i64 0, ptr @__llvm_gcov_ctr.169, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.170, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.171, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.172, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.173, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.174, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr.175, i8 0, i64 96, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.176, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @__llvm_gcov_ctr.177, i8 0, i64 256, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.178, i8 0, i64 56, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.179, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.180, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.181, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.182, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.183, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.184, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.185, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.186, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.187, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.188, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.189, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.190, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.191, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.192, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.193, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.194, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.195, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.196, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.197, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #15 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #20
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { noinline nounwind uwtable(sync) }
attributes #16 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #17 = { argmemonly nofree nounwind willreturn writeonly }
attributes #18 = { nounwind uwtable(sync) }
attributes #19 = { nomerge }
attributes #20 = { nounwind }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nounwind allocsize(2) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !7, !9, !11, !12, !14, !15, !17, !19, !21, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.gcov = !{!213}
!llvm.ident = !{!214}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_probe.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_probe.c", i32 41, i32 1}
!4 = !{ptr @print_type_format_u8, !3, !"print_type_format_u8", i1 false, i1 false}
!5 = !{ptr @print_type_format_u16, !6, !"print_type_format_u16", i1 false, i1 false}
!6 = !{!"../kernel/trace/trace_probe.c", i32 42, i32 1}
!7 = !{ptr @print_type_format_u32, !8, !"print_type_format_u32", i1 false, i1 false}
!8 = !{!"../kernel/trace/trace_probe.c", i32 43, i32 1}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../kernel/trace/trace_probe.c", i32 44, i32 1}
!11 = !{ptr @print_type_format_u64, !10, !"print_type_format_u64", i1 false, i1 false}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_probe.c", i32 45, i32 1}
!14 = !{ptr @print_type_format_s8, !13, !"print_type_format_s8", i1 false, i1 false}
!15 = !{ptr @print_type_format_s16, !16, !"print_type_format_s16", i1 false, i1 false}
!16 = !{!"../kernel/trace/trace_probe.c", i32 46, i32 1}
!17 = !{ptr @print_type_format_s32, !18, !"print_type_format_s32", i1 false, i1 false}
!18 = !{!"../kernel/trace/trace_probe.c", i32 47, i32 1}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/trace/trace_probe.c", i32 48, i32 1}
!21 = !{ptr @print_type_format_s64, !20, !"print_type_format_s64", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_probe.c", i32 49, i32 1}
!24 = !{ptr @print_type_format_x8, !23, !"print_type_format_x8", i1 false, i1 false}
!25 = !{ptr @print_type_format_x16, !26, !"print_type_format_x16", i1 false, i1 false}
!26 = !{!"../kernel/trace/trace_probe.c", i32 50, i32 1}
!27 = !{ptr @print_type_format_x32, !28, !"print_type_format_x32", i1 false, i1 false}
!28 = !{!"../kernel/trace/trace_probe.c", i32 51, i32 1}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/trace/trace_probe.c", i32 52, i32 1}
!31 = !{ptr @print_type_format_x64, !30, !"print_type_format_x64", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_probe.c", i32 56, i32 22}
!34 = !{ptr @print_type_format_symbol, !35, !"print_type_format_symbol", i1 false, i1 false}
!35 = !{!"../kernel/trace/trace_probe.c", i32 59, i32 12}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_probe.c", i32 67, i32 21}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/trace/trace_probe.c", i32 69, i32 23}
!40 = !{ptr @print_type_format_string, !41, !"print_type_format_string", i1 false, i1 false}
!41 = !{!"../kernel/trace/trace_probe.c", i32 74, i32 12}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/trace/trace_probe.c", i32 216, i32 24}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/trace/trace_probe.c", i32 792, i32 38}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/trace/trace_probe.c", i32 1088, i32 2}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/trace/trace_probe.c", i32 1186, i32 30}
!50 = !{ptr @trace_probe_log, !51, !"trace_probe_log", i1 false, i1 false}
!51 = !{!"../kernel/trace/trace_probe.c", i32 143, i32 31}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/trace/trace_probe.c", i32 19, i32 47}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.36, !53, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.37, !53, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.38, !53, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.39, !53, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.40, !53, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.41, !53, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.42, !53, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.43, !53, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.44, !53, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.45, !53, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.46, !53, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.47, !53, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.48, !53, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.49, !53, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.50, !53, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.51, !53, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.52, !53, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.53, !53, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.54, !53, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.55, !53, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.56, !53, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.57, !53, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.58, !53, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.59, !53, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.60, !53, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.61, !53, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.62, !53, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.63, !53, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.64, !53, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.65, !53, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.66, !53, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @trace_probe_err_text, !108, !"trace_probe_err_text", i1 false, i1 false}
!108 = !{!"../kernel/trace/trace_probe.c", i32 19, i32 20}
!109 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../kernel/trace/trace_probe.c", i32 22, i32 2}
!111 = !{ptr @.str.68, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../kernel/trace/trace_probe.c", i32 23, i32 2}
!113 = !{ptr @.str.69, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../kernel/trace/trace_probe.c", i32 24, i32 2}
!115 = !{ptr @.str.70, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../kernel/trace/trace_probe.c", i32 25, i32 2}
!117 = !{ptr @.str.71, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../kernel/trace/trace_probe.c", i32 26, i32 2}
!119 = !{ptr @.str.72, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../kernel/trace/trace_probe.c", i32 27, i32 2}
!121 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../kernel/trace/trace_probe.c", i32 28, i32 2}
!123 = !{ptr @.str.74, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../kernel/trace/trace_probe.c", i32 29, i32 2}
!125 = distinct !{null, !126, !"reserved_field_names", i1 false, i1 false}
!126 = !{!"../kernel/trace/trace_probe.c", i32 21, i32 20}
!127 = !{ptr @.str.75, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../kernel/trace/trace_probe.c", i32 618, i32 18}
!129 = !{ptr @.str.76, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../kernel/trace/trace_probe.c", i32 618, i32 48}
!131 = !{ptr @.str.77, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../kernel/trace/trace_probe.c", i32 620, i32 38}
!133 = !{ptr @.str.78, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../kernel/trace/trace_probe.c", i32 638, i32 28}
!135 = !{ptr @.str.79, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../kernel/trace/trace_probe.c", i32 655, i32 32}
!137 = !{ptr @.str.80, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/trace/trace_probe.c", i32 106, i32 10}
!139 = !{ptr @.str.81, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../kernel/trace/trace_probe.c", i32 122, i32 27}
!141 = !{ptr @.str.82, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../kernel/trace/trace_probe.c", i32 124, i32 27}
!143 = !{ptr @.str.83, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../kernel/trace/trace_probe.c", i32 126, i32 27}
!145 = !{ptr @.str.84, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../kernel/trace/trace_probe.c", i32 128, i32 27}
!147 = !{ptr @.str.85, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../kernel/trace/trace_probe.c", i32 79, i32 2}
!149 = !{ptr @.str.86, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../kernel/trace/trace_probe.c", i32 88, i32 2}
!151 = !{ptr @.str.87, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../kernel/trace/trace_probe.c", i32 89, i32 2}
!153 = !{ptr @.str.88, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../kernel/trace/trace_probe.c", i32 90, i32 2}
!155 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../kernel/trace/trace_probe.c", i32 91, i32 2}
!157 = !{ptr @.str.90, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../kernel/trace/trace_probe.c", i32 92, i32 2}
!159 = !{ptr @.str.91, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../kernel/trace/trace_probe.c", i32 93, i32 2}
!161 = !{ptr @.str.92, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../kernel/trace/trace_probe.c", i32 95, i32 2}
!163 = !{ptr @.str.93, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../kernel/trace/trace_probe.c", i32 96, i32 2}
!165 = !{ptr @probe_fetch_types, !166, !"probe_fetch_types", i1 false, i1 false}
!166 = !{!"../kernel/trace/trace_probe.c", i32 77, i32 32}
!167 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../kernel/trace/trace_probe.c", i32 282, i32 18}
!169 = !{ptr @.str.95, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../kernel/trace/trace_probe.c", i32 289, i32 40}
!171 = !{ptr @.str.96, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../kernel/trace/trace_probe.c", i32 306, i32 25}
!173 = !{ptr @.str.97, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../kernel/trace/trace_probe.c", i32 873, i32 9}
!175 = !{ptr @.str.98, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../kernel/trace/trace_probe.c", i32 874, i32 9}
!177 = !{ptr @.str.99, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../kernel/trace/trace_probe.c", i32 877, i32 9}
!179 = !{ptr @.str.100, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../kernel/trace/trace_probe.c", i32 878, i32 9}
!181 = !{ptr @.str.101, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../kernel/trace/trace_probe.c", i32 881, i32 9}
!183 = distinct !{null, !184, !"__already_done", i1 false, i1 false}
!184 = !{!"../kernel/trace/trace_probe.c", i32 885, i32 3}
!185 = !{ptr @.str.102, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../kernel/trace/trace_probe.c", i32 889, i32 42}
!187 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../kernel/trace/trace_probe.c", i32 893, i32 43}
!189 = !{ptr @.str.104, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../kernel/trace/trace_probe.c", i32 895, i32 44}
!191 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../kernel/trace/trace_probe.c", i32 898, i32 45}
!193 = !{ptr @.str.106, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../kernel/trace/trace_probe.c", i32 900, i32 44}
!195 = !{ptr @.str.107, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../kernel/trace/trace_probe.c", i32 902, i32 44}
!197 = !{ptr @.str.108, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../kernel/trace/trace_probe.c", i32 913, i32 11}
!199 = !{ptr @.str.109, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../kernel/trace/trace_probe.c", i32 915, i32 11}
!201 = !{ptr @.str.110, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../kernel/trace/trace_probe.c", i32 922, i32 11}
!203 = !{ptr @.str.111, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../kernel/trace/trace_probe.c", i32 924, i32 11}
!205 = !{i32 2, !"Debug Info Version", i32 3}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_probe.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_probe.gcda", !0}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = distinct !DISubprogram(name: "print_type_u8", scope: !1, file: !1, line: 41, type: !216, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!216 = !DISubroutineType(types: !217)
!217 = !{}
!218 = !DILocation(line: 41, scope: !215)
!219 = !DILocation(line: 41, column: 1, scope: !215)
!220 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !223)
!221 = distinct !DISubprogram(name: "trace_seq_has_overflowed", scope: !222, file: !222, line: 67, type: !216, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!222 = !DIFile(filename: "../include/linux/trace_seq.h", directory: "/llk/linux-5.17/build_arm_allyes")
!223 = distinct !DILocation(line: 41, column: 1, scope: !215)
!224 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !223)
!225 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !223)
!226 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !223)
!227 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !230)
!228 = distinct !DISubprogram(name: "seq_buf_has_overflowed", scope: !229, file: !229, line: 45, type: !216, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!229 = !DIFile(filename: "../include/linux/seq_buf.h", directory: "/llk/linux-5.17/build_arm_allyes")
!230 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !223)
!231 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !230)
!232 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !230)
!233 = distinct !DISubprogram(name: "print_type_u16", scope: !1, file: !1, line: 42, type: !216, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!234 = !DILocation(line: 42, scope: !233)
!235 = !DILocation(line: 42, column: 1, scope: !233)
!236 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !237)
!237 = distinct !DILocation(line: 42, column: 1, scope: !233)
!238 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !237)
!239 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !237)
!240 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !237)
!241 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !242)
!242 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !237)
!243 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !242)
!244 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !242)
!245 = distinct !DISubprogram(name: "print_type_u32", scope: !1, file: !1, line: 43, type: !216, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!246 = !DILocation(line: 43, scope: !245)
!247 = !DILocation(line: 43, column: 1, scope: !245)
!248 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !249)
!249 = distinct !DILocation(line: 43, column: 1, scope: !245)
!250 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !249)
!251 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !249)
!252 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !249)
!253 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !254)
!254 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !249)
!255 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !254)
!256 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !254)
!257 = distinct !DISubprogram(name: "print_type_u64", scope: !1, file: !1, line: 44, type: !216, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!258 = !DILocation(line: 44, scope: !257)
!259 = !DILocation(line: 44, column: 1, scope: !257)
!260 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !261)
!261 = distinct !DILocation(line: 44, column: 1, scope: !257)
!262 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !261)
!263 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !261)
!264 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !261)
!265 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !266)
!266 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !261)
!267 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !266)
!268 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !266)
!269 = distinct !DISubprogram(name: "print_type_s8", scope: !1, file: !1, line: 45, type: !216, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!270 = !DILocation(line: 45, scope: !269)
!271 = !DILocation(line: 45, column: 1, scope: !269)
!272 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !273)
!273 = distinct !DILocation(line: 45, column: 1, scope: !269)
!274 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !273)
!275 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !273)
!276 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !273)
!277 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !278)
!278 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !273)
!279 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !278)
!280 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !278)
!281 = distinct !DISubprogram(name: "print_type_s16", scope: !1, file: !1, line: 46, type: !216, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!282 = !DILocation(line: 46, scope: !281)
!283 = !DILocation(line: 46, column: 1, scope: !281)
!284 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !285)
!285 = distinct !DILocation(line: 46, column: 1, scope: !281)
!286 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !285)
!287 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !285)
!288 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !285)
!289 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !290)
!290 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !285)
!291 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !290)
!292 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !290)
!293 = distinct !DISubprogram(name: "print_type_s32", scope: !1, file: !1, line: 47, type: !216, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!294 = !DILocation(line: 47, scope: !293)
!295 = !DILocation(line: 47, column: 1, scope: !293)
!296 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !297)
!297 = distinct !DILocation(line: 47, column: 1, scope: !293)
!298 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !297)
!299 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !297)
!300 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !297)
!301 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !302)
!302 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !297)
!303 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !302)
!304 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !302)
!305 = distinct !DISubprogram(name: "print_type_s64", scope: !1, file: !1, line: 48, type: !216, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!306 = !DILocation(line: 48, scope: !305)
!307 = !DILocation(line: 48, column: 1, scope: !305)
!308 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !309)
!309 = distinct !DILocation(line: 48, column: 1, scope: !305)
!310 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !309)
!311 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !309)
!312 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !309)
!313 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !314)
!314 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !309)
!315 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !314)
!316 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !314)
!317 = distinct !DISubprogram(name: "print_type_x8", scope: !1, file: !1, line: 49, type: !216, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!318 = !DILocation(line: 49, scope: !317)
!319 = !DILocation(line: 49, column: 1, scope: !317)
!320 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !321)
!321 = distinct !DILocation(line: 49, column: 1, scope: !317)
!322 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !321)
!323 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !321)
!324 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !321)
!325 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !326)
!326 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !321)
!327 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !326)
!328 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !326)
!329 = distinct !DISubprogram(name: "print_type_x16", scope: !1, file: !1, line: 50, type: !216, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!330 = !DILocation(line: 50, scope: !329)
!331 = !DILocation(line: 50, column: 1, scope: !329)
!332 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !333)
!333 = distinct !DILocation(line: 50, column: 1, scope: !329)
!334 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !333)
!335 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !333)
!336 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !333)
!337 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !338)
!338 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !333)
!339 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !338)
!340 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !338)
!341 = distinct !DISubprogram(name: "print_type_x32", scope: !1, file: !1, line: 51, type: !216, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!342 = !DILocation(line: 51, scope: !341)
!343 = !DILocation(line: 51, column: 1, scope: !341)
!344 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !345)
!345 = distinct !DILocation(line: 51, column: 1, scope: !341)
!346 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !345)
!347 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !345)
!348 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !345)
!349 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !350)
!350 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !345)
!351 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !350)
!352 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !350)
!353 = distinct !DISubprogram(name: "print_type_x64", scope: !1, file: !1, line: 52, type: !216, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!354 = !DILocation(line: 52, scope: !353)
!355 = !DILocation(line: 52, column: 1, scope: !353)
!356 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !357)
!357 = distinct !DILocation(line: 52, column: 1, scope: !353)
!358 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !357)
!359 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !357)
!360 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !357)
!361 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !362)
!362 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !357)
!363 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !362)
!364 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !362)
!365 = distinct !DISubprogram(name: "print_type_symbol", scope: !1, file: !1, line: 54, type: !216, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!366 = !DILocation(line: 55, scope: !365)
!367 = !DILocation(line: 56, column: 37, scope: !365)
!368 = !DILocation(line: 56, column: 29, scope: !365)
!369 = !DILocation(line: 56, column: 2, scope: !365)
!370 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !371)
!371 = distinct !DILocation(line: 57, column: 10, scope: !365)
!372 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !371)
!373 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !371)
!374 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !371)
!375 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !376)
!376 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !371)
!377 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !376)
!378 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !376)
!379 = !DILocation(line: 57, column: 2, scope: !365)
!380 = distinct !DISubprogram(name: "print_type_string", scope: !1, file: !1, line: 62, type: !216, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!381 = !DILocation(line: 63, scope: !380)
!382 = !DILocation(line: 64, column: 12, scope: !380)
!383 = !DILocation(line: 66, column: 7, scope: !380)
!384 = !DILocation(line: 66, column: 6, scope: !380)
!385 = !DILocation(line: 67, column: 18, scope: !380)
!386 = !DILocation(line: 67, column: 3, scope: !380)
!387 = !DILocation(line: 69, column: 20, scope: !380)
!388 = !DILocation(line: 66, column: 21, scope: !389, inlinedAt: !391)
!389 = distinct !DISubprogram(name: "get_loc_data", scope: !390, file: !390, line: 64, type: !216, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!390 = !DIFile(filename: "../kernel/trace/trace_probe.h", directory: "/llk/linux-5.17/build_arm_allyes")
!391 = distinct !DILocation(line: 70, column: 20, scope: !380)
!392 = !DILocation(line: 66, column: 19, scope: !389, inlinedAt: !391)
!393 = !DILocation(line: 69, column: 3, scope: !380)
!394 = !DILocation(line: 69, column: 12, scope: !221, inlinedAt: !395)
!395 = distinct !DILocation(line: 71, column: 10, scope: !380)
!396 = !DILocation(line: 69, column: 9, scope: !221, inlinedAt: !395)
!397 = !DILocation(line: 69, column: 17, scope: !221, inlinedAt: !395)
!398 = !DILocation(line: 69, column: 44, scope: !221, inlinedAt: !395)
!399 = !DILocation(line: 47, column: 12, scope: !228, inlinedAt: !400)
!400 = distinct !DILocation(line: 69, column: 20, scope: !221, inlinedAt: !395)
!401 = !DILocation(line: 47, column: 21, scope: !228, inlinedAt: !400)
!402 = !DILocation(line: 47, column: 16, scope: !228, inlinedAt: !400)
!403 = !DILocation(line: 71, column: 2, scope: !380)
!404 = distinct !DISubprogram(name: "trace_probe_log_init", scope: !1, file: !1, line: 145, type: !216, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!405 = !DILocation(line: 146, scope: !404)
!406 = !DILocation(line: 147, column: 28, scope: !404)
!407 = !DILocation(line: 148, column: 23, scope: !404)
!408 = !DILocation(line: 149, column: 23, scope: !404)
!409 = !DILocation(line: 150, column: 24, scope: !404)
!410 = !DILocation(line: 151, column: 1, scope: !404)
!411 = distinct !DISubprogram(name: "trace_probe_log_clear", scope: !1, file: !1, line: 153, type: !216, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!412 = !DILocation(line: 154, scope: !411)
!413 = !DILocation(line: 155, column: 2, scope: !411)
!414 = !DILocation(line: 156, column: 1, scope: !411)
!415 = distinct !DISubprogram(name: "trace_probe_log_set_index", scope: !1, file: !1, line: 158, type: !216, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!416 = !DILocation(line: 159, scope: !415)
!417 = !DILocation(line: 160, column: 24, scope: !415)
!418 = !DILocation(line: 161, column: 1, scope: !415)
!419 = distinct !DISubprogram(name: "__trace_probe_log_err", scope: !1, file: !1, line: 163, type: !216, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!420 = !DILocation(line: 164, scope: !419)
!421 = !DILocation(line: 168, column: 23, scope: !419)
!422 = !DILocation(line: 168, column: 7, scope: !419)
!423 = !DILocation(line: 168, column: 6, scope: !419)
!424 = !DILocation(line: 172, column: 16, scope: !419)
!425 = !DILocation(line: 172, column: 2, scope: !419)
!426 = !DILocation(line: 0, scope: !419)
!427 = !DILocation(line: 169, column: 3, scope: !419)
!428 = !DILocation(line: 173, column: 9, scope: !419)
!429 = !DILocation(line: 173, column: 7, scope: !419)
!430 = !DILocation(line: 174, column: 10, scope: !419)
!431 = !DILocation(line: 174, column: 4, scope: !419)
!432 = !DILocation(line: 175, column: 17, scope: !419)
!433 = !DILocation(line: 175, column: 10, scope: !419)
!434 = !DILocation(line: 175, column: 42, scope: !419)
!435 = !DILocation(line: 175, column: 7, scope: !419)
!436 = !DILocation(line: 172, column: 41, scope: !419)
!437 = distinct !{!437, !425, !438}
!438 = !DILocation(line: 176, column: 2, scope: !419)
!439 = !DILocation(line: 586, column: 19, scope: !440, inlinedAt: !442)
!440 = distinct !DISubprogram(name: "kmalloc", scope: !441, file: !441, line: 567, type: !216, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!441 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!442 = distinct !DILocation(line: 714, column: 9, scope: !443, inlinedAt: !444)
!443 = distinct !DISubprogram(name: "kzalloc", scope: !441, file: !441, line: 712, type: !216, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!444 = distinct !DILocation(line: 177, column: 12, scope: !419)
!445 = !DILocation(line: 586, column: 9, scope: !440, inlinedAt: !442)
!446 = !DILocation(line: 178, column: 7, scope: !419)
!447 = !DILocation(line: 178, column: 6, scope: !419)
!448 = !DILocation(line: 179, column: 3, scope: !419)
!449 = !DILocation(line: 181, column: 22, scope: !419)
!450 = !DILocation(line: 181, column: 47, scope: !419)
!451 = !DILocation(line: 181, column: 28, scope: !419)
!452 = !DILocation(line: 181, column: 6, scope: !419)
!453 = !DILocation(line: 187, column: 9, scope: !419)
!454 = !DILocation(line: 193, column: 34, scope: !419)
!455 = !DILocation(line: 189, column: 2, scope: !419)
!456 = !DILocation(line: 193, column: 16, scope: !419)
!457 = !DILocation(line: 193, column: 2, scope: !419)
!458 = !DILocation(line: 194, column: 16, scope: !419)
!459 = !DILocation(line: 194, column: 9, scope: !419)
!460 = !DILocation(line: 195, column: 3, scope: !419)
!461 = !DILocation(line: 196, column: 3, scope: !419)
!462 = !DILocation(line: 196, column: 10, scope: !419)
!463 = !DILocation(line: 197, column: 12, scope: !419)
!464 = !DILocation(line: 197, column: 5, scope: !419)
!465 = !DILocation(line: 193, column: 41, scope: !419)
!466 = distinct !{!466, !457, !467}
!467 = !DILocation(line: 198, column: 2, scope: !419)
!468 = !DILocation(line: 199, column: 6, scope: !419)
!469 = !DILocation(line: 199, column: 11, scope: !419)
!470 = !DILocation(line: 201, column: 40, scope: !419)
!471 = !DILocation(line: 202, column: 26, scope: !419)
!472 = !DILocation(line: 202, column: 40, scope: !419)
!473 = !DILocation(line: 202, column: 36, scope: !419)
!474 = !DILocation(line: 201, column: 2, scope: !419)
!475 = !DILocation(line: 204, column: 2, scope: !419)
!476 = !DILocation(line: 205, column: 1, scope: !419)
!477 = distinct !DISubprogram(name: "traceprobe_split_symbol_offset", scope: !1, file: !1, line: 208, type: !216, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!478 = !DILocation(line: 209, scope: !477)
!479 = !DILocation(line: 213, column: 7, scope: !477)
!480 = !DILocation(line: 213, column: 6, scope: !477)
!481 = !DILocation(line: 214, column: 3, scope: !477)
!482 = !DILocation(line: 216, column: 8, scope: !477)
!483 = !DILocation(line: 217, column: 6, scope: !477)
!484 = !DILocation(line: 68, column: 10, scope: !485, inlinedAt: !487)
!485 = distinct !DISubprogram(name: "kstrtol", scope: !486, file: !486, line: 58, type: !216, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!486 = !DIFile(filename: "../include/linux/kstrtox.h", directory: "/llk/linux-5.17/build_arm_allyes")
!487 = distinct !DILocation(line: 218, column: 9, scope: !477)
!488 = !DILocation(line: 219, column: 7, scope: !477)
!489 = !DILocation(line: 220, column: 11, scope: !477)
!490 = !DILocation(line: 220, column: 4, scope: !477)
!491 = !DILocation(line: 221, column: 4, scope: !477)
!492 = !DILocation(line: 221, column: 8, scope: !477)
!493 = !DILocation(line: 222, column: 2, scope: !477)
!494 = !DILocation(line: 223, column: 4, scope: !477)
!495 = !DILocation(line: 223, column: 11, scope: !477)
!496 = !DILocation(line: 0, scope: !477)
!497 = !DILocation(line: 226, column: 1, scope: !477)
!498 = distinct !DISubprogram(name: "traceprobe_parse_event_name", scope: !1, file: !1, line: 229, type: !216, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!499 = !DILocation(line: 231, scope: !498)
!500 = !DILocation(line: 232, column: 30, scope: !498)
!501 = !DILocation(line: 235, column: 10, scope: !498)
!502 = !DILocation(line: 236, column: 7, scope: !498)
!503 = !DILocation(line: 236, column: 6, scope: !498)
!504 = !DILocation(line: 237, column: 18, scope: !498)
!505 = !DILocation(line: 237, column: 11, scope: !498)
!506 = !DILocation(line: 239, column: 6, scope: !498)
!507 = !DILocation(line: 240, column: 13, scope: !498)
!508 = !DILocation(line: 240, column: 7, scope: !498)
!509 = !DILocation(line: 241, column: 4, scope: !498)
!510 = !DILocation(line: 242, column: 4, scope: !498)
!511 = !DILocation(line: 244, column: 13, scope: !498)
!512 = !DILocation(line: 244, column: 21, scope: !498)
!513 = !DILocation(line: 244, column: 25, scope: !498)
!514 = !DILocation(line: 244, column: 7, scope: !498)
!515 = !DILocation(line: 245, column: 4, scope: !498)
!516 = !DILocation(line: 246, column: 4, scope: !498)
!517 = !DILocation(line: 248, column: 3, scope: !498)
!518 = !DILocation(line: 1977, column: 7, scope: !519, inlinedAt: !521)
!519 = distinct !DISubprogram(name: "is_good_name", scope: !520, file: !520, line: 1975, type: !216, scopeLine: 1976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!520 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!521 = distinct !DILocation(line: 249, column: 8, scope: !498)
!522 = !DILocation(line: 1977, column: 22, scope: !519, inlinedAt: !521)
!523 = !DILocation(line: 1977, column: 26, scope: !519, inlinedAt: !521)
!524 = !DILocation(line: 1977, column: 25, scope: !519, inlinedAt: !521)
!525 = !DILocation(line: 1977, column: 31, scope: !519, inlinedAt: !521)
!526 = !DILocation(line: 1977, column: 6, scope: !519, inlinedAt: !521)
!527 = !DILocation(line: 1978, column: 3, scope: !519, inlinedAt: !521)
!528 = !DILocation(line: 1979, column: 10, scope: !519, inlinedAt: !521)
!529 = !DILocation(line: 1979, column: 9, scope: !519, inlinedAt: !521)
!530 = !DILocation(line: 1979, column: 17, scope: !519, inlinedAt: !521)
!531 = !DILocation(line: 1979, column: 2, scope: !519, inlinedAt: !521)
!532 = !DILocation(line: 1980, column: 8, scope: !519, inlinedAt: !521)
!533 = !DILocation(line: 1980, column: 23, scope: !519, inlinedAt: !521)
!534 = !DILocation(line: 1980, column: 36, scope: !519, inlinedAt: !521)
!535 = !DILocation(line: 1980, column: 35, scope: !519, inlinedAt: !521)
!536 = !DILocation(line: 45, column: 13, scope: !537, inlinedAt: !539)
!537 = distinct !DISubprogram(name: "isdigit", scope: !538, file: !538, line: 43, type: !216, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!538 = !DIFile(filename: "../include/linux/ctype.h", directory: "/llk/linux-5.17/build_arm_allyes")
!539 = distinct !DILocation(line: 1980, column: 27, scope: !519, inlinedAt: !521)
!540 = !DILocation(line: 45, column: 18, scope: !537, inlinedAt: !539)
!541 = !DILocation(line: 45, column: 21, scope: !537, inlinedAt: !539)
!542 = !DILocation(line: 45, column: 23, scope: !537, inlinedAt: !539)
!543 = !DILocation(line: 1980, column: 42, scope: !519, inlinedAt: !521)
!544 = !DILocation(line: 1980, column: 46, scope: !519, inlinedAt: !521)
!545 = !DILocation(line: 1980, column: 45, scope: !519, inlinedAt: !521)
!546 = !DILocation(line: 1980, column: 51, scope: !519, inlinedAt: !521)
!547 = !DILocation(line: 1980, column: 7, scope: !519, inlinedAt: !521)
!548 = !DILocation(line: 1981, column: 4, scope: !519, inlinedAt: !521)
!549 = distinct !{!549, !531, !550}
!550 = !DILocation(line: 1982, column: 2, scope: !519, inlinedAt: !521)
!551 = !DILocation(line: 250, column: 4, scope: !498)
!552 = !DILocation(line: 251, column: 4, scope: !498)
!553 = !DILocation(line: 1983, column: 2, scope: !519, inlinedAt: !521)
!554 = !DILocation(line: 253, column: 13, scope: !498)
!555 = !DILocation(line: 253, column: 11, scope: !498)
!556 = !DILocation(line: 254, column: 19, scope: !498)
!557 = !DILocation(line: 254, column: 11, scope: !498)
!558 = !DILocation(line: 255, column: 10, scope: !498)
!559 = !DILocation(line: 257, column: 2, scope: !498)
!560 = !DILocation(line: 0, scope: !498)
!561 = !DILocation(line: 258, column: 8, scope: !498)
!562 = !DILocation(line: 259, column: 10, scope: !498)
!563 = !DILocation(line: 259, column: 6, scope: !498)
!564 = !DILocation(line: 260, column: 3, scope: !498)
!565 = !DILocation(line: 261, column: 3, scope: !498)
!566 = !DILocation(line: 262, column: 17, scope: !498)
!567 = !DILocation(line: 262, column: 13, scope: !498)
!568 = !DILocation(line: 263, column: 3, scope: !498)
!569 = !DILocation(line: 264, column: 3, scope: !498)
!570 = !DILocation(line: 1977, column: 7, scope: !519, inlinedAt: !571)
!571 = distinct !DILocation(line: 266, column: 7, scope: !498)
!572 = !DILocation(line: 1977, column: 22, scope: !519, inlinedAt: !571)
!573 = !DILocation(line: 1977, column: 26, scope: !519, inlinedAt: !571)
!574 = !DILocation(line: 1977, column: 25, scope: !519, inlinedAt: !571)
!575 = !DILocation(line: 1977, column: 31, scope: !519, inlinedAt: !571)
!576 = !DILocation(line: 1977, column: 6, scope: !519, inlinedAt: !571)
!577 = !DILocation(line: 1978, column: 3, scope: !519, inlinedAt: !571)
!578 = !DILocation(line: 1979, column: 10, scope: !519, inlinedAt: !571)
!579 = !DILocation(line: 1979, column: 9, scope: !519, inlinedAt: !571)
!580 = !DILocation(line: 1979, column: 17, scope: !519, inlinedAt: !571)
!581 = !DILocation(line: 1979, column: 2, scope: !519, inlinedAt: !571)
!582 = !DILocation(line: 1980, column: 8, scope: !519, inlinedAt: !571)
!583 = !DILocation(line: 1980, column: 23, scope: !519, inlinedAt: !571)
!584 = !DILocation(line: 1980, column: 36, scope: !519, inlinedAt: !571)
!585 = !DILocation(line: 1980, column: 35, scope: !519, inlinedAt: !571)
!586 = !DILocation(line: 45, column: 13, scope: !537, inlinedAt: !587)
!587 = distinct !DILocation(line: 1980, column: 27, scope: !519, inlinedAt: !571)
!588 = !DILocation(line: 45, column: 18, scope: !537, inlinedAt: !587)
!589 = !DILocation(line: 45, column: 21, scope: !537, inlinedAt: !587)
!590 = !DILocation(line: 45, column: 23, scope: !537, inlinedAt: !587)
!591 = !DILocation(line: 1980, column: 42, scope: !519, inlinedAt: !571)
!592 = !DILocation(line: 1980, column: 46, scope: !519, inlinedAt: !571)
!593 = !DILocation(line: 1980, column: 45, scope: !519, inlinedAt: !571)
!594 = !DILocation(line: 1980, column: 51, scope: !519, inlinedAt: !571)
!595 = !DILocation(line: 1980, column: 7, scope: !519, inlinedAt: !571)
!596 = !DILocation(line: 1981, column: 4, scope: !519, inlinedAt: !571)
!597 = distinct !{!597, !581, !598}
!598 = !DILocation(line: 1982, column: 2, scope: !519, inlinedAt: !571)
!599 = !DILocation(line: 267, column: 3, scope: !498)
!600 = !DILocation(line: 268, column: 3, scope: !498)
!601 = !DILocation(line: 1983, column: 2, scope: !519, inlinedAt: !571)
!602 = !DILocation(line: 270, column: 2, scope: !498)
!603 = !DILocation(line: 271, column: 1, scope: !498)
!604 = distinct !DISubprogram(name: "traceprobe_parse_probe_arg", scope: !1, file: !1, line: 770, type: !216, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!605 = !DILocation(line: 772, scope: !604)
!606 = !DILocation(line: 773, column: 32, scope: !604)
!607 = !DILocation(line: 773, column: 28, scope: !604)
!608 = !DILocation(line: 777, column: 6, scope: !604)
!609 = !DILocation(line: 777, column: 13, scope: !604)
!610 = !DILocation(line: 779, column: 9, scope: !604)
!611 = !DILocation(line: 780, column: 6, scope: !604)
!612 = !DILocation(line: 781, column: 12, scope: !604)
!613 = !DILocation(line: 781, column: 18, scope: !604)
!614 = !DILocation(line: 781, column: 7, scope: !604)
!615 = !DILocation(line: 782, column: 4, scope: !604)
!616 = !DILocation(line: 783, column: 4, scope: !604)
!617 = !DILocation(line: 784, column: 19, scope: !604)
!618 = !DILocation(line: 784, column: 14, scope: !604)
!619 = !DILocation(line: 785, column: 4, scope: !604)
!620 = !DILocation(line: 786, column: 4, scope: !604)
!621 = !DILocation(line: 788, column: 28, scope: !604)
!622 = !DILocation(line: 788, column: 16, scope: !604)
!623 = !DILocation(line: 788, column: 9, scope: !604)
!624 = !DILocation(line: 788, column: 14, scope: !604)
!625 = !DILocation(line: 789, column: 7, scope: !604)
!626 = !DILocation(line: 790, column: 2, scope: !604)
!627 = !DILocation(line: 792, column: 49, scope: !604)
!628 = !DILocation(line: 792, column: 16, scope: !604)
!629 = !DILocation(line: 792, column: 9, scope: !604)
!630 = !DILocation(line: 792, column: 14, scope: !604)
!631 = !DILocation(line: 0, scope: !604)
!632 = !DILocation(line: 795, column: 13, scope: !604)
!633 = !DILocation(line: 795, column: 7, scope: !604)
!634 = !DILocation(line: 795, column: 6, scope: !604)
!635 = !DILocation(line: 796, column: 3, scope: !604)
!636 = !DILocation(line: 1977, column: 7, scope: !519, inlinedAt: !637)
!637 = distinct !DILocation(line: 798, column: 7, scope: !604)
!638 = !DILocation(line: 1977, column: 22, scope: !519, inlinedAt: !637)
!639 = !DILocation(line: 1977, column: 26, scope: !519, inlinedAt: !637)
!640 = !DILocation(line: 1977, column: 25, scope: !519, inlinedAt: !637)
!641 = !DILocation(line: 1977, column: 31, scope: !519, inlinedAt: !637)
!642 = !DILocation(line: 1977, column: 6, scope: !519, inlinedAt: !637)
!643 = !DILocation(line: 1978, column: 3, scope: !519, inlinedAt: !637)
!644 = !DILocation(line: 1979, column: 10, scope: !519, inlinedAt: !637)
!645 = !DILocation(line: 1979, column: 9, scope: !519, inlinedAt: !637)
!646 = !DILocation(line: 1979, column: 17, scope: !519, inlinedAt: !637)
!647 = !DILocation(line: 1979, column: 2, scope: !519, inlinedAt: !637)
!648 = !DILocation(line: 1980, column: 8, scope: !519, inlinedAt: !637)
!649 = !DILocation(line: 1980, column: 23, scope: !519, inlinedAt: !637)
!650 = !DILocation(line: 1980, column: 36, scope: !519, inlinedAt: !637)
!651 = !DILocation(line: 1980, column: 35, scope: !519, inlinedAt: !637)
!652 = !DILocation(line: 45, column: 13, scope: !537, inlinedAt: !653)
!653 = distinct !DILocation(line: 1980, column: 27, scope: !519, inlinedAt: !637)
!654 = !DILocation(line: 45, column: 18, scope: !537, inlinedAt: !653)
!655 = !DILocation(line: 45, column: 21, scope: !537, inlinedAt: !653)
!656 = !DILocation(line: 45, column: 23, scope: !537, inlinedAt: !653)
!657 = !DILocation(line: 1980, column: 42, scope: !519, inlinedAt: !637)
!658 = !DILocation(line: 1980, column: 46, scope: !519, inlinedAt: !637)
!659 = !DILocation(line: 1980, column: 45, scope: !519, inlinedAt: !637)
!660 = !DILocation(line: 1980, column: 51, scope: !519, inlinedAt: !637)
!661 = !DILocation(line: 1980, column: 7, scope: !519, inlinedAt: !637)
!662 = !DILocation(line: 1981, column: 4, scope: !519, inlinedAt: !637)
!663 = distinct !{!663, !647, !664}
!664 = !DILocation(line: 1982, column: 2, scope: !519, inlinedAt: !637)
!665 = !DILocation(line: 799, column: 3, scope: !604)
!666 = !DILocation(line: 800, column: 3, scope: !604)
!667 = !DILocation(line: 1983, column: 2, scope: !519, inlinedAt: !637)
!668 = !DILocation(line: 802, column: 43, scope: !604)
!669 = !DILocation(line: 760, column: 7, scope: !670, inlinedAt: !671)
!670 = distinct !DISubprogram(name: "traceprobe_conflict_field_name", scope: !1, file: !1, line: 754, type: !216, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!671 = distinct !DILocation(line: 802, column: 6, scope: !604)
!672 = !DILocation(line: 760, column: 45, scope: !670, inlinedAt: !671)
!673 = !DILocation(line: 761, column: 4, scope: !670, inlinedAt: !671)
!674 = !DILocation(line: 760, column: 48, scope: !670, inlinedAt: !671)
!675 = !DILocation(line: 763, column: 16, scope: !670, inlinedAt: !671)
!676 = !DILocation(line: 763, column: 2, scope: !670, inlinedAt: !671)
!677 = !DILocation(line: 764, column: 22, scope: !670, inlinedAt: !671)
!678 = !DILocation(line: 764, column: 7, scope: !670, inlinedAt: !671)
!679 = !DILocation(line: 764, column: 34, scope: !670, inlinedAt: !671)
!680 = !DILocation(line: 765, column: 4, scope: !670, inlinedAt: !671)
!681 = !DILocation(line: 763, column: 25, scope: !670, inlinedAt: !671)
!682 = distinct !{!682, !676, !683}
!683 = !DILocation(line: 765, column: 11, scope: !670, inlinedAt: !671)
!684 = !DILocation(line: 803, column: 3, scope: !604)
!685 = !DILocation(line: 804, column: 3, scope: !604)
!686 = !DILocation(line: 767, column: 2, scope: !670, inlinedAt: !671)
!687 = !DILocation(line: 807, column: 41, scope: !604)
!688 = !DILocation(line: 807, column: 52, scope: !604)
!689 = !DILocation(line: 808, column: 18, scope: !604)
!690 = !DILocation(line: 558, column: 2, scope: !691, inlinedAt: !692)
!691 = distinct !DISubprogram(name: "traceprobe_parse_probe_arg_body", scope: !1, file: !1, line: 555, type: !216, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!692 = distinct !DILocation(line: 807, column: 9, scope: !604)
!693 = !DILocation(line: 558, column: 21, scope: !691, inlinedAt: !692)
!694 = !{!"auto-init"}
!695 = !DILocation(line: 563, column: 8, scope: !691, inlinedAt: !692)
!696 = !DILocation(line: 564, column: 7, scope: !691, inlinedAt: !692)
!697 = !DILocation(line: 564, column: 6, scope: !691, inlinedAt: !692)
!698 = !DILocation(line: 565, column: 3, scope: !691, inlinedAt: !692)
!699 = !DILocation(line: 568, column: 8, scope: !691, inlinedAt: !692)
!700 = !DILocation(line: 569, column: 10, scope: !691, inlinedAt: !692)
!701 = !DILocation(line: 569, column: 6, scope: !691, inlinedAt: !692)
!702 = !DILocation(line: 570, column: 3, scope: !691, inlinedAt: !692)
!703 = !DILocation(line: 571, column: 3, scope: !691, inlinedAt: !692)
!704 = !DILocation(line: 572, column: 17, scope: !691, inlinedAt: !692)
!705 = !DILocation(line: 572, column: 13, scope: !691, inlinedAt: !692)
!706 = !DILocation(line: 573, column: 3, scope: !691, inlinedAt: !692)
!707 = !DILocation(line: 574, column: 3, scope: !691, inlinedAt: !692)
!708 = !DILocation(line: 578, column: 15, scope: !691, inlinedAt: !692)
!709 = !DILocation(line: 578, column: 8, scope: !691, inlinedAt: !692)
!710 = !DILocation(line: 578, column: 13, scope: !691, inlinedAt: !692)
!711 = !DILocation(line: 579, column: 7, scope: !691, inlinedAt: !692)
!712 = !DILocation(line: 579, column: 6, scope: !691, inlinedAt: !692)
!713 = !DILocation(line: 580, column: 3, scope: !691, inlinedAt: !692)
!714 = !DILocation(line: 583, column: 6, scope: !691, inlinedAt: !692)
!715 = !DILocation(line: 584, column: 6, scope: !691, inlinedAt: !692)
!716 = !DILocation(line: 585, column: 6, scope: !691, inlinedAt: !692)
!717 = !DILocation(line: 586, column: 15, scope: !691, inlinedAt: !692)
!718 = !DILocation(line: 586, column: 8, scope: !691, inlinedAt: !692)
!719 = !DILocation(line: 587, column: 7, scope: !691, inlinedAt: !692)
!720 = !DILocation(line: 588, column: 7, scope: !691, inlinedAt: !692)
!721 = !DILocation(line: 588, column: 10, scope: !691, inlinedAt: !692)
!722 = !DILocation(line: 589, column: 9, scope: !691, inlinedAt: !692)
!723 = !DILocation(line: 590, column: 9, scope: !691, inlinedAt: !692)
!724 = !DILocation(line: 590, column: 8, scope: !691, inlinedAt: !692)
!725 = !DILocation(line: 591, column: 15, scope: !691, inlinedAt: !692)
!726 = !DILocation(line: 591, column: 20, scope: !691, inlinedAt: !692)
!727 = !DILocation(line: 591, column: 18, scope: !691, inlinedAt: !692)
!728 = !DILocation(line: 591, column: 31, scope: !691, inlinedAt: !692)
!729 = !DILocation(line: 591, column: 12, scope: !691, inlinedAt: !692)
!730 = !DILocation(line: 592, column: 5, scope: !691, inlinedAt: !692)
!731 = !DILocation(line: 594, column: 5, scope: !691, inlinedAt: !692)
!732 = !DILocation(line: 595, column: 15, scope: !691, inlinedAt: !692)
!733 = !DILocation(line: 595, column: 21, scope: !691, inlinedAt: !692)
!734 = !DILocation(line: 596, column: 5, scope: !691, inlinedAt: !692)
!735 = !DILocation(line: 598, column: 5, scope: !691, inlinedAt: !692)
!736 = !DILocation(line: 600, column: 8, scope: !691, inlinedAt: !692)
!737 = !DILocation(line: 601, column: 33, scope: !691, inlinedAt: !692)
!738 = !DILocation(line: 601, column: 8, scope: !691, inlinedAt: !692)
!739 = !DILocation(line: 601, column: 40, scope: !691, inlinedAt: !692)
!740 = !DILocation(line: 601, column: 44, scope: !691, inlinedAt: !692)
!741 = !DILocation(line: 601, column: 50, scope: !691, inlinedAt: !692)
!742 = !DILocation(line: 602, column: 5, scope: !691, inlinedAt: !692)
!743 = !DILocation(line: 604, column: 5, scope: !691, inlinedAt: !692)
!744 = !DILocation(line: 606, column: 20, scope: !691, inlinedAt: !692)
!745 = !DILocation(line: 606, column: 8, scope: !691, inlinedAt: !692)
!746 = !DILocation(line: 607, column: 5, scope: !691, inlinedAt: !692)
!747 = !DILocation(line: 609, column: 5, scope: !691, inlinedAt: !692)
!748 = !DILocation(line: 611, column: 3, scope: !691, inlinedAt: !692)
!749 = !DILocation(line: 612, column: 2, scope: !691, inlinedAt: !692)
!750 = !DILocation(line: 0, scope: !691, inlinedAt: !692)
!751 = !DILocation(line: 618, column: 6, scope: !691, inlinedAt: !692)
!752 = !DILocation(line: 618, column: 27, scope: !691, inlinedAt: !692)
!753 = !DILocation(line: 618, column: 32, scope: !691, inlinedAt: !692)
!754 = !DILocation(line: 618, column: 43, scope: !691, inlinedAt: !692)
!755 = !DILocation(line: 618, column: 35, scope: !691, inlinedAt: !692)
!756 = !DILocation(line: 618, column: 59, scope: !691, inlinedAt: !692)
!757 = !DILocation(line: 620, column: 13, scope: !691, inlinedAt: !692)
!758 = !DILocation(line: 620, column: 7, scope: !691, inlinedAt: !692)
!759 = !DILocation(line: 620, column: 19, scope: !691, inlinedAt: !692)
!760 = !DILocation(line: 620, column: 23, scope: !691, inlinedAt: !692)
!761 = !DILocation(line: 620, column: 25, scope: !691, inlinedAt: !692)
!762 = !DILocation(line: 620, column: 35, scope: !691, inlinedAt: !692)
!763 = !DILocation(line: 620, column: 28, scope: !691, inlinedAt: !692)
!764 = !DILocation(line: 621, column: 4, scope: !691, inlinedAt: !692)
!765 = !DILocation(line: 622, column: 16, scope: !691, inlinedAt: !692)
!766 = !DILocation(line: 623, column: 2, scope: !691, inlinedAt: !692)
!767 = !DILocation(line: 624, column: 16, scope: !691, inlinedAt: !692)
!768 = !DILocation(line: 625, column: 7, scope: !691, inlinedAt: !692)
!769 = !DILocation(line: 625, column: 6, scope: !691, inlinedAt: !692)
!770 = !DILocation(line: 626, column: 3, scope: !691, inlinedAt: !692)
!771 = !DILocation(line: 627, column: 3, scope: !691, inlinedAt: !692)
!772 = !DILocation(line: 629, column: 17, scope: !691, inlinedAt: !692)
!773 = !DILocation(line: 629, column: 8, scope: !691, inlinedAt: !692)
!774 = !DILocation(line: 629, column: 15, scope: !691, inlinedAt: !692)
!775 = !DILocation(line: 630, column: 23, scope: !691, inlinedAt: !692)
!776 = !DILocation(line: 630, column: 37, scope: !691, inlinedAt: !692)
!777 = !DILocation(line: 630, column: 31, scope: !691, inlinedAt: !692)
!778 = !DILocation(line: 630, column: 28, scope: !691, inlinedAt: !692)
!779 = !DILocation(line: 630, column: 8, scope: !691, inlinedAt: !692)
!780 = !DILocation(line: 633, column: 6, scope: !691, inlinedAt: !692)
!781 = !DILocation(line: 633, column: 12, scope: !691, inlinedAt: !692)
!782 = !DILocation(line: 634, column: 22, scope: !691, inlinedAt: !692)
!783 = !DILocation(line: 634, column: 28, scope: !691, inlinedAt: !692)
!784 = !DILocation(line: 634, column: 9, scope: !691, inlinedAt: !692)
!785 = !DILocation(line: 634, column: 37, scope: !691, inlinedAt: !692)
!786 = !DILocation(line: 586, column: 19, scope: !440, inlinedAt: !787)
!787 = distinct !DILocation(line: 635, column: 15, scope: !691, inlinedAt: !692)
!788 = !DILocation(line: 586, column: 9, scope: !440, inlinedAt: !787)
!789 = !DILocation(line: 635, column: 9, scope: !691, inlinedAt: !692)
!790 = !DILocation(line: 635, column: 13, scope: !691, inlinedAt: !692)
!791 = !DILocation(line: 636, column: 8, scope: !691, inlinedAt: !692)
!792 = !DILocation(line: 636, column: 7, scope: !691, inlinedAt: !692)
!793 = !DILocation(line: 637, column: 4, scope: !691, inlinedAt: !692)
!794 = !DILocation(line: 638, column: 12, scope: !691, inlinedAt: !692)
!795 = !DILocation(line: 638, column: 18, scope: !691, inlinedAt: !692)
!796 = !DILocation(line: 638, column: 44, scope: !691, inlinedAt: !692)
!797 = !DILocation(line: 638, column: 50, scope: !691, inlinedAt: !692)
!798 = !DILocation(line: 639, column: 11, scope: !691, inlinedAt: !692)
!799 = !DILocation(line: 638, column: 3, scope: !691, inlinedAt: !692)
!800 = !DILocation(line: 640, column: 2, scope: !691, inlinedAt: !692)
!801 = !DILocation(line: 642, column: 15, scope: !691, inlinedAt: !692)
!802 = !DILocation(line: 642, column: 7, scope: !691, inlinedAt: !692)
!803 = !DILocation(line: 643, column: 7, scope: !691, inlinedAt: !692)
!804 = !DILocation(line: 643, column: 6, scope: !691, inlinedAt: !692)
!805 = !DILocation(line: 644, column: 3, scope: !691, inlinedAt: !692)
!806 = !DILocation(line: 645, column: 2, scope: !691, inlinedAt: !692)
!807 = !DILocation(line: 645, column: 30, scope: !691, inlinedAt: !692)
!808 = !DILocation(line: 647, column: 8, scope: !691, inlinedAt: !692)
!809 = !DILocation(line: 649, column: 6, scope: !691, inlinedAt: !692)
!810 = !DILocation(line: 650, column: 3, scope: !691, inlinedAt: !692)
!811 = !DILocation(line: 654, column: 20, scope: !691, inlinedAt: !692)
!812 = !DILocation(line: 654, column: 26, scope: !691, inlinedAt: !692)
!813 = !DILocation(line: 654, column: 7, scope: !691, inlinedAt: !692)
!814 = !DILocation(line: 654, column: 42, scope: !691, inlinedAt: !692)
!815 = !DILocation(line: 655, column: 14, scope: !691, inlinedAt: !692)
!816 = !DILocation(line: 655, column: 20, scope: !691, inlinedAt: !692)
!817 = !DILocation(line: 655, column: 26, scope: !691, inlinedAt: !692)
!818 = !DILocation(line: 655, column: 7, scope: !691, inlinedAt: !692)
!819 = !DILocation(line: 654, column: 6, scope: !691, inlinedAt: !692)
!820 = !DILocation(line: 656, column: 7, scope: !691, inlinedAt: !692)
!821 = !DILocation(line: 656, column: 13, scope: !691, inlinedAt: !692)
!822 = !DILocation(line: 656, column: 16, scope: !691, inlinedAt: !692)
!823 = !DILocation(line: 656, column: 34, scope: !691, inlinedAt: !692)
!824 = !DILocation(line: 656, column: 37, scope: !691, inlinedAt: !692)
!825 = !DILocation(line: 656, column: 43, scope: !691, inlinedAt: !692)
!826 = !DILocation(line: 656, column: 46, scope: !691, inlinedAt: !692)
!827 = !DILocation(line: 656, column: 65, scope: !691, inlinedAt: !692)
!828 = !DILocation(line: 657, column: 7, scope: !691, inlinedAt: !692)
!829 = !DILocation(line: 657, column: 13, scope: !691, inlinedAt: !692)
!830 = !DILocation(line: 657, column: 16, scope: !691, inlinedAt: !692)
!831 = !DILocation(line: 657, column: 32, scope: !691, inlinedAt: !692)
!832 = !DILocation(line: 657, column: 35, scope: !691, inlinedAt: !692)
!833 = !DILocation(line: 657, column: 41, scope: !691, inlinedAt: !692)
!834 = !DILocation(line: 657, column: 44, scope: !691, inlinedAt: !692)
!835 = !DILocation(line: 657, column: 61, scope: !691, inlinedAt: !692)
!836 = !DILocation(line: 658, column: 7, scope: !691, inlinedAt: !692)
!837 = !DILocation(line: 658, column: 13, scope: !691, inlinedAt: !692)
!838 = !DILocation(line: 658, column: 16, scope: !691, inlinedAt: !692)
!839 = !DILocation(line: 658, column: 33, scope: !691, inlinedAt: !692)
!840 = !DILocation(line: 658, column: 36, scope: !691, inlinedAt: !692)
!841 = !DILocation(line: 658, column: 42, scope: !691, inlinedAt: !692)
!842 = !DILocation(line: 658, column: 45, scope: !691, inlinedAt: !692)
!843 = !DILocation(line: 659, column: 4, scope: !691, inlinedAt: !692)
!844 = !DILocation(line: 661, column: 4, scope: !691, inlinedAt: !692)
!845 = !DILocation(line: 663, column: 36, scope: !691, inlinedAt: !692)
!846 = !DILocation(line: 663, column: 42, scope: !691, inlinedAt: !692)
!847 = !DILocation(line: 663, column: 45, scope: !691, inlinedAt: !692)
!848 = !DILocation(line: 663, column: 62, scope: !691, inlinedAt: !692)
!849 = !DILocation(line: 664, column: 8, scope: !691, inlinedAt: !692)
!850 = !DILocation(line: 664, column: 14, scope: !691, inlinedAt: !692)
!851 = !DILocation(line: 664, column: 17, scope: !691, inlinedAt: !692)
!852 = !DILocation(line: 664, column: 35, scope: !691, inlinedAt: !692)
!853 = !DILocation(line: 664, column: 38, scope: !691, inlinedAt: !692)
!854 = !DILocation(line: 664, column: 44, scope: !691, inlinedAt: !692)
!855 = !DILocation(line: 664, column: 47, scope: !691, inlinedAt: !692)
!856 = !DILocation(line: 664, column: 66, scope: !691, inlinedAt: !692)
!857 = !DILocation(line: 665, column: 8, scope: !691, inlinedAt: !692)
!858 = !DILocation(line: 665, column: 14, scope: !691, inlinedAt: !692)
!859 = !DILocation(line: 663, column: 7, scope: !691, inlinedAt: !692)
!860 = !DILocation(line: 672, column: 8, scope: !691, inlinedAt: !692)
!861 = !DILocation(line: 673, column: 14, scope: !691, inlinedAt: !692)
!862 = !DILocation(line: 673, column: 17, scope: !691, inlinedAt: !692)
!863 = !DILocation(line: 673, column: 8, scope: !691, inlinedAt: !692)
!864 = !DILocation(line: 674, column: 5, scope: !691, inlinedAt: !692)
!865 = !DILocation(line: 675, column: 5, scope: !691, inlinedAt: !692)
!866 = !DILocation(line: 677, column: 3, scope: !691, inlinedAt: !692)
!867 = !DILocation(line: 679, column: 21, scope: !691, inlinedAt: !692)
!868 = !DILocation(line: 679, column: 27, scope: !691, inlinedAt: !692)
!869 = !DILocation(line: 679, column: 8, scope: !691, inlinedAt: !692)
!870 = !DILocation(line: 679, column: 44, scope: !691, inlinedAt: !692)
!871 = !DILocation(line: 680, column: 7, scope: !691, inlinedAt: !692)
!872 = !DILocation(line: 680, column: 13, scope: !691, inlinedAt: !692)
!873 = !DILocation(line: 680, column: 16, scope: !691, inlinedAt: !692)
!874 = !DILocation(line: 679, column: 7, scope: !691, inlinedAt: !692)
!875 = !DILocation(line: 681, column: 4, scope: !691, inlinedAt: !692)
!876 = !DILocation(line: 681, column: 13, scope: !691, inlinedAt: !692)
!877 = !DILocation(line: 683, column: 4, scope: !691, inlinedAt: !692)
!878 = !DILocation(line: 683, column: 13, scope: !691, inlinedAt: !692)
!879 = !DILocation(line: 684, column: 22, scope: !691, inlinedAt: !692)
!880 = !DILocation(line: 684, column: 28, scope: !691, inlinedAt: !692)
!881 = !DILocation(line: 684, column: 3, scope: !691, inlinedAt: !692)
!882 = !DILocation(line: 684, column: 9, scope: !691, inlinedAt: !692)
!883 = !DILocation(line: 684, column: 14, scope: !691, inlinedAt: !692)
!884 = !DILocation(line: 685, column: 9, scope: !691, inlinedAt: !692)
!885 = !DILocation(line: 685, column: 17, scope: !691, inlinedAt: !692)
!886 = !DILocation(line: 686, column: 2, scope: !691, inlinedAt: !692)
!887 = !DILocation(line: 686, column: 13, scope: !691, inlinedAt: !692)
!888 = !DILocation(line: 686, column: 19, scope: !691, inlinedAt: !692)
!889 = !DILocation(line: 687, column: 3, scope: !691, inlinedAt: !692)
!890 = !DILocation(line: 687, column: 12, scope: !691, inlinedAt: !692)
!891 = !DILocation(line: 688, column: 22, scope: !691, inlinedAt: !692)
!892 = !DILocation(line: 688, column: 28, scope: !691, inlinedAt: !692)
!893 = !DILocation(line: 688, column: 3, scope: !691, inlinedAt: !692)
!894 = !DILocation(line: 688, column: 9, scope: !691, inlinedAt: !692)
!895 = !DILocation(line: 688, column: 14, scope: !691, inlinedAt: !692)
!896 = !DILocation(line: 689, column: 2, scope: !691, inlinedAt: !692)
!897 = !DILocation(line: 690, column: 3, scope: !691, inlinedAt: !692)
!898 = !DILocation(line: 690, column: 12, scope: !691, inlinedAt: !692)
!899 = !DILocation(line: 691, column: 22, scope: !691, inlinedAt: !692)
!900 = !DILocation(line: 691, column: 28, scope: !691, inlinedAt: !692)
!901 = !DILocation(line: 691, column: 3, scope: !691, inlinedAt: !692)
!902 = !DILocation(line: 691, column: 9, scope: !691, inlinedAt: !692)
!903 = !DILocation(line: 691, column: 14, scope: !691, inlinedAt: !692)
!904 = !DILocation(line: 692, column: 2, scope: !691, inlinedAt: !692)
!905 = !DILocation(line: 693, column: 7, scope: !691, inlinedAt: !692)
!906 = !DILocation(line: 694, column: 13, scope: !691, inlinedAt: !692)
!907 = !DILocation(line: 694, column: 16, scope: !691, inlinedAt: !692)
!908 = !DILocation(line: 694, column: 7, scope: !691, inlinedAt: !692)
!909 = !DILocation(line: 695, column: 4, scope: !691, inlinedAt: !692)
!910 = !DILocation(line: 696, column: 4, scope: !691, inlinedAt: !692)
!911 = !DILocation(line: 698, column: 3, scope: !691, inlinedAt: !692)
!912 = !DILocation(line: 698, column: 12, scope: !691, inlinedAt: !692)
!913 = !DILocation(line: 699, column: 22, scope: !691, inlinedAt: !692)
!914 = !DILocation(line: 699, column: 28, scope: !691, inlinedAt: !692)
!915 = !DILocation(line: 699, column: 3, scope: !691, inlinedAt: !692)
!916 = !DILocation(line: 699, column: 9, scope: !691, inlinedAt: !692)
!917 = !DILocation(line: 699, column: 14, scope: !691, inlinedAt: !692)
!918 = !DILocation(line: 701, column: 10, scope: !691, inlinedAt: !692)
!919 = !DILocation(line: 703, column: 8, scope: !691, inlinedAt: !692)
!920 = !DILocation(line: 703, column: 6, scope: !691, inlinedAt: !692)
!921 = !DILocation(line: 704, column: 45, scope: !691, inlinedAt: !692)
!922 = !DILocation(line: 704, column: 9, scope: !691, inlinedAt: !692)
!923 = !DILocation(line: 705, column: 7, scope: !691, inlinedAt: !692)
!924 = !DILocation(line: 706, column: 4, scope: !691, inlinedAt: !692)
!925 = !DILocation(line: 707, column: 4, scope: !691, inlinedAt: !692)
!926 = !DILocation(line: 709, column: 2, scope: !691, inlinedAt: !692)
!927 = !DILocation(line: 712, column: 12, scope: !691, inlinedAt: !692)
!928 = !DILocation(line: 712, column: 6, scope: !691, inlinedAt: !692)
!929 = !DILocation(line: 713, column: 14, scope: !691, inlinedAt: !692)
!930 = !DILocation(line: 713, column: 17, scope: !691, inlinedAt: !692)
!931 = !DILocation(line: 713, column: 36, scope: !691, inlinedAt: !692)
!932 = !DILocation(line: 714, column: 7, scope: !691, inlinedAt: !692)
!933 = !DILocation(line: 714, column: 14, scope: !691, inlinedAt: !692)
!934 = !DILocation(line: 714, column: 17, scope: !691, inlinedAt: !692)
!935 = !DILocation(line: 714, column: 39, scope: !691, inlinedAt: !692)
!936 = !DILocation(line: 715, column: 7, scope: !691, inlinedAt: !692)
!937 = !DILocation(line: 715, column: 14, scope: !691, inlinedAt: !692)
!938 = !DILocation(line: 715, column: 17, scope: !691, inlinedAt: !692)
!939 = !DILocation(line: 713, column: 7, scope: !691, inlinedAt: !692)
!940 = !DILocation(line: 716, column: 4, scope: !691, inlinedAt: !692)
!941 = !DILocation(line: 718, column: 4, scope: !691, inlinedAt: !692)
!942 = !DILocation(line: 720, column: 7, scope: !691, inlinedAt: !692)
!943 = !DILocation(line: 721, column: 13, scope: !691, inlinedAt: !692)
!944 = !DILocation(line: 721, column: 16, scope: !691, inlinedAt: !692)
!945 = !DILocation(line: 721, column: 7, scope: !691, inlinedAt: !692)
!946 = !DILocation(line: 722, column: 4, scope: !691, inlinedAt: !692)
!947 = !DILocation(line: 723, column: 4, scope: !691, inlinedAt: !692)
!948 = !DILocation(line: 725, column: 3, scope: !691, inlinedAt: !692)
!949 = !DILocation(line: 725, column: 12, scope: !691, inlinedAt: !692)
!950 = !DILocation(line: 726, column: 23, scope: !691, inlinedAt: !692)
!951 = !DILocation(line: 726, column: 3, scope: !691, inlinedAt: !692)
!952 = !DILocation(line: 726, column: 9, scope: !691, inlinedAt: !692)
!953 = !DILocation(line: 726, column: 15, scope: !691, inlinedAt: !692)
!954 = !DILocation(line: 727, column: 2, scope: !691, inlinedAt: !692)
!955 = !DILocation(line: 728, column: 6, scope: !691, inlinedAt: !692)
!956 = !DILocation(line: 729, column: 11, scope: !691, inlinedAt: !692)
!957 = !DILocation(line: 733, column: 23, scope: !691, inlinedAt: !692)
!958 = !DILocation(line: 733, column: 28, scope: !691, inlinedAt: !692)
!959 = !DILocation(line: 733, column: 34, scope: !691, inlinedAt: !692)
!960 = !DILocation(line: 733, column: 15, scope: !691, inlinedAt: !692)
!961 = !DILocation(line: 733, column: 13, scope: !691, inlinedAt: !692)
!962 = !DILocation(line: 734, column: 7, scope: !691, inlinedAt: !692)
!963 = !DILocation(line: 734, column: 6, scope: !691, inlinedAt: !692)
!964 = !DILocation(line: 735, column: 7, scope: !691, inlinedAt: !692)
!965 = !DILocation(line: 735, column: 3, scope: !691, inlinedAt: !692)
!966 = !DILocation(line: 737, column: 10, scope: !691, inlinedAt: !692)
!967 = !DILocation(line: 737, column: 16, scope: !691, inlinedAt: !692)
!968 = !DILocation(line: 737, column: 44, scope: !691, inlinedAt: !692)
!969 = !DILocation(line: 737, column: 49, scope: !691, inlinedAt: !692)
!970 = !DILocation(line: 737, column: 41, scope: !691, inlinedAt: !692)
!971 = !DILocation(line: 737, column: 3, scope: !691, inlinedAt: !692)
!972 = !DILocation(line: 740, column: 6, scope: !691, inlinedAt: !692)
!973 = !DILocation(line: 741, column: 15, scope: !691, inlinedAt: !692)
!974 = !DILocation(line: 741, column: 25, scope: !691, inlinedAt: !692)
!975 = !DILocation(line: 741, column: 3, scope: !691, inlinedAt: !692)
!976 = !DILocation(line: 742, column: 8, scope: !691, inlinedAt: !692)
!977 = !DILocation(line: 742, column: 14, scope: !691, inlinedAt: !692)
!978 = !DILocation(line: 742, column: 17, scope: !691, inlinedAt: !692)
!979 = !DILocation(line: 742, column: 37, scope: !691, inlinedAt: !692)
!980 = !DILocation(line: 743, column: 8, scope: !691, inlinedAt: !692)
!981 = !DILocation(line: 743, column: 14, scope: !691, inlinedAt: !692)
!982 = !DILocation(line: 743, column: 17, scope: !691, inlinedAt: !692)
!983 = !DILocation(line: 744, column: 11, scope: !691, inlinedAt: !692)
!984 = !DILocation(line: 744, column: 17, scope: !691, inlinedAt: !692)
!985 = !DILocation(line: 744, column: 5, scope: !691, inlinedAt: !692)
!986 = !DILocation(line: 741, column: 53, scope: !691, inlinedAt: !692)
!987 = distinct !{!987, !975, !988}
!988 = !DILocation(line: 744, column: 21, scope: !691, inlinedAt: !692)
!989 = !DILocation(line: 746, column: 2, scope: !691, inlinedAt: !692)
!990 = !DILocation(line: 748, column: 2, scope: !691, inlinedAt: !692)
!991 = !DILocation(line: 750, column: 2, scope: !691, inlinedAt: !692)
!992 = !DILocation(line: 751, column: 1, scope: !691, inlinedAt: !692)
!993 = !DILocation(line: 807, column: 2, scope: !604)
!994 = !DILocation(line: 809, column: 1, scope: !604)
!995 = distinct !DISubprogram(name: "traceprobe_free_probe_arg", scope: !1, file: !1, line: 811, type: !216, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!996 = !DILocation(line: 812, scope: !995)
!997 = !DILocation(line: 813, column: 33, scope: !995)
!998 = !DILocation(line: 815, column: 9, scope: !995)
!999 = !DILocation(line: 815, column: 14, scope: !995)
!1000 = !DILocation(line: 815, column: 17, scope: !995)
!1001 = !DILocation(line: 815, column: 23, scope: !995)
!1002 = !DILocation(line: 815, column: 2, scope: !995)
!1003 = !DILocation(line: 817, column: 7, scope: !995)
!1004 = !DILocation(line: 817, column: 13, scope: !995)
!1005 = !DILocation(line: 817, column: 16, scope: !995)
!1006 = !DILocation(line: 816, column: 7, scope: !995)
!1007 = !DILocation(line: 818, column: 10, scope: !995)
!1008 = !DILocation(line: 818, column: 16, scope: !995)
!1009 = !DILocation(line: 818, column: 4, scope: !995)
!1010 = !DILocation(line: 819, column: 7, scope: !995)
!1011 = distinct !{!1011, !1002, !1012}
!1012 = !DILocation(line: 820, column: 2, scope: !995)
!1013 = !DILocation(line: 821, column: 13, scope: !995)
!1014 = !DILocation(line: 821, column: 2, scope: !995)
!1015 = !DILocation(line: 822, column: 13, scope: !995)
!1016 = !DILocation(line: 822, column: 2, scope: !995)
!1017 = !DILocation(line: 823, column: 13, scope: !995)
!1018 = !DILocation(line: 823, column: 2, scope: !995)
!1019 = !DILocation(line: 824, column: 13, scope: !995)
!1020 = !DILocation(line: 824, column: 2, scope: !995)
!1021 = !DILocation(line: 825, column: 1, scope: !995)
!1022 = distinct !DISubprogram(name: "traceprobe_update_arg", scope: !1, file: !1, line: 827, type: !216, scopeLine: 828, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1023 = !DILocation(line: 828, scope: !1022)
!1024 = !DILocation(line: 829, column: 33, scope: !1022)
!1025 = !DILocation(line: 830, column: 2, scope: !1022)
!1026 = !DILocation(line: 830, column: 7, scope: !1022)
!1027 = !DILocation(line: 835, column: 9, scope: !1022)
!1028 = !DILocation(line: 835, column: 14, scope: !1022)
!1029 = !DILocation(line: 835, column: 17, scope: !1022)
!1030 = !DILocation(line: 835, column: 23, scope: !1022)
!1031 = !DILocation(line: 835, column: 2, scope: !1022)
!1032 = !DILocation(line: 837, column: 8, scope: !1022)
!1033 = !DILocation(line: 837, column: 16, scope: !1022)
!1034 = !DILocation(line: 837, column: 19, scope: !1022)
!1035 = !DILocation(line: 838, column: 5, scope: !1022)
!1036 = !DILocation(line: 840, column: 24, scope: !1022)
!1037 = !DILocation(line: 840, column: 10, scope: !1022)
!1038 = !DILocation(line: 841, column: 8, scope: !1022)
!1039 = !DILocation(line: 842, column: 10, scope: !1022)
!1040 = !DILocation(line: 842, column: 9, scope: !1022)
!1041 = !DILocation(line: 842, column: 5, scope: !1022)
!1042 = !DILocation(line: 0, scope: !1022)
!1043 = !DILocation(line: 843, column: 47, scope: !1022)
!1044 = !DILocation(line: 216, column: 8, scope: !477, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 843, column: 10, scope: !1022)
!1046 = !DILocation(line: 217, column: 6, scope: !477, inlinedAt: !1045)
!1047 = !DILocation(line: 68, column: 10, scope: !485, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 218, column: 9, scope: !477, inlinedAt: !1045)
!1049 = !DILocation(line: 219, column: 7, scope: !477, inlinedAt: !1045)
!1050 = !DILocation(line: 221, column: 4, scope: !477, inlinedAt: !1045)
!1051 = !DILocation(line: 221, column: 8, scope: !477, inlinedAt: !1045)
!1052 = !DILocation(line: 222, column: 2, scope: !477, inlinedAt: !1045)
!1053 = !DILocation(line: 223, column: 4, scope: !477, inlinedAt: !1045)
!1054 = !DILocation(line: 223, column: 11, scope: !477, inlinedAt: !1045)
!1055 = !DILocation(line: 220, column: 11, scope: !477, inlinedAt: !1045)
!1056 = !DILocation(line: 846, column: 12, scope: !1022)
!1057 = !DILocation(line: 846, column: 5, scope: !1022)
!1058 = !DILocation(line: 849, column: 47, scope: !1022)
!1059 = !DILocation(line: 849, column: 20, scope: !1022)
!1060 = !DILocation(line: 848, column: 12, scope: !1022)
!1061 = !DILocation(line: 848, column: 22, scope: !1022)
!1062 = !DILocation(line: 850, column: 8, scope: !1022)
!1063 = !DILocation(line: 851, column: 12, scope: !1022)
!1064 = !DILocation(line: 851, column: 10, scope: !1022)
!1065 = !DILocation(line: 852, column: 17, scope: !1022)
!1066 = !DILocation(line: 851, column: 5, scope: !1022)
!1067 = !DILocation(line: 852, column: 9, scope: !1022)
!1068 = !DILocation(line: 852, column: 8, scope: !1022)
!1069 = !DILocation(line: 853, column: 5, scope: !1022)
!1070 = !DILocation(line: 854, column: 25, scope: !1022)
!1071 = !DILocation(line: 854, column: 22, scope: !1022)
!1072 = !DILocation(line: 855, column: 3, scope: !1022)
!1073 = !DILocation(line: 856, column: 7, scope: !1022)
!1074 = distinct !{!1074, !1031, !1075}
!1075 = !DILocation(line: 857, column: 2, scope: !1022)
!1076 = !DILocation(line: 858, column: 2, scope: !1022)
!1077 = !DILocation(line: 859, column: 1, scope: !1022)
!1078 = distinct !DISubprogram(name: "traceprobe_set_print_fmt", scope: !1, file: !1, line: 935, type: !216, scopeLine: 936, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1079 = !DILocation(line: 936, scope: !1078)
!1080 = !DILocation(line: 291, column: 14, scope: !1081, inlinedAt: !1082)
!1081 = distinct !DISubprogram(name: "trace_probe_event_call", scope: !390, file: !390, line: 289, type: !216, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1082 = distinct !DILocation(line: 937, column: 34, scope: !1078)
!1083 = !DILocation(line: 942, column: 8, scope: !1078)
!1084 = !DILocation(line: 943, column: 26, scope: !1078)
!1085 = !DILocation(line: 586, column: 19, scope: !440, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 943, column: 14, scope: !1078)
!1087 = !DILocation(line: 586, column: 9, scope: !440, inlinedAt: !1086)
!1088 = !DILocation(line: 944, column: 7, scope: !1078)
!1089 = !DILocation(line: 944, column: 6, scope: !1078)
!1090 = !DILocation(line: 945, column: 3, scope: !1078)
!1091 = !DILocation(line: 948, column: 18, scope: !1078)
!1092 = !DILocation(line: 948, column: 2, scope: !1078)
!1093 = !DILocation(line: 949, column: 8, scope: !1078)
!1094 = !DILocation(line: 949, column: 18, scope: !1078)
!1095 = !DILocation(line: 951, column: 2, scope: !1078)
!1096 = !DILocation(line: 0, scope: !1078)
!1097 = !DILocation(line: 952, column: 1, scope: !1078)
!1098 = distinct !DISubprogram(name: "__set_print_fmt", scope: !1, file: !1, line: 863, type: !216, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1099 = !DILocation(line: 865, scope: !1098)
!1100 = !DILocation(line: 871, column: 2, scope: !1098)
!1101 = !DILocation(line: 873, column: 7, scope: !1098)
!1102 = !DILocation(line: 875, column: 3, scope: !1098)
!1103 = !DILocation(line: 877, column: 7, scope: !1098)
!1104 = !DILocation(line: 879, column: 3, scope: !1098)
!1105 = !DILocation(line: 881, column: 7, scope: !1098)
!1106 = !DILocation(line: 883, column: 3, scope: !1098)
!1107 = !DILocation(line: 885, column: 3, scope: !1098)
!1108 = !{!"branch_weights", i32 2000, i32 1}
!1109 = !DILocation(line: 886, column: 3, scope: !1098)
!1110 = !DILocation(line: 0, scope: !1098)
!1111 = !DILocation(line: 889, column: 29, scope: !1098)
!1112 = !DILocation(line: 889, column: 9, scope: !1098)
!1113 = !DILocation(line: 891, column: 22, scope: !1098)
!1114 = !DILocation(line: 891, column: 16, scope: !1098)
!1115 = !DILocation(line: 891, column: 2, scope: !1098)
!1116 = !DILocation(line: 893, column: 23, scope: !1098)
!1117 = !DILocation(line: 893, column: 30, scope: !1098)
!1118 = !DILocation(line: 893, column: 57, scope: !1098)
!1119 = !DILocation(line: 893, column: 10, scope: !1098)
!1120 = !DILocation(line: 893, column: 7, scope: !1098)
!1121 = !DILocation(line: 894, column: 13, scope: !1098)
!1122 = !DILocation(line: 894, column: 7, scope: !1098)
!1123 = !DILocation(line: 895, column: 31, scope: !1098)
!1124 = !DILocation(line: 896, column: 12, scope: !1098)
!1125 = !DILocation(line: 896, column: 18, scope: !1098)
!1126 = !DILocation(line: 895, column: 11, scope: !1098)
!1127 = !DILocation(line: 895, column: 8, scope: !1098)
!1128 = !DILocation(line: 897, column: 26, scope: !1098)
!1129 = !DILocation(line: 897, column: 18, scope: !1098)
!1130 = !DILocation(line: 897, column: 4, scope: !1098)
!1131 = !DILocation(line: 898, column: 25, scope: !1098)
!1132 = !DILocation(line: 898, column: 32, scope: !1098)
!1133 = !DILocation(line: 899, column: 13, scope: !1098)
!1134 = !DILocation(line: 899, column: 19, scope: !1098)
!1135 = !DILocation(line: 898, column: 12, scope: !1098)
!1136 = !DILocation(line: 898, column: 9, scope: !1098)
!1137 = !DILocation(line: 897, column: 34, scope: !1098)
!1138 = distinct !{!1138, !1130, !1139}
!1139 = !DILocation(line: 899, column: 22, scope: !1098)
!1140 = !DILocation(line: 900, column: 24, scope: !1098)
!1141 = !DILocation(line: 900, column: 31, scope: !1098)
!1142 = !DILocation(line: 900, column: 11, scope: !1098)
!1143 = !DILocation(line: 900, column: 8, scope: !1098)
!1144 = !DILocation(line: 901, column: 3, scope: !1098)
!1145 = !DILocation(line: 902, column: 31, scope: !1098)
!1146 = !DILocation(line: 903, column: 12, scope: !1098)
!1147 = !DILocation(line: 903, column: 18, scope: !1098)
!1148 = !DILocation(line: 902, column: 11, scope: !1098)
!1149 = !DILocation(line: 902, column: 8, scope: !1098)
!1150 = !DILocation(line: 891, column: 32, scope: !1098)
!1151 = distinct !{!1151, !1115, !1152}
!1152 = !DILocation(line: 904, column: 2, scope: !1098)
!1153 = !DILocation(line: 906, column: 22, scope: !1098)
!1154 = !DILocation(line: 906, column: 29, scope: !1098)
!1155 = !DILocation(line: 906, column: 9, scope: !1098)
!1156 = !DILocation(line: 906, column: 6, scope: !1098)
!1157 = !DILocation(line: 908, column: 22, scope: !1098)
!1158 = !DILocation(line: 908, column: 16, scope: !1098)
!1159 = !DILocation(line: 908, column: 2, scope: !1098)
!1160 = !DILocation(line: 910, column: 13, scope: !1098)
!1161 = !DILocation(line: 910, column: 7, scope: !1098)
!1162 = !DILocation(line: 911, column: 50, scope: !1098)
!1163 = !DILocation(line: 912, column: 16, scope: !1098)
!1164 = !DILocation(line: 912, column: 22, scope: !1098)
!1165 = !DILocation(line: 912, column: 28, scope: !1098)
!1166 = !DILocation(line: 912, column: 9, scope: !1098)
!1167 = !DILocation(line: 912, column: 45, scope: !1098)
!1168 = !DILocation(line: 911, column: 8, scope: !1098)
!1169 = !DILocation(line: 913, column: 9, scope: !1098)
!1170 = !DILocation(line: 913, column: 5, scope: !1098)
!1171 = !DILocation(line: 915, column: 9, scope: !1098)
!1172 = !DILocation(line: 916, column: 26, scope: !1098)
!1173 = !DILocation(line: 916, column: 18, scope: !1098)
!1174 = !DILocation(line: 916, column: 4, scope: !1098)
!1175 = !DILocation(line: 917, column: 25, scope: !1098)
!1176 = !DILocation(line: 917, column: 32, scope: !1098)
!1177 = !DILocation(line: 918, column: 18, scope: !1098)
!1178 = !DILocation(line: 917, column: 12, scope: !1098)
!1179 = !DILocation(line: 917, column: 9, scope: !1098)
!1180 = !DILocation(line: 916, column: 34, scope: !1098)
!1181 = distinct !{!1181, !1174, !1182}
!1182 = !DILocation(line: 918, column: 25, scope: !1098)
!1183 = !DILocation(line: 920, column: 50, scope: !1098)
!1184 = !DILocation(line: 921, column: 16, scope: !1098)
!1185 = !DILocation(line: 921, column: 22, scope: !1098)
!1186 = !DILocation(line: 921, column: 28, scope: !1098)
!1187 = !DILocation(line: 921, column: 9, scope: !1098)
!1188 = !DILocation(line: 921, column: 45, scope: !1098)
!1189 = !DILocation(line: 920, column: 8, scope: !1098)
!1190 = !DILocation(line: 922, column: 9, scope: !1098)
!1191 = !DILocation(line: 922, column: 5, scope: !1098)
!1192 = !DILocation(line: 924, column: 9, scope: !1098)
!1193 = !DILocation(line: 925, column: 24, scope: !1098)
!1194 = !DILocation(line: 925, column: 31, scope: !1098)
!1195 = !DILocation(line: 926, column: 17, scope: !1098)
!1196 = !DILocation(line: 925, column: 11, scope: !1098)
!1197 = !DILocation(line: 925, column: 8, scope: !1098)
!1198 = !DILocation(line: 908, column: 32, scope: !1098)
!1199 = distinct !{!1199, !1159, !1200}
!1200 = !DILocation(line: 928, column: 2, scope: !1098)
!1201 = !DILocation(line: 932, column: 1, scope: !1098)
!1202 = distinct !DISubprogram(name: "traceprobe_define_arg_fields", scope: !1, file: !1, line: 954, type: !216, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1203 = !DILocation(line: 956, scope: !1202)
!1204 = !DILocation(line: 960, column: 22, scope: !1202)
!1205 = !DILocation(line: 960, column: 16, scope: !1202)
!1206 = !DILocation(line: 960, column: 2, scope: !1202)
!1207 = !DILocation(line: 962, column: 27, scope: !1202)
!1208 = !DILocation(line: 962, column: 33, scope: !1202)
!1209 = !DILocation(line: 963, column: 26, scope: !1202)
!1210 = !DILocation(line: 965, column: 13, scope: !1202)
!1211 = !DILocation(line: 965, column: 7, scope: !1202)
!1212 = !DILocation(line: 966, column: 10, scope: !1202)
!1213 = !DILocation(line: 966, column: 4, scope: !1202)
!1214 = !DILocation(line: 0, scope: !1202)
!1215 = !DILocation(line: 967, column: 13, scope: !1202)
!1216 = !DILocation(line: 967, column: 7, scope: !1202)
!1217 = !DILocation(line: 968, column: 12, scope: !1202)
!1218 = !DILocation(line: 968, column: 18, scope: !1202)
!1219 = !DILocation(line: 968, column: 9, scope: !1202)
!1220 = !DILocation(line: 968, column: 4, scope: !1202)
!1221 = !DILocation(line: 969, column: 51, scope: !1202)
!1222 = !DILocation(line: 970, column: 22, scope: !1202)
!1223 = !DILocation(line: 970, column: 14, scope: !1202)
!1224 = !DILocation(line: 971, column: 13, scope: !1202)
!1225 = !DILocation(line: 971, column: 19, scope: !1202)
!1226 = !DILocation(line: 969, column: 9, scope: !1202)
!1227 = !DILocation(line: 973, column: 7, scope: !1202)
!1228 = !DILocation(line: 975, column: 2, scope: !1202)
!1229 = !DILocation(line: 960, column: 32, scope: !1202)
!1230 = distinct !{!1230, !1206, !1228}
!1231 = !DILocation(line: 977, column: 1, scope: !1202)
!1232 = distinct !DISubprogram(name: "trace_probe_append", scope: !1, file: !1, line: 987, type: !216, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1233 = !DILocation(line: 988, scope: !1232)
!1234 = !DILocation(line: 310, column: 14, scope: !1235, inlinedAt: !1236)
!1235 = distinct !DISubprogram(name: "trace_probe_probe_list", scope: !390, file: !390, line: 308, type: !216, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1236 = distinct !DILocation(line: 315, column: 27, scope: !1237, inlinedAt: !1238)
!1237 = distinct !DISubprogram(name: "trace_probe_has_sibling", scope: !390, file: !390, line: 313, type: !216, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1238 = distinct !DILocation(line: 989, column: 6, scope: !1232)
!1239 = !DILocation(line: 310, column: 21, scope: !1235, inlinedAt: !1236)
!1240 = !DILocation(line: 292, column: 9, scope: !1241, inlinedAt: !1243)
!1241 = distinct !DISubprogram(name: "list_empty", scope: !1242, file: !1242, line: 290, type: !216, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1242 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1243 = distinct !DILocation(line: 317, column: 10, scope: !1237, inlinedAt: !1238)
!1244 = !DILocation(line: 292, column: 31, scope: !1241, inlinedAt: !1243)
!1245 = !DILocation(line: 317, column: 27, scope: !1237, inlinedAt: !1238)
!1246 = !DILocation(line: 317, column: 48, scope: !1237, inlinedAt: !1238)
!1247 = !DILocation(line: 292, column: 9, scope: !1241, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 370, column: 10, scope: !1249, inlinedAt: !1250)
!1249 = distinct !DISubprogram(name: "list_is_singular", scope: !1242, file: !1242, line: 368, type: !216, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1250 = distinct !DILocation(line: 317, column: 31, scope: !1237, inlinedAt: !1238)
!1251 = !DILocation(line: 292, column: 31, scope: !1241, inlinedAt: !1248)
!1252 = !DILocation(line: 370, column: 27, scope: !1249, inlinedAt: !1250)
!1253 = !DILocation(line: 370, column: 31, scope: !1249, inlinedAt: !1250)
!1254 = !DILocation(line: 370, column: 51, scope: !1249, inlinedAt: !1250)
!1255 = !DILocation(line: 370, column: 42, scope: !1249, inlinedAt: !1250)
!1256 = !DILocation(line: 989, column: 6, scope: !1232)
!1257 = !DILocation(line: 992, column: 17, scope: !1232)
!1258 = !DILocation(line: 134, column: 7, scope: !1259, inlinedAt: !1260)
!1259 = distinct !DISubprogram(name: "__list_del_entry", scope: !1242, file: !1242, line: 132, type: !216, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1260 = distinct !DILocation(line: 206, column: 2, scope: !1261, inlinedAt: !1262)
!1261 = distinct !DISubprogram(name: "list_del_init", scope: !1242, file: !1242, line: 204, type: !216, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1262 = distinct !DILocation(line: 992, column: 2, scope: !1232)
!1263 = !DILocation(line: 134, column: 6, scope: !1259, inlinedAt: !1260)
!1264 = !DILocation(line: 135, column: 3, scope: !1259, inlinedAt: !1260)
!1265 = !DILocation(line: 137, column: 13, scope: !1259, inlinedAt: !1260)
!1266 = !DILocation(line: 137, column: 20, scope: !1259, inlinedAt: !1260)
!1267 = !DILocation(line: 137, column: 33, scope: !1259, inlinedAt: !1260)
!1268 = !DILocation(line: 114, column: 8, scope: !1269, inlinedAt: !1270)
!1269 = distinct !DISubprogram(name: "__list_del", scope: !1242, file: !1242, line: 112, type: !216, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1270 = distinct !DILocation(line: 137, column: 2, scope: !1259, inlinedAt: !1260)
!1271 = !DILocation(line: 114, column: 13, scope: !1269, inlinedAt: !1270)
!1272 = !DILocation(line: 115, column: 2, scope: !1269, inlinedAt: !1270)
!1273 = !DILocation(line: 138, column: 1, scope: !1259, inlinedAt: !1260)
!1274 = !DILocation(line: 37, column: 2, scope: !1275, inlinedAt: !1276)
!1275 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1242, file: !1242, line: 35, type: !216, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1276 = distinct !DILocation(line: 207, column: 2, scope: !1261, inlinedAt: !1262)
!1277 = !DILocation(line: 38, column: 8, scope: !1275, inlinedAt: !1276)
!1278 = !DILocation(line: 38, column: 13, scope: !1275, inlinedAt: !1276)
!1279 = !DILocation(line: 993, column: 29, scope: !1232)
!1280 = !DILocation(line: 981, column: 13, scope: !1281, inlinedAt: !1282)
!1281 = distinct !DISubprogram(name: "trace_probe_event_free", scope: !1, file: !1, line: 979, type: !216, scopeLine: 980, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1282 = distinct !DILocation(line: 993, column: 2, scope: !1232)
!1283 = !DILocation(line: 981, column: 19, scope: !1281, inlinedAt: !1282)
!1284 = !DILocation(line: 981, column: 2, scope: !1281, inlinedAt: !1282)
!1285 = !DILocation(line: 982, column: 18, scope: !1281, inlinedAt: !1282)
!1286 = !DILocation(line: 982, column: 2, scope: !1281, inlinedAt: !1282)
!1287 = !DILocation(line: 983, column: 18, scope: !1281, inlinedAt: !1282)
!1288 = !DILocation(line: 983, column: 2, scope: !1281, inlinedAt: !1282)
!1289 = !DILocation(line: 984, column: 2, scope: !1281, inlinedAt: !1282)
!1290 = !DILocation(line: 995, column: 18, scope: !1232)
!1291 = !DILocation(line: 995, column: 12, scope: !1232)
!1292 = !DILocation(line: 310, column: 14, scope: !1235, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 996, column: 27, scope: !1232)
!1294 = !DILocation(line: 310, column: 21, scope: !1235, inlinedAt: !1293)
!1295 = !DILocation(line: 102, column: 24, scope: !1296, inlinedAt: !1297)
!1296 = distinct !DISubprogram(name: "list_add_tail", scope: !1242, file: !1242, line: 100, type: !216, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1297 = distinct !DILocation(line: 996, column: 2, scope: !1232)
!1298 = !DILocation(line: 69, column: 7, scope: !1299, inlinedAt: !1300)
!1299 = distinct !DISubprogram(name: "__list_add", scope: !1242, file: !1242, line: 65, type: !216, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1300 = distinct !DILocation(line: 102, column: 2, scope: !1296, inlinedAt: !1297)
!1301 = !DILocation(line: 69, column: 6, scope: !1299, inlinedAt: !1300)
!1302 = !DILocation(line: 72, column: 13, scope: !1299, inlinedAt: !1300)
!1303 = !DILocation(line: 73, column: 12, scope: !1299, inlinedAt: !1300)
!1304 = !DILocation(line: 74, column: 12, scope: !1299, inlinedAt: !1300)
!1305 = !DILocation(line: 75, column: 2, scope: !1299, inlinedAt: !1300)
!1306 = !DILocation(line: 0, scope: !1232)
!1307 = !DILocation(line: 999, column: 1, scope: !1232)
!1308 = distinct !DISubprogram(name: "trace_probe_unlink", scope: !1, file: !1, line: 1001, type: !216, scopeLine: 1002, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1309 = !DILocation(line: 1002, scope: !1308)
!1310 = !DILocation(line: 134, column: 7, scope: !1259, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 206, column: 2, scope: !1261, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 1003, column: 2, scope: !1308)
!1313 = !DILocation(line: 134, column: 6, scope: !1259, inlinedAt: !1311)
!1314 = !DILocation(line: 135, column: 3, scope: !1259, inlinedAt: !1311)
!1315 = !DILocation(line: 137, column: 13, scope: !1259, inlinedAt: !1311)
!1316 = !DILocation(line: 137, column: 20, scope: !1259, inlinedAt: !1311)
!1317 = !DILocation(line: 137, column: 33, scope: !1259, inlinedAt: !1311)
!1318 = !DILocation(line: 114, column: 8, scope: !1269, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 137, column: 2, scope: !1259, inlinedAt: !1311)
!1320 = !DILocation(line: 114, column: 13, scope: !1269, inlinedAt: !1319)
!1321 = !DILocation(line: 115, column: 2, scope: !1269, inlinedAt: !1319)
!1322 = !DILocation(line: 138, column: 1, scope: !1259, inlinedAt: !1311)
!1323 = !DILocation(line: 37, column: 2, scope: !1275, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 207, column: 2, scope: !1261, inlinedAt: !1312)
!1325 = !DILocation(line: 38, column: 8, scope: !1275, inlinedAt: !1324)
!1326 = !DILocation(line: 38, column: 13, scope: !1275, inlinedAt: !1324)
!1327 = !DILocation(line: 310, column: 14, scope: !1235, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 1004, column: 17, scope: !1308)
!1329 = !DILocation(line: 310, column: 21, scope: !1235, inlinedAt: !1328)
!1330 = !DILocation(line: 292, column: 9, scope: !1241, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 1004, column: 6, scope: !1308)
!1332 = !DILocation(line: 292, column: 31, scope: !1241, inlinedAt: !1331)
!1333 = !DILocation(line: 1004, column: 6, scope: !1308)
!1334 = !DILocation(line: 1005, column: 26, scope: !1308)
!1335 = !DILocation(line: 1005, column: 30, scope: !1308)
!1336 = !DILocation(line: 981, column: 13, scope: !1281, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 1005, column: 3, scope: !1308)
!1338 = !DILocation(line: 981, column: 19, scope: !1281, inlinedAt: !1337)
!1339 = !DILocation(line: 981, column: 2, scope: !1281, inlinedAt: !1337)
!1340 = !DILocation(line: 982, column: 18, scope: !1281, inlinedAt: !1337)
!1341 = !DILocation(line: 982, column: 2, scope: !1281, inlinedAt: !1337)
!1342 = !DILocation(line: 983, column: 18, scope: !1281, inlinedAt: !1337)
!1343 = !DILocation(line: 983, column: 2, scope: !1281, inlinedAt: !1337)
!1344 = !DILocation(line: 984, column: 2, scope: !1281, inlinedAt: !1337)
!1345 = !DILocation(line: 1005, column: 3, scope: !1308)
!1346 = !DILocation(line: 1006, column: 12, scope: !1308)
!1347 = !DILocation(line: 1007, column: 1, scope: !1308)
!1348 = distinct !DISubprogram(name: "trace_probe_cleanup", scope: !1, file: !1, line: 1009, type: !216, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1349 = !DILocation(line: 1010, scope: !1348)
!1350 = !DILocation(line: 1013, column: 22, scope: !1348)
!1351 = !DILocation(line: 1013, column: 16, scope: !1348)
!1352 = !DILocation(line: 1013, column: 2, scope: !1348)
!1353 = !DILocation(line: 1014, column: 30, scope: !1348)
!1354 = !DILocation(line: 1014, column: 3, scope: !1348)
!1355 = !DILocation(line: 1013, column: 32, scope: !1348)
!1356 = distinct !{!1356, !1352, !1357}
!1357 = !DILocation(line: 1014, column: 41, scope: !1348)
!1358 = !DILocation(line: 1016, column: 6, scope: !1348)
!1359 = !DILocation(line: 1016, column: 10, scope: !1348)
!1360 = !DILocation(line: 1017, column: 22, scope: !1348)
!1361 = !DILocation(line: 1017, column: 3, scope: !1348)
!1362 = !DILocation(line: 1018, column: 1, scope: !1348)
!1363 = distinct !DISubprogram(name: "trace_probe_init", scope: !1, file: !1, line: 1020, type: !216, scopeLine: 1022, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1364 = !DILocation(line: 1022, scope: !1363)
!1365 = !DILocation(line: 1027, column: 7, scope: !1363)
!1366 = !DILocation(line: 1027, column: 13, scope: !1363)
!1367 = !DILocation(line: 1027, column: 17, scope: !1363)
!1368 = !DILocation(line: 1027, column: 6, scope: !1363)
!1369 = !DILocation(line: 1028, column: 3, scope: !1363)
!1370 = !DILocation(line: 1030, column: 6, scope: !1363)
!1371 = !DILocation(line: 1031, column: 8, scope: !1363)
!1372 = !DILocation(line: 1031, column: 3, scope: !1363)
!1373 = !DILocation(line: 0, scope: !1363)
!1374 = !DILocation(line: 586, column: 19, scope: !440, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 714, column: 9, scope: !443, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 1033, column: 14, scope: !1363)
!1377 = !DILocation(line: 586, column: 9, scope: !440, inlinedAt: !1375)
!1378 = !DILocation(line: 1033, column: 6, scope: !1363)
!1379 = !DILocation(line: 1033, column: 12, scope: !1363)
!1380 = !DILocation(line: 1034, column: 7, scope: !1363)
!1381 = !DILocation(line: 1034, column: 6, scope: !1363)
!1382 = !DILocation(line: 1035, column: 3, scope: !1363)
!1383 = !DILocation(line: 1037, column: 29, scope: !1363)
!1384 = !DILocation(line: 37, column: 2, scope: !1275, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 1037, column: 2, scope: !1363)
!1386 = !DILocation(line: 38, column: 8, scope: !1275, inlinedAt: !1385)
!1387 = !DILocation(line: 38, column: 13, scope: !1275, inlinedAt: !1385)
!1388 = !DILocation(line: 1038, column: 35, scope: !1363)
!1389 = !DILocation(line: 37, column: 2, scope: !1275, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 1038, column: 2, scope: !1363)
!1391 = !DILocation(line: 38, column: 8, scope: !1275, inlinedAt: !1390)
!1392 = !DILocation(line: 38, column: 13, scope: !1275, inlinedAt: !1390)
!1393 = !DILocation(line: 1039, column: 29, scope: !1363)
!1394 = !DILocation(line: 37, column: 2, scope: !1275, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 1039, column: 2, scope: !1363)
!1396 = !DILocation(line: 38, column: 8, scope: !1275, inlinedAt: !1395)
!1397 = !DILocation(line: 38, column: 13, scope: !1275, inlinedAt: !1395)
!1398 = !DILocation(line: 37, column: 2, scope: !1275, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 1040, column: 2, scope: !1363)
!1400 = !DILocation(line: 38, column: 8, scope: !1275, inlinedAt: !1399)
!1401 = !DILocation(line: 38, column: 13, scope: !1275, inlinedAt: !1399)
!1402 = !DILocation(line: 69, column: 7, scope: !1299, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 88, column: 2, scope: !1404, inlinedAt: !1405)
!1404 = distinct !DISubprogram(name: "list_add", scope: !1242, file: !1242, line: 86, type: !216, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1405 = distinct !DILocation(line: 1041, column: 2, scope: !1363)
!1406 = !DILocation(line: 69, column: 6, scope: !1299, inlinedAt: !1403)
!1407 = !DILocation(line: 72, column: 13, scope: !1299, inlinedAt: !1403)
!1408 = !DILocation(line: 73, column: 12, scope: !1299, inlinedAt: !1403)
!1409 = !DILocation(line: 74, column: 12, scope: !1299, inlinedAt: !1403)
!1410 = !DILocation(line: 75, column: 2, scope: !1299, inlinedAt: !1403)
!1411 = !DILocation(line: 0, scope: !1299, inlinedAt: !1403)
!1412 = !DILocation(line: 291, column: 14, scope: !1081, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 1043, column: 9, scope: !1363)
!1414 = !DILocation(line: 1044, column: 28, scope: !1363)
!1415 = !DILocation(line: 1044, column: 8, scope: !1363)
!1416 = !DILocation(line: 1044, column: 14, scope: !1363)
!1417 = !DILocation(line: 1045, column: 15, scope: !1363)
!1418 = !DILocation(line: 1045, column: 8, scope: !1363)
!1419 = !DILocation(line: 1045, column: 13, scope: !1363)
!1420 = !DILocation(line: 1046, column: 7, scope: !1363)
!1421 = !DILocation(line: 1046, column: 6, scope: !1363)
!1422 = !DILocation(line: 1047, column: 7, scope: !1363)
!1423 = !DILocation(line: 1048, column: 3, scope: !1363)
!1424 = !DILocation(line: 1051, column: 28, scope: !1363)
!1425 = !DILocation(line: 1051, column: 6, scope: !1363)
!1426 = !DILocation(line: 1051, column: 13, scope: !1363)
!1427 = !DILocation(line: 1051, column: 26, scope: !1363)
!1428 = !DILocation(line: 1052, column: 11, scope: !1363)
!1429 = !DILocation(line: 1052, column: 18, scope: !1363)
!1430 = !DILocation(line: 1052, column: 24, scope: !1363)
!1431 = !DILocation(line: 1052, column: 7, scope: !1363)
!1432 = !DILocation(line: 1052, column: 6, scope: !1363)
!1433 = !DILocation(line: 1053, column: 7, scope: !1363)
!1434 = !DILocation(line: 1054, column: 3, scope: !1363)
!1435 = !DILocation(line: 1057, column: 2, scope: !1363)
!1436 = !DILocation(line: 1013, column: 22, scope: !1348, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 1060, column: 2, scope: !1363)
!1438 = !DILocation(line: 1013, column: 16, scope: !1348, inlinedAt: !1437)
!1439 = !DILocation(line: 1013, column: 2, scope: !1348, inlinedAt: !1437)
!1440 = !DILocation(line: 1014, column: 30, scope: !1348, inlinedAt: !1437)
!1441 = !DILocation(line: 1014, column: 3, scope: !1348, inlinedAt: !1437)
!1442 = !DILocation(line: 1013, column: 32, scope: !1348, inlinedAt: !1437)
!1443 = distinct !{!1443, !1439, !1444}
!1444 = !DILocation(line: 1014, column: 41, scope: !1348, inlinedAt: !1437)
!1445 = !DILocation(line: 1016, column: 6, scope: !1348, inlinedAt: !1437)
!1446 = !DILocation(line: 1016, column: 10, scope: !1348, inlinedAt: !1437)
!1447 = !DILocation(line: 1017, column: 22, scope: !1348, inlinedAt: !1437)
!1448 = !DILocation(line: 1017, column: 3, scope: !1348, inlinedAt: !1437)
!1449 = !DILocation(line: 1062, column: 1, scope: !1363)
!1450 = distinct !DISubprogram(name: "trace_probe_register_event_call", scope: !1, file: !1, line: 1083, type: !216, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1451 = !DILocation(line: 1084, scope: !1450)
!1452 = !DILocation(line: 291, column: 14, scope: !1081, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 1085, column: 34, scope: !1450)
!1454 = !DILocation(line: 291, column: 21, scope: !1081, inlinedAt: !1453)
!1455 = !DILocation(line: 1088, column: 2, scope: !1450)
!1456 = !DILocation(line: 283, column: 9, scope: !1457, inlinedAt: !1459)
!1457 = distinct !DISubprogram(name: "lock_is_held", scope: !1458, file: !1458, line: 281, type: !216, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1458 = !DIFile(filename: "../include/linux/lockdep.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1459 = distinct !DILocation(line: 1088, column: 2, scope: !1450)
!1460 = !{!"branch_weights", i32 1, i32 2000}
!1461 = !DILocation(line: 285, column: 13, scope: !1462, inlinedAt: !1463)
!1462 = distinct !DISubprogram(name: "trace_probe_group_name", scope: !390, file: !390, line: 283, type: !216, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1463 = distinct !DILocation(line: 1090, column: 28, scope: !1450)
!1464 = !DILocation(line: 285, column: 25, scope: !1462, inlinedAt: !1463)
!1465 = !DILocation(line: 285, column: 32, scope: !1462, inlinedAt: !1463)
!1466 = !DILocation(line: 443, column: 12, scope: !1467, inlinedAt: !1469)
!1467 = distinct !DISubprogram(name: "trace_event_name", scope: !1468, file: !1468, line: 441, type: !216, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1468 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1469 = distinct !DILocation(line: 280, column: 9, scope: !1470, inlinedAt: !1471)
!1470 = distinct !DISubprogram(name: "trace_probe_name", scope: !390, file: !390, line: 278, type: !216, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1471 = distinct !DILocation(line: 1091, column: 7, scope: !1450)
!1472 = !DILocation(line: 443, column: 18, scope: !1467, inlinedAt: !1469)
!1473 = !DILocation(line: 443, column: 6, scope: !1467, inlinedAt: !1469)
!1474 = !DILocation(line: 444, column: 16, scope: !1467, inlinedAt: !1469)
!1475 = !DILocation(line: 444, column: 10, scope: !1467, inlinedAt: !1469)
!1476 = !DILocation(line: 444, column: 21, scope: !1467, inlinedAt: !1469)
!1477 = !DILocation(line: 444, column: 31, scope: !1467, inlinedAt: !1469)
!1478 = !DILocation(line: 446, column: 10, scope: !1467, inlinedAt: !1469)
!1479 = !DILocation(line: 446, column: 16, scope: !1467, inlinedAt: !1469)
!1480 = !DILocation(line: 446, column: 3, scope: !1467, inlinedAt: !1469)
!1481 = !DILocation(line: 0, scope: !1467, inlinedAt: !1469)
!1482 = !DILocation(line: 1070, column: 2, scope: !1483, inlinedAt: !1484)
!1483 = distinct !DISubprogram(name: "find_trace_event_call", scope: !1, file: !1, line: 1065, type: !216, scopeLine: 1066, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1484 = distinct !DILocation(line: 1090, column: 6, scope: !1450)
!1485 = !DILocation(line: 1071, column: 18, scope: !1483, inlinedAt: !1484)
!1486 = !DILocation(line: 1071, column: 25, scope: !1483, inlinedAt: !1484)
!1487 = !DILocation(line: 1071, column: 8, scope: !1483, inlinedAt: !1484)
!1488 = !DILocation(line: 1071, column: 32, scope: !1483, inlinedAt: !1484)
!1489 = !DILocation(line: 1072, column: 14, scope: !1483, inlinedAt: !1484)
!1490 = !DILocation(line: 1072, column: 32, scope: !1483, inlinedAt: !1484)
!1491 = !DILocation(line: 1072, column: 39, scope: !1483, inlinedAt: !1484)
!1492 = !DILocation(line: 1072, column: 7, scope: !1483, inlinedAt: !1484)
!1493 = !DILocation(line: 1071, column: 7, scope: !1483, inlinedAt: !1484)
!1494 = !DILocation(line: 443, column: 12, scope: !1467, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 1074, column: 10, scope: !1483, inlinedAt: !1484)
!1496 = !DILocation(line: 443, column: 18, scope: !1467, inlinedAt: !1495)
!1497 = !DILocation(line: 443, column: 6, scope: !1467, inlinedAt: !1495)
!1498 = !DILocation(line: 444, column: 16, scope: !1467, inlinedAt: !1495)
!1499 = !DILocation(line: 444, column: 10, scope: !1467, inlinedAt: !1495)
!1500 = !DILocation(line: 444, column: 21, scope: !1467, inlinedAt: !1495)
!1501 = !DILocation(line: 444, column: 27, scope: !1467, inlinedAt: !1495)
!1502 = !DILocation(line: 1075, column: 13, scope: !1483, inlinedAt: !1484)
!1503 = !DILocation(line: 446, column: 10, scope: !1467, inlinedAt: !1495)
!1504 = !DILocation(line: 446, column: 16, scope: !1467, inlinedAt: !1495)
!1505 = !DILocation(line: 446, column: 3, scope: !1467, inlinedAt: !1495)
!1506 = !DILocation(line: 0, scope: !1467, inlinedAt: !1495)
!1507 = !DILocation(line: 1075, column: 8, scope: !1483, inlinedAt: !1484)
!1508 = !DILocation(line: 1075, column: 23, scope: !1483, inlinedAt: !1484)
!1509 = !DILocation(line: 1075, column: 16, scope: !1483, inlinedAt: !1484)
!1510 = !DILocation(line: 1075, column: 7, scope: !1483, inlinedAt: !1484)
!1511 = !DILocation(line: 0, scope: !1483, inlinedAt: !1484)
!1512 = distinct !{!1512, !1482, !1513}
!1513 = !DILocation(line: 1078, column: 2, scope: !1483, inlinedAt: !1484)
!1514 = !DILocation(line: 1080, column: 2, scope: !1483, inlinedAt: !1484)
!1515 = !DILocation(line: 1090, column: 6, scope: !1450)
!1516 = !DILocation(line: 1077, column: 10, scope: !1483, inlinedAt: !1484)
!1517 = !DILocation(line: 1092, column: 3, scope: !1450)
!1518 = !DILocation(line: 1094, column: 36, scope: !1450)
!1519 = !DILocation(line: 1094, column: 8, scope: !1450)
!1520 = !DILocation(line: 1095, column: 7, scope: !1450)
!1521 = !DILocation(line: 1095, column: 6, scope: !1450)
!1522 = !DILocation(line: 1096, column: 3, scope: !1450)
!1523 = !DILocation(line: 1098, column: 8, scope: !1450)
!1524 = !DILocation(line: 1099, column: 6, scope: !1450)
!1525 = !DILocation(line: 1100, column: 27, scope: !1450)
!1526 = !DILocation(line: 1100, column: 3, scope: !1450)
!1527 = !DILocation(line: 1102, column: 9, scope: !1450)
!1528 = !DILocation(line: 1102, column: 2, scope: !1450)
!1529 = !DILocation(line: 0, scope: !1450)
!1530 = !DILocation(line: 1103, column: 1, scope: !1450)
!1531 = distinct !DISubprogram(name: "trace_probe_add_file", scope: !1, file: !1, line: 1105, type: !216, scopeLine: 1106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1532 = !DILocation(line: 1106, scope: !1531)
!1533 = !DILocation(line: 376, column: 3, scope: !1534, inlinedAt: !1535)
!1534 = distinct !DISubprogram(name: "__kmalloc_index", scope: !441, file: !441, line: 369, type: !216, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1535 = distinct !DILocation(line: 576, column: 11, scope: !440, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 1109, column: 9, scope: !1531)
!1537 = !DILocation(line: 582, column: 33, scope: !440, inlinedAt: !1536)
!1538 = !DILocation(line: 339, column: 3, scope: !1539, inlinedAt: !1540)
!1539 = distinct !DISubprogram(name: "kmalloc_type", scope: !441, file: !441, line: 332, type: !216, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1540 = distinct !DILocation(line: 582, column: 20, scope: !440, inlinedAt: !1536)
!1541 = !DILocation(line: 582, column: 5, scope: !440, inlinedAt: !1536)
!1542 = !DILocation(line: 581, column: 10, scope: !440, inlinedAt: !1536)
!1543 = !DILocation(line: 1110, column: 7, scope: !1531)
!1544 = !DILocation(line: 1110, column: 6, scope: !1531)
!1545 = !DILocation(line: 1111, column: 3, scope: !1531)
!1546 = !DILocation(line: 1113, column: 15, scope: !1531)
!1547 = !DILocation(line: 1113, column: 13, scope: !1531)
!1548 = !DILocation(line: 1114, column: 24, scope: !1531)
!1549 = !DILocation(line: 37, column: 2, scope: !1275, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 1114, column: 2, scope: !1531)
!1551 = !DILocation(line: 38, column: 8, scope: !1275, inlinedAt: !1550)
!1552 = !DILocation(line: 38, column: 13, scope: !1275, inlinedAt: !1550)
!1553 = !DILocation(line: 1115, column: 38, scope: !1531)
!1554 = !DILocation(line: 1115, column: 45, scope: !1531)
!1555 = !DILocation(line: 128, column: 28, scope: !1556, inlinedAt: !1558)
!1556 = distinct !DISubprogram(name: "list_add_tail_rcu", scope: !1557, file: !1557, line: 125, type: !216, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1557 = !DIFile(filename: "../include/linux/rculist.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1558 = distinct !DILocation(line: 1115, column: 2, scope: !1531)
!1559 = !DILocation(line: 79, column: 7, scope: !1560, inlinedAt: !1561)
!1560 = distinct !DISubprogram(name: "__list_add_rcu", scope: !1557, file: !1557, line: 76, type: !216, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1561 = distinct !DILocation(line: 128, column: 2, scope: !1556, inlinedAt: !1558)
!1562 = !DILocation(line: 79, column: 6, scope: !1560, inlinedAt: !1561)
!1563 = !DILocation(line: 80, column: 3, scope: !1560, inlinedAt: !1561)
!1564 = !DILocation(line: 82, column: 12, scope: !1560, inlinedAt: !1561)
!1565 = !DILocation(line: 83, column: 12, scope: !1560, inlinedAt: !1561)
!1566 = !DILocation(line: 84, column: 2, scope: !1560, inlinedAt: !1561)
!1567 = !{i64 2149591188}
!1568 = !DILocation(line: 85, column: 13, scope: !1560, inlinedAt: !1561)
!1569 = !DILocation(line: 86, column: 1, scope: !1560, inlinedAt: !1561)
!1570 = !DILocation(line: 264, column: 6, scope: !1571, inlinedAt: !1572)
!1571 = distinct !DISubprogram(name: "trace_probe_set_flag", scope: !390, file: !390, line: 261, type: !216, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1572 = distinct !DILocation(line: 1116, column: 2, scope: !1531)
!1573 = !DILocation(line: 264, column: 19, scope: !1571, inlinedAt: !1572)
!1574 = !DILocation(line: 1117, column: 2, scope: !1531)
!1575 = !DILocation(line: 0, scope: !1531)
!1576 = !DILocation(line: 1118, column: 1, scope: !1531)
!1577 = distinct !DISubprogram(name: "trace_probe_get_file_link", scope: !1, file: !1, line: 1120, type: !216, scopeLine: 1122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1578 = !DILocation(line: 1122, scope: !1577)
!1579 = !DILocation(line: 1125, column: 2, scope: !1577)
!1580 = !DILocation(line: 1126, column: 13, scope: !1577)
!1581 = !DILocation(line: 1126, column: 18, scope: !1577)
!1582 = !DILocation(line: 1126, column: 7, scope: !1577)
!1583 = !DILocation(line: 1127, column: 4, scope: !1577)
!1584 = distinct !{!1584, !1579, !1585}
!1585 = !DILocation(line: 1128, column: 2, scope: !1577)
!1586 = !DILocation(line: 0, scope: !1577)
!1587 = !DILocation(line: 1131, column: 1, scope: !1577)
!1588 = distinct !DISubprogram(name: "trace_probe_remove_file", scope: !1, file: !1, line: 1133, type: !216, scopeLine: 1135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1589 = !DILocation(line: 1135, scope: !1588)
!1590 = !DILocation(line: 1125, column: 2, scope: !1577, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 1138, column: 9, scope: !1588)
!1592 = !DILocation(line: 1126, column: 13, scope: !1577, inlinedAt: !1591)
!1593 = !DILocation(line: 1126, column: 18, scope: !1577, inlinedAt: !1591)
!1594 = !DILocation(line: 1126, column: 7, scope: !1577, inlinedAt: !1591)
!1595 = distinct !{!1595, !1590, !1596}
!1596 = !DILocation(line: 1128, column: 2, scope: !1577, inlinedAt: !1591)
!1597 = !DILocation(line: 0, scope: !1577, inlinedAt: !1591)
!1598 = !DILocation(line: 1139, column: 6, scope: !1588)
!1599 = !DILocation(line: 1139, column: 7, scope: !1588)
!1600 = !DILocation(line: 1140, column: 3, scope: !1588)
!1601 = !DILocation(line: 134, column: 7, scope: !1259, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 157, column: 2, scope: !1603, inlinedAt: !1604)
!1603 = distinct !DISubprogram(name: "list_del_rcu", scope: !1557, file: !1557, line: 155, type: !216, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1604 = distinct !DILocation(line: 1142, column: 2, scope: !1588)
!1605 = !DILocation(line: 134, column: 6, scope: !1259, inlinedAt: !1602)
!1606 = !DILocation(line: 135, column: 3, scope: !1259, inlinedAt: !1602)
!1607 = !DILocation(line: 137, column: 13, scope: !1259, inlinedAt: !1602)
!1608 = !DILocation(line: 137, column: 20, scope: !1259, inlinedAt: !1602)
!1609 = !DILocation(line: 137, column: 33, scope: !1259, inlinedAt: !1602)
!1610 = !DILocation(line: 114, column: 8, scope: !1269, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 137, column: 2, scope: !1259, inlinedAt: !1602)
!1612 = !DILocation(line: 114, column: 13, scope: !1269, inlinedAt: !1611)
!1613 = !DILocation(line: 115, column: 2, scope: !1269, inlinedAt: !1611)
!1614 = !DILocation(line: 138, column: 1, scope: !1259, inlinedAt: !1602)
!1615 = !DILocation(line: 158, column: 9, scope: !1603, inlinedAt: !1604)
!1616 = !DILocation(line: 158, column: 14, scope: !1603, inlinedAt: !1604)
!1617 = !DILocation(line: 1143, column: 2, scope: !1588)
!1618 = !DILocation(line: 1145, column: 22, scope: !1588)
!1619 = !DILocation(line: 1145, column: 29, scope: !1588)
!1620 = !DILocation(line: 292, column: 9, scope: !1241, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 1145, column: 6, scope: !1588)
!1622 = !DILocation(line: 292, column: 31, scope: !1241, inlinedAt: !1621)
!1623 = !DILocation(line: 1145, column: 6, scope: !1588)
!1624 = !DILocation(line: 1146, column: 26, scope: !1588)
!1625 = !DILocation(line: 270, column: 6, scope: !1626, inlinedAt: !1627)
!1626 = distinct !DISubprogram(name: "trace_probe_clear_flag", scope: !390, file: !390, line: 267, type: !216, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1627 = distinct !DILocation(line: 1146, column: 3, scope: !1588)
!1628 = !DILocation(line: 270, column: 19, scope: !1626, inlinedAt: !1627)
!1629 = !DILocation(line: 1146, column: 3, scope: !1588)
!1630 = !DILocation(line: 0, scope: !1588)
!1631 = !DILocation(line: 1149, column: 1, scope: !1588)
!1632 = distinct !DISubprogram(name: "trace_probe_compare_arg_type", scope: !1, file: !1, line: 1155, type: !216, scopeLine: 1156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1633 = !DILocation(line: 1156, scope: !1632)
!1634 = !DILocation(line: 1160, column: 9, scope: !1632)
!1635 = !DILocation(line: 1160, column: 22, scope: !1632)
!1636 = !DILocation(line: 1160, column: 17, scope: !1632)
!1637 = !DILocation(line: 1160, column: 6, scope: !1632)
!1638 = !DILocation(line: 1161, column: 10, scope: !1632)
!1639 = !DILocation(line: 1161, column: 21, scope: !1632)
!1640 = !DILocation(line: 1161, column: 3, scope: !1632)
!1641 = !DILocation(line: 1162, column: 17, scope: !1632)
!1642 = !DILocation(line: 1162, column: 6, scope: !1632)
!1643 = !DILocation(line: 1165, column: 21, scope: !1632)
!1644 = !DILocation(line: 1165, column: 16, scope: !1632)
!1645 = !DILocation(line: 1165, column: 2, scope: !1632)
!1646 = !DILocation(line: 1163, column: 10, scope: !1632)
!1647 = !DILocation(line: 1163, column: 21, scope: !1632)
!1648 = !DILocation(line: 1163, column: 3, scope: !1632)
!1649 = !DILocation(line: 1166, column: 11, scope: !1632)
!1650 = !DILocation(line: 1166, column: 19, scope: !1632)
!1651 = !DILocation(line: 1166, column: 25, scope: !1632)
!1652 = !DILocation(line: 1167, column: 9, scope: !1632)
!1653 = !DILocation(line: 1167, column: 20, scope: !1632)
!1654 = !DILocation(line: 1167, column: 39, scope: !1632)
!1655 = !DILocation(line: 1167, column: 25, scope: !1632)
!1656 = !DILocation(line: 1167, column: 45, scope: !1632)
!1657 = !DILocation(line: 1168, column: 9, scope: !1632)
!1658 = !DILocation(line: 1168, column: 20, scope: !1632)
!1659 = !DILocation(line: 1168, column: 40, scope: !1632)
!1660 = !DILocation(line: 1168, column: 26, scope: !1632)
!1661 = !DILocation(line: 1168, column: 47, scope: !1632)
!1662 = !DILocation(line: 1169, column: 15, scope: !1632)
!1663 = !DILocation(line: 1169, column: 26, scope: !1632)
!1664 = !DILocation(line: 1169, column: 43, scope: !1632)
!1665 = !DILocation(line: 1169, column: 8, scope: !1632)
!1666 = !DILocation(line: 1166, column: 7, scope: !1632)
!1667 = !DILocation(line: 1170, column: 11, scope: !1632)
!1668 = !DILocation(line: 1170, column: 13, scope: !1632)
!1669 = !DILocation(line: 1170, column: 4, scope: !1632)
!1670 = !DILocation(line: 1171, column: 2, scope: !1632)
!1671 = !DILocation(line: 1165, column: 31, scope: !1632)
!1672 = distinct !{!1672, !1645, !1670}
!1673 = !DILocation(line: 1173, column: 2, scope: !1632)
!1674 = !DILocation(line: 0, scope: !1632)
!1675 = !DILocation(line: 1174, column: 1, scope: !1632)
!1676 = distinct !DISubprogram(name: "trace_probe_match_command_args", scope: !1, file: !1, line: 1176, type: !216, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1677 = !DILocation(line: 1178, scope: !1676)
!1678 = !DILocation(line: 1179, column: 2, scope: !1676)
!1679 = !DILocation(line: 1179, column: 7, scope: !1676)
!1680 = !DILocation(line: 1182, column: 10, scope: !1676)
!1681 = !DILocation(line: 1182, column: 18, scope: !1676)
!1682 = !DILocation(line: 1182, column: 6, scope: !1676)
!1683 = !DILocation(line: 1185, column: 16, scope: !1676)
!1684 = !DILocation(line: 1185, column: 2, scope: !1676)
!1685 = !DILocation(line: 1183, column: 3, scope: !1676)
!1686 = !DILocation(line: 1187, column: 17, scope: !1676)
!1687 = !DILocation(line: 1187, column: 35, scope: !1676)
!1688 = !DILocation(line: 1186, column: 3, scope: !1676)
!1689 = !DILocation(line: 1188, column: 19, scope: !1676)
!1690 = !DILocation(line: 1188, column: 7, scope: !1676)
!1691 = !DILocation(line: 1189, column: 4, scope: !1676)
!1692 = !DILocation(line: 1185, column: 25, scope: !1676)
!1693 = distinct !{!1693, !1684, !1694}
!1694 = !DILocation(line: 1190, column: 2, scope: !1676)
!1695 = !DILocation(line: 1191, column: 2, scope: !1676)
!1696 = !DILocation(line: 0, scope: !1676)
!1697 = !DILocation(line: 1192, column: 1, scope: !1676)
!1698 = distinct !DISubprogram(name: "trace_probe_create", scope: !1, file: !1, line: 1194, type: !216, scopeLine: 1195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1699 = !DILocation(line: 1195, scope: !1698)
!1700 = !DILocation(line: 1196, column: 2, scope: !1698)
!1701 = !DILocation(line: 1196, column: 6, scope: !1698)
!1702 = !DILocation(line: 1199, column: 9, scope: !1698)
!1703 = !DILocation(line: 1200, column: 7, scope: !1698)
!1704 = !DILocation(line: 1200, column: 6, scope: !1698)
!1705 = !DILocation(line: 1201, column: 3, scope: !1698)
!1706 = !DILocation(line: 1203, column: 6, scope: !1698)
!1707 = !DILocation(line: 1204, column: 9, scope: !1698)
!1708 = !DILocation(line: 1204, column: 3, scope: !1698)
!1709 = !DILocation(line: 0, scope: !1698)
!1710 = !DILocation(line: 1206, column: 2, scope: !1698)
!1711 = !DILocation(line: 1208, column: 2, scope: !1698)
!1712 = !DILocation(line: 1209, column: 1, scope: !1698)
!1713 = distinct !DISubprogram(name: "find_fetch_type", scope: !1, file: !1, line: 101, type: !216, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1714 = !DILocation(line: 102, scope: !1713)
!1715 = !DILocation(line: 105, column: 7, scope: !1713)
!1716 = !DILocation(line: 105, column: 6, scope: !1713)
!1717 = !DILocation(line: 106, column: 8, scope: !1713)
!1718 = !DILocation(line: 106, column: 3, scope: !1713)
!1719 = !DILocation(line: 109, column: 6, scope: !1713)
!1720 = !DILocation(line: 109, column: 12, scope: !1713)
!1721 = !DILocation(line: 135, column: 7, scope: !1713)
!1722 = !DILocation(line: 135, column: 47, scope: !1713)
!1723 = !DILocation(line: 110, column: 3, scope: !1713)
!1724 = !DILocation(line: 110, column: 17, scope: !1713)
!1725 = !DILocation(line: 112, column: 10, scope: !1713)
!1726 = !DILocation(line: 113, column: 8, scope: !1713)
!1727 = !DILocation(line: 113, column: 7, scope: !1713)
!1728 = !DILocation(line: 0, scope: !1713)
!1729 = !DILocation(line: 114, column: 4, scope: !1713)
!1730 = !DILocation(line: 116, column: 7, scope: !1713)
!1731 = !DILocation(line: 40, column: 10, scope: !1732, inlinedAt: !1733)
!1732 = distinct !DISubprogram(name: "kstrtoul", scope: !486, file: !486, line: 30, type: !216, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1733 = distinct !DILocation(line: 117, column: 7, scope: !1713)
!1734 = !DILocation(line: 117, column: 7, scope: !1713)
!1735 = !DILocation(line: 118, column: 4, scope: !1713)
!1736 = !DILocation(line: 120, column: 11, scope: !1713)
!1737 = !DILocation(line: 120, column: 3, scope: !1713)
!1738 = !DILocation(line: 122, column: 11, scope: !1713)
!1739 = !DILocation(line: 122, column: 4, scope: !1713)
!1740 = !DILocation(line: 124, column: 11, scope: !1713)
!1741 = !DILocation(line: 124, column: 4, scope: !1713)
!1742 = !DILocation(line: 126, column: 11, scope: !1713)
!1743 = !DILocation(line: 126, column: 4, scope: !1713)
!1744 = !DILocation(line: 128, column: 11, scope: !1713)
!1745 = !DILocation(line: 128, column: 4, scope: !1713)
!1746 = !DILocation(line: 130, column: 4, scope: !1713)
!1747 = !DILocation(line: 132, column: 2, scope: !1713)
!1748 = !DILocation(line: 134, column: 14, scope: !1713)
!1749 = !DILocation(line: 134, column: 35, scope: !1713)
!1750 = distinct !{!1750, !1751, !1752}
!1751 = !DILocation(line: 134, column: 2, scope: !1713)
!1752 = !DILocation(line: 137, column: 2, scope: !1713)
!1753 = !DILocation(line: 136, column: 30, scope: !1713)
!1754 = !DILocation(line: 136, column: 4, scope: !1713)
!1755 = !DILocation(line: 134, column: 42, scope: !1713)
!1756 = !DILocation(line: 140, column: 2, scope: !1713)
!1757 = !DILocation(line: 141, column: 1, scope: !1713)
!1758 = distinct !DISubprogram(name: "kcalloc", scope: !441, file: !441, line: 650, type: !216, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1759 = !DILocation(line: 651, scope: !1758)
!1760 = !DILocation(line: 617, column: 6, scope: !1761, inlinedAt: !1762)
!1761 = distinct !DISubprogram(name: "kmalloc_array", scope: !441, file: !441, line: 613, type: !216, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1762 = distinct !DILocation(line: 652, column: 9, scope: !1758)
!1763 = !DILocation(line: 618, column: 3, scope: !1761, inlinedAt: !1762)
!1764 = !DILocation(line: 621, column: 19, scope: !1761, inlinedAt: !1762)
!1765 = !DILocation(line: 621, column: 9, scope: !1761, inlinedAt: !1762)
!1766 = !DILocation(line: 621, column: 2, scope: !1761, inlinedAt: !1762)
!1767 = !DILocation(line: 0, scope: !1761, inlinedAt: !1762)
!1768 = !DILocation(line: 652, column: 2, scope: !1758)
!1769 = distinct !DISubprogram(name: "parse_probe_arg", scope: !1, file: !1, line: 366, type: !216, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1770 = !DILocation(line: 369, scope: !1769)
!1771 = !DILocation(line: 370, column: 2, scope: !1769)
!1772 = !DILocation(line: 370, column: 28, scope: !1769)
!1773 = !DILocation(line: 370, column: 21, scope: !1769)
!1774 = !DILocation(line: 371, column: 2, scope: !1769)
!1775 = !DILocation(line: 371, column: 16, scope: !1769)
!1776 = !DILocation(line: 373, column: 2, scope: !1769)
!1777 = !DILocation(line: 373, column: 7, scope: !1769)
!1778 = !DILocation(line: 377, column: 10, scope: !1769)
!1779 = !DILocation(line: 377, column: 2, scope: !1769)
!1780 = !DILocation(line: 379, column: 26, scope: !1769)
!1781 = !DILocation(line: 379, column: 30, scope: !1769)
!1782 = !DILocation(line: 278, column: 2, scope: !1783, inlinedAt: !1784)
!1783 = distinct !DISubprogram(name: "parse_probe_vars", scope: !1, file: !1, line: 275, type: !216, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1784 = distinct !DILocation(line: 379, column: 9, scope: !1769)
!1785 = !DILocation(line: 278, column: 16, scope: !1783, inlinedAt: !1784)
!1786 = !DILocation(line: 282, column: 6, scope: !1783, inlinedAt: !1784)
!1787 = !DILocation(line: 282, column: 28, scope: !1783, inlinedAt: !1784)
!1788 = !DILocation(line: 283, column: 13, scope: !1783, inlinedAt: !1784)
!1789 = !DILocation(line: 283, column: 7, scope: !1783, inlinedAt: !1784)
!1790 = !DILocation(line: 284, column: 4, scope: !1783, inlinedAt: !1784)
!1791 = !DILocation(line: 284, column: 13, scope: !1783, inlinedAt: !1784)
!1792 = !DILocation(line: 285, column: 3, scope: !1783, inlinedAt: !1784)
!1793 = !DILocation(line: 286, column: 4, scope: !1783, inlinedAt: !1784)
!1794 = !DILocation(line: 312, column: 9, scope: !1795, inlinedAt: !1797)
!1795 = distinct !DISubprogram(name: "str_has_prefix", scope: !1796, file: !1796, line: 309, type: !216, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1796 = !DIFile(filename: "../include/linux/string.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1797 = distinct !DILocation(line: 289, column: 20, scope: !1783, inlinedAt: !1784)
!1798 = !DILocation(line: 312, column: 35, scope: !1795, inlinedAt: !1797)
!1799 = !DILocation(line: 0, scope: !1795, inlinedAt: !1797)
!1800 = !DILocation(line: 289, column: 13, scope: !1783, inlinedAt: !1784)
!1801 = !DILocation(line: 290, column: 7, scope: !1783, inlinedAt: !1784)
!1802 = !DILocation(line: 290, column: 16, scope: !1783, inlinedAt: !1784)
!1803 = !DILocation(line: 291, column: 4, scope: !1783, inlinedAt: !1784)
!1804 = !DILocation(line: 291, column: 13, scope: !1783, inlinedAt: !1784)
!1805 = !DILocation(line: 292, column: 3, scope: !1783, inlinedAt: !1784)
!1806 = !DILocation(line: 45, column: 13, scope: !537, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 292, column: 14, scope: !1783, inlinedAt: !1784)
!1808 = !DILocation(line: 45, column: 18, scope: !537, inlinedAt: !1807)
!1809 = !DILocation(line: 45, column: 21, scope: !537, inlinedAt: !1807)
!1810 = !DILocation(line: 45, column: 23, scope: !537, inlinedAt: !1807)
!1811 = !DILocation(line: 292, column: 14, scope: !1783, inlinedAt: !1784)
!1812 = !DILocation(line: 40, column: 10, scope: !1732, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 293, column: 10, scope: !1783, inlinedAt: !1784)
!1814 = !DILocation(line: 294, column: 8, scope: !1783, inlinedAt: !1784)
!1815 = !DILocation(line: 295, column: 5, scope: !1783, inlinedAt: !1784)
!1816 = !DILocation(line: 296, column: 22, scope: !1783, inlinedAt: !1784)
!1817 = !DILocation(line: 296, column: 41, scope: !1783, inlinedAt: !1784)
!1818 = !DILocation(line: 297, column: 9, scope: !1783, inlinedAt: !1784)
!1819 = !DILocation(line: 297, column: 15, scope: !1783, inlinedAt: !1784)
!1820 = !DILocation(line: 296, column: 15, scope: !1783, inlinedAt: !1784)
!1821 = !DILocation(line: 298, column: 5, scope: !1783, inlinedAt: !1784)
!1822 = !DILocation(line: 300, column: 4, scope: !1783, inlinedAt: !1784)
!1823 = !DILocation(line: 301, column: 5, scope: !1783, inlinedAt: !1784)
!1824 = !DILocation(line: 301, column: 14, scope: !1783, inlinedAt: !1784)
!1825 = !DILocation(line: 302, column: 33, scope: !1783, inlinedAt: !1784)
!1826 = !DILocation(line: 302, column: 11, scope: !1783, inlinedAt: !1784)
!1827 = !DILocation(line: 302, column: 17, scope: !1783, inlinedAt: !1784)
!1828 = !DILocation(line: 305, column: 4, scope: !1783, inlinedAt: !1784)
!1829 = !DILocation(line: 306, column: 13, scope: !1783, inlinedAt: !1784)
!1830 = !DILocation(line: 306, column: 33, scope: !1783, inlinedAt: !1784)
!1831 = !DILocation(line: 307, column: 3, scope: !1783, inlinedAt: !1784)
!1832 = !DILocation(line: 307, column: 12, scope: !1783, inlinedAt: !1784)
!1833 = !DILocation(line: 322, column: 2, scope: !1783, inlinedAt: !1784)
!1834 = !DILocation(line: 322, column: 19, scope: !1783, inlinedAt: !1784)
!1835 = !DILocation(line: 322, column: 13, scope: !1783, inlinedAt: !1784)
!1836 = !DILocation(line: 323, column: 13, scope: !1783, inlinedAt: !1784)
!1837 = !DILocation(line: 323, column: 7, scope: !1783, inlinedAt: !1784)
!1838 = !DILocation(line: 324, column: 4, scope: !1783, inlinedAt: !1784)
!1839 = !DILocation(line: 325, column: 16, scope: !1783, inlinedAt: !1784)
!1840 = !DILocation(line: 325, column: 14, scope: !1783, inlinedAt: !1784)
!1841 = !DILocation(line: 326, column: 8, scope: !1783, inlinedAt: !1784)
!1842 = !DILocation(line: 326, column: 7, scope: !1783, inlinedAt: !1784)
!1843 = !DILocation(line: 327, column: 4, scope: !1783, inlinedAt: !1784)
!1844 = !DILocation(line: 328, column: 12, scope: !1783, inlinedAt: !1784)
!1845 = !DILocation(line: 330, column: 3, scope: !1783, inlinedAt: !1784)
!1846 = !DILocation(line: 335, column: 2, scope: !1783, inlinedAt: !1784)
!1847 = !DILocation(line: 336, column: 2, scope: !1783, inlinedAt: !1784)
!1848 = !DILocation(line: 383, column: 40, scope: !1769)
!1849 = !DILocation(line: 383, column: 9, scope: !1769)
!1850 = !DILocation(line: 384, column: 11, scope: !1769)
!1851 = !DILocation(line: 384, column: 7, scope: !1769)
!1852 = !DILocation(line: 385, column: 4, scope: !1769)
!1853 = !DILocation(line: 385, column: 13, scope: !1769)
!1854 = !DILocation(line: 386, column: 10, scope: !1769)
!1855 = !DILocation(line: 386, column: 16, scope: !1769)
!1856 = !DILocation(line: 388, column: 3, scope: !1769)
!1857 = !DILocation(line: 389, column: 4, scope: !1769)
!1858 = !DILocation(line: 393, column: 15, scope: !1769)
!1859 = !DILocation(line: 45, column: 13, scope: !537, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 393, column: 7, scope: !1769)
!1861 = !DILocation(line: 45, column: 18, scope: !537, inlinedAt: !1860)
!1862 = !DILocation(line: 45, column: 21, scope: !537, inlinedAt: !1860)
!1863 = !DILocation(line: 45, column: 23, scope: !537, inlinedAt: !1860)
!1864 = !DILocation(line: 393, column: 7, scope: !1769)
!1865 = !DILocation(line: 40, column: 10, scope: !1732, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 394, column: 10, scope: !1769)
!1867 = !DILocation(line: 395, column: 8, scope: !1769)
!1868 = !DILocation(line: 396, column: 5, scope: !1769)
!1869 = !DILocation(line: 397, column: 5, scope: !1769)
!1870 = !DILocation(line: 400, column: 4, scope: !1769)
!1871 = !DILocation(line: 400, column: 13, scope: !1769)
!1872 = !DILocation(line: 401, column: 22, scope: !1769)
!1873 = !DILocation(line: 402, column: 3, scope: !1769)
!1874 = !DILocation(line: 402, column: 14, scope: !1769)
!1875 = !DILocation(line: 402, column: 21, scope: !1769)
!1876 = !DILocation(line: 0, scope: !1769)
!1877 = !DILocation(line: 404, column: 8, scope: !1769)
!1878 = !DILocation(line: 405, column: 5, scope: !1769)
!1879 = !DILocation(line: 406, column: 5, scope: !1769)
!1880 = !DILocation(line: 408, column: 22, scope: !1769)
!1881 = !DILocation(line: 68, column: 10, scope: !485, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 408, column: 10, scope: !1769)
!1883 = !DILocation(line: 409, column: 8, scope: !1769)
!1884 = !DILocation(line: 410, column: 5, scope: !1769)
!1885 = !DILocation(line: 411, column: 5, scope: !1769)
!1886 = !DILocation(line: 414, column: 4, scope: !1769)
!1887 = !DILocation(line: 414, column: 13, scope: !1769)
!1888 = !DILocation(line: 415, column: 37, scope: !1769)
!1889 = !DILocation(line: 416, column: 3, scope: !1769)
!1890 = !DILocation(line: 418, column: 8, scope: !1769)
!1891 = !DILocation(line: 419, column: 5, scope: !1769)
!1892 = !DILocation(line: 420, column: 5, scope: !1769)
!1893 = !DILocation(line: 423, column: 13, scope: !1769)
!1894 = !DILocation(line: 424, column: 17, scope: !1769)
!1895 = !DILocation(line: 424, column: 4, scope: !1769)
!1896 = !DILocation(line: 424, column: 10, scope: !1769)
!1897 = !DILocation(line: 424, column: 15, scope: !1769)
!1898 = !DILocation(line: 425, column: 9, scope: !1769)
!1899 = !DILocation(line: 425, column: 8, scope: !1769)
!1900 = !DILocation(line: 426, column: 5, scope: !1769)
!1901 = !DILocation(line: 427, column: 8, scope: !1769)
!1902 = !DILocation(line: 427, column: 15, scope: !1769)
!1903 = !DILocation(line: 428, column: 5, scope: !1769)
!1904 = !DILocation(line: 429, column: 5, scope: !1769)
!1905 = !DILocation(line: 431, column: 4, scope: !1769)
!1906 = !DILocation(line: 431, column: 13, scope: !1769)
!1907 = !DILocation(line: 435, column: 7, scope: !1769)
!1908 = !DILocation(line: 435, column: 14, scope: !1769)
!1909 = !DILocation(line: 436, column: 4, scope: !1769)
!1910 = !DILocation(line: 437, column: 4, scope: !1769)
!1911 = !DILocation(line: 439, column: 12, scope: !1769)
!1912 = !DILocation(line: 439, column: 10, scope: !1769)
!1913 = !DILocation(line: 440, column: 12, scope: !1769)
!1914 = !DILocation(line: 441, column: 18, scope: !1769)
!1915 = !DILocation(line: 441, column: 3, scope: !1769)
!1916 = !DILocation(line: 441, column: 9, scope: !1769)
!1917 = !DILocation(line: 441, column: 16, scope: !1769)
!1918 = !DILocation(line: 442, column: 3, scope: !1769)
!1919 = !DILocation(line: 446, column: 7, scope: !1769)
!1920 = !DILocation(line: 446, column: 14, scope: !1769)
!1921 = !DILocation(line: 447, column: 10, scope: !1769)
!1922 = !DILocation(line: 448, column: 13, scope: !1769)
!1923 = !DILocation(line: 448, column: 11, scope: !1769)
!1924 = !DILocation(line: 450, column: 3, scope: !1769)
!1925 = !DILocation(line: 451, column: 7, scope: !1769)
!1926 = !DILocation(line: 451, column: 14, scope: !1769)
!1927 = !DILocation(line: 452, column: 7, scope: !1769)
!1928 = !DILocation(line: 452, column: 4, scope: !1769)
!1929 = !DILocation(line: 453, column: 9, scope: !1769)
!1930 = !DILocation(line: 454, column: 8, scope: !1769)
!1931 = !DILocation(line: 454, column: 7, scope: !1769)
!1932 = !DILocation(line: 455, column: 4, scope: !1769)
!1933 = !DILocation(line: 456, column: 4, scope: !1769)
!1934 = !DILocation(line: 458, column: 8, scope: !1769)
!1935 = !DILocation(line: 68, column: 10, scope: !485, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 459, column: 9, scope: !1769)
!1937 = !DILocation(line: 460, column: 7, scope: !1769)
!1938 = !DILocation(line: 461, column: 4, scope: !1769)
!1939 = !DILocation(line: 462, column: 4, scope: !1769)
!1940 = !DILocation(line: 464, column: 16, scope: !1769)
!1941 = !DILocation(line: 464, column: 20, scope: !1769)
!1942 = !DILocation(line: 464, column: 30, scope: !1769)
!1943 = !DILocation(line: 464, column: 37, scope: !1769)
!1944 = !DILocation(line: 464, column: 27, scope: !1769)
!1945 = !DILocation(line: 464, column: 8, scope: !1769)
!1946 = !DILocation(line: 466, column: 9, scope: !1769)
!1947 = !DILocation(line: 467, column: 8, scope: !1769)
!1948 = !DILocation(line: 467, column: 7, scope: !1769)
!1949 = !DILocation(line: 468, column: 4, scope: !1769)
!1950 = !DILocation(line: 470, column: 4, scope: !1769)
!1951 = !DILocation(line: 472, column: 34, scope: !1769)
!1952 = !DILocation(line: 474, column: 9, scope: !1769)
!1953 = !DILocation(line: 475, column: 10, scope: !1769)
!1954 = !DILocation(line: 476, column: 8, scope: !1769)
!1955 = !DILocation(line: 478, column: 8, scope: !1769)
!1956 = !DILocation(line: 478, column: 14, scope: !1769)
!1957 = !DILocation(line: 478, column: 17, scope: !1769)
!1958 = !DILocation(line: 478, column: 34, scope: !1769)
!1959 = !DILocation(line: 479, column: 8, scope: !1769)
!1960 = !DILocation(line: 479, column: 14, scope: !1769)
!1961 = !DILocation(line: 479, column: 17, scope: !1769)
!1962 = !DILocation(line: 480, column: 5, scope: !1769)
!1963 = !DILocation(line: 481, column: 5, scope: !1769)
!1964 = !DILocation(line: 483, column: 8, scope: !1769)
!1965 = !DILocation(line: 483, column: 15, scope: !1769)
!1966 = !DILocation(line: 484, column: 5, scope: !1769)
!1967 = !DILocation(line: 485, column: 5, scope: !1769)
!1968 = !DILocation(line: 487, column: 13, scope: !1769)
!1969 = !DILocation(line: 487, column: 11, scope: !1769)
!1970 = !DILocation(line: 489, column: 13, scope: !1769)
!1971 = !DILocation(line: 490, column: 19, scope: !1769)
!1972 = !DILocation(line: 490, column: 4, scope: !1769)
!1973 = !DILocation(line: 490, column: 10, scope: !1769)
!1974 = !DILocation(line: 490, column: 17, scope: !1769)
!1975 = !DILocation(line: 492, column: 3, scope: !1769)
!1976 = !DILocation(line: 494, column: 7, scope: !1769)
!1977 = !DILocation(line: 494, column: 14, scope: !1769)
!1978 = !DILocation(line: 495, column: 33, scope: !1769)
!1979 = !DILocation(line: 352, column: 15, scope: !1980, inlinedAt: !1981)
!1980 = distinct !DISubprogram(name: "__parse_imm_string", scope: !1, file: !1, line: 350, type: !216, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!1981 = distinct !DILocation(line: 495, column: 10, scope: !1769)
!1982 = !DILocation(line: 354, column: 14, scope: !1980, inlinedAt: !1981)
!1983 = !DILocation(line: 354, column: 6, scope: !1980, inlinedAt: !1981)
!1984 = !DILocation(line: 354, column: 19, scope: !1980, inlinedAt: !1981)
!1985 = !DILocation(line: 495, column: 49, scope: !1769)
!1986 = !DILocation(line: 355, column: 3, scope: !1980, inlinedAt: !1981)
!1987 = !DILocation(line: 356, column: 3, scope: !1980, inlinedAt: !1981)
!1988 = !DILocation(line: 358, column: 10, scope: !1980, inlinedAt: !1981)
!1989 = !DILocation(line: 359, column: 7, scope: !1980, inlinedAt: !1981)
!1990 = !DILocation(line: 359, column: 6, scope: !1980, inlinedAt: !1981)
!1991 = !DILocation(line: 360, column: 3, scope: !1980, inlinedAt: !1981)
!1992 = !DILocation(line: 497, column: 5, scope: !1769)
!1993 = !DILocation(line: 361, column: 2, scope: !1980, inlinedAt: !1981)
!1994 = !DILocation(line: 498, column: 4, scope: !1769)
!1995 = !DILocation(line: 498, column: 13, scope: !1769)
!1996 = !DILocation(line: 499, column: 10, scope: !1769)
!1997 = !DILocation(line: 499, column: 15, scope: !1769)
!1998 = !DILocation(line: 500, column: 3, scope: !1769)
!1999 = !DILocation(line: 501, column: 43, scope: !1769)
!2000 = !DILocation(line: 45, column: 13, scope: !537, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 341, column: 6, scope: !2002, inlinedAt: !2003)
!2002 = distinct !DISubprogram(name: "str_to_immediate", scope: !1, file: !1, line: 339, type: !216, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!2003 = distinct !DILocation(line: 501, column: 10, scope: !1769)
!2004 = !DILocation(line: 45, column: 18, scope: !537, inlinedAt: !2001)
!2005 = !DILocation(line: 45, column: 21, scope: !537, inlinedAt: !2001)
!2006 = !DILocation(line: 45, column: 23, scope: !537, inlinedAt: !2001)
!2007 = !DILocation(line: 341, column: 6, scope: !2002, inlinedAt: !2003)
!2008 = !DILocation(line: 342, column: 19, scope: !2002, inlinedAt: !2003)
!2009 = !DILocation(line: 40, column: 10, scope: !1732, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 342, column: 10, scope: !2002, inlinedAt: !2003)
!2011 = !DILocation(line: 342, column: 3, scope: !2002, inlinedAt: !2003)
!2012 = !DILocation(line: 343, column: 11, scope: !2002, inlinedAt: !2003)
!2013 = !DILocation(line: 344, column: 18, scope: !2002, inlinedAt: !2003)
!2014 = !DILocation(line: 68, column: 10, scope: !485, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 344, column: 10, scope: !2002, inlinedAt: !2003)
!2016 = !DILocation(line: 344, column: 3, scope: !2002, inlinedAt: !2003)
!2017 = !DILocation(line: 346, column: 18, scope: !2002, inlinedAt: !2003)
!2018 = !DILocation(line: 346, column: 22, scope: !2002, inlinedAt: !2003)
!2019 = !DILocation(line: 68, column: 10, scope: !485, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 346, column: 10, scope: !2002, inlinedAt: !2003)
!2021 = !DILocation(line: 346, column: 3, scope: !2002, inlinedAt: !2003)
!2022 = !DILocation(line: 347, column: 2, scope: !2002, inlinedAt: !2003)
!2023 = !DILocation(line: 502, column: 8, scope: !1769)
!2024 = !DILocation(line: 0, scope: !2002, inlinedAt: !2003)
!2025 = !DILocation(line: 503, column: 5, scope: !1769)
!2026 = !DILocation(line: 505, column: 5, scope: !1769)
!2027 = !DILocation(line: 505, column: 14, scope: !1769)
!2028 = !DILocation(line: 337, column: 1, scope: !1783, inlinedAt: !1784)
!2029 = !DILocation(line: 509, column: 11, scope: !1769)
!2030 = !DILocation(line: 0, scope: !1783, inlinedAt: !1784)
!2031 = !DILocation(line: 509, column: 14, scope: !1769)
!2032 = !DILocation(line: 509, column: 20, scope: !1769)
!2033 = !DILocation(line: 509, column: 23, scope: !1769)
!2034 = !DILocation(line: 509, column: 6, scope: !1769)
!2035 = !DILocation(line: 511, column: 3, scope: !1769)
!2036 = !DILocation(line: 513, column: 2, scope: !1769)
!2037 = !DILocation(line: 514, column: 9, scope: !1769)
!2038 = !DILocation(line: 514, column: 2, scope: !1769)
!2039 = !DILocation(line: 515, column: 1, scope: !1769)
!2040 = distinct !DISubprogram(name: "__parse_bitfield_probe_arg", scope: !1, file: !1, line: 520, type: !216, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!2041 = !DILocation(line: 523, scope: !2040)
!2042 = !DILocation(line: 524, column: 28, scope: !2040)
!2043 = !DILocation(line: 526, column: 2, scope: !2040)
!2044 = !DILocation(line: 526, column: 8, scope: !2040)
!2045 = !DILocation(line: 528, column: 6, scope: !2040)
!2046 = !DILocation(line: 528, column: 10, scope: !2040)
!2047 = !DILocation(line: 529, column: 3, scope: !2040)
!2048 = !DILocation(line: 531, column: 25, scope: !2040)
!2049 = !DILocation(line: 531, column: 7, scope: !2040)
!2050 = !DILocation(line: 533, column: 9, scope: !2040)
!2051 = !DILocation(line: 533, column: 14, scope: !2040)
!2052 = !DILocation(line: 533, column: 18, scope: !2040)
!2053 = !DILocation(line: 533, column: 17, scope: !2040)
!2054 = !DILocation(line: 533, column: 23, scope: !2040)
!2055 = !DILocation(line: 533, column: 6, scope: !2040)
!2056 = !DILocation(line: 534, column: 3, scope: !2040)
!2057 = !DILocation(line: 536, column: 12, scope: !2040)
!2058 = !DILocation(line: 537, column: 7, scope: !2040)
!2059 = !DILocation(line: 539, column: 6, scope: !2040)
!2060 = !DILocation(line: 539, column: 11, scope: !2040)
!2061 = !DILocation(line: 539, column: 17, scope: !2040)
!2062 = !DILocation(line: 539, column: 21, scope: !2040)
!2063 = !DILocation(line: 539, column: 20, scope: !2040)
!2064 = !DILocation(line: 539, column: 26, scope: !2040)
!2065 = !DILocation(line: 540, column: 3, scope: !2040)
!2066 = !DILocation(line: 541, column: 6, scope: !2040)
!2067 = !DILocation(line: 542, column: 12, scope: !2040)
!2068 = !DILocation(line: 542, column: 15, scope: !2040)
!2069 = !DILocation(line: 542, column: 6, scope: !2040)
!2070 = !DILocation(line: 543, column: 3, scope: !2040)
!2071 = !DILocation(line: 544, column: 11, scope: !2040)
!2072 = !DILocation(line: 544, column: 9, scope: !2040)
!2073 = !DILocation(line: 546, column: 11, scope: !2040)
!2074 = !DILocation(line: 547, column: 17, scope: !2040)
!2075 = !DILocation(line: 547, column: 46, scope: !2040)
!2076 = !DILocation(line: 547, column: 40, scope: !2040)
!2077 = !DILocation(line: 547, column: 8, scope: !2040)
!2078 = !DILocation(line: 547, column: 15, scope: !2040)
!2079 = !DILocation(line: 548, column: 17, scope: !2040)
!2080 = !DILocation(line: 548, column: 40, scope: !2040)
!2081 = !DILocation(line: 548, column: 8, scope: !2040)
!2082 = !DILocation(line: 548, column: 15, scope: !2040)
!2083 = !DILocation(line: 549, column: 22, scope: !2040)
!2084 = !DILocation(line: 549, column: 19, scope: !2040)
!2085 = !DILocation(line: 549, column: 17, scope: !2040)
!2086 = !DILocation(line: 551, column: 10, scope: !2040)
!2087 = !DILocation(line: 551, column: 33, scope: !2040)
!2088 = !DILocation(line: 551, column: 9, scope: !2040)
!2089 = !DILocation(line: 551, column: 2, scope: !2040)
!2090 = !DILocation(line: 0, scope: !2040)
!2091 = !DILocation(line: 552, column: 1, scope: !2040)
