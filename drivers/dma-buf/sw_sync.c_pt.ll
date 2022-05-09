; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/sw_sync.c_pt.bc'
source_filename = "../drivers/dma-buf/sw_sync.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.5, %struct.trace_event, ptr, ptr, %union.anon.6, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.5 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.6 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.sync_timeline = type { %struct.kref, [32 x i8], i64, i32, %struct.rb_root, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_event_raw_sync_timeline = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sw_sync_create_fence_data = type { i32, [32 x i8], i32 }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sync_pt = type { %struct.dma_fence, %struct.list_head, %struct.rb_node }
%struct.dma_fence = type { ptr, ptr, %union.anon.100, i64, i64, i32, %struct.kref, i32 }
%union.anon.100 = type { i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_sync_timeline = internal constant [14 x i8] c"sync_timeline\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sync_timeline = dso_local global %struct.static_call_key { ptr @__traceiter_sync_timeline }, align 4
@__tracepoint_sync_timeline = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_sync_timeline, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_sync_timeline, ptr null, ptr @__traceiter_sync_timeline, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sync_timeline = internal constant ptr @__tracepoint_sync_timeline, section "__tracepoints_ptrs", align 4
@str__sync_trace__trace_system_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sync_trace\00", [21 x i8] zeroinitializer }, align 32
@trace_event_fields_sync_timeline = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.3 { %struct.anon.4 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.3 { %struct.anon.4 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_sync_timeline = internal global %struct.trace_event_class { ptr @str__sync_trace__trace_system_name, ptr @trace_event_raw_event_sync_timeline, ptr @perf_trace_sync_timeline, ptr @trace_event_reg, ptr @trace_event_fields_sync_timeline, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sync_timeline, i64 24), ptr getelementptr (i8, ptr @event_class_sync_timeline, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sync_timeline = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_sync_timeline, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_sync_timeline = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\22name=%s value=%d\22, __get_str(name), REC->value\00", [48 x i8] zeroinitializer }, align 32
@event_sync_timeline = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sync_timeline, %union.anon.5 { ptr @__tracepoint_sync_timeline }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sync_timeline }, ptr @print_fmt_sync_timeline, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_sync_timeline = internal global ptr @event_sync_timeline, section "_ftrace_events", align 4
@__bpf_trace_tp_map_sync_timeline = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_sync_timeline, ptr @__bpf_trace_sync_timeline, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@sw_sync_debugfs_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sw_sync_ioctl, ptr null, ptr null, i32 0, ptr @sw_sync_debugfs_open, ptr null, ptr @sw_sync_debugfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"name=%s value=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@timeline_fence_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @timeline_fence_get_driver_name, ptr @timeline_fence_get_timeline_name, ptr @timeline_fence_enable_signaling, ptr @timeline_fence_signaled, ptr null, ptr @timeline_fence_release, ptr @timeline_fence_value_str, ptr @timeline_fence_timeline_value_str }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_sync\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lld\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/dma-buf/sync_trace.h\00", [35 x i8] zeroinitializer }, align 32
@trace_sync_timeline.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@sync_timeline_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&obj->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074026241, i64 3223869184]
@___asan_gen_.17 = private unnamed_addr constant [35 x i8] c"str__sync_trace__trace_system_name\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 36, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [33 x i8] c"trace_event_fields_sync_timeline\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_sync_timeline\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [24 x i8] c"print_fmt_sync_timeline\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"event_sync_timeline\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"sw_sync_debugfs_fops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 407, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 156, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"timeline_fence_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 174, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 121, i32 9 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 163, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 171, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant [52 x i8] c"../include/trace/../../drivers/dma-buf/sync_trace.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 12, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 108, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private constant [29 x i8] c"../drivers/dma-buf/sw_sync.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 92, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 545, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__bpf_trace_tp_map_sync_timeline, ptr @__event_sync_timeline, ptr @__tracepoint_ptr_sync_timeline, ptr @__tracepoint_sync_timeline, ptr @event_class_sync_timeline, ptr @event_sync_timeline, ptr @str__sync_trace__trace_system_name, ptr @trace_event_fields_sync_timeline, ptr @trace_event_type_funcs_sync_timeline, ptr @print_fmt_sync_timeline, ptr @sw_sync_debugfs_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @timeline_fence_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sync_timeline_create.__key, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__sync_trace__trace_system_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_sync_timeline to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_sync_timeline to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_sync_timeline to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_sync_timeline to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_sync_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeline_fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_timeline_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sync_timeline(ptr nocapture readnone %__data, ptr noundef %timeline) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sync_timeline, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
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
  tail call void %2(ptr noundef %4, ptr noundef %timeline) #16
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sync_timeline(ptr noundef %__data, ptr noundef readonly %timeline) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #16
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !60

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #16
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.sync_timeline, ptr %timeline, i32 0, i32 1
  %call.i25 = tail call i32 @strlen(ptr noundef nonnull %name.i) #19
  %add = add i32 %call.i25, 17
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #16
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.i = shl i32 %call.i25, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_sync_timeline, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #20
  %value = getelementptr inbounds %struct.sync_timeline, ptr %timeline, i32 0, i32 3
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %value12 = getelementptr inbounds %struct.trace_event_raw_sync_timeline, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_sync_timeline(ptr noundef %__data, ptr noundef readonly %timeline) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #16
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #16
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !61
  %name.i = getelementptr inbounds %struct.sync_timeline, ptr %timeline, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #19
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65552
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !49) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 28
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #16
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #16
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !49) #16
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_sync_timeline, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #20
  %value = getelementptr inbounds %struct.sync_timeline, ptr %timeline, i32 0, i32 3
  %28 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value, align 8
  %value24 = getelementptr inbounds %struct.trace_event_raw_sync_timeline, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %value24, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_sync_timeline(ptr noundef %__data, ptr noundef %timeline) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %timeline to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sw_sync_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  %old.i.i.i.i.i.i.i = alloca i32, align 4
  %data.i = alloca %struct.sw_sync_create_fence_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1071098112, label %sw.bb
    i32 1074026241, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %data.i) #16
  %3 = call ptr @memset(ptr %data.i, i32 255, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.sw_sync_ioctl_create_fence.exit_crit_edge, label %if.end.i

sw.bb.sw_sync_ioctl_create_fence.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw_sync_ioctl_create_fence.exit

if.end.i:                                         ; preds = %sw.bb
  %4 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #16
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i.i, label %if.end.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.then11.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 40, i32 -1226833920) #21
  %asmresult.i.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !59

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data.i, i32 noundef 40) #16
  %6 = call i32 @llvm.read_register.i32(metadata !49) #16
  %and.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !62
  %and.i.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #16, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !64
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data.i, ptr noundef %4, i32 noundef 40) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !59

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i_crit_edge
  %res.0.i.i48.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 40, %if.end.i.if.then11.i.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 40, %res.0.i.i48.i
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i, i32 %sub.i.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i48.i)
  br label %err18.i

