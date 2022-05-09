; ModuleID = '/llk/IR_all_yes/net/batman-adv/trace.c_pt.bc'
source_filename = "../net/batman-adv/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.138 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.140, %struct.trace_event, ptr, ptr, %union.anon.141, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.140 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.141 = type { ptr }
%union.anon.142 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.batadv_priv_bla = type { %struct.atomic_t, ptr, ptr, [6 x i8], i32, %struct.atomic_t, [16 x %struct.batadv_bcast_duplist_entry], i32, %struct.spinlock, %struct.batadv_bla_claim_dst, %struct.delayed_work }
%struct.batadv_bcast_duplist_entry = type { [6 x i8], i32, i32 }
%struct.batadv_bla_claim_dst = type { [3 x i8], i8, i16 }
%struct.batadv_priv_gw = type { %struct.hlist_head, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv_tt = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, ptr, ptr, %struct.hlist_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i16, %struct.spinlock, %struct.spinlock, %struct.delayed_work }
%struct.batadv_priv_tvlv = type { %struct.hlist_head, %struct.hlist_head, %struct.spinlock, %struct.spinlock }
%struct.batadv_priv_dat = type { i16, ptr, %struct.delayed_work }
%struct.batadv_priv_mcast = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.batadv_mcast_mla_flags, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.delayed_work }
%struct.batadv_mcast_mla_flags = type { %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state, i8, i8 }
%struct.batadv_mcast_querier_state = type { i8 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_event_raw_batadv_dbg = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.va_format = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_batadv_dbg = internal constant [11 x i8] c"batadv_dbg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_batadv_dbg = dso_local global %struct.static_call_key { ptr @__traceiter_batadv_dbg }, align 4
@__tracepoint_batadv_dbg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_batadv_dbg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_batadv_dbg, ptr null, ptr @__traceiter_batadv_dbg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_batadv_dbg = internal constant ptr @__tracepoint_batadv_dbg, section "__tracepoints_ptrs", align 4
@str__batadv__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"batadv\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_batadv_dbg = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.138 { %struct.anon.139 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.138 { %struct.anon.139 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.138 { %struct.anon.139 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_batadv_dbg = internal global %struct.trace_event_class { ptr @str__batadv__trace_system_name, ptr @trace_event_raw_event_batadv_dbg, ptr @perf_trace_batadv_dbg, ptr @trace_event_reg, ptr @trace_event_fields_batadv_dbg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_batadv_dbg, i64 24), ptr getelementptr (i8, ptr @event_class_batadv_dbg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_batadv_dbg = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_batadv_dbg, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_batadv_dbg = internal global { [65 x i8], [63 x i8] } { [65 x i8] c"\22%s %s %s\22, __get_str(driver), __get_str(device), __get_str(msg)\00", [63 x i8] zeroinitializer }, align 32
@event_batadv_dbg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_batadv_dbg, %union.anon.140 { ptr @__tracepoint_batadv_dbg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_batadv_dbg }, ptr @print_fmt_batadv_dbg, ptr null, %union.anon.141 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_batadv_dbg = internal global ptr @event_batadv_dbg, section "_ftrace_events", align 4
@__bpf_trace_tp_map_batadv_dbg = internal global %union.anon.142 { %struct.bpf_raw_event_map { ptr @__tracepoint_batadv_dbg, ptr @__bpf_trace_batadv_dbg, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"batman_adv\00", [21 x i8] zeroinitializer }, align 32
@trace_event_raw_event_batadv_dbg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/batman-adv/./trace.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"driver\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s %s\0A\00", [22 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@perf_trace_batadv_dbg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_ = private constant [26 x i8] c"../net/batman-adv/trace.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [31 x i8] c"str__batadv__trace_system_name\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 36, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [30 x i8] c"trace_event_fields_batadv_dbg\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_batadv_dbg\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"print_fmt_batadv_dbg\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"event_batadv_dbg\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../net/batman-adv/./trace.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 33, i32 1 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__bpf_trace_tp_map_batadv_dbg, ptr @__event_batadv_dbg, ptr @__tracepoint_batadv_dbg, ptr @__tracepoint_ptr_batadv_dbg, ptr @event_batadv_dbg, ptr @event_class_batadv_dbg, ptr @str__batadv__trace_system_name, ptr @trace_event_fields_batadv_dbg, ptr @trace_event_type_funcs_batadv_dbg, ptr @print_fmt_batadv_dbg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__batadv__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_batadv_dbg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_batadv_dbg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_batadv_dbg to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_batadv_dbg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_batadv_dbg(ptr nocapture readnone %__data, ptr noundef %bat_priv, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_batadv_dbg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %bat_priv, ptr noundef %vaf) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_batadv_dbg(ptr noundef %__data, ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !34

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !35

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %soft_iface.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %3 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soft_iface.i, align 4
  %tobool.not.i78 = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool.not.i78, ptr @.str, ptr %4
  %call.i79 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add = add i32 %call.i79, 288
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add13.i = add i32 %call.i79, 32
  %or16.i = or i32 %add13.i, 16777216
  %add8.i = add i32 %call.i79, 21
  %or11.i = or i32 %add8.i, 720896
  %add.i = shl i32 %call.i79, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_batadv_dbg, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_batadv_dbg, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or11.i, ptr %__data_loc_driver, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_batadv_dbg, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or16.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %8 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soft_iface.i, align 4
  %tobool7.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool7.not, ptr @.str, ptr %9
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #12
  %and13 = and i32 %add8.i, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %10 = call ptr @memcpy(ptr %add.ptr14, ptr @.str.1, i32 11)
  %11 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %__data_loc_msg, align 4
  %and17 = and i32 %12, 65535
  %add.ptr18 = getelementptr i8, ptr %call3, i32 %and17
  %13 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %15 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %va, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack = load i32, ptr %16, align 4
  %18 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call19 = call i32 @vsnprintf(ptr noundef %add.ptr18, i32 noundef 256, ptr noundef %14, [1 x i32] %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call19)
  %cmp = icmp sgt i32 %call19, 255
  br i1 %cmp, label %land.rhs, label %if.end5.if.end49_crit_edge

if.end5.if.end49_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

land.rhs:                                         ; preds = %if.end5
  %.b77 = load i1, ptr @trace_event_raw_event_batadv_dbg.__already_done, align 1
  br i1 %.b77, label %land.rhs.if.end49_crit_edge, label %if.then27, !prof !34

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then27:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_event_raw_event_batadv_dbg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 9, ptr noundef null) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then27, %land.rhs.if.end49_crit_edge, %if.end5.if.end49_crit_edge
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_batadv_dbg(ptr noundef %__data, ptr nocapture noundef readonly %bat_priv, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !36
  %soft_iface.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 1
  %2 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_iface.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str, ptr %3
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #11
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65556
  %add8.i = add i32 %call.i, 21
  %or11.i = or i32 %add8.i, 720896
  %add13.i = add i32 %call.i, 32
  %or16.i = or i32 %add13.i, 16777216
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !24) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i112.not = icmp eq ptr %17, null
  br i1 %tobool.not.i112.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 299
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #8
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !24) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_batadv_dbg, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_device, align 4
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_batadv_dbg, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or11.i, ptr %__data_loc_driver, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_batadv_dbg, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or16.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %32 = ptrtoint ptr %soft_iface.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %soft_iface.i, align 4
  %tobool19.not = icmp eq ptr %33, null
  %spec.select = select i1 %tobool19.not, ptr @.str, ptr %33
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #12
  %and25 = and i32 %add8.i, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %34 = call ptr @memcpy(ptr %add.ptr26, ptr @.str.1, i32 11)
  %35 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %__data_loc_msg, align 4
  %and29 = and i32 %36, 65535
  %add.ptr30 = getelementptr i8, ptr %call13, i32 %and29
  %37 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %39 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %va, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack = load i32, ptr %40, align 4
  %42 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call31 = call i32 @vsnprintf(ptr noundef %add.ptr30, i32 noundef 256, ptr noundef %38, [1 x i32] %42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call31)
  %cmp = icmp sgt i32 %call31, 255
  br i1 %cmp, label %land.rhs, label %if.end16.if.end71_crit_edge

if.end16.if.end71_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.rhs:                                         ; preds = %if.end16
  %.b111 = load i1, ptr @perf_trace_batadv_dbg.__already_done, align 1
  br i1 %.b111, label %land.rhs.if.end71_crit_edge, label %if.then45, !prof !34

land.rhs.if.end71_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then45:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @perf_trace_batadv_dbg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 52, i32 noundef 9, ptr noundef null) #8
  br label %if.end71

