; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/armada/armada_trace.c_pt.bc'
source_filename = "../drivers/gpu/drm/armada/armada_trace.c"
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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_armada_drm_irq = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_armada_ovl_plane_update = type { %struct.trace_entry, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_armada_ovl_plane_work = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_armada_drm_irq = internal constant [15 x i8] c"armada_drm_irq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_armada_drm_irq = dso_local global %struct.static_call_key { ptr @__traceiter_armada_drm_irq }, align 4
@__tracepoint_armada_drm_irq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_armada_drm_irq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_armada_drm_irq, ptr null, ptr @__traceiter_armada_drm_irq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_armada_drm_irq = internal constant ptr @__tracepoint_armada_drm_irq, section "__tracepoints_ptrs", align 4
@__tpstrtab_armada_ovl_plane_update = internal constant [24 x i8] c"armada_ovl_plane_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_armada_ovl_plane_update = dso_local global %struct.static_call_key { ptr @__traceiter_armada_ovl_plane_update }, align 4
@__tracepoint_armada_ovl_plane_update = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_armada_ovl_plane_update, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_armada_ovl_plane_update, ptr null, ptr @__traceiter_armada_ovl_plane_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_armada_ovl_plane_update = internal constant ptr @__tracepoint_armada_ovl_plane_update, section "__tracepoints_ptrs", align 4
@__tpstrtab_armada_ovl_plane_work = internal constant [22 x i8] c"armada_ovl_plane_work\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_armada_ovl_plane_work = dso_local global %struct.static_call_key { ptr @__traceiter_armada_ovl_plane_work }, align 4
@__tracepoint_armada_ovl_plane_work = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_armada_ovl_plane_work, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_armada_ovl_plane_work, ptr null, ptr @__traceiter_armada_ovl_plane_work, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_armada_ovl_plane_work = internal constant ptr @__tracepoint_armada_ovl_plane_work, section "__tracepoints_ptrs", align 4
@str__armada__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armada\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_armada_drm_irq = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_armada_drm_irq = internal global %struct.trace_event_class { ptr @str__armada__trace_system_name, ptr @trace_event_raw_event_armada_drm_irq, ptr @perf_trace_armada_drm_irq, ptr @trace_event_reg, ptr @trace_event_fields_armada_drm_irq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_armada_drm_irq, i64 24), ptr getelementptr (i8, ptr @event_class_armada_drm_irq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_armada_drm_irq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_armada_drm_irq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_armada_drm_irq = internal global { [44 x i8], [52 x i8] } { [44 x i8] c"\22crtc %p stat 0x%08x\22, REC->crtc, REC->stat\00", [52 x i8] zeroinitializer }, align 32
@event_armada_drm_irq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_armada_drm_irq, %union.anon.1 { ptr @__tracepoint_armada_drm_irq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_armada_drm_irq }, ptr @print_fmt_armada_drm_irq, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_armada_drm_irq = internal global ptr @event_armada_drm_irq, section "_ftrace_events", align 4
@trace_event_fields_armada_ovl_plane_update = internal global { [12 x %struct.trace_event_fields], [64 x i8] } { [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.0 { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.0 { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.0 { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.0 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.0 { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.0 { %struct.anon { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [64 x i8] zeroinitializer }, align 32
@event_class_armada_ovl_plane_update = internal global %struct.trace_event_class { ptr @str__armada__trace_system_name, ptr @trace_event_raw_event_armada_ovl_plane_update, ptr @perf_trace_armada_ovl_plane_update, ptr @trace_event_reg, ptr @trace_event_fields_armada_ovl_plane_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_armada_ovl_plane_update, i64 24), ptr getelementptr (i8, ptr @event_class_armada_ovl_plane_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_armada_ovl_plane_update = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_armada_ovl_plane_update, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_armada_ovl_plane_update = internal global { [224 x i8], [32 x i8] } { [224 x i8] c"\22plane %p crtc %p fb %p crtc @ (%d,%d, %ux%u) src @ (%u,%u, %ux%u)\22, REC->plane, REC->crtc, REC->fb, REC->crtc_x, REC->crtc_y, REC->crtc_w, REC->crtc_h, REC->src_x >> 16, REC->src_y >> 16, REC->src_w >> 16, REC->src_h >> 16\00", [32 x i8] zeroinitializer }, align 32
@event_armada_ovl_plane_update = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_armada_ovl_plane_update, %union.anon.1 { ptr @__tracepoint_armada_ovl_plane_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_armada_ovl_plane_update }, ptr @print_fmt_armada_ovl_plane_update, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_armada_ovl_plane_update = internal global ptr @event_armada_ovl_plane_update, section "_ftrace_events", align 4
@trace_event_fields_armada_ovl_plane_work = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.0 { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_armada_ovl_plane_work = internal global %struct.trace_event_class { ptr @str__armada__trace_system_name, ptr @trace_event_raw_event_armada_ovl_plane_work, ptr @perf_trace_armada_ovl_plane_work, ptr @trace_event_reg, ptr @trace_event_fields_armada_ovl_plane_work, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_armada_ovl_plane_work, i64 24), ptr getelementptr (i8, ptr @event_class_armada_ovl_plane_work, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_armada_ovl_plane_work = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_armada_ovl_plane_work, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_armada_ovl_plane_work = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\22plane %p crtc %p\22, REC->plane, REC->crtc\00", [54 x i8] zeroinitializer }, align 32
@event_armada_ovl_plane_work = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_armada_ovl_plane_work, %union.anon.1 { ptr @__tracepoint_armada_ovl_plane_work }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_armada_ovl_plane_work }, ptr @print_fmt_armada_ovl_plane_work, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_armada_ovl_plane_work = internal global ptr @event_armada_ovl_plane_work, section "_ftrace_events", align 4
@__bpf_trace_tp_map_armada_drm_irq = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_armada_drm_irq, ptr @__bpf_trace_armada_drm_irq, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_armada_ovl_plane_update = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_armada_ovl_plane_update, ptr @__bpf_trace_armada_ovl_plane_update, i32 11, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_armada_ovl_plane_work = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_armada_ovl_plane_work, ptr @__bpf_trace_armada_ovl_plane_work, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct drm_crtc *\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"crtc\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"crtc %p stat 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"struct drm_plane *\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"plane\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"struct drm_framebuffer *\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fb\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crtc_x\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crtc_y\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crtc_w\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crtc_h\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"src_x\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"src_y\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"src_w\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"src_h\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"plane %p crtc %p fb %p crtc @ (%d,%d, %ux%u) src @ (%u,%u, %ux%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"plane %p crtc %p\0A\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [41 x i8] c"../drivers/gpu/drm/armada/armada_trace.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [31 x i8] c"str__armada__trace_system_name\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 36, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [34 x i8] c"trace_event_fields_armada_drm_irq\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_armada_drm_irq\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [25 x i8] c"print_fmt_armada_drm_irq\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"event_armada_drm_irq\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [43 x i8] c"trace_event_fields_armada_ovl_plane_update\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_armada_ovl_plane_update\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [34 x i8] c"print_fmt_armada_ovl_plane_update\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [30 x i8] c"event_armada_ovl_plane_update\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [41 x i8] c"trace_event_fields_armada_ovl_plane_work\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_armada_ovl_plane_work\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [32 x i8] c"print_fmt_armada_ovl_plane_work\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"event_armada_ovl_plane_work\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 15, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 30, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [61 x i8] c"../include/trace/../../drivers/gpu/drm/armada/armada_trace.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 70, i32 1 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__bpf_trace_tp_map_armada_drm_irq, ptr @__bpf_trace_tp_map_armada_ovl_plane_update, ptr @__bpf_trace_tp_map_armada_ovl_plane_work, ptr @__event_armada_drm_irq, ptr @__event_armada_ovl_plane_update, ptr @__event_armada_ovl_plane_work, ptr @__tracepoint_armada_drm_irq, ptr @__tracepoint_armada_ovl_plane_update, ptr @__tracepoint_armada_ovl_plane_work, ptr @__tracepoint_ptr_armada_drm_irq, ptr @__tracepoint_ptr_armada_ovl_plane_update, ptr @__tracepoint_ptr_armada_ovl_plane_work, ptr @event_armada_drm_irq, ptr @event_armada_ovl_plane_update, ptr @event_armada_ovl_plane_work, ptr @event_class_armada_drm_irq, ptr @event_class_armada_ovl_plane_update, ptr @event_class_armada_ovl_plane_work, ptr @str__armada__trace_system_name, ptr @trace_event_fields_armada_drm_irq, ptr @trace_event_type_funcs_armada_drm_irq, ptr @print_fmt_armada_drm_irq, ptr @trace_event_fields_armada_ovl_plane_update, ptr @trace_event_type_funcs_armada_ovl_plane_update, ptr @print_fmt_armada_ovl_plane_update, ptr @trace_event_fields_armada_ovl_plane_work, ptr @trace_event_type_funcs_armada_ovl_plane_work, ptr @print_fmt_armada_ovl_plane_work, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__armada__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_armada_drm_irq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_armada_drm_irq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_armada_drm_irq to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_armada_drm_irq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_armada_ovl_plane_update to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_armada_ovl_plane_update to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_armada_ovl_plane_update to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_armada_ovl_plane_update to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_armada_ovl_plane_work to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_armada_ovl_plane_work to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_armada_ovl_plane_work to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_armada_ovl_plane_work to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_armada_drm_irq(ptr nocapture readnone %__data, ptr noundef %crtc, i32 noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_armada_drm_irq, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %crtc, i32 noundef %stat) #5
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
define dso_local i32 @__traceiter_armada_ovl_plane_update(ptr nocapture readnone %__data, ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_armada_ovl_plane_update, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h) #5
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
define dso_local i32 @__traceiter_armada_ovl_plane_work(ptr nocapture readnone %__data, ptr noundef %crtc, ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_armada_ovl_plane_work, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %crtc, ptr noundef %plane) #5
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
define internal void @trace_event_raw_event_armada_drm_irq(ptr noundef %__data, ptr noundef %crtc, i32 noundef %stat) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !69

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !70

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %crtc6 = getelementptr inbounds %struct.trace_event_raw_armada_drm_irq, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %crtc6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %crtc, ptr %crtc6, align 4
  %stat7 = getelementptr inbounds %struct.trace_event_raw_armada_drm_irq, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %stat7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %stat, ptr %stat7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_armada_drm_irq(ptr noundef %__data, ptr noundef %crtc, i32 noundef %stat) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !71
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !59) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !59) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %crtc17 = getelementptr inbounds %struct.trace_event_raw_armada_drm_irq, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %crtc17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %crtc, ptr %crtc17, align 4
  %stat18 = getelementptr inbounds %struct.trace_event_raw_armada_drm_irq, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %stat18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %stat, ptr %stat18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #5
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
define internal void @trace_event_raw_event_armada_ovl_plane_update(ptr noundef %__data, ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !69

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !70

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 52) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %plane6 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %plane6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %plane, ptr %plane6, align 4
  %crtc7 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %crtc7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %crtc, ptr %crtc7, align 4
  %fb8 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %fb8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fb, ptr %fb8, align 4
  %crtc_x9 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %crtc_x9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %crtc_x, ptr %crtc_x9, align 4
  %crtc_y10 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %crtc_y10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %crtc_y, ptr %crtc_y10, align 4
  %crtc_w11 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %crtc_w11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %crtc_w, ptr %crtc_w11, align 4
  %crtc_h12 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 7
  %9 = ptrtoint ptr %crtc_h12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %crtc_h, ptr %crtc_h12, align 4
  %src_x13 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 8
  %10 = ptrtoint ptr %src_x13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %src_x, ptr %src_x13, align 4
  %src_y14 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 9
  %11 = ptrtoint ptr %src_y14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %src_y, ptr %src_y14, align 4
  %src_w15 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 10
  %12 = ptrtoint ptr %src_w15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %src_w, ptr %src_w15, align 4
  %src_h16 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call3, i32 0, i32 11
  %13 = ptrtoint ptr %src_h16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %src_h, ptr %src_h16, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_armada_ovl_plane_update(ptr noundef %__data, ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !71
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !59) #5
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !59) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %plane17 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %plane17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %plane, ptr %plane17, align 4
  %crtc18 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %crtc18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %crtc, ptr %crtc18, align 4
  %fb19 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %fb19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fb, ptr %fb19, align 4
  %crtc_x20 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %crtc_x20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %crtc_x, ptr %crtc_x20, align 4
  %crtc_y21 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %crtc_y21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %crtc_y, ptr %crtc_y21, align 4
  %crtc_w22 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %crtc_w22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %crtc_w, ptr %crtc_w22, align 4
  %crtc_h23 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 7
  %33 = ptrtoint ptr %crtc_h23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %crtc_h, ptr %crtc_h23, align 4
  %src_x24 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 8
  %34 = ptrtoint ptr %src_x24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %src_x, ptr %src_x24, align 4
  %src_y25 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 9
  %35 = ptrtoint ptr %src_y25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %src_y, ptr %src_y25, align 4
  %src_w26 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 10
  %36 = ptrtoint ptr %src_w26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %src_w, ptr %src_w26, align 4
  %src_h27 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %call13, i32 0, i32 11
  %37 = ptrtoint ptr %src_h27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %src_h, ptr %src_h27, align 4
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_armada_ovl_plane_work(ptr noundef %__data, ptr noundef %crtc, ptr noundef %plane) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !69

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !70

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %plane6 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_work, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %plane6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %plane, ptr %plane6, align 4
  %crtc7 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_work, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %crtc7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %crtc, ptr %crtc7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_armada_ovl_plane_work(ptr noundef %__data, ptr noundef %crtc, ptr noundef %plane) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #5
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #5
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !71
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !59) #5
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
  %24 = call i32 @llvm.read_register.i32(metadata !59) #5
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %plane17 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_work, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %plane17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %plane, ptr %plane17, align 4
  %crtc18 = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_work, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %crtc18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %crtc, ptr %crtc18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_armada_drm_irq(ptr noundef %__data, ptr noundef %crtc, i32 noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %crtc to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %stat to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_armada_ovl_plane_update(ptr noundef %__data, ptr noundef %plane, ptr noundef %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %plane to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %crtc to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %fb to i32
  %conv8 = zext i32 %2 to i64
  %conv12 = zext i32 %crtc_x to i64
  %conv16 = zext i32 %crtc_y to i64
  %conv20 = zext i32 %crtc_w to i64
  %conv24 = zext i32 %crtc_h to i64
  %conv28 = zext i32 %src_x to i64
  %conv32 = zext i32 %src_y to i64
  %conv36 = zext i32 %src_w to i64
  %conv40 = zext i32 %src_h to i64
  tail call void @bpf_trace_run11(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24, i64 noundef %conv28, i64 noundef %conv32, i64 noundef %conv36, i64 noundef %conv40) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_armada_ovl_plane_work(ptr noundef %__data, ptr noundef %crtc, ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %crtc to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %plane to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_armada_drm_irq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %crtc = getelementptr inbounds %struct.trace_event_raw_armada_drm_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %stat = getelementptr inbounds %struct.trace_event_raw_armada_drm_irq, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, ptr noundef %3, i32 noundef %5) #5
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
define internal i32 @trace_raw_output_armada_ovl_plane_update(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %plane = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plane, align 4
  %crtc = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %fb = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %crtc_x = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_y, align 4
  %crtc_w = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_h, align 4
  %src_x = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_x, align 4
  %shr = lshr i32 %17, 16
  %src_y = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_y, align 4
  %shr1 = lshr i32 %19, 16
  %src_w = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_w, align 4
  %shr2 = lshr i32 %21, 16
  %src_h = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_update, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_h, align 4
  %shr3 = lshr i32 %23, 16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, ptr noundef %3, ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %shr, i32 noundef %shr1, i32 noundef %shr2, i32 noundef %shr3) #5
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_armada_ovl_plane_work(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %plane = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_work, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plane, align 4
  %crtc = getelementptr inbounds %struct.trace_event_raw_armada_ovl_plane_work, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, ptr noundef %3, ptr noundef %5) #5
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
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run11(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__tracepoint_armada_drm_irq, !1, !"__tracepoint_armada_drm_irq", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/gpu/drm/armada/armada_trace.h", i32 15, i32 1}
!2 = !{ptr @__tracepoint_ptr_armada_drm_irq, !1, !"__tracepoint_ptr_armada_drm_irq", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_armada_drm_irq, !1, !"__SCK__tp_func_armada_drm_irq", i1 false, i1 false}
!4 = !{ptr @__tracepoint_armada_ovl_plane_update, !5, !"__tracepoint_armada_ovl_plane_update", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/gpu/drm/armada/armada_trace.h", i32 30, i32 1}
!6 = !{ptr @__tracepoint_ptr_armada_ovl_plane_update, !5, !"__tracepoint_ptr_armada_ovl_plane_update", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_armada_ovl_plane_update, !5, !"__SCK__tp_func_armada_ovl_plane_update", i1 false, i1 false}
!8 = !{ptr @__tracepoint_armada_ovl_plane_work, !9, !"__tracepoint_armada_ovl_plane_work", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/gpu/drm/armada/armada_trace.h", i32 70, i32 1}
!10 = !{ptr @__tracepoint_ptr_armada_ovl_plane_work, !9, !"__tracepoint_ptr_armada_ovl_plane_work", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_armada_ovl_plane_work, !9, !"__SCK__tp_func_armada_ovl_plane_work", i1 false, i1 false}
!12 = !{ptr @event_class_armada_drm_irq, !1, !"event_class_armada_drm_irq", i1 false, i1 false}
!13 = !{ptr @event_armada_drm_irq, !1, !"event_armada_drm_irq", i1 false, i1 false}
!14 = !{ptr @__event_armada_drm_irq, !1, !"__event_armada_drm_irq", i1 false, i1 false}
!15 = !{ptr @event_class_armada_ovl_plane_update, !5, !"event_class_armada_ovl_plane_update", i1 false, i1 false}
!16 = !{ptr @event_armada_ovl_plane_update, !5, !"event_armada_ovl_plane_update", i1 false, i1 false}
!17 = !{ptr @__event_armada_ovl_plane_update, !5, !"__event_armada_ovl_plane_update", i1 false, i1 false}
!18 = !{ptr @event_class_armada_ovl_plane_work, !9, !"event_class_armada_ovl_plane_work", i1 false, i1 false}
!19 = !{ptr @event_armada_ovl_plane_work, !9, !"event_armada_ovl_plane_work", i1 false, i1 false}
!20 = !{ptr @__event_armada_ovl_plane_work, !9, !"__event_armada_ovl_plane_work", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_armada_drm_irq, !1, !"__bpf_trace_tp_map_armada_drm_irq", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_armada_ovl_plane_update, !5, !"__bpf_trace_tp_map_armada_ovl_plane_update", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_armada_ovl_plane_work, !9, !"__bpf_trace_tp_map_armada_ovl_plane_work", i1 false, i1 false}
!24 = !{ptr @__tpstrtab_armada_drm_irq, !1, !"__tpstrtab_armada_drm_irq", i1 false, i1 false}
!25 = !{ptr @__tpstrtab_armada_ovl_plane_update, !5, !"__tpstrtab_armada_ovl_plane_update", i1 false, i1 false}
!26 = !{ptr @__tpstrtab_armada_ovl_plane_work, !9, !"__tpstrtab_armada_ovl_plane_work", i1 false, i1 false}
!27 = !{ptr @str__armada__trace_system_name, !28, !"str__armada__trace_system_name", i1 false, i1 false}
!28 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!29 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @trace_event_fields_armada_drm_irq, !1, !"trace_event_fields_armada_drm_irq", i1 false, i1 false}
!34 = !{ptr @trace_event_type_funcs_armada_drm_irq, !1, !"trace_event_type_funcs_armada_drm_irq", i1 false, i1 false}
!35 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @print_fmt_armada_drm_irq, !1, !"print_fmt_armada_drm_irq", i1 false, i1 false}
!37 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !5, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !5, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !5, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @trace_event_fields_armada_ovl_plane_update, !5, !"trace_event_fields_armada_ovl_plane_update", i1 false, i1 false}
!52 = !{ptr @trace_event_type_funcs_armada_ovl_plane_update, !5, !"trace_event_type_funcs_armada_ovl_plane_update", i1 false, i1 false}
!53 = !{ptr @.str.19, !5, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @print_fmt_armada_ovl_plane_update, !5, !"print_fmt_armada_ovl_plane_update", i1 false, i1 false}
!55 = !{ptr @trace_event_fields_armada_ovl_plane_work, !9, !"trace_event_fields_armada_ovl_plane_work", i1 false, i1 false}
!56 = !{ptr @trace_event_type_funcs_armada_ovl_plane_work, !9, !"trace_event_type_funcs_armada_ovl_plane_work", i1 false, i1 false}
!57 = !{ptr @.str.20, !9, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @print_fmt_armada_ovl_plane_work, !9, !"print_fmt_armada_ovl_plane_work", i1 false, i1 false}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{!"auto-init"}