if.end3.i:                                        ; preds = %if.end.i.i.i
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 72) #22
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end3.i.err18.i_crit_edge, label %if.end.i.i

if.end3.i.err18.i_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err18.i

if.end.i.i:                                       ; preds = %if.end3.i
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #16
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #16, !srcloc !65
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !60

if.end.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.sync_timeline_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.sync_timeline_get.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sync_timeline_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i.i.i.i) #16
  br label %sync_timeline_get.exit.i.i

sync_timeline_get.exit.i.i:                       ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.sync_timeline_get.exit.i.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.sync_timeline, ptr %1, i32 0, i32 6
  %context.i.i = getelementptr inbounds %struct.sync_timeline, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %context.i.i, align 8
  %conv.i.i = zext i32 %11 to i64
  call void @dma_fence_init(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @timeline_fence_ops, ptr noundef %lock.i.i, i64 noundef %16, i64 noundef %conv.i.i) #16
  %link.i.i = getelementptr inbounds %struct.sync_pt, ptr %call7.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %link.i.i, ptr %link.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.sync_pt, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %link.i.i, ptr %prev.i.i.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #16
  %flags.i.i.i = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i.i.i, align 8
  %and1.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i38.i, label %sync_timeline_get.exit.i.i.if.then.i43.i_crit_edge

sync_timeline_get.exit.i.i.if.then.i43.i_crit_edge: ; preds = %sync_timeline_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i43.i

if.end.i.i38.i:                                   ; preds = %sync_timeline_get.exit.i.i
  %ops.i.i.i = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i.i, align 4
  %signaled.i.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %signaled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signaled.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i.i.i, label %if.end.i.i38.i.if.then4.i.i_crit_edge, label %land.lhs.true.i.i39.i

if.end.i.i38.i.if.then4.i.i_crit_edge:            ; preds = %if.end.i.i38.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i.i

land.lhs.true.i.i39.i:                            ; preds = %if.end.i.i38.i
  %call4.i.i.i = call zeroext i1 %24(ptr noundef nonnull %call7.i.i.i.i) #16
  br i1 %call4.i.i.i, label %if.then5.i.i.i, label %land.lhs.true.i.i39.i.if.then4.i.i_crit_edge

