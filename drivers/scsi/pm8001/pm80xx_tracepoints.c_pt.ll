; ModuleID = '/llk/IR_all_yes/drivers/scsi/pm8001/pm80xx_tracepoints.c_pt.bc'
source_filename = "../drivers/scsi/pm8001/pm80xx_tracepoints.c"
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
%union.anon.111 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_pm80xx_request_issue = type { %struct.trace_entry, i32, i32, i32, i32, i16, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_pm80xx_request_complete = type { %struct.trace_entry, i32, i32, i32, i32, i16, i32, [0 x i8] }
%struct.trace_event_raw_pm80xx_mpi_build_cmd = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_pm80xx_request_issue = internal constant [21 x i8] c"pm80xx_request_issue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pm80xx_request_issue = dso_local global %struct.static_call_key { ptr @__traceiter_pm80xx_request_issue }, align 4
@__tracepoint_pm80xx_request_issue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_pm80xx_request_issue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_pm80xx_request_issue, ptr null, ptr @__traceiter_pm80xx_request_issue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pm80xx_request_issue = internal constant ptr @__tracepoint_pm80xx_request_issue, section "__tracepoints_ptrs", align 4
@__tpstrtab_pm80xx_request_complete = internal constant [24 x i8] c"pm80xx_request_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pm80xx_request_complete = dso_local global %struct.static_call_key { ptr @__traceiter_pm80xx_request_complete }, align 4
@__tracepoint_pm80xx_request_complete = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_pm80xx_request_complete, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_pm80xx_request_complete, ptr null, ptr @__traceiter_pm80xx_request_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pm80xx_request_complete = internal constant ptr @__tracepoint_pm80xx_request_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_pm80xx_mpi_build_cmd = internal constant [21 x i8] c"pm80xx_mpi_build_cmd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pm80xx_mpi_build_cmd = dso_local global %struct.static_call_key { ptr @__traceiter_pm80xx_mpi_build_cmd }, align 4
@__tracepoint_pm80xx_mpi_build_cmd = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_pm80xx_mpi_build_cmd, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_pm80xx_mpi_build_cmd, ptr null, ptr @__traceiter_pm80xx_mpi_build_cmd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pm80xx_mpi_build_cmd = internal constant ptr @__tracepoint_pm80xx_mpi_build_cmd, section "__tracepoints_ptrs", align 4
@str__pm80xx__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm80xx\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_pm80xx_request_issue = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.0 { %struct.anon { ptr @.str.6, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.0 { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_pm80xx_request_issue = internal global %struct.trace_event_class { ptr @str__pm80xx__trace_system_name, ptr @trace_event_raw_event_pm80xx_request_issue, ptr @perf_trace_pm80xx_request_issue, ptr @trace_event_reg, ptr @trace_event_fields_pm80xx_request_issue, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_pm80xx_request_issue, i64 24), ptr getelementptr (i8, ptr @event_class_pm80xx_request_issue, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_pm80xx_request_issue = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_pm80xx_request_issue, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_pm80xx_request_issue = internal global { [177 x i8], [47 x i8] } { [177 x i8] c"\22ctlr_id = %u phy_id = %u htag = %#x, ctlr_opcode = %#x ata_opcode = %#x running_req = %d\22, REC->id, REC->phy_id, REC->htag, REC->ctlr_opcode, REC->ata_opcode, REC->running_req\00", [47 x i8] zeroinitializer }, align 32
@event_pm80xx_request_issue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pm80xx_request_issue, %union.anon.1 { ptr @__tracepoint_pm80xx_request_issue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pm80xx_request_issue }, ptr @print_fmt_pm80xx_request_issue, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_pm80xx_request_issue = internal global ptr @event_pm80xx_request_issue, section "_ftrace_events", align 4
@trace_event_fields_pm80xx_request_complete = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.0 { %struct.anon { ptr @.str.6, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.0 { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_pm80xx_request_complete = internal global %struct.trace_event_class { ptr @str__pm80xx__trace_system_name, ptr @trace_event_raw_event_pm80xx_request_complete, ptr @perf_trace_pm80xx_request_complete, ptr @trace_event_reg, ptr @trace_event_fields_pm80xx_request_complete, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_pm80xx_request_complete, i64 24), ptr getelementptr (i8, ptr @event_class_pm80xx_request_complete, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_pm80xx_request_complete = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_pm80xx_request_complete, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_pm80xx_request_complete = internal global { [177 x i8], [47 x i8] } { [177 x i8] c"\22ctlr_id = %u phy_id = %u htag = %#x, ctlr_opcode = %#x ata_opcode = %#x running_req = %d\22, REC->id, REC->phy_id, REC->htag, REC->ctlr_opcode, REC->ata_opcode, REC->running_req\00", [47 x i8] zeroinitializer }, align 32
@event_pm80xx_request_complete = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pm80xx_request_complete, %union.anon.1 { ptr @__tracepoint_pm80xx_request_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pm80xx_request_complete }, ptr @print_fmt_pm80xx_request_complete, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_pm80xx_request_complete = internal global ptr @event_pm80xx_request_complete, section "_ftrace_events", align 4
@trace_event_fields_pm80xx_mpi_build_cmd = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_pm80xx_mpi_build_cmd = internal global %struct.trace_event_class { ptr @str__pm80xx__trace_system_name, ptr @trace_event_raw_event_pm80xx_mpi_build_cmd, ptr @perf_trace_pm80xx_mpi_build_cmd, ptr @trace_event_reg, ptr @trace_event_fields_pm80xx_mpi_build_cmd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_pm80xx_mpi_build_cmd, i64 24), ptr getelementptr (i8, ptr @event_class_pm80xx_mpi_build_cmd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_pm80xx_mpi_build_cmd = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_pm80xx_mpi_build_cmd, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_pm80xx_mpi_build_cmd = internal global { [117 x i8], [43 x i8] } { [117 x i8] c"\22ctlr_id = %u opc = %#x htag = %#x QI = %u PI = %u CI = %u\22, REC->id, REC->opc, REC->htag, REC->qi, REC->pi, REC->ci\00", [43 x i8] zeroinitializer }, align 32
@event_pm80xx_mpi_build_cmd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pm80xx_mpi_build_cmd, %union.anon.1 { ptr @__tracepoint_pm80xx_mpi_build_cmd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pm80xx_mpi_build_cmd }, ptr @print_fmt_pm80xx_mpi_build_cmd, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_pm80xx_mpi_build_cmd = internal global ptr @event_pm80xx_mpi_build_cmd, section "_ftrace_events", align 4
@__bpf_trace_tp_map_pm80xx_request_issue = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_pm80xx_request_issue, ptr @__bpf_trace_pm80xx_request_issue, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_pm80xx_request_complete = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_pm80xx_request_complete, ptr @__bpf_trace_pm80xx_request_complete, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_pm80xx_mpi_build_cmd = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_pm80xx_mpi_build_cmd, ptr @__bpf_trace_pm80xx_mpi_build_cmd, i32 6, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phy_id\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"htag\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ctlr_opcode\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ata_opcode\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"running_req\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"ctlr_id = %u phy_id = %u htag = %#x, ctlr_opcode = %#x ata_opcode = %#x running_req = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"opc\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"qi\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pi\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ci\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ctlr_id = %u opc = %#x htag = %#x QI = %u PI = %u CI = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [44 x i8] c"../drivers/scsi/pm8001/pm80xx_tracepoints.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [31 x i8] c"str__pm80xx__trace_system_name\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 36, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [40 x i8] c"trace_event_fields_pm80xx_request_issue\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_pm80xx_request_issue\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [31 x i8] c"print_fmt_pm80xx_request_issue\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [27 x i8] c"event_pm80xx_request_issue\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [43 x i8] c"trace_event_fields_pm80xx_request_complete\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_pm80xx_request_complete\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [34 x i8] c"print_fmt_pm80xx_request_complete\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [30 x i8] c"event_pm80xx_request_complete\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 48, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant [40 x i8] c"trace_event_fields_pm80xx_mpi_build_cmd\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_pm80xx_mpi_build_cmd\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"print_fmt_pm80xx_mpi_build_cmd\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"event_pm80xx_mpi_build_cmd\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 18, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [46 x i8] c"../drivers/scsi/pm8001/./pm80xx_tracepoints.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 78, i32 1 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__bpf_trace_tp_map_pm80xx_mpi_build_cmd, ptr @__bpf_trace_tp_map_pm80xx_request_complete, ptr @__bpf_trace_tp_map_pm80xx_request_issue, ptr @__event_pm80xx_mpi_build_cmd, ptr @__event_pm80xx_request_complete, ptr @__event_pm80xx_request_issue, ptr @__tracepoint_pm80xx_mpi_build_cmd, ptr @__tracepoint_pm80xx_request_complete, ptr @__tracepoint_pm80xx_request_issue, ptr @__tracepoint_ptr_pm80xx_mpi_build_cmd, ptr @__tracepoint_ptr_pm80xx_request_complete, ptr @__tracepoint_ptr_pm80xx_request_issue, ptr @event_class_pm80xx_mpi_build_cmd, ptr @event_class_pm80xx_request_complete, ptr @event_class_pm80xx_request_issue, ptr @event_pm80xx_mpi_build_cmd, ptr @event_pm80xx_request_complete, ptr @event_pm80xx_request_issue, ptr @str__pm80xx__trace_system_name, ptr @trace_event_fields_pm80xx_request_issue, ptr @trace_event_type_funcs_pm80xx_request_issue, ptr @print_fmt_pm80xx_request_issue, ptr @trace_event_fields_pm80xx_request_complete, ptr @trace_event_type_funcs_pm80xx_request_complete, ptr @print_fmt_pm80xx_request_complete, ptr @trace_event_fields_pm80xx_mpi_build_cmd, ptr @trace_event_type_funcs_pm80xx_mpi_build_cmd, ptr @print_fmt_pm80xx_mpi_build_cmd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__pm80xx__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_pm80xx_request_issue to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_pm80xx_request_issue to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_pm80xx_request_issue to i32), i32 177, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_pm80xx_request_issue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_pm80xx_request_complete to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_pm80xx_request_complete to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_pm80xx_request_complete to i32), i32 177, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_pm80xx_request_complete to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_pm80xx_mpi_build_cmd to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_pm80xx_mpi_build_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_pm80xx_mpi_build_cmd to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_pm80xx_mpi_build_cmd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pm80xx_request_issue(ptr nocapture readnone %__data, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pm80xx_request_issue, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #5
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
define dso_local i32 @__traceiter_pm80xx_request_complete(ptr nocapture readnone %__data, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pm80xx_request_complete, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #5
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
define dso_local i32 @__traceiter_pm80xx_mpi_build_cmd(ptr nocapture readnone %__data, i32 noundef %id, i32 noundef %opc, i32 noundef %htag, i32 noundef %qi, i32 noundef %pi, i32 noundef %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_pm80xx_mpi_build_cmd, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %id, i32 noundef %opc, i32 noundef %htag, i32 noundef %qi, i32 noundef %pi, i32 noundef %ci) #5
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
define internal void @trace_event_raw_event_pm80xx_request_issue(ptr noundef %__data, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !63

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !64

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %id6 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %id, ptr %id6, align 4
  %phy_id7 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %phy_id7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_id, ptr %phy_id7, align 4
  %htag8 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %htag8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %htag, ptr %htag8, align 4
  %ctlr_opcode9 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %ctlr_opcode9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ctlr_opcode, ptr %ctlr_opcode9, align 4
  %ata_opcode10 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %ata_opcode10 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %ata_opcode, ptr %ata_opcode10, align 4
  %running_req11 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %running_req11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %running_req, ptr %running_req11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_pm80xx_request_issue(ptr noundef %__data, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !65
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !53) #5
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !53) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id17 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %id, ptr %id17, align 4
  %phy_id18 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %phy_id18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %phy_id, ptr %phy_id18, align 4
  %htag19 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %htag19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %htag, ptr %htag19, align 4
  %ctlr_opcode20 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %ctlr_opcode20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ctlr_opcode, ptr %ctlr_opcode20, align 4
  %ata_opcode21 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %ata_opcode21 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %ata_opcode, ptr %ata_opcode21, align 4
  %running_req22 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %running_req22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %running_req, ptr %running_req22, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #5
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
define internal void @trace_event_raw_event_pm80xx_request_complete(ptr noundef %__data, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !63

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !64

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %id6 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %id, ptr %id6, align 4
  %phy_id7 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %phy_id7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_id, ptr %phy_id7, align 4
  %htag8 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %htag8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %htag, ptr %htag8, align 4
  %ctlr_opcode9 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %ctlr_opcode9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ctlr_opcode, ptr %ctlr_opcode9, align 4
  %ata_opcode10 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %ata_opcode10 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %ata_opcode, ptr %ata_opcode10, align 4
  %running_req11 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %running_req11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %running_req, ptr %running_req11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_pm80xx_request_complete(ptr noundef %__data, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !65
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !53) #5
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !53) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id17 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %id, ptr %id17, align 4
  %phy_id18 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %phy_id18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %phy_id, ptr %phy_id18, align 4
  %htag19 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %htag19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %htag, ptr %htag19, align 4
  %ctlr_opcode20 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %ctlr_opcode20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ctlr_opcode, ptr %ctlr_opcode20, align 4
  %ata_opcode21 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %ata_opcode21 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %ata_opcode, ptr %ata_opcode21, align 4
  %running_req22 = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %running_req22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %running_req, ptr %running_req22, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_pm80xx_mpi_build_cmd(ptr noundef %__data, i32 noundef %id, i32 noundef %opc, i32 noundef %htag, i32 noundef %qi, i32 noundef %pi, i32 noundef %ci) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !63

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !64

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %id6 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %id, ptr %id6, align 4
  %opc7 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %opc7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %opc, ptr %opc7, align 4
  %htag8 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %htag8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %htag, ptr %htag8, align 4
  %qi9 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %qi9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %qi, ptr %qi9, align 4
  %pi10 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %pi10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %pi, ptr %pi10, align 4
  %ci11 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %ci11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ci, ptr %ci11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_pm80xx_mpi_build_cmd(ptr noundef %__data, i32 noundef %id, i32 noundef %opc, i32 noundef %htag, i32 noundef %qi, i32 noundef %pi, i32 noundef %ci) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !65
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !53) #5
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !53) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %id17 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %id, ptr %id17, align 4
  %opc18 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %opc18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %opc, ptr %opc18, align 4
  %htag19 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %htag19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %htag, ptr %htag19, align 4
  %qi20 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %qi20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %qi, ptr %qi20, align 4
  %pi21 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %pi21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %pi, ptr %pi21, align 4
  %ci22 = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %ci22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %ci, ptr %ci22, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_pm80xx_request_issue(ptr noundef %__data, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %id to i64
  %conv4 = zext i32 %phy_id to i64
  %conv8 = zext i32 %htag to i64
  %conv12 = zext i32 %ctlr_opcode to i64
  %conv16 = zext i16 %ata_opcode to i64
  %conv20 = zext i32 %running_req to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_pm80xx_request_complete(ptr noundef %__data, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef %ctlr_opcode, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %id to i64
  %conv4 = zext i32 %phy_id to i64
  %conv8 = zext i32 %htag to i64
  %conv12 = zext i32 %ctlr_opcode to i64
  %conv16 = zext i16 %ata_opcode to i64
  %conv20 = zext i32 %running_req to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_pm80xx_mpi_build_cmd(ptr noundef %__data, i32 noundef %id, i32 noundef %opc, i32 noundef %htag, i32 noundef %qi, i32 noundef %pi, i32 noundef %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %id to i64
  %conv4 = zext i32 %opc to i64
  %conv8 = zext i32 %htag to i64
  %conv12 = zext i32 %qi to i64
  %conv16 = zext i32 %pi to i64
  %conv20 = zext i32 %ci to i64
  tail call void @bpf_trace_run6(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_pm80xx_request_issue(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %id = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %phy_id = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_id, align 4
  %htag = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %htag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %htag, align 4
  %ctlr_opcode = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ctlr_opcode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctlr_opcode, align 4
  %ata_opcode = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ata_opcode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ata_opcode, align 4
  %conv = zext i16 %11 to i32
  %running_req = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_issue, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %running_req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %running_req, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %conv, i32 noundef %13) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
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
define internal i32 @trace_raw_output_pm80xx_request_complete(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %id = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %phy_id = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_id, align 4
  %htag = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %htag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %htag, align 4
  %ctlr_opcode = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ctlr_opcode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctlr_opcode, align 4
  %ata_opcode = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ata_opcode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ata_opcode, align 4
  %conv = zext i16 %11 to i32
  %running_req = getelementptr inbounds %struct.trace_event_raw_pm80xx_request_complete, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %running_req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %running_req, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %conv, i32 noundef %13) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_pm80xx_mpi_build_cmd(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %id = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %opc = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %opc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opc, align 4
  %htag = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %htag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %htag, align 4
  %qi = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %qi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qi, align 4
  %pi = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pi, align 4
  %ci = getelementptr inbounds %struct.trace_event_raw_pm80xx_mpi_build_cmd, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ci, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #5
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
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
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run6(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__tracepoint_pm80xx_request_issue, !1, !"__tracepoint_pm80xx_request_issue", i1 false, i1 false}
!1 = !{!"../drivers/scsi/pm8001/./pm80xx_tracepoints.h", i32 18, i32 1}
!2 = !{ptr @__tracepoint_ptr_pm80xx_request_issue, !1, !"__tracepoint_ptr_pm80xx_request_issue", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_pm80xx_request_issue, !1, !"__SCK__tp_func_pm80xx_request_issue", i1 false, i1 false}
!4 = !{ptr @__tracepoint_pm80xx_request_complete, !5, !"__tracepoint_pm80xx_request_complete", i1 false, i1 false}
!5 = !{!"../drivers/scsi/pm8001/./pm80xx_tracepoints.h", i32 48, i32 1}
!6 = !{ptr @__tracepoint_ptr_pm80xx_request_complete, !5, !"__tracepoint_ptr_pm80xx_request_complete", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_pm80xx_request_complete, !5, !"__SCK__tp_func_pm80xx_request_complete", i1 false, i1 false}
!8 = !{ptr @__tracepoint_pm80xx_mpi_build_cmd, !9, !"__tracepoint_pm80xx_mpi_build_cmd", i1 false, i1 false}
!9 = !{!"../drivers/scsi/pm8001/./pm80xx_tracepoints.h", i32 78, i32 1}
!10 = !{ptr @__tracepoint_ptr_pm80xx_mpi_build_cmd, !9, !"__tracepoint_ptr_pm80xx_mpi_build_cmd", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_pm80xx_mpi_build_cmd, !9, !"__SCK__tp_func_pm80xx_mpi_build_cmd", i1 false, i1 false}
!12 = !{ptr @event_class_pm80xx_request_issue, !1, !"event_class_pm80xx_request_issue", i1 false, i1 false}
!13 = !{ptr @event_pm80xx_request_issue, !1, !"event_pm80xx_request_issue", i1 false, i1 false}
!14 = !{ptr @__event_pm80xx_request_issue, !1, !"__event_pm80xx_request_issue", i1 false, i1 false}
!15 = !{ptr @event_class_pm80xx_request_complete, !5, !"event_class_pm80xx_request_complete", i1 false, i1 false}
!16 = !{ptr @event_pm80xx_request_complete, !5, !"event_pm80xx_request_complete", i1 false, i1 false}
!17 = !{ptr @__event_pm80xx_request_complete, !5, !"__event_pm80xx_request_complete", i1 false, i1 false}
!18 = !{ptr @event_class_pm80xx_mpi_build_cmd, !9, !"event_class_pm80xx_mpi_build_cmd", i1 false, i1 false}
!19 = !{ptr @event_pm80xx_mpi_build_cmd, !9, !"event_pm80xx_mpi_build_cmd", i1 false, i1 false}
!20 = !{ptr @__event_pm80xx_mpi_build_cmd, !9, !"__event_pm80xx_mpi_build_cmd", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_pm80xx_request_issue, !1, !"__bpf_trace_tp_map_pm80xx_request_issue", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_pm80xx_request_complete, !5, !"__bpf_trace_tp_map_pm80xx_request_complete", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_pm80xx_mpi_build_cmd, !9, !"__bpf_trace_tp_map_pm80xx_mpi_build_cmd", i1 false, i1 false}
!24 = !{ptr @__tpstrtab_pm80xx_request_issue, !1, !"__tpstrtab_pm80xx_request_issue", i1 false, i1 false}
!25 = !{ptr @__tpstrtab_pm80xx_request_complete, !5, !"__tpstrtab_pm80xx_request_complete", i1 false, i1 false}
!26 = !{ptr @__tpstrtab_pm80xx_mpi_build_cmd, !9, !"__tpstrtab_pm80xx_mpi_build_cmd", i1 false, i1 false}
!27 = !{ptr @str__pm80xx__trace_system_name, !28, !"str__pm80xx__trace_system_name", i1 false, i1 false}
!28 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!29 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @trace_event_fields_pm80xx_request_issue, !1, !"trace_event_fields_pm80xx_request_issue", i1 false, i1 false}
!39 = !{ptr @trace_event_type_funcs_pm80xx_request_issue, !1, !"trace_event_type_funcs_pm80xx_request_issue", i1 false, i1 false}
!40 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @print_fmt_pm80xx_request_issue, !1, !"print_fmt_pm80xx_request_issue", i1 false, i1 false}
!42 = !{ptr @trace_event_fields_pm80xx_request_complete, !5, !"trace_event_fields_pm80xx_request_complete", i1 false, i1 false}
!43 = !{ptr @trace_event_type_funcs_pm80xx_request_complete, !5, !"trace_event_type_funcs_pm80xx_request_complete", i1 false, i1 false}
!44 = !{ptr @print_fmt_pm80xx_request_complete, !5, !"print_fmt_pm80xx_request_complete", i1 false, i1 false}
!45 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @trace_event_fields_pm80xx_mpi_build_cmd, !9, !"trace_event_fields_pm80xx_mpi_build_cmd", i1 false, i1 false}
!50 = !{ptr @trace_event_type_funcs_pm80xx_mpi_build_cmd, !9, !"trace_event_type_funcs_pm80xx_mpi_build_cmd", i1 false, i1 false}
!51 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @print_fmt_pm80xx_mpi_build_cmd, !9, !"print_fmt_pm80xx_mpi_build_cmd", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"auto-init"}
