; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt76x02_trace.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt76x02_trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.168 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.170, %struct.trace_event, ptr, ptr, %union.anon.171, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.170 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.173 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_dev_evt = type { %struct.trace_entry, [32 x i8], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.possible_net_t = type { ptr }
%struct.anon.130 = type { i64, i64, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mac_txstat_fetch = type { %struct.trace_entry, [32 x i8], i8, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.mt76x02_tx_status = type { i8, i8, i8, i8, i16 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mac_txstat_poll = internal constant [16 x i8] c"mac_txstat_poll\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mac_txstat_poll = dso_local global %struct.static_call_key { ptr @__traceiter_mac_txstat_poll }, align 4
@__tracepoint_mac_txstat_poll = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mac_txstat_poll, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mac_txstat_poll, ptr null, ptr @__traceiter_mac_txstat_poll, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mac_txstat_poll = internal constant ptr @__tracepoint_mac_txstat_poll, section "__tracepoints_ptrs", align 4
@__tpstrtab_mac_txstat_fetch = internal constant [17 x i8] c"mac_txstat_fetch\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mac_txstat_fetch = dso_local global %struct.static_call_key { ptr @__traceiter_mac_txstat_fetch }, align 4
@__tracepoint_mac_txstat_fetch = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mac_txstat_fetch, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mac_txstat_fetch, ptr null, ptr @__traceiter_mac_txstat_fetch, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mac_txstat_fetch = internal constant ptr @__tracepoint_mac_txstat_fetch, section "__tracepoints_ptrs", align 4
@str__mt76x02__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt76x02\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_dev_evt = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.168 { %struct.anon.169 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_dev_evt = internal global %struct.trace_event_class { ptr @str__mt76x02__trace_system_name, ptr @trace_event_raw_event_dev_evt, ptr @perf_trace_dev_evt, ptr @trace_event_reg, ptr @trace_event_fields_dev_evt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dev_evt, i64 24), ptr getelementptr (i8, ptr @event_class_dev_evt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dev_evt = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dev_evt, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dev_evt = internal global { [22 x i8], [42 x i8] } { [22 x i8] c"\22%s\22, REC->wiphy_name\00", [42 x i8] zeroinitializer }, align 32
@event_mac_txstat_poll = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_evt, %union.anon.170 { ptr @__tracepoint_mac_txstat_poll }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_evt }, ptr @print_fmt_dev_evt, ptr null, %union.anon.171 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mac_txstat_poll = internal global ptr @event_mac_txstat_poll, section "_ftrace_events", align 4
@trace_event_fields_mac_txstat_fetch = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.168 { %struct.anon.169 { ptr @.str.1, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.168 { %struct.anon.169 { ptr @.str.4, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.168 { %struct.anon.169 { ptr @.str.5, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.168 { %struct.anon.169 { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.168 { %struct.anon.169 { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.168 { %struct.anon.169 { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.168 { %struct.anon.169 { ptr @.str.11, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.168 { %struct.anon.169 { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mac_txstat_fetch = internal global %struct.trace_event_class { ptr @str__mt76x02__trace_system_name, ptr @trace_event_raw_event_mac_txstat_fetch, ptr @perf_trace_mac_txstat_fetch, ptr @trace_event_reg, ptr @trace_event_fields_mac_txstat_fetch, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mac_txstat_fetch, i64 24), ptr getelementptr (i8, ptr @event_class_mac_txstat_fetch, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mac_txstat_fetch = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mac_txstat_fetch, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mac_txstat_fetch = internal global { [164 x i8], [60 x i8] } { [164 x i8] c"\22%s [%d:%d] success:%d aggr:%d ack_req:%d rate:%04x retry:%d\22, REC->wiphy_name, REC->wcid, REC->pktid, REC->success, REC->aggr, REC->ack_req, REC->rate, REC->retry\00", [60 x i8] zeroinitializer }, align 32
@event_mac_txstat_fetch = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mac_txstat_fetch, %union.anon.170 { ptr @__tracepoint_mac_txstat_fetch }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mac_txstat_fetch }, ptr @print_fmt_mac_txstat_fetch, ptr null, %union.anon.171 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mac_txstat_fetch = internal global ptr @event_mac_txstat_fetch, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mac_txstat_poll = internal global %union.anon.172 { %struct.bpf_raw_event_map { ptr @__tracepoint_mac_txstat_poll, ptr @__bpf_trace_dev_evt, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mac_txstat_fetch = internal global %union.anon.173 { %struct.bpf_raw_event_map { ptr @__tracepoint_mac_txstat_fetch, ptr @__bpf_trace_mac_txstat_fetch, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[32]\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wiphy_name\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wcid\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pktid\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aggr\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ack_req\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"retry\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s [%d:%d] success:%d aggr:%d ack_req:%d rate:%04x retry:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [54 x i8] c"../drivers/net/wireless/mediatek/mt76/mt76x02_trace.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [32 x i8] c"str__mt76x02__trace_system_name\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 36, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"trace_event_fields_dev_evt\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_dev_evt\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"print_fmt_dev_evt\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"event_mac_txstat_poll\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 38, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [36 x i8] c"trace_event_fields_mac_txstat_fetch\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_mac_txstat_fetch\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"print_fmt_mac_txstat_fetch\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"event_mac_txstat_fetch\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 26, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [56 x i8] c"../drivers/net/wireless/mediatek/mt76/./mt76x02_trace.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 43, i32 1 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__bpf_trace_tp_map_mac_txstat_fetch, ptr @__bpf_trace_tp_map_mac_txstat_poll, ptr @__event_mac_txstat_fetch, ptr @__event_mac_txstat_poll, ptr @__tracepoint_mac_txstat_fetch, ptr @__tracepoint_mac_txstat_poll, ptr @__tracepoint_ptr_mac_txstat_fetch, ptr @__tracepoint_ptr_mac_txstat_poll, ptr @event_class_dev_evt, ptr @event_class_mac_txstat_fetch, ptr @event_mac_txstat_fetch, ptr @event_mac_txstat_poll, ptr @str__mt76x02__trace_system_name, ptr @trace_event_fields_dev_evt, ptr @trace_event_type_funcs_dev_evt, ptr @print_fmt_dev_evt, ptr @trace_event_fields_mac_txstat_fetch, ptr @trace_event_type_funcs_mac_txstat_fetch, ptr @print_fmt_mac_txstat_fetch, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mt76x02__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dev_evt to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dev_evt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dev_evt to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mac_txstat_poll to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mac_txstat_fetch to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mac_txstat_fetch to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mac_txstat_fetch to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mac_txstat_fetch to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mac_txstat_poll(ptr nocapture readnone %__data, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mac_txstat_poll, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %dev) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mac_txstat_fetch(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mac_txstat_fetch, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %stat) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dev_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #6
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !51

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !52

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #6
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_evt, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #6
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dev_evt(ptr noundef %__data, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !53
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #6
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !41) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_evt, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #6
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mac_txstat_fetch(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %stat) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #6
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !51

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !52

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #6
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 52) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.wiphy_name.exit_crit_edge

if.end5.wiphy_name.exit_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end5.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end5.wiphy_name.exit_crit_edge ]
  %call7 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #6
  %11 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %stat, align 2
  %success = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call3, i32 0, i32 4
  %12 = lshr i8 %bf.load, 6
  %.lobit = and i8 %12, 1
  %13 = ptrtoint ptr %success to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.lobit, ptr %success, align 2
  %bf.load9 = load i8, ptr %stat, align 2
  %aggr = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call3, i32 0, i32 5
  %14 = lshr i8 %bf.load9, 5
  %.lobit44 = and i8 %14, 1
  %15 = ptrtoint ptr %aggr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.lobit44, ptr %aggr, align 1
  %bf.load14 = load i8, ptr %stat, align 2
  %ack_req = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call3, i32 0, i32 6
  %16 = lshr i8 %bf.load14, 4
  %.lobit45 = and i8 %16, 1
  %17 = ptrtoint ptr %ack_req to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.lobit45, ptr %ack_req, align 4
  %wcid = getelementptr inbounds %struct.mt76x02_tx_status, ptr %stat, i32 0, i32 1
  %18 = ptrtoint ptr %wcid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wcid, align 1
  %wcid19 = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call3, i32 0, i32 2
  %20 = ptrtoint ptr %wcid19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %wcid19, align 4
  %pktid = getelementptr inbounds %struct.mt76x02_tx_status, ptr %stat, i32 0, i32 2
  %21 = ptrtoint ptr %pktid to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pktid, align 2
  %pktid20 = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call3, i32 0, i32 3
  %23 = ptrtoint ptr %pktid20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %pktid20, align 1
  %rate = getelementptr inbounds %struct.mt76x02_tx_status, ptr %stat, i32 0, i32 4
  %24 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rate, align 2
  %rate21 = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call3, i32 0, i32 7
  %26 = ptrtoint ptr %rate21 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %rate21, align 2
  %retry = getelementptr inbounds %struct.mt76x02_tx_status, ptr %stat, i32 0, i32 3
  %27 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %retry, align 1
  %retry22 = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call3, i32 0, i32 8
  %29 = ptrtoint ptr %retry22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %retry22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mac_txstat_fetch(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %stat) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !53
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !41) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #6
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !41) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 128
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.wiphy_name.exit_crit_edge

if.end16.wiphy_name.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %30, i32 0, i32 56
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %if.end16.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.end16.wiphy_name.exit_crit_edge ]
  %call18 = call i32 @strlcpy(ptr noundef %wiphy_name, ptr noundef %retval.0.i.i, i32 noundef 32) #6
  %35 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %stat, align 2
  %success = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call13, i32 0, i32 4
  %36 = lshr i8 %bf.load, 6
  %.lobit = and i8 %36, 1
  %37 = ptrtoint ptr %success to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.lobit, ptr %success, align 2
  %bf.load20 = load i8, ptr %stat, align 2
  %aggr = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call13, i32 0, i32 5
  %38 = lshr i8 %bf.load20, 5
  %.lobit67 = and i8 %38, 1
  %39 = ptrtoint ptr %aggr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.lobit67, ptr %aggr, align 1
  %bf.load25 = load i8, ptr %stat, align 2
  %ack_req = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call13, i32 0, i32 6
  %40 = lshr i8 %bf.load25, 4
  %.lobit68 = and i8 %40, 1
  %41 = ptrtoint ptr %ack_req to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.lobit68, ptr %ack_req, align 4
  %wcid = getelementptr inbounds %struct.mt76x02_tx_status, ptr %stat, i32 0, i32 1
  %42 = ptrtoint ptr %wcid to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wcid, align 1
  %wcid30 = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call13, i32 0, i32 2
  %44 = ptrtoint ptr %wcid30 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %wcid30, align 4
  %pktid = getelementptr inbounds %struct.mt76x02_tx_status, ptr %stat, i32 0, i32 2
  %45 = ptrtoint ptr %pktid to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pktid, align 2
  %pktid31 = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call13, i32 0, i32 3
  %47 = ptrtoint ptr %pktid31 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %pktid31, align 1
  %rate = getelementptr inbounds %struct.mt76x02_tx_status, ptr %stat, i32 0, i32 4
  %48 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rate, align 2
  %rate32 = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call13, i32 0, i32 7
  %50 = ptrtoint ptr %rate32 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %rate32, align 2
  %retry = getelementptr inbounds %struct.mt76x02_tx_status, ptr %stat, i32 0, i32 3
  %51 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %retry, align 1
  %retry33 = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %call13, i32 0, i32 8
  %53 = ptrtoint ptr %retry33 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %retry33, align 4
  %54 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rctx, align 4
  %56 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %55, ptr noundef %__data, i64 noundef 1, ptr noundef %57, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dev_evt(ptr noundef %__data, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mac_txstat_fetch(ptr noundef %__data, ptr noundef %dev, ptr noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %stat to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dev_evt(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_dev_evt, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.2, ptr noundef %wiphy_name) #6
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
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
define internal i32 @trace_raw_output_mac_txstat_fetch(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %wiphy_name = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %1, i32 0, i32 1
  %wcid = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wcid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wcid, align 4
  %conv = zext i8 %3 to i32
  %pktid = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pktid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pktid, align 1
  %conv1 = zext i8 %5 to i32
  %success = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %success to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %success, align 2, !range !54
  %8 = zext i8 %7 to i32
  %aggr = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %aggr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %aggr, align 1, !range !54
  %11 = zext i8 %10 to i32
  %ack_req = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ack_req to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ack_req, align 4, !range !54
  %14 = zext i8 %13 to i32
  %rate = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rate, align 2
  %conv7 = zext i16 %16 to i32
  %retry = getelementptr inbounds %struct.trace_event_raw_mac_txstat_fetch, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %retry to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %retry, align 4
  %conv8 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, ptr noundef %wiphy_name, i32 noundef %conv, i32 noundef %conv1, i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %conv7, i32 noundef %conv8) #6
  %call9 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__tracepoint_mac_txstat_poll, !1, !"__tracepoint_mac_txstat_poll", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/./mt76x02_trace.h", i32 38, i32 1}
!2 = !{ptr @__tracepoint_ptr_mac_txstat_poll, !1, !"__tracepoint_ptr_mac_txstat_poll", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mac_txstat_poll, !1, !"__SCK__tp_func_mac_txstat_poll", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mac_txstat_fetch, !5, !"__tracepoint_mac_txstat_fetch", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/./mt76x02_trace.h", i32 43, i32 1}
!6 = !{ptr @__tracepoint_ptr_mac_txstat_fetch, !5, !"__tracepoint_ptr_mac_txstat_fetch", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mac_txstat_fetch, !5, !"__SCK__tp_func_mac_txstat_fetch", i1 false, i1 false}
!8 = !{ptr @event_class_dev_evt, !9, !"event_class_dev_evt", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt76/./mt76x02_trace.h", i32 26, i32 1}
!10 = !{ptr @event_mac_txstat_poll, !1, !"event_mac_txstat_poll", i1 false, i1 false}
!11 = !{ptr @__event_mac_txstat_poll, !1, !"__event_mac_txstat_poll", i1 false, i1 false}
!12 = !{ptr @event_class_mac_txstat_fetch, !5, !"event_class_mac_txstat_fetch", i1 false, i1 false}
!13 = !{ptr @event_mac_txstat_fetch, !5, !"event_mac_txstat_fetch", i1 false, i1 false}
!14 = !{ptr @__event_mac_txstat_fetch, !5, !"__event_mac_txstat_fetch", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_mac_txstat_poll, !1, !"__bpf_trace_tp_map_mac_txstat_poll", i1 false, i1 false}
!16 = !{ptr @__bpf_trace_tp_map_mac_txstat_fetch, !5, !"__bpf_trace_tp_map_mac_txstat_fetch", i1 false, i1 false}
!17 = !{ptr @__tpstrtab_mac_txstat_poll, !1, !"__tpstrtab_mac_txstat_poll", i1 false, i1 false}
!18 = !{ptr @__tpstrtab_mac_txstat_fetch, !5, !"__tpstrtab_mac_txstat_fetch", i1 false, i1 false}
!19 = !{ptr @str__mt76x02__trace_system_name, !20, !"str__mt76x02__trace_system_name", i1 false, i1 false}
!20 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!21 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @trace_event_fields_dev_evt, !9, !"trace_event_fields_dev_evt", i1 false, i1 false}
!24 = !{ptr @trace_event_type_funcs_dev_evt, !9, !"trace_event_type_funcs_dev_evt", i1 false, i1 false}
!25 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @print_fmt_dev_evt, !9, !"print_fmt_dev_evt", i1 false, i1 false}
!27 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @trace_event_fields_mac_txstat_fetch, !5, !"trace_event_fields_mac_txstat_fetch", i1 false, i1 false}
!38 = !{ptr @trace_event_type_funcs_mac_txstat_fetch, !5, !"trace_event_type_funcs_mac_txstat_fetch", i1 false, i1 false}
!39 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @print_fmt_mac_txstat_fetch, !5, !"print_fmt_mac_txstat_fetch", i1 false, i1 false}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{!"auto-init"}
!54 = !{i8 0, i8 2}