land.lhs.true.i.i39.i.if.then4.i.i_crit_edge:     ; preds = %land.lhs.true.i.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4.i.i

if.then5.i.i.i:                                   ; preds = %land.lhs.true.i.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i.i = call i32 @dma_fence_signal_locked(ptr noundef nonnull %call7.i.i.i.i) #16
  br label %if.then.i43.i

if.then4.i.i:                                     ; preds = %land.lhs.true.i.i39.i.if.then4.i.i_crit_edge, %if.end.i.i38.i.if.then4.i.i_crit_edge
  %pt_tree.i.i = getelementptr inbounds %struct.sync_timeline, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %pt_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pt_tree.i.i, align 4
  %tobool5.not89.i.i = icmp eq ptr %26, null
  br i1 %tobool5.not89.i.i, label %if.then4.i.i.while.end.i.i_crit_edge, label %if.then4.i.i.while.body.i.i_crit_edge

if.then4.i.i.while.body.i.i_crit_edge:            ; preds = %if.then4.i.i
  br label %while.body.i.i

if.then4.i.i.while.end.i.i_crit_edge:             ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then4.i.i.while.body.i.i_crit_edge
  %27 = phi ptr [ %45, %cleanup.i.i.while.body.i.i_crit_edge ], [ %26, %if.then4.i.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 -56
  %seqno.i.i = getelementptr i8, ptr %27, i32 -32
  %28 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %seqno.i.i, align 8
  %30 = trunc i64 %29 to i32
  %conv8.i.i = sub i32 %11, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i.i)
  %cmp9.i.i = icmp sgt i32 %conv8.i.i, 0
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.else.i.i

if.then11.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 1
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i.i)
  %cmp12.i.i = icmp slt i32 %conv8.i.i, 0
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.else15.i.i

if.then14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 2
  br label %cleanup.i.i

if.else15.i.i:                                    ; preds = %if.else.i.i
  %refcount.i.i.i = getelementptr i8, ptr %27, i32 -20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #16
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i.i, i32 noundef 4) #16
  %31 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %refcount.i.i.i, align 4
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %if.else15.i.i
  %33 = phi i32 [ %32, %if.else15.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge ]
  %34 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %old.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i.i

do.cond.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i
  %add.i.i.i.i.i73.i.i = add i32 %33, 1
  %call.i.i.i.i.i.i.i74.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #16
  %call.i3.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i.i, i32 noundef 4) #16
  %35 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i.i:                      ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i.i
  %37 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 %36, i32 %add.i.i.i.i.i73.i.i, ptr elementtype(i32) %refcount.i.i.i) #16, !srcloc !66
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  %tobool.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 1
  %cmp.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i.i, %36
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, !prof !59

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %38 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i.i = add i32 %39, 1
  %40 = or i32 %add5.i.i.i.i.i.i.i, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i.i.i75.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i.i.i75.i.i, label %if.end4.i.i.i.i.i.i.i.dma_fence_get_rcu.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !59

if.end4.i.i.i.i.i.i.i.dma_fence_get_rcu.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_fence_get_rcu.exit.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 0) #16
  br label %dma_fence_get_rcu.exit.i.i

dma_fence_get_rcu.exit.i.i:                       ; preds = %if.then10.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.dma_fence_get_rcu.exit.i.i_crit_edge
  %41 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool12.i.i.i.i.not.i.i.i = icmp eq i32 %42, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #16
  %tobool18.not86.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool18.not.i.i = select i1 %tobool12.i.i.i.i.not.i.i.i, i1 true, i1 %tobool18.not86.i.i
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %dma_fence_get_rcu.exit.i.i
  %call.i.i.i.i.i.i.i76.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !67
  call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #16
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #16, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i77.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i77.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i77.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i77.i.i)
  %.not.i.i.i.i.i78.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i77.i.i, 0
  br i1 %.not.i.i.i.i.i78.i.i, label %if.end5.i.i.i.i.i.i.i.cleanup.thread.i.i_crit_edge, label %if.then10.i.i.i.i.i79.i.i, !prof !59

if.end5.i.i.i.i.i.i.i.cleanup.thread.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread.i.i

if.then10.i.i.i.i.i79.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #16
  br label %cleanup.thread.i.i

if.then.i.i.i.i:                                  ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !69
  call void @sync_timeline_debug_remove(ptr noundef %1) #16
  call void @kfree(ptr noundef %1) #16
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.then.i.i.i.i, %if.then10.i.i.i.i.i79.i.i, %if.end5.i.i.i.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #16
  br label %if.then.i43.i

