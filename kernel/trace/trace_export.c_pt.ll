; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_export.c_pt.bc'
source_filename = "../kernel/trace/trace_export.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }

@event_function = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_function, %union.anon.0 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 1, ptr null }, ptr @.str.1, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@event_class_ftrace_function = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr @perf_ftrace_event_register, ptr @ftrace_event_fields_function, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_function, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_function, i64 24) }, ptr null }, section ".ref.data", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\22 %ps <-- %ps\22, (void *)REC->ip, (void *)REC->parent_ip\00", [40 x i8] zeroinitializer }, align 32
@__event_function = internal global ptr @event_function, section "_ftrace_events", align 4
@event_class_ftrace_funcgraph_entry = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_funcgraph_entry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_funcgraph_entry, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_funcgraph_entry, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"funcgraph_entry\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\22--> %ps (%d)\22, (void *)REC->func, REC->depth\00", [50 x i8] zeroinitializer }, align 32
@event_funcgraph_entry = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_funcgraph_entry, %union.anon.0 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 11, ptr null }, ptr @.str.3, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_funcgraph_entry = internal global ptr @event_funcgraph_entry, section "_ftrace_events", align 4
@event_class_ftrace_funcgraph_exit = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_funcgraph_exit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_funcgraph_exit, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_funcgraph_exit, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"funcgraph_exit\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"\22<-- %ps (%d) (start: %llx  end: %llx) over: %d\22, (void *)REC->func, REC->depth, REC->calltime, REC->rettime, REC->depth\00", [39 x i8] zeroinitializer }, align 32
@event_funcgraph_exit = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_funcgraph_exit, %union.anon.0 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 10, ptr null }, ptr @.str.5, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_funcgraph_exit = internal global ptr @event_funcgraph_exit, section "_ftrace_events", align 4
@event_class_ftrace_context_switch = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_context_switch, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_context_switch, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_context_switch, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"context_switch\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [143 x i8], [49 x i8] } { [143 x i8] c"\22%u:%u:%u  ==> %u:%u:%u [%03u]\22, REC->prev_pid, REC->prev_prio, REC->prev_state, REC->next_pid, REC->next_prio, REC->next_state, REC->next_cpu\00", [49 x i8] zeroinitializer }, align 32
@event_context_switch = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_context_switch, %union.anon.0 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 2, ptr null }, ptr @.str.7, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_context_switch = internal global ptr @event_context_switch, section "_ftrace_events", align 4
@event_class_ftrace_wakeup = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_wakeup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_wakeup, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_wakeup, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [143 x i8], [49 x i8] } { [143 x i8] c"\22%u:%u:%u  ==+ %u:%u:%u [%03u]\22, REC->prev_pid, REC->prev_prio, REC->prev_state, REC->next_pid, REC->next_prio, REC->next_state, REC->next_cpu\00", [49 x i8] zeroinitializer }, align 32
@event_wakeup = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_wakeup, %union.anon.0 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 3, ptr null }, ptr @.str.9, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_wakeup = internal global ptr @event_wakeup, section "_ftrace_events", align 4
@event_class_ftrace_kernel_stack = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_kernel_stack, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_kernel_stack, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_kernel_stack, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kernel_stack\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [281 x i8], [71 x i8] } { [281 x i8] c"\22\\t=> %ps\\n\\t=> %ps\\n\\t=> %ps\\n\22 \22\\t=> %ps\\n\\t=> %ps\\n\\t=> %ps\\n\22 \22\\t=> %ps\\n\\t=> %ps\\n\22, (void *)REC->caller[0], (void *)REC->caller[1], (void *)REC->caller[2], (void *)REC->caller[3], (void *)REC->caller[4], (void *)REC->caller[5], (void *)REC->caller[6], (void *)REC->caller[7]\00", [71 x i8] zeroinitializer }, align 32
@event_kernel_stack = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_kernel_stack, %union.anon.0 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 4, ptr null }, ptr @.str.11, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_kernel_stack = internal global ptr @event_kernel_stack, section "_ftrace_events", align 4
@event_class_ftrace_user_stack = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_user_stack, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_user_stack, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_user_stack, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"user_stack\00", [21 x i8] zeroinitializer }, align 32
@event_user_stack = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_user_stack, %union.anon.0 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 12, ptr null }, ptr @.str.11, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_user_stack = internal global ptr @event_user_stack, section "_ftrace_events", align 4
@event_class_ftrace_bprint = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_bprint, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_bprint, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_bprint, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bprint\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\22%ps: %s\22, (void *)REC->ip, REC->fmt\00", [59 x i8] zeroinitializer }, align 32
@event_bprint = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_bprint, %union.anon.0 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 6, ptr null }, ptr @.str.14, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bprint = internal global ptr @event_bprint, section "_ftrace_events", align 4
@event_class_ftrace_print = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr @ftrace_event_register, ptr @ftrace_event_fields_print, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_print, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_print, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"print\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\22%ps: %s\22, (void *)REC->ip, REC->buf\00", [59 x i8] zeroinitializer }, align 32
@event_print = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_print, %union.anon.0 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 5, ptr null }, ptr @.str.16, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_print = internal global ptr @event_print, section "_ftrace_events", align 4
@event_class_ftrace_raw_data = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_raw_data, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_raw_data, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_raw_data, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raw_data\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\22id:%04x %08x\22, REC->id, (int)REC->buf[0]\00", [54 x i8] zeroinitializer }, align 32
@event_raw_data = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_raw_data, %union.anon.0 { ptr @.str.17 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 18, ptr null }, ptr @.str.18, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_raw_data = internal global ptr @event_raw_data, section "_ftrace_events", align 4
@event_class_ftrace_bputs = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_bputs, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_bputs, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_bputs, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bputs\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\22%ps: %s\22, (void *)REC->ip, REC->str\00", [59 x i8] zeroinitializer }, align 32
@event_bputs = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_bputs, %union.anon.0 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 14, ptr null }, ptr @.str.20, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_bputs = internal global ptr @event_bputs, section "_ftrace_events", align 4
@event_class_ftrace_mmiotrace_rw = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_mmiotrace_rw, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_mmiotrace_rw, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_mmiotrace_rw, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmiotrace_rw\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\22%lx %lx %lx %d %x %x\22, (unsigned long)REC->phys, REC->value, REC->pc, REC->map_id, REC->opcode, REC->width\00", [52 x i8] zeroinitializer }, align 32
@event_mmiotrace_rw = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_mmiotrace_rw, %union.anon.0 { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 7, ptr null }, ptr @.str.22, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mmiotrace_rw = internal global ptr @event_mmiotrace_rw, section "_ftrace_events", align 4
@event_class_ftrace_mmiotrace_map = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_mmiotrace_map, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_mmiotrace_map, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_mmiotrace_map, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmiotrace_map\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\22%lx %lx %lx %d %x\22, (unsigned long)REC->phys, REC->virt, REC->len, REC->map_id, REC->opcode\00", [35 x i8] zeroinitializer }, align 32
@event_mmiotrace_map = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_mmiotrace_map, %union.anon.0 { ptr @.str.23 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 8, ptr null }, ptr @.str.24, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mmiotrace_map = internal global ptr @event_mmiotrace_map, section "_ftrace_events", align 4
@event_class_ftrace_branch = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_branch, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_branch, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_branch, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"branch\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\22%u:%s:%s (%u)%s\22, REC->line, REC->func, REC->file, REC->correct, REC->constant ? \22 CONSTANT\22 : \22\22\00", [61 x i8] zeroinitializer }, align 32
@event_branch = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_branch, %union.anon.0 { ptr @.str.25 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 9, ptr null }, ptr @.str.26, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_branch = internal global ptr @event_branch, section "_ftrace_events", align 4
@event_class_ftrace_hwlat = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_hwlat, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_hwlat, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_hwlat, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwlat\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [214 x i8], [42 x i8] } { [214 x i8] c"\22cnt:%u\\tts:%010llu.%010lu\\tinner:%llu\\touter:%llu\\tcount:%d\\tnmi-ts:%llu\\tnmi-count:%u\\n\22, REC->seqnum, REC->tv_sec, REC->tv_nsec, REC->duration, REC->outer_duration, REC->count, REC->nmi_total_ts, REC->nmi_count\00", [42 x i8] zeroinitializer }, align 32
@event_hwlat = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_hwlat, %union.anon.0 { ptr @.str.27 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 15, ptr null }, ptr @.str.28, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hwlat = internal global ptr @event_hwlat, section "_ftrace_events", align 4
@event_class_ftrace_func_repeats = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_func_repeats, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_func_repeats, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_func_repeats, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"func_repeats\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [155 x i8], [37 x i8] } { [155 x i8] c"\22 %ps <-%ps\\t(repeats:%u  delta: -%llu)\22, (void *)REC->ip, (void *)REC->parent_ip, REC->count, (((u64)(REC)->top_delta_ts << 32) | (REC)->bottom_delta_ts)\00", [37 x i8] zeroinitializer }, align 32
@event_func_repeats = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_func_repeats, %union.anon.0 { ptr @.str.29 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 19, ptr null }, ptr @.str.30, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_func_repeats = internal global ptr @event_func_repeats, section "_ftrace_events", align 4
@event_class_ftrace_osnoise = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_osnoise, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_osnoise, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_osnoise, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osnoise\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [193 x i8], [63 x i8] } { [193 x i8] c"\22noise:%llu\\tmax_sample:%llu\\thw:%u\\tnmi:%u\\tirq:%u\\tsoftirq:%u\\tthread:%u\\n\22, REC->noise, REC->max_sample, REC->hw_count, REC->nmi_count, REC->irq_count, REC->softirq_count, REC->thread_count\00", [63 x i8] zeroinitializer }, align 32
@event_osnoise = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_osnoise, %union.anon.0 { ptr @.str.31 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 16, ptr null }, ptr @.str.32, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_osnoise = internal global ptr @event_osnoise, section "_ftrace_events", align 4
@event_class_ftrace_timerlat = internal global %struct.trace_event_class { ptr @.str.35, ptr null, ptr null, ptr null, ptr @ftrace_event_fields_timerlat, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ftrace_timerlat, i64 24), ptr getelementptr (i8, ptr @event_class_ftrace_timerlat, i64 24) }, ptr null }, section ".ref.data", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timerlat\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\22seq:%u\\tcontext:%d\\ttimer_latency:%llu\\n\22, REC->seqnum, REC->context, REC->timer_latency\00", [38 x i8] zeroinitializer }, align 32
@event_timerlat = dso_local global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ftrace_timerlat, %union.anon.0 { ptr @.str.33 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 17, ptr null }, ptr @.str.34, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 8, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_timerlat = internal global ptr @event_timerlat, section "_ftrace_events", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ftrace\00", [25 x i8] zeroinitializer }, align 32
@ftrace_event_fields_function = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 0, i32 5 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.38, i32 4, i32 4, i32 0, i32 5 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ip\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parent_ip\00", [22 x i8] zeroinitializer }, align 32
@ftrace_event_fields_funcgraph_entry = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.39, i32 4, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.41, i32 4, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"func\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"depth\00", [26 x i8] zeroinitializer }, align 32
@ftrace_event_fields_funcgraph_exit = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.39, i32 4, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.41, i32 4, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.43, i32 4, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.44, %union.anon { %struct.anon { ptr @.str.45, i32 8, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.44, %union.anon { %struct.anon { ptr @.str.46, i32 8, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overrun\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unsigned long long\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"calltime\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rettime\00", [24 x i8] zeroinitializer }, align 32
@ftrace_event_fields_context_switch = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.47, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.51, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.52, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.53, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.54, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prev_pid\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"next_pid\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"next_cpu\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned char\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prev_prio\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prev_state\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"next_prio\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"next_state\00", [21 x i8] zeroinitializer }, align 32
@ftrace_event_fields_wakeup = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.47, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.51, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.52, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.53, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.54, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ftrace_event_fields_kernel_stack = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon { %struct.anon { ptr @.str.57, i32 32, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unsigned long[8]\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"caller\00", [25 x i8] zeroinitializer }, align 32
@ftrace_event_fields_user_stack = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon { %struct.anon { ptr @.str.57, i32 32, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tgid\00", [27 x i8] zeroinitializer }, align 32
@ftrace_event_fields_bprint = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon { %struct.anon { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.61, %union.anon { %struct.anon { ptr @.str.62, i32 0, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fmt\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u32[]\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@ftrace_event_fields_print = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.63, %union.anon { %struct.anon { ptr @.str.62, i32 0, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char[]\00", [25 x i8] zeroinitializer }, align 32
@ftrace_event_fields_raw_data = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.64, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.63, %union.anon { %struct.anon { ptr @.str.62, i32 0, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@ftrace_event_fields_bputs = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon { %struct.anon { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"str\00", [28 x i8] zeroinitializer }, align 32
@ftrace_event_fields_mmiotrace_rw = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon { %struct.anon { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.68, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.70, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.71, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.72, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"resource_size_t\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"phys\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pc\00", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"map_id\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"opcode\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"width\00", [26 x i8] zeroinitializer }, align 32
@ftrace_event_fields_mmiotrace_map = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon { %struct.anon { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.73, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.74, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.70, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.50, %union.anon { %struct.anon { ptr @.str.71, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"virt\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@ftrace_event_fields_branch = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.75, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.76, %union.anon { %struct.anon { ptr @.str.39, i32 31, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.77, %union.anon { %struct.anon { ptr @.str.78, i32 21, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.79, %union.anon { %struct.anon { ptr @.str.80, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.79, %union.anon { %struct.anon { ptr @.str.81, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"line\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"char[30+1]\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"char[20+1]\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"char\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"correct\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"constant\00", [23 x i8] zeroinitializer }, align 32
@ftrace_event_fields_hwlat = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.82, %union.anon { %struct.anon { ptr @.str.83, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.82, %union.anon { %struct.anon { ptr @.str.84, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.82, %union.anon { %struct.anon { ptr @.str.85, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon { %struct.anon { ptr @.str.87, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.88, %union.anon { %struct.anon { ptr @.str.89, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.90, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.91, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.92, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"duration\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"outer_duration\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nmi_total_ts\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s64\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tv_sec\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tv_nsec\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nmi_count\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"seqnum\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@ftrace_event_fields_func_repeats = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.93, %union.anon { %struct.anon { ptr @.str.92, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.93, %union.anon { %struct.anon { ptr @.str.94, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.95, %union.anon { %struct.anon { ptr @.str.96, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_delta_ts\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bottom_delta_ts\00", [16 x i8] zeroinitializer }, align 32
@ftrace_event_fields_osnoise = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.82, %union.anon { %struct.anon { ptr @.str.97, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.82, %union.anon { %struct.anon { ptr @.str.98, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.82, %union.anon { %struct.anon { ptr @.str.99, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.90, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.101, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.102, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.103, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"noise\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"runtime\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"max_sample\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hw_count\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"irq_count\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"softirq_count\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thread_count\00", [19 x i8] zeroinitializer }, align 32
@ftrace_event_fields_timerlat = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.91, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon { %struct.anon { ptr @.str.104, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.82, %union.anon { %struct.anon { ptr @.str.105, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"context\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"timer_latency\00", [18 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.106 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_export.gcda\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [31 x i8] c"../kernel/trace/trace_export.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"event_function\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"event_funcgraph_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [21 x i8] c"event_funcgraph_exit\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"event_context_switch\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"event_wakeup\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"event_kernel_stack\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"event_user_stack\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"event_bprint\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"event_print\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"event_raw_data\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [12 x i8] c"event_bputs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [19 x i8] c"event_mmiotrace_rw\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"event_mmiotrace_map\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [13 x i8] c"event_branch\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [12 x i8] c"event_hwlat\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c"event_func_repeats\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [14 x i8] c"event_osnoise\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [15 x i8] c"event_timerlat\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [29 x i8] c"ftrace_event_fields_function\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 59, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant [36 x i8] c"ftrace_event_fields_funcgraph_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 75, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant [35 x i8] c"ftrace_event_fields_funcgraph_exit\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 89, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant [35 x i8] c"ftrace_event_fields_context_switch\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 123, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant [27 x i8] c"ftrace_event_fields_wakeup\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 141, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant [33 x i8] c"ftrace_event_fields_kernel_stack\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 161, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant [31 x i8] c"ftrace_event_fields_user_stack\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 179, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant [27 x i8] c"ftrace_event_fields_bprint\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 200, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [26 x i8] c"ftrace_event_fields_print\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 214, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant [29 x i8] c"ftrace_event_fields_raw_data\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 229, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant [26 x i8] c"ftrace_event_fields_bputs\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 242, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant [33 x i8] c"ftrace_event_fields_mmiotrace_rw\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 255, i32 1 }
@___asan_gen_.416 = private unnamed_addr constant [34 x i8] c"ftrace_event_fields_mmiotrace_map\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 274, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant [27 x i8] c"ftrace_event_fields_branch\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 296, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant [26 x i8] c"ftrace_event_fields_hwlat\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 315, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant [33 x i8] c"ftrace_event_fields_func_repeats\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 345, i32 1 }
@___asan_gen_.500 = private unnamed_addr constant [28 x i8] c"ftrace_event_fields_osnoise\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 364, i32 1 }
@___asan_gen_.524 = private unnamed_addr constant [29 x i8] c"ftrace_event_fields_timerlat\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [32 x i8] c"../kernel/trace/trace_entries.h\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 389, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [160 x ptr] [ptr @__event_bprint, ptr @__event_bputs, ptr @__event_branch, ptr @__event_context_switch, ptr @__event_func_repeats, ptr @__event_funcgraph_entry, ptr @__event_funcgraph_exit, ptr @__event_function, ptr @__event_hwlat, ptr @__event_kernel_stack, ptr @__event_mmiotrace_map, ptr @__event_mmiotrace_rw, ptr @__event_osnoise, ptr @__event_print, ptr @__event_raw_data, ptr @__event_timerlat, ptr @__event_user_stack, ptr @__event_wakeup, ptr @event_bprint, ptr @event_bputs, ptr @event_branch, ptr @event_context_switch, ptr @event_func_repeats, ptr @event_funcgraph_entry, ptr @event_funcgraph_exit, ptr @event_function, ptr @event_hwlat, ptr @event_kernel_stack, ptr @event_mmiotrace_map, ptr @event_mmiotrace_rw, ptr @event_osnoise, ptr @event_print, ptr @event_raw_data, ptr @event_timerlat, ptr @event_user_stack, ptr @event_wakeup, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @ftrace_event_fields_function, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @ftrace_event_fields_funcgraph_entry, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ftrace_event_fields_funcgraph_exit, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @ftrace_event_fields_context_switch, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @ftrace_event_fields_wakeup, ptr @ftrace_event_fields_kernel_stack, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @ftrace_event_fields_user_stack, ptr @.str.58, ptr @ftrace_event_fields_bprint, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @ftrace_event_fields_print, ptr @.str.63, ptr @ftrace_event_fields_raw_data, ptr @.str.64, ptr @ftrace_event_fields_bputs, ptr @.str.65, ptr @ftrace_event_fields_mmiotrace_rw, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @ftrace_event_fields_mmiotrace_map, ptr @.str.73, ptr @.str.74, ptr @ftrace_event_fields_branch, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @ftrace_event_fields_hwlat, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @ftrace_event_fields_func_repeats, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @ftrace_event_fields_osnoise, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @ftrace_event_fields_timerlat, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@1 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_function to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_funcgraph_entry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_funcgraph_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 143, i32 192, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_context_switch to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 143, i32 192, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_wakeup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 281, i32 352, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_kernel_stack to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_user_stack to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bprint to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_print to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_raw_data to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_bputs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mmiotrace_rw to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mmiotrace_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_branch to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 214, i32 256, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hwlat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 155, i32 192, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_func_repeats to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 193, i32 256, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_osnoise to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_timerlat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_function to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_funcgraph_entry to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_funcgraph_exit to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_context_switch to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_wakeup to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_kernel_stack to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_user_stack to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_bprint to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_print to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_raw_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_bputs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_mmiotrace_rw to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_mmiotrace_map to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_branch to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_hwlat to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_func_repeats to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_osnoise to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_event_fields_timerlat to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ftrace_event_is_function(ptr noundef readnone %call) local_unnamed_addr #0 align 64 !dbg !208 {
entry:
  call void @__sanitizer_cov_trace_pc() #5, !dbg !211
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 8
  %cmp = icmp eq ptr %call, @event_function, !dbg !212
  ret i1 %cmp, !dbg !213
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_ftrace_event_register(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ftrace_event_register(ptr nocapture noundef readnone %call, i32 noundef %type, ptr nocapture noundef readnone %data) #0 align 64 !dbg !214 {
entry:
  call void @__sanitizer_cov_trace_pc() #5, !dbg !215
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.106, align 8
  ret i32 0, !dbg !216
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #2 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -801444649) #6
  tail call void @llvm_gcda_emit_function(i32 0, i32 1215890353, i32 -801444649) #6
  tail call void @llvm_gcda_emit_arcs(i32 1, ptr nonnull @__llvm_gcov_ctr) #6
  tail call void @llvm_gcda_emit_function(i32 1, i32 860905038, i32 -801444649) #6
  tail call void @llvm_gcda_emit_arcs(i32 1, ptr nonnull @__llvm_gcov_ctr.106) #6
  tail call void @llvm_gcda_summary_info() #6
  tail call void @llvm_gcda_end_file() #6
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #3 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  store i64 0, ptr @__llvm_gcov_ctr.106, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #2 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #6
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 143)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind uwtable(sync) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable(sync) }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.gcov = !{!206}
!llvm.ident = !{!207}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_export.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_entries.h", i32 59, i32 1}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_function, !3, !"event_function", i1 false, i1 false}
!6 = !{ptr @__event_function, !3, !"__event_function", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../kernel/trace/trace_entries.h", i32 75, i32 1}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @event_funcgraph_entry, !8, !"event_funcgraph_entry", i1 false, i1 false}
!11 = !{ptr @__event_funcgraph_entry, !8, !"__event_funcgraph_entry", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/trace/trace_entries.h", i32 89, i32 1}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_funcgraph_exit, !13, !"event_funcgraph_exit", i1 false, i1 false}
!16 = !{ptr @__event_funcgraph_exit, !13, !"__event_funcgraph_exit", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/trace/trace_entries.h", i32 123, i32 1}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @event_context_switch, !18, !"event_context_switch", i1 false, i1 false}
!21 = !{ptr @__event_context_switch, !18, !"__event_context_switch", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/trace/trace_entries.h", i32 141, i32 1}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_wakeup, !23, !"event_wakeup", i1 false, i1 false}
!26 = !{ptr @__event_wakeup, !23, !"__event_wakeup", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/trace/trace_entries.h", i32 161, i32 1}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @event_kernel_stack, !28, !"event_kernel_stack", i1 false, i1 false}
!31 = !{ptr @__event_kernel_stack, !28, !"__event_kernel_stack", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/trace/trace_entries.h", i32 179, i32 1}
!34 = !{ptr @event_user_stack, !33, !"event_user_stack", i1 false, i1 false}
!35 = !{ptr @__event_user_stack, !33, !"__event_user_stack", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/trace/trace_entries.h", i32 200, i32 1}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @event_bprint, !37, !"event_bprint", i1 false, i1 false}
!40 = !{ptr @__event_bprint, !37, !"__event_bprint", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/trace/trace_entries.h", i32 214, i32 1}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @event_print, !42, !"event_print", i1 false, i1 false}
!45 = !{ptr @__event_print, !42, !"__event_print", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/trace/trace_entries.h", i32 229, i32 1}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @event_raw_data, !47, !"event_raw_data", i1 false, i1 false}
!50 = !{ptr @__event_raw_data, !47, !"__event_raw_data", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/trace/trace_entries.h", i32 242, i32 1}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @event_bputs, !52, !"event_bputs", i1 false, i1 false}
!55 = !{ptr @__event_bputs, !52, !"__event_bputs", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/trace/trace_entries.h", i32 255, i32 1}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @event_mmiotrace_rw, !57, !"event_mmiotrace_rw", i1 false, i1 false}
!60 = !{ptr @__event_mmiotrace_rw, !57, !"__event_mmiotrace_rw", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/trace/trace_entries.h", i32 274, i32 1}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @event_mmiotrace_map, !62, !"event_mmiotrace_map", i1 false, i1 false}
!65 = !{ptr @__event_mmiotrace_map, !62, !"__event_mmiotrace_map", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/trace/trace_entries.h", i32 296, i32 1}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @event_branch, !67, !"event_branch", i1 false, i1 false}
!70 = !{ptr @__event_branch, !67, !"__event_branch", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/trace/trace_entries.h", i32 315, i32 1}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @event_hwlat, !72, !"event_hwlat", i1 false, i1 false}
!75 = !{ptr @__event_hwlat, !72, !"__event_hwlat", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/trace/trace_entries.h", i32 345, i32 1}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @event_func_repeats, !77, !"event_func_repeats", i1 false, i1 false}
!80 = !{ptr @__event_func_repeats, !77, !"__event_func_repeats", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/trace/trace_entries.h", i32 364, i32 1}
!83 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @event_osnoise, !82, !"event_osnoise", i1 false, i1 false}
!85 = !{ptr @__event_osnoise, !82, !"__event_osnoise", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/trace/trace_entries.h", i32 389, i32 1}
!88 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @event_timerlat, !87, !"event_timerlat", i1 false, i1 false}
!90 = !{ptr @__event_timerlat, !87, !"__event_timerlat", i1 false, i1 false}
!91 = !{ptr @.str.35, !3, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @event_class_ftrace_function, !3, !"event_class_ftrace_function", i1 false, i1 false}
!93 = !{ptr @.str.36, !3, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.37, !3, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.38, !3, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ftrace_event_fields_function, !3, !"ftrace_event_fields_function", i1 false, i1 false}
!97 = !{ptr @event_class_ftrace_funcgraph_entry, !8, !"event_class_ftrace_funcgraph_entry", i1 false, i1 false}
!98 = !{ptr @.str.39, !8, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.40, !8, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.41, !8, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ftrace_event_fields_funcgraph_entry, !8, !"ftrace_event_fields_funcgraph_entry", i1 false, i1 false}
!102 = !{ptr @event_class_ftrace_funcgraph_exit, !13, !"event_class_ftrace_funcgraph_exit", i1 false, i1 false}
!103 = !{ptr @.str.42, !13, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.43, !13, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.44, !13, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.45, !13, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.46, !13, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ftrace_event_fields_funcgraph_exit, !13, !"ftrace_event_fields_funcgraph_exit", i1 false, i1 false}
!109 = !{ptr @event_class_ftrace_context_switch, !18, !"event_class_ftrace_context_switch", i1 false, i1 false}
!110 = !{ptr @.str.47, !18, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.48, !18, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.49, !18, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.50, !18, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.51, !18, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.52, !18, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.53, !18, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.54, !18, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ftrace_event_fields_context_switch, !18, !"ftrace_event_fields_context_switch", i1 false, i1 false}
!119 = !{ptr @event_class_ftrace_wakeup, !23, !"event_class_ftrace_wakeup", i1 false, i1 false}
!120 = !{ptr @ftrace_event_fields_wakeup, !23, !"ftrace_event_fields_wakeup", i1 false, i1 false}
!121 = !{ptr @event_class_ftrace_kernel_stack, !28, !"event_class_ftrace_kernel_stack", i1 false, i1 false}
!122 = !{ptr @.str.55, !28, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.56, !28, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.57, !28, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ftrace_event_fields_kernel_stack, !28, !"ftrace_event_fields_kernel_stack", i1 false, i1 false}
!126 = !{ptr @event_class_ftrace_user_stack, !33, !"event_class_ftrace_user_stack", i1 false, i1 false}
!127 = !{ptr @.str.58, !33, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ftrace_event_fields_user_stack, !33, !"ftrace_event_fields_user_stack", i1 false, i1 false}
!129 = !{ptr @event_class_ftrace_bprint, !37, !"event_class_ftrace_bprint", i1 false, i1 false}
!130 = !{ptr @.str.59, !37, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.60, !37, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.61, !37, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.62, !37, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ftrace_event_fields_bprint, !37, !"ftrace_event_fields_bprint", i1 false, i1 false}
!135 = !{ptr @event_class_ftrace_print, !42, !"event_class_ftrace_print", i1 false, i1 false}
!136 = !{ptr @.str.63, !42, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ftrace_event_fields_print, !42, !"ftrace_event_fields_print", i1 false, i1 false}
!138 = !{ptr @event_class_ftrace_raw_data, !47, !"event_class_ftrace_raw_data", i1 false, i1 false}
!139 = !{ptr @.str.64, !47, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ftrace_event_fields_raw_data, !47, !"ftrace_event_fields_raw_data", i1 false, i1 false}
!141 = !{ptr @event_class_ftrace_bputs, !52, !"event_class_ftrace_bputs", i1 false, i1 false}
!142 = !{ptr @.str.65, !52, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ftrace_event_fields_bputs, !52, !"ftrace_event_fields_bputs", i1 false, i1 false}
!144 = !{ptr @event_class_ftrace_mmiotrace_rw, !57, !"event_class_ftrace_mmiotrace_rw", i1 false, i1 false}
!145 = !{ptr @.str.66, !57, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.67, !57, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.68, !57, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.69, !57, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.70, !57, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.71, !57, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.72, !57, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ftrace_event_fields_mmiotrace_rw, !57, !"ftrace_event_fields_mmiotrace_rw", i1 false, i1 false}
!153 = !{ptr @event_class_ftrace_mmiotrace_map, !62, !"event_class_ftrace_mmiotrace_map", i1 false, i1 false}
!154 = !{ptr @.str.73, !62, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.74, !62, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @ftrace_event_fields_mmiotrace_map, !62, !"ftrace_event_fields_mmiotrace_map", i1 false, i1 false}
!157 = !{ptr @event_class_ftrace_branch, !67, !"event_class_ftrace_branch", i1 false, i1 false}
!158 = !{ptr @.str.75, !67, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.76, !67, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.77, !67, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.78, !67, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.79, !67, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.80, !67, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.81, !67, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @ftrace_event_fields_branch, !67, !"ftrace_event_fields_branch", i1 false, i1 false}
!166 = !{ptr @event_class_ftrace_hwlat, !72, !"event_class_ftrace_hwlat", i1 false, i1 false}
!167 = !{ptr @.str.82, !72, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.83, !72, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.84, !72, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.85, !72, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.86, !72, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.87, !72, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.88, !72, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.89, !72, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.90, !72, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.91, !72, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.92, !72, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @ftrace_event_fields_hwlat, !72, !"ftrace_event_fields_hwlat", i1 false, i1 false}
!179 = !{ptr @event_class_ftrace_func_repeats, !77, !"event_class_ftrace_func_repeats", i1 false, i1 false}
!180 = !{ptr @.str.93, !77, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.94, !77, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.95, !77, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.96, !77, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @ftrace_event_fields_func_repeats, !77, !"ftrace_event_fields_func_repeats", i1 false, i1 false}
!185 = !{ptr @event_class_ftrace_osnoise, !82, !"event_class_ftrace_osnoise", i1 false, i1 false}
!186 = !{ptr @.str.97, !82, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.98, !82, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.99, !82, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.100, !82, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.101, !82, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.102, !82, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.103, !82, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @ftrace_event_fields_osnoise, !82, !"ftrace_event_fields_osnoise", i1 false, i1 false}
!194 = !{ptr @event_class_ftrace_timerlat, !87, !"event_class_ftrace_timerlat", i1 false, i1 false}
!195 = !{ptr @.str.104, !87, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.105, !87, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @ftrace_event_fields_timerlat, !87, !"ftrace_event_fields_timerlat", i1 false, i1 false}
!198 = !{i32 2, !"Debug Info Version", i32 3}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_export.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_export.gcda", !0}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = distinct !DISubprogram(name: "ftrace_event_is_function", scope: !1, file: !1, line: 186, type: !209, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !210)
!209 = !DISubroutineType(types: !210)
!210 = !{}
!211 = !DILocation(line: 187, scope: !208)
!212 = !DILocation(line: 188, column: 14, scope: !208)
!213 = !DILocation(line: 188, column: 2, scope: !208)
!214 = distinct !DISubprogram(name: "ftrace_event_register", scope: !1, file: !1, line: 18, type: !209, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !210)
!215 = !DILocation(line: 20, scope: !214)
!216 = !DILocation(line: 21, column: 2, scope: !214)
