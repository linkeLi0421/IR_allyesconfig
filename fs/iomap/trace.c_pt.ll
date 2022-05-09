; ModuleID = '/llk/IR_all_yes/fs/iomap/trace.c_pt.bc'
source_filename = "../fs/iomap/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.101, %struct.trace_event, ptr, ptr, %union.anon.102, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.101 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.102 = type { ptr }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.trace_event_raw_iomap_readpage_class = type { %struct.trace_entry, i32, i64, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_iomap_range_class = type { %struct.trace_entry, i32, i64, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_iomap_class = type { %struct.trace_entry, i32, i64, i64, i64, i64, i16, i16, i32, [0 x i8] }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_event_raw_iomap_iter = type { %struct.trace_entry, i32, i64, i64, i64, i32, ptr, i32, [0 x i8] }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_iomap_readpage = internal constant [15 x i8] c"iomap_readpage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_readpage = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_readpage }, align 4
@__tracepoint_iomap_readpage = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iomap_readpage, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iomap_readpage, ptr null, ptr @__traceiter_iomap_readpage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_readpage = internal constant ptr @__tracepoint_iomap_readpage, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_readahead = internal constant [16 x i8] c"iomap_readahead\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_readahead = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_readahead }, align 4
@__tracepoint_iomap_readahead = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iomap_readahead, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iomap_readahead, ptr null, ptr @__traceiter_iomap_readahead, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_readahead = internal constant ptr @__tracepoint_iomap_readahead, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_writepage = internal constant [16 x i8] c"iomap_writepage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_writepage = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_writepage }, align 4
@__tracepoint_iomap_writepage = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iomap_writepage, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iomap_writepage, ptr null, ptr @__traceiter_iomap_writepage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_writepage = internal constant ptr @__tracepoint_iomap_writepage, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_releasepage = internal constant [18 x i8] c"iomap_releasepage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_releasepage = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_releasepage }, align 4
@__tracepoint_iomap_releasepage = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iomap_releasepage, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iomap_releasepage, ptr null, ptr @__traceiter_iomap_releasepage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_releasepage = internal constant ptr @__tracepoint_iomap_releasepage, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_invalidatepage = internal constant [21 x i8] c"iomap_invalidatepage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_invalidatepage = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_invalidatepage }, align 4
@__tracepoint_iomap_invalidatepage = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iomap_invalidatepage, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iomap_invalidatepage, ptr null, ptr @__traceiter_iomap_invalidatepage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_invalidatepage = internal constant ptr @__tracepoint_iomap_invalidatepage, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_dio_invalidate_fail = internal constant [26 x i8] c"iomap_dio_invalidate_fail\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_dio_invalidate_fail = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_dio_invalidate_fail }, align 4
@__tracepoint_iomap_dio_invalidate_fail = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iomap_dio_invalidate_fail, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iomap_dio_invalidate_fail, ptr null, ptr @__traceiter_iomap_dio_invalidate_fail, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_dio_invalidate_fail = internal constant ptr @__tracepoint_iomap_dio_invalidate_fail, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_iter_dstmap = internal constant [18 x i8] c"iomap_iter_dstmap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_iter_dstmap = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_iter_dstmap }, align 4
@__tracepoint_iomap_iter_dstmap = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iomap_iter_dstmap, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iomap_iter_dstmap, ptr null, ptr @__traceiter_iomap_iter_dstmap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_iter_dstmap = internal constant ptr @__tracepoint_iomap_iter_dstmap, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_iter_srcmap = internal constant [18 x i8] c"iomap_iter_srcmap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_iter_srcmap = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_iter_srcmap }, align 4
@__tracepoint_iomap_iter_srcmap = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iomap_iter_srcmap, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iomap_iter_srcmap, ptr null, ptr @__traceiter_iomap_iter_srcmap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_iter_srcmap = internal constant ptr @__tracepoint_iomap_iter_srcmap, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_iter = internal constant [11 x i8] c"iomap_iter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_iter = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_iter }, align 4
@__tracepoint_iomap_iter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_iomap_iter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_iomap_iter, ptr null, ptr @__traceiter_iomap_iter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_iter = internal constant ptr @__tracepoint_iomap_iter, section "__tracepoints_ptrs", align 4
@str__iomap__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iomap\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_iomap_readpage_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.99 { %struct.anon.100 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.99 { %struct.anon.100 { ptr @.str.5, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_iomap_readpage_class = internal global %struct.trace_event_class { ptr @str__iomap__trace_system_name, ptr @trace_event_raw_event_iomap_readpage_class, ptr @perf_trace_iomap_readpage_class, ptr @trace_event_reg, ptr @trace_event_fields_iomap_readpage_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iomap_readpage_class, i64 24), ptr getelementptr (i8, ptr @event_class_iomap_readpage_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iomap_readpage_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_iomap_readpage_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_iomap_readpage_class = internal global { [147 x i8], [45 x i8] } { [147 x i8] c"\22dev %d:%d ino 0x%llx nr_pages %d\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->ino, REC->nr_pages\00", [45 x i8] zeroinitializer }, align 32
@event_iomap_readpage = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_readpage_class, %union.anon.101 { ptr @__tracepoint_iomap_readpage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_readpage_class }, ptr @print_fmt_iomap_readpage_class, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iomap_readpage = internal global ptr @event_iomap_readpage, section "_ftrace_events", align 4
@event_iomap_readahead = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_readpage_class, %union.anon.101 { ptr @__tracepoint_iomap_readahead }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_readpage_class }, ptr @print_fmt_iomap_readpage_class, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iomap_readahead = internal global ptr @event_iomap_readahead, section "_ftrace_events", align 4
@trace_event_fields_iomap_range_class = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.99 { %struct.anon.100 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.99 { %struct.anon.100 { ptr @.str.8, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.99 { %struct.anon.100 { ptr @.str.9, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.99 { %struct.anon.100 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_iomap_range_class = internal global %struct.trace_event_class { ptr @str__iomap__trace_system_name, ptr @trace_event_raw_event_iomap_range_class, ptr @perf_trace_iomap_range_class, ptr @trace_event_reg, ptr @trace_event_fields_iomap_range_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iomap_range_class, i64 24), ptr getelementptr (i8, ptr @event_class_iomap_range_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iomap_range_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_iomap_range_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_iomap_range_class = internal global { [197 x i8], [59 x i8] } { [197 x i8] c"\22dev %d:%d ino 0x%llx size 0x%llx offset 0x%llx length 0x%llx\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->ino, REC->size, REC->offset, REC->length\00", [59 x i8] zeroinitializer }, align 32
@event_iomap_writepage = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_range_class, %union.anon.101 { ptr @__tracepoint_iomap_writepage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_range_class }, ptr @print_fmt_iomap_range_class, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iomap_writepage = internal global ptr @event_iomap_writepage, section "_ftrace_events", align 4
@event_iomap_releasepage = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_range_class, %union.anon.101 { ptr @__tracepoint_iomap_releasepage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_range_class }, ptr @print_fmt_iomap_range_class, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iomap_releasepage = internal global ptr @event_iomap_releasepage, section "_ftrace_events", align 4
@event_iomap_invalidatepage = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_range_class, %union.anon.101 { ptr @__tracepoint_iomap_invalidatepage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_range_class }, ptr @print_fmt_iomap_range_class, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iomap_invalidatepage = internal global ptr @event_iomap_invalidatepage, section "_ftrace_events", align 4
@event_iomap_dio_invalidate_fail = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_range_class, %union.anon.101 { ptr @__tracepoint_iomap_dio_invalidate_fail }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_range_class }, ptr @print_fmt_iomap_range_class, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iomap_dio_invalidate_fail = internal global ptr @event_iomap_dio_invalidate_fail, section "_ftrace_events", align 4
@trace_event_fields_iomap_class = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.99 { %struct.anon.100 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.99 { %struct.anon.100 { ptr @.str.12, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.99 { %struct.anon.100 { ptr @.str.9, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.99 { %struct.anon.100 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.99 { %struct.anon.100 { ptr @.str.14, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.99 { %struct.anon.100 { ptr @.str.15, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_iomap_class = internal global %struct.trace_event_class { ptr @str__iomap__trace_system_name, ptr @trace_event_raw_event_iomap_class, ptr @perf_trace_iomap_class, ptr @trace_event_reg, ptr @trace_event_fields_iomap_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iomap_class, i64 24), ptr getelementptr (i8, ptr @event_class_iomap_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iomap_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_iomap_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_iomap_class = internal global { [582 x i8], [154 x i8] } { [582 x i8] c"\22dev %d:%d ino 0x%llx bdev %d:%d addr 0x%llx offset 0x%llx length 0x%llx type %s flags %s\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->ino, ((unsigned int) ((REC->bdev) >> 20)), ((unsigned int) ((REC->bdev) & ((1U << 20) - 1))), REC->addr, REC->offset, REC->length, __print_symbolic(REC->type, { 0, \22HOLE\22 }, { 1, \22DELALLOC\22 }, { 2, \22MAPPED\22 }, { 3, \22UNWRITTEN\22 }, { 4, \22INLINE\22 }), __print_flags(REC->flags, \22|\22, { 0x01, \22NEW\22 }, { 0x02, \22DIRTY\22 }, { 0x04, \22SHARED\22 }, { 0x08, \22MERGED\22 }, { 0x10, \22BH\22 }, { 0x100, \22SIZE_CHANGED\22 })\00", [154 x i8] zeroinitializer }, align 32
@event_iomap_iter_dstmap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_class, %union.anon.101 { ptr @__tracepoint_iomap_iter_dstmap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_class }, ptr @print_fmt_iomap_class, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iomap_iter_dstmap = internal global ptr @event_iomap_iter_dstmap, section "_ftrace_events", align 4
@event_iomap_iter_srcmap = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_class, %union.anon.101 { ptr @__tracepoint_iomap_iter_srcmap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_class }, ptr @print_fmt_iomap_class, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iomap_iter_srcmap = internal global ptr @event_iomap_iter_srcmap, section "_ftrace_events", align 4
@trace_event_fields_iomap_iter = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.99 { %struct.anon.100 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.99 { %struct.anon.100 { ptr @.str.30, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.99 { %struct.anon.100 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.99 { %struct.anon.100 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.99 { %struct.anon.100 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.99 { %struct.anon.100 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_iomap_iter = internal global %struct.trace_event_class { ptr @str__iomap__trace_system_name, ptr @trace_event_raw_event_iomap_iter, ptr @perf_trace_iomap_iter, ptr @trace_event_reg, ptr @trace_event_fields_iomap_iter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iomap_iter, i64 24), ptr getelementptr (i8, ptr @event_class_iomap_iter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iomap_iter = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_iomap_iter, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_iomap_iter = internal global { [418 x i8], [126 x i8] } { [418 x i8] c"\22dev %d:%d ino 0x%llx pos 0x%llx length 0x%llx flags %s (0x%x) ops %ps caller %pS\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->ino, REC->pos, REC->length, __print_flags(REC->flags, \22|\22, { (1 << 0), \22WRITE\22 }, { (1 << 1), \22ZERO\22 }, { (1 << 2), \22REPORT\22 }, { (1 << 3), \22FAULT\22 }, { (1 << 4), \22DIRECT\22 }, { (1 << 5), \22NOWAIT\22 }), REC->flags, REC->ops, (void *)REC->caller\00", [126 x i8] zeroinitializer }, align 32
@event_iomap_iter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_iter, %union.anon.101 { ptr @__tracepoint_iomap_iter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_iter }, ptr @print_fmt_iomap_iter, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_iomap_iter = internal global ptr @event_iomap_iter, section "_ftrace_events", align 4
@__bpf_trace_tp_map_iomap_readpage = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_iomap_readpage, ptr @__bpf_trace_iomap_readpage_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iomap_readahead = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_iomap_readahead, ptr @__bpf_trace_iomap_readpage_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iomap_writepage = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_iomap_writepage, ptr @__bpf_trace_iomap_range_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iomap_releasepage = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_iomap_releasepage, ptr @__bpf_trace_iomap_range_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iomap_invalidatepage = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_iomap_invalidatepage, ptr @__bpf_trace_iomap_range_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iomap_dio_invalidate_fail = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_iomap_dio_invalidate_fail, ptr @__bpf_trace_iomap_range_class, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iomap_iter_dstmap = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_iomap_iter_dstmap, ptr @__bpf_trace_iomap_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iomap_iter_srcmap = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_iomap_iter_srcmap, ptr @__bpf_trace_iomap_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_iomap_iter = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_iomap_iter, ptr @__bpf_trace_iomap_iter, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dev_t\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ino\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_pages\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dev %d:%d ino 0x%llx nr_pages %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loff_t\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"dev %d:%d ino 0x%llx size 0x%llx offset 0x%llx length 0x%llx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bdev\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"dev %d:%d ino 0x%llx bdev %d:%d addr 0x%llx offset 0x%llx length 0x%llx type %s flags %s\0A\00", [38 x i8] zeroinitializer }, align 32
@trace_raw_output_iomap_class.symbols = internal constant { [6 x %struct.trace_print_flags], [48 x i8] } { [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.18 }, %struct.trace_print_flags { i32 1, ptr @.str.19 }, %struct.trace_print_flags { i32 2, ptr @.str.20 }, %struct.trace_print_flags { i32 3, ptr @.str.21 }, %struct.trace_print_flags { i32 4, ptr @.str.22 }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HOLE\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DELALLOC\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MAPPED\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UNWRITTEN\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INLINE\00", [25 x i8] zeroinitializer }, align 32
@trace_raw_output_iomap_class.__flags = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.23 }, %struct.trace_print_flags { i32 2, ptr @.str.24 }, %struct.trace_print_flags { i32 4, ptr @.str.25 }, %struct.trace_print_flags { i32 8, ptr @.str.26 }, %struct.trace_print_flags { i32 16, ptr @.str.27 }, %struct.trace_print_flags { i32 256, ptr @.str.28 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEW\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DIRTY\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHARED\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MERGED\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BH\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SIZE_CHANGED\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pos\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ops\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"caller\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"dev %d:%d ino 0x%llx pos 0x%llx length 0x%llx flags %s (0x%x) ops %ps caller %pS\0A\00", [46 x i8] zeroinitializer }, align 32
@trace_raw_output_iomap_iter.__flags = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.37 }, %struct.trace_print_flags { i32 2, ptr @.str.38 }, %struct.trace_print_flags { i32 4, ptr @.str.39 }, %struct.trace_print_flags { i32 8, ptr @.str.40 }, %struct.trace_print_flags { i32 16, ptr @.str.41 }, %struct.trace_print_flags { i32 32, ptr @.str.42 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZERO\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REPORT\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FAULT\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIRECT\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOWAIT\00", [25 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [20 x i8] c"../fs/iomap/trace.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [30 x i8] c"str__iomap__trace_system_name\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 36, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [40 x i8] c"trace_event_fields_iomap_readpage_class\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_iomap_readpage_class\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"print_fmt_iomap_readpage_class\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"event_iomap_readpage\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 50, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"event_iomap_readahead\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 51, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [37 x i8] c"trace_event_fields_iomap_range_class\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_iomap_range_class\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"print_fmt_iomap_range_class\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"event_iomap_writepage\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 82, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"event_iomap_releasepage\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 83, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"event_iomap_invalidatepage\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 84, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [32 x i8] c"event_iomap_dio_invalidate_fail\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 85, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [31 x i8] c"trace_event_fields_iomap_class\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_iomap_class\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"print_fmt_iomap_class\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"event_iomap_iter_dstmap\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 149, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"event_iomap_iter_srcmap\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 150, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [30 x i8] c"trace_event_fields_iomap_iter\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_iomap_iter\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [21 x i8] c"print_fmt_iomap_iter\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"event_iomap_iter\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 27, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 53, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 110, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [22 x i8] c"../fs/iomap/./trace.h\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 152, i32 1 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__bpf_trace_tp_map_iomap_dio_invalidate_fail, ptr @__bpf_trace_tp_map_iomap_invalidatepage, ptr @__bpf_trace_tp_map_iomap_iter, ptr @__bpf_trace_tp_map_iomap_iter_dstmap, ptr @__bpf_trace_tp_map_iomap_iter_srcmap, ptr @__bpf_trace_tp_map_iomap_readahead, ptr @__bpf_trace_tp_map_iomap_readpage, ptr @__bpf_trace_tp_map_iomap_releasepage, ptr @__bpf_trace_tp_map_iomap_writepage, ptr @__event_iomap_dio_invalidate_fail, ptr @__event_iomap_invalidatepage, ptr @__event_iomap_iter, ptr @__event_iomap_iter_dstmap, ptr @__event_iomap_iter_srcmap, ptr @__event_iomap_readahead, ptr @__event_iomap_readpage, ptr @__event_iomap_releasepage, ptr @__event_iomap_writepage, ptr @__tracepoint_iomap_dio_invalidate_fail, ptr @__tracepoint_iomap_invalidatepage, ptr @__tracepoint_iomap_iter, ptr @__tracepoint_iomap_iter_dstmap, ptr @__tracepoint_iomap_iter_srcmap, ptr @__tracepoint_iomap_readahead, ptr @__tracepoint_iomap_readpage, ptr @__tracepoint_iomap_releasepage, ptr @__tracepoint_iomap_writepage, ptr @__tracepoint_ptr_iomap_dio_invalidate_fail, ptr @__tracepoint_ptr_iomap_invalidatepage, ptr @__tracepoint_ptr_iomap_iter, ptr @__tracepoint_ptr_iomap_iter_dstmap, ptr @__tracepoint_ptr_iomap_iter_srcmap, ptr @__tracepoint_ptr_iomap_readahead, ptr @__tracepoint_ptr_iomap_readpage, ptr @__tracepoint_ptr_iomap_releasepage, ptr @__tracepoint_ptr_iomap_writepage, ptr @event_class_iomap_class, ptr @event_class_iomap_iter, ptr @event_class_iomap_range_class, ptr @event_class_iomap_readpage_class, ptr @event_iomap_dio_invalidate_fail, ptr @event_iomap_invalidatepage, ptr @event_iomap_iter, ptr @event_iomap_iter_dstmap, ptr @event_iomap_iter_srcmap, ptr @event_iomap_readahead, ptr @event_iomap_readpage, ptr @event_iomap_releasepage, ptr @event_iomap_writepage, ptr @str__iomap__trace_system_name, ptr @trace_event_fields_iomap_readpage_class, ptr @trace_event_type_funcs_iomap_readpage_class, ptr @print_fmt_iomap_readpage_class, ptr @trace_event_fields_iomap_range_class, ptr @trace_event_type_funcs_iomap_range_class, ptr @print_fmt_iomap_range_class, ptr @trace_event_fields_iomap_class, ptr @trace_event_type_funcs_iomap_class, ptr @print_fmt_iomap_class, ptr @trace_event_fields_iomap_iter, ptr @trace_event_type_funcs_iomap_iter, ptr @print_fmt_iomap_iter, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @trace_raw_output_iomap_class.symbols, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @trace_raw_output_iomap_class.__flags, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @trace_raw_output_iomap_iter.__flags, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__iomap__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_iomap_readpage_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_iomap_readpage_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_iomap_readpage_class to i32), i32 147, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iomap_readpage to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iomap_readahead to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_iomap_range_class to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_iomap_range_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_iomap_range_class to i32), i32 197, i32 256, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iomap_writepage to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iomap_releasepage to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iomap_invalidatepage to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iomap_dio_invalidate_fail to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_iomap_class to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_iomap_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_iomap_class to i32), i32 582, i32 736, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iomap_iter_dstmap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iomap_iter_srcmap to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_iomap_iter to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_iomap_iter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_iomap_iter to i32), i32 418, i32 544, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_iomap_iter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_iomap_class.symbols to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_iomap_class.__flags to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_iomap_iter.__flags to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_readpage(ptr nocapture readnone %__data, ptr noundef %inode, i32 noundef %nr_pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iomap_readpage, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i32 noundef %nr_pages) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_readahead(ptr nocapture readnone %__data, ptr noundef %inode, i32 noundef %nr_pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iomap_readahead, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i32 noundef %nr_pages) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_writepage(ptr nocapture readnone %__data, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iomap_writepage, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_releasepage(ptr nocapture readnone %__data, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iomap_releasepage, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_invalidatepage(ptr nocapture readnone %__data, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iomap_invalidatepage, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_dio_invalidate_fail(ptr nocapture readnone %__data, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iomap_dio_invalidate_fail, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_iter_dstmap(ptr nocapture readnone %__data, ptr noundef %inode, ptr noundef %iomap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iomap_iter_dstmap, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, ptr noundef %iomap) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_iter_srcmap(ptr nocapture readnone %__data, ptr noundef %inode, ptr noundef %iomap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iomap_iter_srcmap, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, ptr noundef %iomap) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_iter(ptr nocapture readnone %__data, ptr noundef %iter, ptr noundef %ops, i32 noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_iomap_iter, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %iter, ptr noundef %ops, i32 noundef %caller) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iomap_readpage_class(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %nr_pages) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !149

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !150

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %9 to i64
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %ino, align 8
  %nr_pages6 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %nr_pages6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nr_pages, ptr %nr_pages6, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_iomap_readpage_class(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %nr_pages) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !151
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !139) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !139) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %33 to i64
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv, ptr %ino, align 8
  %nr_pages17 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %nr_pages17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %nr_pages, ptr %nr_pages17, align 8
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iomap_range_class(ptr noundef %__data, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !149

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !150

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %9 to i64
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %ino, align 8
  %call6 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %size = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call6, ptr %size, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %off, ptr %offset, align 8
  %length = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %len, ptr %length, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_iomap_range_class(ptr noundef %__data, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !151
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !139) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !139) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %33 to i64
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv, ptr %ino, align 8
  %call17 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %size = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call17, ptr %size, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %off, ptr %offset, align 8
  %length = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %len, ptr %length, align 8
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iomap_class(ptr noundef %__data, ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %iomap) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !149

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !150

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 56) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %9 to i64
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %ino, align 8
  %11 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %iomap, align 8
  %addr6 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %addr6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %addr6, align 8
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset, align 8
  %offset7 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %offset7 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %offset7, align 8
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length, align 8
  %length8 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %length8 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %length8, align 8
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %type, align 8
  %type9 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %type9 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %type9, align 8
  %flags = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags, align 2
  %flags10 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call3, i32 0, i32 7
  %25 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %flags10, align 2
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %26 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bdev, align 4
  %tobool11.not = icmp eq ptr %27, null
  br i1 %tobool11.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bd_dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %29, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %bdev13 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call3, i32 0, i32 8
  %30 = ptrtoint ptr %bdev13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %bdev13, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_iomap_class(ptr noundef %__data, ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %iomap) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !151
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !139) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !139) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %33 to i64
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv, ptr %ino, align 8
  %35 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %iomap, align 8
  %addr17 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %addr17 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %addr17, align 8
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %offset, align 8
  %offset18 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %offset18 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %offset18, align 8
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %41 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %length, align 8
  %length19 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %length19 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %length19, align 8
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %type, align 8
  %type20 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %type20 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %type20, align 8
  %flags = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags, align 2
  %flags21 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call13, i32 0, i32 7
  %49 = ptrtoint ptr %flags21 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %flags21, align 2
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %50 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bdev, align 4
  %tobool22.not = icmp eq ptr %51, null
  br i1 %tobool22.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bd_dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %53, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %bdev24 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %call13, i32 0, i32 8
  %54 = ptrtoint ptr %bdev24 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond, ptr %bdev24, align 4
  %55 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rctx, align 4
  %57 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 60, i32 noundef %56, ptr noundef %__data, i64 noundef 1, ptr noundef %58, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iomap_iter(ptr noundef %__data, ptr nocapture noundef readonly %iter, ptr noundef %ops, i32 noundef %caller) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !149

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !150

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 56) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iter, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dev, align 8
  %10 = load ptr, ptr %iter, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %12 to i64
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %ino, align 8
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %pos7 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call3, i32 0, i32 3
  %16 = ptrtoint ptr %pos7 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %pos7, align 8
  %offset.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %offset.i, align 8
  %length.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %length.i, align 8
  %add.i = add i64 %20, %18
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.not.i = icmp eq i16 %22, 0
  br i1 %cmp.not.i, label %if.end5.iomap_length.exit_crit_edge, label %if.then.i

if.end5.iomap_length.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %iomap_length.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %offset4.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %offset4.i, align 8
  %length6.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %length6.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %length6.i, align 8
  %add7.i = add i64 %26, %24
  %27 = call i64 @llvm.umin.i64(i64 %add.i, i64 %add7.i) #7
  br label %iomap_length.exit

iomap_length.exit:                                ; preds = %if.then.i, %if.end5.iomap_length.exit_crit_edge
  %end.0.i = phi i64 [ %27, %if.then.i ], [ %add.i, %if.end5.iomap_length.exit_crit_edge ]
  %len.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %len.i, align 8
  %30 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pos, align 8
  %sub.i = sub i64 %end.0.i, %31
  %32 = call i64 @llvm.umin.i64(i64 %29, i64 %sub.i) #7
  %length = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call3, i32 0, i32 4
  %33 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %length, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 8
  %flags9 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call3, i32 0, i32 5
  %36 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %flags9, align 8
  %ops10 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call3, i32 0, i32 6
  %37 = ptrtoint ptr %ops10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ops, ptr %ops10, align 4
  %caller11 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call3, i32 0, i32 7
  %38 = ptrtoint ptr %caller11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %caller, ptr %caller11, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %iomap_length.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_iomap_iter(ptr noundef %__data, ptr nocapture noundef readonly %iter, ptr noundef %ops, i32 noundef %caller) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !151
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !139) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !139) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iter, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dev, align 8
  %34 = load ptr, ptr %iter, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %36 to i64
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv, ptr %ino, align 8
  %pos = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 1
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pos, align 8
  %pos18 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call13, i32 0, i32 3
  %40 = ptrtoint ptr %pos18 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %pos18, align 8
  %offset.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %offset.i, align 8
  %length.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %length.i, align 8
  %add.i = add i64 %44, %42
  %type.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 3
  %45 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp.not.i = icmp eq i16 %46, 0
  br i1 %cmp.not.i, label %if.end16.iomap_length.exit_crit_edge, label %if.then.i

if.end16.iomap_length.exit_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %iomap_length.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %offset4.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %offset4.i, align 8
  %length6.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 6, i32 2
  %49 = ptrtoint ptr %length6.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %length6.i, align 8
  %add7.i = add i64 %50, %48
  %51 = call i64 @llvm.umin.i64(i64 %add.i, i64 %add7.i) #7
  br label %iomap_length.exit

iomap_length.exit:                                ; preds = %if.then.i, %if.end16.iomap_length.exit_crit_edge
  %end.0.i = phi i64 [ %51, %if.then.i ], [ %add.i, %if.end16.iomap_length.exit_crit_edge ]
  %len.i = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 2
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %len.i, align 8
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %pos, align 8
  %sub.i = sub i64 %end.0.i, %55
  %56 = call i64 @llvm.umin.i64(i64 %53, i64 %sub.i) #7
  %length = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call13, i32 0, i32 4
  %57 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %length, align 8
  %flags = getelementptr inbounds %struct.iomap_iter, ptr %iter, i32 0, i32 4
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 8
  %flags20 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call13, i32 0, i32 5
  %60 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %flags20, align 8
  %ops21 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call13, i32 0, i32 6
  %61 = ptrtoint ptr %ops21 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ops, ptr %ops21, align 4
  %caller22 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %call13, i32 0, i32 7
  %62 = ptrtoint ptr %caller22 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %caller, ptr %caller22, align 8
  %63 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rctx, align 4
  %65 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 60, i32 noundef %64, ptr noundef %__data, i64 noundef 1, ptr noundef %66, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %iomap_length.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_iomap_readpage_class(ptr noundef %__data, ptr noundef %inode, i32 noundef %nr_pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %nr_pages to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_iomap_range_class(ptr noundef %__data, ptr noundef %inode, i64 noundef %off, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %off, i64 noundef %len) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_iomap_class(ptr noundef %__data, ptr noundef %inode, ptr noundef %iomap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %iomap to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_iomap_iter(ptr noundef %__data, ptr noundef %iter, ptr noundef %ops, i32 noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %iter to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %ops to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %caller to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iomap_readpage_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ino, align 8
  %nr_pages = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_pages, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, i32 noundef %shr, i32 noundef %and, i64 noundef %5, i32 noundef %7) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !152
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %1 = tail call ptr @llvm.returnaddress(i32 0) #7
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call ptr @llvm.returnaddress(i32 0) #7
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #7
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !153
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !150

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !154
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !156
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !157
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !158
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iomap_range_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ino, align 8
  %size = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.11, i32 noundef %shr, i32 noundef %and, i64 noundef %5, i64 noundef %7, i64 noundef %9, i64 noundef %11) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iomap_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ino, align 8
  %bdev = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bdev, align 4
  %shr2 = lshr i32 %7, 20
  %and4 = and i32 %7, 1048575
  %addr = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %addr, align 8
  %offset = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %length, align 8
  %type = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type, align 8
  %conv = zext i16 %15 to i32
  %call5 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %conv, ptr noundef nonnull @trace_raw_output_iomap_class.symbols) #7
  %flags7 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags7, align 2
  %conv8 = zext i16 %17 to i32
  %call9 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.29, i32 noundef %conv8, ptr noundef nonnull @trace_raw_output_iomap_class.__flags) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, i32 noundef %shr, i32 noundef %and, i64 noundef %5, i32 noundef %shr2, i32 noundef %and4, i64 noundef %9, i64 noundef %11, i64 noundef %13, ptr noundef %call5, ptr noundef %call9) #7
  %call10 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iomap_iter(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %ino = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ino, align 8
  %pos = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %length = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %length, align 8
  %flags2 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags2, align 8
  %call3 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.29, i32 noundef %11, ptr noundef nonnull @trace_raw_output_iomap_iter.__flags) #7
  %12 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags2, align 8
  %ops = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %caller = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caller, align 8
  %18 = inttoptr i32 %17 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, i32 noundef %shr, i32 noundef %and, i64 noundef %5, i64 noundef %7, i64 noundef %9, ptr noundef %call3, i32 noundef %13, ptr noundef %15, ptr noundef %18) #7
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!llvm.named.register.sp = !{!139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__tracepoint_iomap_readpage, !1, !"__tracepoint_iomap_readpage", i1 false, i1 false}
!1 = !{!"../fs/iomap/./trace.h", i32 50, i32 1}
!2 = !{ptr @__tracepoint_ptr_iomap_readpage, !1, !"__tracepoint_ptr_iomap_readpage", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_iomap_readpage, !1, !"__SCK__tp_func_iomap_readpage", i1 false, i1 false}
!4 = !{ptr @__tracepoint_iomap_readahead, !5, !"__tracepoint_iomap_readahead", i1 false, i1 false}
!5 = !{!"../fs/iomap/./trace.h", i32 51, i32 1}
!6 = !{ptr @__tracepoint_ptr_iomap_readahead, !5, !"__tracepoint_ptr_iomap_readahead", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_iomap_readahead, !5, !"__SCK__tp_func_iomap_readahead", i1 false, i1 false}
!8 = !{ptr @__tracepoint_iomap_writepage, !9, !"__tracepoint_iomap_writepage", i1 false, i1 false}
!9 = !{!"../fs/iomap/./trace.h", i32 82, i32 1}
!10 = !{ptr @__tracepoint_ptr_iomap_writepage, !9, !"__tracepoint_ptr_iomap_writepage", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_iomap_writepage, !9, !"__SCK__tp_func_iomap_writepage", i1 false, i1 false}
!12 = !{ptr @__tracepoint_iomap_releasepage, !13, !"__tracepoint_iomap_releasepage", i1 false, i1 false}
!13 = !{!"../fs/iomap/./trace.h", i32 83, i32 1}
!14 = !{ptr @__tracepoint_ptr_iomap_releasepage, !13, !"__tracepoint_ptr_iomap_releasepage", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_iomap_releasepage, !13, !"__SCK__tp_func_iomap_releasepage", i1 false, i1 false}
!16 = !{ptr @__tracepoint_iomap_invalidatepage, !17, !"__tracepoint_iomap_invalidatepage", i1 false, i1 false}
!17 = !{!"../fs/iomap/./trace.h", i32 84, i32 1}
!18 = !{ptr @__tracepoint_ptr_iomap_invalidatepage, !17, !"__tracepoint_ptr_iomap_invalidatepage", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_iomap_invalidatepage, !17, !"__SCK__tp_func_iomap_invalidatepage", i1 false, i1 false}
!20 = !{ptr @__tracepoint_iomap_dio_invalidate_fail, !21, !"__tracepoint_iomap_dio_invalidate_fail", i1 false, i1 false}
!21 = !{!"../fs/iomap/./trace.h", i32 85, i32 1}
!22 = !{ptr @__tracepoint_ptr_iomap_dio_invalidate_fail, !21, !"__tracepoint_ptr_iomap_dio_invalidate_fail", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_iomap_dio_invalidate_fail, !21, !"__SCK__tp_func_iomap_dio_invalidate_fail", i1 false, i1 false}
!24 = !{ptr @__tracepoint_iomap_iter_dstmap, !25, !"__tracepoint_iomap_iter_dstmap", i1 false, i1 false}
!25 = !{!"../fs/iomap/./trace.h", i32 149, i32 1}
!26 = !{ptr @__tracepoint_ptr_iomap_iter_dstmap, !25, !"__tracepoint_ptr_iomap_iter_dstmap", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_iomap_iter_dstmap, !25, !"__SCK__tp_func_iomap_iter_dstmap", i1 false, i1 false}
!28 = !{ptr @__tracepoint_iomap_iter_srcmap, !29, !"__tracepoint_iomap_iter_srcmap", i1 false, i1 false}
!29 = !{!"../fs/iomap/./trace.h", i32 150, i32 1}
!30 = !{ptr @__tracepoint_ptr_iomap_iter_srcmap, !29, !"__tracepoint_ptr_iomap_iter_srcmap", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_iomap_iter_srcmap, !29, !"__SCK__tp_func_iomap_iter_srcmap", i1 false, i1 false}
!32 = !{ptr @__tracepoint_iomap_iter, !33, !"__tracepoint_iomap_iter", i1 false, i1 false}
!33 = !{!"../fs/iomap/./trace.h", i32 152, i32 1}
!34 = !{ptr @__tracepoint_ptr_iomap_iter, !33, !"__tracepoint_ptr_iomap_iter", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_iomap_iter, !33, !"__SCK__tp_func_iomap_iter", i1 false, i1 false}
!36 = !{ptr @event_class_iomap_readpage_class, !37, !"event_class_iomap_readpage_class", i1 false, i1 false}
!37 = !{!"../fs/iomap/./trace.h", i32 27, i32 1}
!38 = !{ptr @event_iomap_readpage, !1, !"event_iomap_readpage", i1 false, i1 false}
!39 = !{ptr @__event_iomap_readpage, !1, !"__event_iomap_readpage", i1 false, i1 false}
!40 = !{ptr @event_iomap_readahead, !5, !"event_iomap_readahead", i1 false, i1 false}
!41 = !{ptr @__event_iomap_readahead, !5, !"__event_iomap_readahead", i1 false, i1 false}
!42 = !{ptr @event_class_iomap_range_class, !43, !"event_class_iomap_range_class", i1 false, i1 false}
!43 = !{!"../fs/iomap/./trace.h", i32 53, i32 1}
!44 = !{ptr @event_iomap_writepage, !9, !"event_iomap_writepage", i1 false, i1 false}
!45 = !{ptr @__event_iomap_writepage, !9, !"__event_iomap_writepage", i1 false, i1 false}
!46 = !{ptr @event_iomap_releasepage, !13, !"event_iomap_releasepage", i1 false, i1 false}
!47 = !{ptr @__event_iomap_releasepage, !13, !"__event_iomap_releasepage", i1 false, i1 false}
!48 = !{ptr @event_iomap_invalidatepage, !17, !"event_iomap_invalidatepage", i1 false, i1 false}
!49 = !{ptr @__event_iomap_invalidatepage, !17, !"__event_iomap_invalidatepage", i1 false, i1 false}
!50 = !{ptr @event_iomap_dio_invalidate_fail, !21, !"event_iomap_dio_invalidate_fail", i1 false, i1 false}
!51 = !{ptr @__event_iomap_dio_invalidate_fail, !21, !"__event_iomap_dio_invalidate_fail", i1 false, i1 false}
!52 = !{ptr @event_class_iomap_class, !53, !"event_class_iomap_class", i1 false, i1 false}
!53 = !{!"../fs/iomap/./trace.h", i32 110, i32 1}
!54 = !{ptr @event_iomap_iter_dstmap, !25, !"event_iomap_iter_dstmap", i1 false, i1 false}
!55 = !{ptr @__event_iomap_iter_dstmap, !25, !"__event_iomap_iter_dstmap", i1 false, i1 false}
!56 = !{ptr @event_iomap_iter_srcmap, !29, !"event_iomap_iter_srcmap", i1 false, i1 false}
!57 = !{ptr @__event_iomap_iter_srcmap, !29, !"__event_iomap_iter_srcmap", i1 false, i1 false}
!58 = !{ptr @event_class_iomap_iter, !33, !"event_class_iomap_iter", i1 false, i1 false}
!59 = !{ptr @event_iomap_iter, !33, !"event_iomap_iter", i1 false, i1 false}
!60 = !{ptr @__event_iomap_iter, !33, !"__event_iomap_iter", i1 false, i1 false}
!61 = !{ptr @__bpf_trace_tp_map_iomap_readpage, !1, !"__bpf_trace_tp_map_iomap_readpage", i1 false, i1 false}
!62 = !{ptr @__bpf_trace_tp_map_iomap_readahead, !5, !"__bpf_trace_tp_map_iomap_readahead", i1 false, i1 false}
!63 = !{ptr @__bpf_trace_tp_map_iomap_writepage, !9, !"__bpf_trace_tp_map_iomap_writepage", i1 false, i1 false}
!64 = !{ptr @__bpf_trace_tp_map_iomap_releasepage, !13, !"__bpf_trace_tp_map_iomap_releasepage", i1 false, i1 false}
!65 = !{ptr @__bpf_trace_tp_map_iomap_invalidatepage, !17, !"__bpf_trace_tp_map_iomap_invalidatepage", i1 false, i1 false}
!66 = !{ptr @__bpf_trace_tp_map_iomap_dio_invalidate_fail, !21, !"__bpf_trace_tp_map_iomap_dio_invalidate_fail", i1 false, i1 false}
!67 = !{ptr @__bpf_trace_tp_map_iomap_iter_dstmap, !25, !"__bpf_trace_tp_map_iomap_iter_dstmap", i1 false, i1 false}
!68 = !{ptr @__bpf_trace_tp_map_iomap_iter_srcmap, !29, !"__bpf_trace_tp_map_iomap_iter_srcmap", i1 false, i1 false}
!69 = !{ptr @__bpf_trace_tp_map_iomap_iter, !33, !"__bpf_trace_tp_map_iomap_iter", i1 false, i1 false}
!70 = !{ptr @__tpstrtab_iomap_readpage, !1, !"__tpstrtab_iomap_readpage", i1 false, i1 false}
!71 = !{ptr @__tpstrtab_iomap_readahead, !5, !"__tpstrtab_iomap_readahead", i1 false, i1 false}
!72 = !{ptr @__tpstrtab_iomap_writepage, !9, !"__tpstrtab_iomap_writepage", i1 false, i1 false}
!73 = !{ptr @__tpstrtab_iomap_releasepage, !13, !"__tpstrtab_iomap_releasepage", i1 false, i1 false}
!74 = !{ptr @__tpstrtab_iomap_invalidatepage, !17, !"__tpstrtab_iomap_invalidatepage", i1 false, i1 false}
!75 = !{ptr @__tpstrtab_iomap_dio_invalidate_fail, !21, !"__tpstrtab_iomap_dio_invalidate_fail", i1 false, i1 false}
!76 = !{ptr @__tpstrtab_iomap_iter_dstmap, !25, !"__tpstrtab_iomap_iter_dstmap", i1 false, i1 false}
!77 = !{ptr @__tpstrtab_iomap_iter_srcmap, !29, !"__tpstrtab_iomap_iter_srcmap", i1 false, i1 false}
!78 = !{ptr @__tpstrtab_iomap_iter, !33, !"__tpstrtab_iomap_iter", i1 false, i1 false}
!79 = !{ptr @str__iomap__trace_system_name, !80, !"str__iomap__trace_system_name", i1 false, i1 false}
!80 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!81 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @trace_event_fields_iomap_readpage_class, !37, !"trace_event_fields_iomap_readpage_class", i1 false, i1 false}
!88 = !{ptr @trace_event_type_funcs_iomap_readpage_class, !37, !"trace_event_type_funcs_iomap_readpage_class", i1 false, i1 false}
!89 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @print_fmt_iomap_readpage_class, !37, !"print_fmt_iomap_readpage_class", i1 false, i1 false}
!91 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @trace_event_fields_iomap_range_class, !43, !"trace_event_fields_iomap_range_class", i1 false, i1 false}
!96 = !{ptr @trace_event_type_funcs_iomap_range_class, !43, !"trace_event_type_funcs_iomap_range_class", i1 false, i1 false}
!97 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @print_fmt_iomap_range_class, !43, !"print_fmt_iomap_range_class", i1 false, i1 false}
!99 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @trace_event_fields_iomap_class, !53, !"trace_event_fields_iomap_class", i1 false, i1 false}
!105 = !{ptr @trace_event_type_funcs_iomap_class, !53, !"trace_event_type_funcs_iomap_class", i1 false, i1 false}
!106 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @trace_raw_output_iomap_class.symbols, !53, !"symbols", i1 false, i1 false}
!113 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @trace_raw_output_iomap_class.__flags, !53, !"__flags", i1 false, i1 false}
!120 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @print_fmt_iomap_class, !53, !"print_fmt_iomap_class", i1 false, i1 false}
!122 = !{ptr @.str.30, !33, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.31, !33, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.32, !33, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.33, !33, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.34, !33, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.35, !33, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @trace_event_fields_iomap_iter, !33, !"trace_event_fields_iomap_iter", i1 false, i1 false}
!129 = !{ptr @trace_event_type_funcs_iomap_iter, !33, !"trace_event_type_funcs_iomap_iter", i1 false, i1 false}
!130 = !{ptr @.str.36, !33, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.37, !33, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.38, !33, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.39, !33, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.40, !33, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.41, !33, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.42, !33, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @trace_raw_output_iomap_iter.__flags, !33, !"__flags", i1 false, i1 false}
!138 = !{ptr @print_fmt_iomap_iter, !33, !"print_fmt_iomap_iter", i1 false, i1 false}
!139 = !{!"sp"}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{!"auto-init"}
!152 = !{i64 582461, i64 582522}
!153 = !{i64 585193}
!154 = !{i64 585478}
!155 = !{i64 2152539742}
!156 = !{i64 2152539584}
!157 = !{i64 2152539912}
!158 = !{i64 2150125726}