if.end20.i.i:                                     ; preds = %dma_fence_get_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rb_left21.i.i = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 2
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end20.i.i, %if.then14.i.i, %if.then11.i.i
  %p.2.i.i = phi ptr [ %rb_right.i.i, %if.then11.i.i ], [ %rb_left.i.i, %if.then14.i.i ], [ %rb_left21.i.i, %if.end20.i.i ]
  %44 = ptrtoint ptr %p.2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %p.2.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %45, null
  br i1 %tobool5.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.cast.le.i.i = ptrtoint ptr %27 to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %if.then4.i.i.while.end.i.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.then4.i.i.while.end.i.i_crit_edge ]
  %p.0.lcssa.i.i = phi ptr [ %p.2.i.i, %while.cond.while.end_crit_edge.i.i ], [ %pt_tree.i.i, %if.then4.i.i.while.end.i.i_crit_edge ]
  %node.i.i = getelementptr inbounds %struct.sync_pt, ptr %call7.i.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %parent.0.lcssa.i.i, ptr %node.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.sync_pt, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.sync_pt, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %49 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %node.i.i, ptr %p.0.lcssa.i.i, align 4
  call void @rb_insert_color(ptr noundef %node.i.i, ptr noundef %pt_tree.i.i) #16
  %call28.i.i = call ptr @rb_next(ptr noundef %node.i.i) #16
  %tobool30.not.i.i = icmp eq ptr %call28.i.i, null
  %link34.i.i = getelementptr i8, ptr %call28.i.i, i32 -8
  %pt_list.i.i = getelementptr inbounds %struct.sync_timeline, ptr %1, i32 0, i32 5
  %cond.i.i = select i1 %tobool30.not.i.i, ptr %pt_list.i.i, ptr %link34.i.i
  %prev.i80.i.i = getelementptr inbounds %struct.list_head, ptr %cond.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i80.i.i, align 4
  %call.i.i.i40.i = call zeroext i1 @__list_add_valid(ptr noundef %link.i.i, ptr noundef %51, ptr noundef %cond.i.i) #16
  br i1 %call.i.i.i40.i, label %if.end.i.i.i.i, label %while.end.i.i.if.then.i43.i_crit_edge

while.end.i.i.if.then.i43.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i43.i

if.end.i.i.i.i:                                   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %prev.i80.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %link.i.i, ptr %prev.i80.i.i, align 4
  %53 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %cond.i.i, ptr %link.i.i, align 8
  %54 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %link.i.i, ptr %51, align 4
  br label %if.then.i43.i

if.then.i43.i:                                    ; preds = %if.end.i.i.i.i, %while.end.i.i.if.then.i43.i_crit_edge, %cleanup.thread.i.i, %if.then5.i.i.i, %sync_timeline_get.exit.i.i.if.then.i43.i_crit_edge
  %pt.3.i56.i = phi ptr [ %call7.i.i.i.i, %sync_timeline_get.exit.i.i.if.then.i43.i_crit_edge ], [ %call7.i.i.i.i, %if.then5.i.i.i ], [ %add.ptr.i.i, %cleanup.thread.i.i ], [ %call7.i.i.i.i, %while.end.i.i.if.then.i43.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #16
  %call8.i = call ptr @sync_file_create(ptr noundef nonnull %pt.3.i56.i) #16
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %pt.3.i56.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !67
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #16
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #16, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i42.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i42.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i42.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i44.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i42.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i42.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !59

if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_fence_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #16
  br label %dma_fence_put.exit.i

if.then.i.i44.i:                                  ; preds = %if.then.i43.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !69
  call void @dma_fence_release(ptr noundef %refcount.i.i) #16, !callees !70
  br label %dma_fence_put.exit.i

dma_fence_put.exit.i:                             ; preds = %if.then.i.i44.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dma_fence_put.exit.i_crit_edge
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %dma_fence_put.exit.i.err18.i_crit_edge, label %if.end12.i

dma_fence_put.exit.i.err18.i_crit_edge:           ; preds = %dma_fence_put.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err18.i

if.end12.i:                                       ; preds = %dma_fence_put.exit.i
  %fence.i = getelementptr inbounds %struct.sw_sync_create_fence_data, ptr %data.i, i32 0, i32 2
  %57 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call.i, ptr %fence.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #16
  %call.i.i33.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i33.i, label %if.end12.i.if.then15.i_crit_edge, label %copy_to_user.exit.i

if.end12.i.if.then15.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

copy_to_user.exit.i:                              ; preds = %if.end12.i
  %call.i.i.i36.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data.i, i32 noundef 40) #16
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %data.i, i32 noundef 40) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool14.not.i = icmp eq i32 %call.i1.i.i.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %copy_to_user.exit.i.if.then15.i_crit_edge