if.end71:                                         ; preds = %if.then45, %land.rhs.if.end71_crit_edge, %if.end16.if.end71_crit_edge
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %13, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_batadv_dbg(ptr noundef %__data, ptr noundef %bat_priv, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %bat_priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %vaf to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_batadv_dbg(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_driver = getelementptr inbounds %struct.trace_event_raw_batadv_dbg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_driver, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_device = getelementptr inbounds %struct.trace_event_raw_batadv_dbg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_device, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_batadv_dbg, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_msg, align 4
  %and3 = and i32 %7, 65535
  %add.ptr4 = getelementptr i8, ptr %1, i32 %and3
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, ptr noundef %add.ptr, ptr noundef %add.ptr2, ptr noundef %add.ptr4) #8
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__tracepoint_batadv_dbg, !1, !"__tracepoint_batadv_dbg", i1 false, i1 false}
!1 = !{!"../net/batman-adv/./trace.h", i32 33, i32 1}
!2 = !{ptr @__tracepoint_ptr_batadv_dbg, !1, !"__tracepoint_ptr_batadv_dbg", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_batadv_dbg, !1, !"__SCK__tp_func_batadv_dbg", i1 false, i1 false}
!4 = !{ptr @event_class_batadv_dbg, !1, !"event_class_batadv_dbg", i1 false, i1 false}
!5 = !{ptr @event_batadv_dbg, !1, !"event_batadv_dbg", i1 false, i1 false}
!6 = !{ptr @__event_batadv_dbg, !1, !"__event_batadv_dbg", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_batadv_dbg, !1, !"__bpf_trace_tp_map_batadv_dbg", i1 false, i1 false}
!8 = !{ptr @__tpstrtab_batadv_dbg, !1, !"__tpstrtab_batadv_dbg", i1 false, i1 false}
!9 = !{ptr @str__batadv__trace_system_name, !10, !"str__batadv__trace_system_name", i1 false, i1 false}
!10 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!11 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!14 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @trace_event_fields_batadv_dbg, !1, !"trace_event_fields_batadv_dbg", i1 false, i1 false}
!20 = !{ptr @trace_event_type_funcs_batadv_dbg, !1, !"trace_event_type_funcs_batadv_dbg", i1 false, i1 false}
!21 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @print_fmt_batadv_dbg, !1, !"print_fmt_batadv_dbg", i1 false, i1 false}
!23 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"auto-init"}
