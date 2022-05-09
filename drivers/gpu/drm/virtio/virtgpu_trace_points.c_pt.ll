; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_trace_points.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_trace_points.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.106, %struct.trace_event, ptr, ptr, %union.anon.107, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.106 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.trace_event_raw_virtio_gpu_cmd = type { %struct.trace_entry, i32, i32, ptr, i32, i32, i64, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.virtio_gpu_ctrl_hdr = type { i32, i32, i64, i32, i8, [3 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_virtio_gpu_cmd_queue = internal constant [21 x i8] c"virtio_gpu_cmd_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_virtio_gpu_cmd_queue = dso_local global %struct.static_call_key { ptr @__traceiter_virtio_gpu_cmd_queue }, align 4
@__tracepoint_virtio_gpu_cmd_queue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_virtio_gpu_cmd_queue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_virtio_gpu_cmd_queue, ptr null, ptr @__traceiter_virtio_gpu_cmd_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_virtio_gpu_cmd_queue = internal constant ptr @__tracepoint_virtio_gpu_cmd_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_virtio_gpu_cmd_response = internal constant [24 x i8] c"virtio_gpu_cmd_response\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_virtio_gpu_cmd_response = dso_local global %struct.static_call_key { ptr @__traceiter_virtio_gpu_cmd_response }, align 4
@__tracepoint_virtio_gpu_cmd_response = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_virtio_gpu_cmd_response, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_virtio_gpu_cmd_response, ptr null, ptr @__traceiter_virtio_gpu_cmd_response, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_virtio_gpu_cmd_response = internal constant ptr @__tracepoint_virtio_gpu_cmd_response, section "__tracepoints_ptrs", align 4
@str__virtio_gpu__trace_system_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio_gpu\00", [21 x i8] zeroinitializer }, align 32
@trace_event_fields_virtio_gpu_cmd = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.104 { %struct.anon.105 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.104 { %struct.anon.105 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.104 { %struct.anon.105 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_virtio_gpu_cmd = internal global %struct.trace_event_class { ptr @str__virtio_gpu__trace_system_name, ptr @trace_event_raw_event_virtio_gpu_cmd, ptr @perf_trace_virtio_gpu_cmd, ptr @trace_event_reg, ptr @trace_event_fields_virtio_gpu_cmd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_virtio_gpu_cmd, i64 24), ptr getelementptr (i8, ptr @event_class_virtio_gpu_cmd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_virtio_gpu_cmd = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_virtio_gpu_cmd, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_virtio_gpu_cmd = internal global { [150 x i8], [42 x i8] } { [150 x i8] c"\22vdev=%d vq=%u name=%s type=0x%x flags=0x%x fence_id=%llu ctx_id=%u\22, REC->dev, REC->vq, REC->name, REC->type, REC->flags, REC->fence_id, REC->ctx_id\00", [42 x i8] zeroinitializer }, align 32
@event_virtio_gpu_cmd_queue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_virtio_gpu_cmd, %union.anon.106 { ptr @__tracepoint_virtio_gpu_cmd_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_virtio_gpu_cmd }, ptr @print_fmt_virtio_gpu_cmd, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_virtio_gpu_cmd_queue = internal global ptr @event_virtio_gpu_cmd_queue, section "_ftrace_events", align 4
@event_virtio_gpu_cmd_response = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_virtio_gpu_cmd, %union.anon.106 { ptr @__tracepoint_virtio_gpu_cmd_response }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_virtio_gpu_cmd }, ptr @print_fmt_virtio_gpu_cmd, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_virtio_gpu_cmd_response = internal global ptr @event_virtio_gpu_cmd_response, section "_ftrace_events", align 4
@__bpf_trace_tp_map_virtio_gpu_cmd_queue = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_virtio_gpu_cmd_queue, ptr @__bpf_trace_virtio_gpu_cmd, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_virtio_gpu_cmd_response = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_virtio_gpu_cmd_response, ptr @__bpf_trace_virtio_gpu_cmd, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vq\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fence_id\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ctx_id\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"vdev=%d vq=%u name=%s type=0x%x flags=0x%x fence_id=%llu ctx_id=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [49 x i8] c"../drivers/gpu/drm/virtio/virtgpu_trace_points.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [35 x i8] c"str__virtio_gpu__trace_system_name\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 36, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [34 x i8] c"trace_event_fields_virtio_gpu_cmd\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_virtio_gpu_cmd\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"print_fmt_virtio_gpu_cmd\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"event_virtio_gpu_cmd_queue\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 38, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [30 x i8] c"event_virtio_gpu_cmd_response\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 43, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [62 x i8] c"../include/trace/../../drivers/gpu/drm/virtio/virtgpu_trace.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 11, i32 1 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__bpf_trace_tp_map_virtio_gpu_cmd_queue, ptr @__bpf_trace_tp_map_virtio_gpu_cmd_response, ptr @__event_virtio_gpu_cmd_queue, ptr @__event_virtio_gpu_cmd_response, ptr @__tracepoint_ptr_virtio_gpu_cmd_queue, ptr @__tracepoint_ptr_virtio_gpu_cmd_response, ptr @__tracepoint_virtio_gpu_cmd_queue, ptr @__tracepoint_virtio_gpu_cmd_response, ptr @event_class_virtio_gpu_cmd, ptr @event_virtio_gpu_cmd_queue, ptr @event_virtio_gpu_cmd_response, ptr @str__virtio_gpu__trace_system_name, ptr @trace_event_fields_virtio_gpu_cmd, ptr @trace_event_type_funcs_virtio_gpu_cmd, ptr @print_fmt_virtio_gpu_cmd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__virtio_gpu__trace_system_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_virtio_gpu_cmd to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_virtio_gpu_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_virtio_gpu_cmd to i32), i32 150, i32 192, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_virtio_gpu_cmd_queue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_virtio_gpu_cmd_response to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_virtio_gpu_cmd_queue(ptr nocapture readnone %__data, ptr noundef %vq, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_virtio_gpu_cmd_queue, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %vq, ptr noundef %hdr) #6
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
define dso_local i32 @__traceiter_virtio_gpu_cmd_response(ptr nocapture readnone %__data, ptr noundef %vq, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_virtio_gpu_cmd_response, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %vq, ptr noundef %hdr) #6
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
define internal void @trace_event_raw_event_virtio_gpu_cmd(ptr noundef %__data, ptr nocapture noundef readonly %vq, ptr nocapture noundef readonly %hdr) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !47

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %index6 = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %8 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index6, align 4
  %vq7 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %vq7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %vq7, align 4
  %name = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %name8 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %name8, align 8
  %14 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hdr, align 8
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %type9 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %type9, align 4
  %flags = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, ptr %hdr, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %flags10 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flags10, align 8
  %fence_id = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, ptr %hdr, i32 0, i32 2
  %22 = ptrtoint ptr %fence_id to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %fence_id, align 8
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  %fence_id11 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call3, i32 0, i32 6
  %25 = ptrtoint ptr %fence_id11 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %fence_id11, align 8
  %ctx_id = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, ptr %hdr, i32 0, i32 3
  %26 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ctx_id, align 8
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %ctx_id12 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call3, i32 0, i32 7
  %29 = ptrtoint ptr %ctx_id12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ctx_id12, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_virtio_gpu_cmd(ptr noundef %__data, ptr nocapture noundef readonly %vq, ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !48
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !36) #6
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
  call void @__sanitizer_cov_trace_pc() #8
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
  %24 = call i32 @llvm.read_register.i32(metadata !36) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %27 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vdev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %index17 = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %32 = ptrtoint ptr %index17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index17, align 4
  %vq18 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %vq18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %vq18, align 4
  %name = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 2
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %name19 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %name19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %name19, align 8
  %38 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hdr, align 8
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %type20 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %type20 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %type20, align 4
  %flags = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, ptr %hdr, i32 0, i32 1
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %flags21 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %flags21, align 8
  %fence_id = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, ptr %hdr, i32 0, i32 2
  %46 = ptrtoint ptr %fence_id to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %fence_id, align 8
  %48 = call i64 @llvm.bswap.i64(i64 %47)
  %fence_id22 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call13, i32 0, i32 6
  %49 = ptrtoint ptr %fence_id22 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %fence_id22, align 8
  %ctx_id = getelementptr inbounds %struct.virtio_gpu_ctrl_hdr, ptr %hdr, i32 0, i32 3
  %50 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ctx_id, align 8
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %ctx_id23 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %call13, i32 0, i32 7
  %53 = ptrtoint ptr %ctx_id23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ctx_id23, align 8
  %54 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rctx, align 4
  %56 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %55, ptr noundef %__data, i64 noundef 1, ptr noundef %57, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_virtio_gpu_cmd(ptr noundef %__data, ptr noundef %vq, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %vq to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %hdr to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_virtio_gpu_cmd(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %dev = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %vq = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq, align 4
  %name = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %type = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %flags1 = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1, align 8
  %fence_id = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %fence_id to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %fence_id, align 8
  %ctx_id = getelementptr inbounds %struct.trace_event_raw_virtio_gpu_cmd, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %ctx_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx_id, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.12, i32 noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11, i64 noundef %13, i32 noundef %15) #6
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__tracepoint_virtio_gpu_cmd_queue, !1, !"__tracepoint_virtio_gpu_cmd_queue", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/gpu/drm/virtio/virtgpu_trace.h", i32 38, i32 1}
!2 = !{ptr @__tracepoint_ptr_virtio_gpu_cmd_queue, !1, !"__tracepoint_ptr_virtio_gpu_cmd_queue", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_virtio_gpu_cmd_queue, !1, !"__SCK__tp_func_virtio_gpu_cmd_queue", i1 false, i1 false}
!4 = !{ptr @__tracepoint_virtio_gpu_cmd_response, !5, !"__tracepoint_virtio_gpu_cmd_response", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/gpu/drm/virtio/virtgpu_trace.h", i32 43, i32 1}
!6 = !{ptr @__tracepoint_ptr_virtio_gpu_cmd_response, !5, !"__tracepoint_ptr_virtio_gpu_cmd_response", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_virtio_gpu_cmd_response, !5, !"__SCK__tp_func_virtio_gpu_cmd_response", i1 false, i1 false}
!8 = !{ptr @event_class_virtio_gpu_cmd, !9, !"event_class_virtio_gpu_cmd", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/gpu/drm/virtio/virtgpu_trace.h", i32 11, i32 1}
!10 = !{ptr @event_virtio_gpu_cmd_queue, !1, !"event_virtio_gpu_cmd_queue", i1 false, i1 false}
!11 = !{ptr @__event_virtio_gpu_cmd_queue, !1, !"__event_virtio_gpu_cmd_queue", i1 false, i1 false}
!12 = !{ptr @event_virtio_gpu_cmd_response, !5, !"event_virtio_gpu_cmd_response", i1 false, i1 false}
!13 = !{ptr @__event_virtio_gpu_cmd_response, !5, !"__event_virtio_gpu_cmd_response", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_virtio_gpu_cmd_queue, !1, !"__bpf_trace_tp_map_virtio_gpu_cmd_queue", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_virtio_gpu_cmd_response, !5, !"__bpf_trace_tp_map_virtio_gpu_cmd_response", i1 false, i1 false}
!16 = !{ptr @__tpstrtab_virtio_gpu_cmd_queue, !1, !"__tpstrtab_virtio_gpu_cmd_queue", i1 false, i1 false}
!17 = !{ptr @__tpstrtab_virtio_gpu_cmd_response, !5, !"__tpstrtab_virtio_gpu_cmd_response", i1 false, i1 false}
!18 = !{ptr @str__virtio_gpu__trace_system_name, !19, !"str__virtio_gpu__trace_system_name", i1 false, i1 false}
!19 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!20 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @trace_event_fields_virtio_gpu_cmd, !9, !"trace_event_fields_virtio_gpu_cmd", i1 false, i1 false}
!33 = !{ptr @trace_event_type_funcs_virtio_gpu_cmd, !9, !"trace_event_type_funcs_virtio_gpu_cmd", i1 false, i1 false}
!34 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @print_fmt_virtio_gpu_cmd, !9, !"print_fmt_virtio_gpu_cmd", i1 false, i1 false}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"auto-init"}