copy_to_user.exit.i.if.then15.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then15.i

if.then15.i:                                      ; preds = %copy_to_user.exit.i.if.then15.i_crit_edge, %if.end12.i.if.then15.i_crit_edge
  %58 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call8.i, align 4
  call void @fput(ptr noundef %59) #16
  br label %err18.i

if.end16.i:                                       ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call8.i, align 4
  call void @fd_install(i32 noundef %call.i, ptr noundef %61) #16
  br label %sw_sync_ioctl_create_fence.exit

err18.i:                                          ; preds = %if.then15.i, %dma_fence_put.exit.i.err18.i_crit_edge, %if.end3.i.err18.i_crit_edge, %if.then11.i.i.i
  %err.0.i = phi i32 [ -14, %if.then15.i ], [ -12, %dma_fence_put.exit.i.err18.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -12, %if.end3.i.err18.i_crit_edge ]
  call void @put_unused_fd(i32 noundef %call.i) #16
  br label %sw_sync_ioctl_create_fence.exit

sw_sync_ioctl_create_fence.exit:                  ; preds = %err18.i, %if.end16.i, %sw.bb.sw_sync_ioctl_create_fence.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %err18.i ], [ 0, %if.end16.i ], [ %call.i, %sw.bb.sw_sync_ioctl_create_fence.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %data.i) #16
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #16
  %62 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %value.i, align 4, !annotation !61
  %63 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #16
  %call.i.i.i5 = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i.i5, label %sw.bb1.if.then11.i.i.i19_crit_edge, label %land.lhs.true.i.i.i8

sw.bb1.if.then11.i.i.i19_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i.i19

land.lhs.true.i.i.i8:                             ; preds = %sw.bb1
  %64 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 4, i32 -1226833920) #21, !srcloc !71
  %asmresult.i.i.i6 = extractvalue { i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i6)
  %cmp.i6.i.i7 = icmp eq i32 %asmresult.i.i.i6, 0
  br i1 %cmp.i6.i.i7, label %if.end.i.i.i16, label %land.lhs.true.i.i.i8.if.then11.i.i.i19_crit_edge, !prof !59

land.lhs.true.i.i.i8.if.then11.i.i.i19_crit_edge: ; preds = %land.lhs.true.i.i.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i.i19

if.end.i.i.i16:                                   ; preds = %land.lhs.true.i.i.i8
  %call.i.i.i.i9 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value.i, i32 noundef 4) #16
  %65 = call i32 @llvm.read_register.i32(metadata !49) #16
  %and.i.i.i.i.i.i.i10 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i.i10 to ptr
  %cpu_domain.i.i.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 4
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i11) #5, !srcloc !62
  %and.i.i.i.i.i12 = and i32 %67, -13
  %or.i.i.i.i.i13 = or i32 %and.i.i.i.i.i12, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i13) #16, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !64
  %call1.i.i.i.i14 = call i32 @arm_copy_from_user(ptr noundef nonnull %value.i, ptr noundef %63, i32 noundef 4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #16, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i14)
  %tobool4.not.i.i.i15 = icmp eq i32 %call1.i.i.i.i14, 0
  br i1 %tobool4.not.i.i.i15, label %copy_from_user.exit.i, label %if.end.i.i.i16.if.then11.i.i.i19_crit_edge, !prof !59

if.end.i.i.i16.if.then11.i.i.i19_crit_edge:       ; preds = %if.end.i.i.i16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i.i19

if.then11.i.i.i19:                                ; preds = %if.end.i.i.i16.if.then11.i.i.i19_crit_edge, %land.lhs.true.i.i.i8.if.then11.i.i.i19_crit_edge, %sw.bb1.if.then11.i.i.i19_crit_edge
  %res.0.i.i4.i = phi i32 [ %call1.i.i.i.i14, %if.end.i.i.i16.if.then11.i.i.i19_crit_edge ], [ 4, %sw.bb1.if.then11.i.i.i19_crit_edge ], [ 4, %land.lhs.true.i.i.i8.if.then11.i.i.i19_crit_edge ]
  %sub.i.i.i17 = sub i32 4, %res.0.i.i4.i
  %add.ptr.i.i.i18 = getelementptr i8, ptr %value.i, i32 %sub.i.i.i17
  %68 = call ptr @memset(ptr %add.ptr.i.i.i18, i32 0, i32 %res.0.i.i4.i)
  br label %sw_sync_ioctl_inc.exit

copy_from_user.exit.i:                            ; preds = %if.end.i.i.i16
  %69 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr.i = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp7.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp7.i, label %copy_from_user.exit.i.while.body.i_crit_edge, label %copy_from_user.exit.i.while.end.i_crit_edge

copy_from_user.exit.i.while.end.i_crit_edge:      ; preds = %copy_from_user.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

copy_from_user.exit.i.while.body.i_crit_edge:     ; preds = %copy_from_user.exit.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %copy_from_user.exit.i.while.body.i_crit_edge
  call fastcc void @sync_timeline_signal(ptr noundef %1, i32 noundef 2147483647) #16
  %70 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %value.i, align 4
  %sub.i = add i32 %71, -2147483647
  store i32 %sub.i, ptr %value.i, align 4
  %cmp.i20 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i20, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %copy_from_user.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %.pr.i, %copy_from_user.exit.i.while.end.i_crit_edge ], [ %sub.i, %while.body.i.while.end.i_crit_edge ]
  call fastcc void @sync_timeline_signal(ptr noundef %1, i32 noundef %.lcssa.i) #16
  br label %sw_sync_ioctl_inc.exit

sw_sync_ioctl_inc.exit:                           ; preds = %while.end.i, %if.then11.i.i.i19
  %retval.0.i21 = phi i32 [ 0, %while.end.i ], [ -14, %if.then11.i.i.i19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #16
  br label %cleanup

cleanup:                                          ; preds = %sw_sync_ioctl_inc.exit, %sw_sync_ioctl_create_fence.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %sw_sync_ioctl_inc.exit ], [ %retval.0.i, %sw_sync_ioctl_create_fence.exit ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sw_sync_debugfs_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  %task_comm = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %task_comm) #16
  %0 = call ptr @memset(ptr %task_comm, i32 255, i32 16)
  %1 = tail call i32 @llvm.read_register.i32(metadata !49) #16
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %call1 = call ptr @__get_task_comm(ptr noundef nonnull %task_comm, i32 noundef 16, ptr noundef %4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 120) #22
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #16
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %call1.i = call i64 @dma_fence_context_alloc(i32 noundef 1) #16
  %context.i = getelementptr inbounds %struct.sync_timeline, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %context.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call1.i, ptr %context.i, align 8
  %name2.i = getelementptr inbounds %struct.sync_timeline, ptr %call7.i.i.i, i32 0, i32 1
  %call3.i = call i32 @strlcpy(ptr noundef %name2.i, ptr noundef nonnull %task_comm, i32 noundef 32) #16
  %pt_tree.i = getelementptr inbounds %struct.sync_timeline, ptr %call7.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %pt_tree.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pt_tree.i, align 4
  %pt_list.i = getelementptr inbounds %struct.sync_timeline, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %pt_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %pt_list.i, ptr %pt_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.sync_timeline, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pt_list.i, ptr %prev.i.i, align 4
  %lock.i = getelementptr inbounds %struct.sync_timeline, ptr %call7.i.i.i, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @sync_timeline_create.__key, i16 noundef signext 3) #16
  call void @sync_timeline_debug_add(ptr noundef nonnull %call7.i.i.i) #16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %task_comm) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sw_sync_debugfs_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.sync_timeline, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #16
  %pt_list = getelementptr inbounds %struct.sync_timeline, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pt_list, align 8
  %cmp.not24 = icmp eq ptr %3, %pt_list
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %dma_fence_set_error.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn, %dma_fence_set_error.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %pt.0 = getelementptr i8, ptr %.pn.in25, i32 -48
  %4 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in25, align 8
  %flags.i = getelementptr i8, ptr %.pn.in25, i32 -16
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %for.body.dma_fence_set_error.exit_crit_edge, label %do.end.i, !prof !59

for.body.dma_fence_set_error.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_fence_set_error.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 545, i32 noundef 9, ptr noundef null) #16
  br label %dma_fence_set_error.exit

dma_fence_set_error.exit:                         ; preds = %do.end.i, %for.body.dma_fence_set_error.exit_crit_edge
  %error51.i = getelementptr i8, ptr %.pn.in25, i32 -8
  %7 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2, ptr %error51.i, align 8
  %call = tail call i32 @dma_fence_signal_locked(ptr noundef %pt.0) #16
  %cmp.not = icmp eq ptr %.pn, %pt_list
  br i1 %cmp.not, label %dma_fence_set_error.exit.for.end_crit_edge, label %dma_fence_set_error.exit.for.body_crit_edge

dma_fence_set_error.exit.for.body_crit_edge:      ; preds = %dma_fence_set_error.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

dma_fence_set_error.exit.for.end_crit_edge:       ; preds = %dma_fence_set_error.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %dma_fence_set_error.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #16
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #16, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sync_timeline_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !59

if.end5.i.i.i.i.i.sync_timeline_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sync_timeline_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #16
  br label %sync_timeline_put.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !69
  tail call void @sync_timeline_debug_remove(ptr noundef %1) #16
  tail call void @kfree(ptr noundef %1) #16
  br label %sync_timeline_put.exit

sync_timeline_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sync_timeline_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sync_timeline(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_sync_timeline, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %value = getelementptr inbounds %struct.trace_event_raw_sync_timeline, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, ptr noundef %add.ptr, i32 noundef %5) #16
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #16
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sync_file_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @timeline_fence_get_driver_name(ptr nocapture noundef readnone %fence) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @timeline_fence_get_timeline_name(ptr nocapture noundef readonly %fence) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %name = getelementptr i8, ptr %1, i32 -60
  ret ptr %name
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @timeline_fence_enable_signaling(ptr nocapture noundef readnone %fence) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @timeline_fence_signaled(ptr nocapture noundef readonly %fence) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %2 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %seqno, align 8
  %value = getelementptr i8, ptr %1, i32 -16
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %conv = sext i32 %5 to i64
  %ops = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp.i = icmp ule i64 %3, %conv
  %conv.i = trunc i64 %3 to i32
  %sub.i = sub i32 %conv.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 1
  %retval.0.i = select i1 %tobool.not.i, i1 %cmp3.i, i1 %cmp.i
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timeline_fence_release(ptr noundef %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %1, @timeline_fence_ops
  %fence..i = select i1 %cmp.not.i, ptr %fence, ptr null
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -64
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %link = getelementptr inbounds %struct.sync_pt, ptr %fence..i, i32 0, i32 1
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %5, %link
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.sync_pt, ptr %fence..i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.sync_pt, ptr %fence..i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %node = getelementptr inbounds %struct.sync_pt, ptr %fence..i, i32 0, i32 2
  %pt_tree = getelementptr i8, ptr %3, i32 -12
  tail call void @rb_erase(ptr noundef %node, ptr noundef %pt_tree) #16
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fence, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %call4) #16
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #16, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sync_timeline_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !59

if.end5.i.i.i.i.i.sync_timeline_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sync_timeline_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 3) #16
  br label %sync_timeline_put.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !69
  tail call void @sync_timeline_debug_remove(ptr noundef %add.ptr.i) #16
  tail call void @kfree(ptr noundef %add.ptr.i) #16
  br label %sync_timeline_put.exit

sync_timeline_put.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sync_timeline_put.exit_crit_edge
  tail call void @dma_fence_free(ptr noundef %fence) #16
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timeline_fence_value_str(ptr nocapture noundef readonly %fence, ptr nocapture noundef writeonly %str, i32 noundef %size) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %0 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %seqno, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.10, i64 noundef %1)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timeline_fence_timeline_value_str(ptr nocapture noundef readonly %fence, ptr nocapture noundef writeonly %str, i32 noundef %size) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %value = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.11, i32 noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_timeline_debug_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sync_timeline_signal(ptr noundef %obj, i32 noundef %inc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_sync_timeline(ptr noundef %obj)
  %lock = getelementptr inbounds %struct.sync_timeline, ptr %obj, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #16
  %value = getelementptr inbounds %struct.sync_timeline, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  %add = add i32 %1, %inc
  store i32 %add, ptr %value, align 8
  %pt_list = getelementptr inbounds %struct.sync_timeline, ptr %obj, i32 0, i32 5
  %2 = ptrtoint ptr %pt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pt_list, align 8
  %cmp.not32 = icmp eq ptr %3, %pt_list
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pt_tree = getelementptr inbounds %struct.sync_timeline, ptr %obj, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in33 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn36, %list_del_init.exit.for.body_crit_edge ]
  %pt.035 = getelementptr i8, ptr %.pn.in33, i32 -48
  %4 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn36 = load ptr, ptr %.pn.in33, align 8
  %5 = ptrtoint ptr %pt.035 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pt.035, align 8
  %seqno.i = getelementptr i8, ptr %.pn.in33, i32 -24
  %7 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %seqno.i, align 8
  %value.i = getelementptr i8, ptr %6, i32 -16
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i, align 8
  %conv.i = sext i32 %10 to i64
  %ops.i = getelementptr i8, ptr %.pn.in33, i32 -44
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv.i)
  %cmp.i.i = icmp ule i64 %8, %conv.i
  %conv.i.i = trunc i64 %8 to i32
  %sub.i.i = sub i32 %conv.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 1
  %retval.0.i.i = select i1 %tobool.not.i.i, i1 %cmp3.i.i, i1 %cmp.i.i
  br i1 %retval.0.i.i, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %.pn.in33, ptr %.pn.in33, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.pn.in33, ptr %prev.i3.i, align 4
  %node = getelementptr i8, ptr %.pn.in33, i32 8
  tail call void @rb_erase(ptr noundef %node, ptr noundef %pt_tree) #16
  %call10 = tail call i32 @dma_fence_signal_locked(ptr noundef %pt.035) #16
  %cmp.not = icmp eq ptr %.pn36, %pt_list
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sync_timeline(ptr noundef %timeline) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sync_timeline, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_sync_timeline, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !59

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !49) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !74
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sync_timeline, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %timeline) #16
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !75
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !75
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !49) #16
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !49) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !59

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !49) #16
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !76
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_sync_timeline, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sync_timeline.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_sync_timeline.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 28, ptr noundef nonnull @.str.13) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !77
  %38 = tail call i32 @llvm.read_register.i32(metadata !49) #16
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
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_timeline_debug_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !46, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__tracepoint_sync_timeline, !1, !"__tracepoint_sync_timeline", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/dma-buf/sync_trace.h", i32 12, i32 1}
!2 = !{ptr @__tracepoint_ptr_sync_timeline, !1, !"__tracepoint_ptr_sync_timeline", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_sync_timeline, !1, !"__SCK__tp_func_sync_timeline", i1 false, i1 false}
!4 = !{ptr @event_class_sync_timeline, !1, !"event_class_sync_timeline", i1 false, i1 false}
!5 = !{ptr @event_sync_timeline, !1, !"event_sync_timeline", i1 false, i1 false}
!6 = !{ptr @__event_sync_timeline, !1, !"__event_sync_timeline", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_sync_timeline, !1, !"__bpf_trace_tp_map_sync_timeline", i1 false, i1 false}
!8 = !{ptr @sw_sync_debugfs_fops, !9, !"sw_sync_debugfs_fops", i1 false, i1 false}
!9 = !{!"../drivers/dma-buf/sw_sync.c", i32 407, i32 30}
!10 = !{ptr @__tpstrtab_sync_timeline, !1, !"__tpstrtab_sync_timeline", i1 false, i1 false}
!11 = !{ptr @str__sync_trace__trace_system_name, !12, !"str__sync_trace__trace_system_name", i1 false, i1 false}
!12 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!13 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @trace_event_fields_sync_timeline, !1, !"trace_event_fields_sync_timeline", i1 false, i1 false}
!19 = !{ptr @trace_event_type_funcs_sync_timeline, !1, !"trace_event_type_funcs_sync_timeline", i1 false, i1 false}
!20 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @print_fmt_sync_timeline, !1, !"print_fmt_sync_timeline", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!24 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!29 = !{ptr @timeline_fence_ops, !30, !"timeline_fence_ops", i1 false, i1 false}
!30 = !{!"../drivers/dma-buf/sw_sync.c", i32 174, i32 35}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma-buf/sw_sync.c", i32 121, i32 9}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma-buf/sw_sync.c", i32 163, i32 22}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma-buf/sw_sync.c", i32 171, i32 22}
!37 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!38 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sync_timeline_create.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/dma-buf/sw_sync.c", i32 92, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/dma-fence.h", i32 545, i32 2}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{!"auto-init"}
!62 = !{i64 4672362}
!63 = !{i64 4672559}
!64 = !{i64 2152157792}
!65 = !{i64 2148667396, i64 2148667428, i64 2148667457, i64 2148667491, i64 2148667522, i64 2148667545}
!66 = !{i64 1151379, i64 1151403, i64 1151424, i64 1151441, i64 1151458}
!67 = !{i64 2148755421}
!68 = !{i64 2148669861, i64 2148669893, i64 2148669922, i64 2148669956, i64 2148669987, i64 2148670010}
!69 = !{i64 2150374972}
!70 = distinct !{ptr @dma_fence_release, null}
!71 = !{i64 2152176807, i64 2152176832}
!72 = !{i8 0, i8 2}
!73 = !{i64 2148490464, i64 2148490469, i64 2148490482, i64 2148490526, i64 2148490560, i64 2148490581}
!74 = !{i64 2153527847}
!75 = !{i64 2153528052}
!76 = !{i64 2149485333}
!77 = !{i64 2149486369}
