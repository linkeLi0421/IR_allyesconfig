; ModuleID = '/llk/IR_all_yes/drivers/block/null_blk/zoned.c_pt.bc'
source_filename = "../drivers/block/null_blk/zoned.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.108 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.110, %struct.trace_event, ptr, ptr, %union.anon.111, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.110 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.111 = type { ptr }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.76, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.77, %union.anon.78, %union.anon.79, %union.anon.82, ptr, ptr }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%union.anon.78 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.list_head, ptr }
%union.anon.82 = type { i64, [8 x i8] }
%struct.trace_event_raw_nullb_zone_op = type { %struct.trace_entry, [32 x i8], i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_nullb_report_zones = type { %struct.trace_entry, [32 x i8], i32, [0 x i8] }
%struct.nullb = type { ptr, %struct.list_head, i32, ptr, ptr, ptr, %struct.blk_mq_tag_set, i32, %struct.atomic_t, %struct.hrtimer, i32, %struct.spinlock, ptr, i32, [32 x i8] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.nullb_device = type { ptr, %struct.config_item, %struct.xarray, %struct.xarray, i32, i32, %struct.badblocks, i32, i32, i32, i32, i32, ptr, i64, i8, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.nullb_zone = type { %union.anon.83, i32, i32, i64, i64, i32, i32 }
%union.anon.83 = type { %struct.mutex }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.nullb_cmd = type { ptr, ptr, i32, i8, ptr, %struct.hrtimer, i8 }
%struct.nullb_queue = type { ptr, %struct.wait_queue_head, i32, ptr, i32, %struct.list_head, %struct.spinlock, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_nullb_zone_op = internal constant [14 x i8] c"nullb_zone_op\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nullb_zone_op = dso_local global %struct.static_call_key { ptr @__traceiter_nullb_zone_op }, align 4
@__tracepoint_nullb_zone_op = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nullb_zone_op, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nullb_zone_op, ptr null, ptr @__traceiter_nullb_zone_op, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nullb_zone_op = internal constant ptr @__tracepoint_nullb_zone_op, section "__tracepoints_ptrs", align 4
@__tpstrtab_nullb_report_zones = internal constant [19 x i8] c"nullb_report_zones\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_nullb_report_zones = dso_local global %struct.static_call_key { ptr @__traceiter_nullb_report_zones }, align 4
@__tracepoint_nullb_report_zones = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_nullb_report_zones, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_nullb_report_zones, ptr null, ptr @__traceiter_nullb_report_zones, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_nullb_report_zones = internal constant ptr @__tracepoint_nullb_report_zones, section "__tracepoints_ptrs", align 4
@str__nullb__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nullb\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_nullb_zone_op = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.22, %union.anon.108 { %struct.anon.109 { ptr @.str.23, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.108 { %struct.anon.109 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.108 { %struct.anon.109 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.108 { %struct.anon.109 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_nullb_zone_op = internal global %struct.trace_event_class { ptr @str__nullb__trace_system_name, ptr @trace_event_raw_event_nullb_zone_op, ptr @perf_trace_nullb_zone_op, ptr @trace_event_reg, ptr @trace_event_fields_nullb_zone_op, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nullb_zone_op, i64 24), ptr getelementptr (i8, ptr @event_class_nullb_zone_op, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nullb_zone_op = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nullb_zone_op, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nullb_zone_op = internal global { [149 x i8], [43 x i8] } { [149 x i8] c"\22%s req=%-15s zone_no=%u zone_cond=%-10s\22, nullb_trace_disk_name(p, REC->disk), blk_op_str(REC->op), REC->zone_no, blk_zone_cond_str(REC->zone_cond)\00", [43 x i8] zeroinitializer }, align 32
@event_nullb_zone_op = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nullb_zone_op, %union.anon.110 { ptr @__tracepoint_nullb_zone_op }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nullb_zone_op }, ptr @print_fmt_nullb_zone_op, ptr null, %union.anon.111 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nullb_zone_op = internal global ptr @event_nullb_zone_op, section "_ftrace_events", align 4
@trace_event_fields_nullb_report_zones = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.22, %union.anon.108 { %struct.anon.109 { ptr @.str.23, i32 32, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.108 { %struct.anon.109 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_nullb_report_zones = internal global %struct.trace_event_class { ptr @str__nullb__trace_system_name, ptr @trace_event_raw_event_nullb_report_zones, ptr @perf_trace_nullb_report_zones, ptr @trace_event_reg, ptr @trace_event_fields_nullb_report_zones, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_nullb_report_zones, i64 24), ptr getelementptr (i8, ptr @event_class_nullb_report_zones, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_nullb_report_zones = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_nullb_report_zones, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_nullb_report_zones = internal global { [69 x i8], [59 x i8] } { [69 x i8] c"\22%s nr_zones=%u\22, nullb_trace_disk_name(p, REC->disk), REC->nr_zones\00", [59 x i8] zeroinitializer }, align 32
@event_nullb_report_zones = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_nullb_report_zones, %union.anon.110 { ptr @__tracepoint_nullb_report_zones }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_nullb_report_zones }, ptr @print_fmt_nullb_report_zones, ptr null, %union.anon.111 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_nullb_report_zones = internal global ptr @event_nullb_report_zones, section "_ftrace_events", align 4
@__bpf_trace_tp_map_nullb_zone_op = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_nullb_zone_op, ptr @__bpf_trace_nullb_zone_op, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_nullb_report_zones = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_nullb_report_zones, ptr @__bpf_trace_nullb_report_zones, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@null_init_zoned_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013null_blk: zone_size must be power-of-two\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"null_init_zoned_dev\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/block/null_blk/zoned.c\00", [33 x i8] zeroinitializer }, align 32
@null_init_zoned_dev._entry_ptr = internal global ptr @null_init_zoned_dev._entry, section ".printk_index", align 4
@null_init_zoned_dev._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013null_blk: Zone size larger than device capacity\0A\00", [45 x i8] zeroinitializer }, align 32
@null_init_zoned_dev._entry_ptr.5 = internal global ptr @null_init_zoned_dev._entry.3, section ".printk_index", align 4
@null_init_zoned_dev._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013null_blk: null_blk: zone capacity (%lu MB) larger than zone size (%lu MB)\0A\00", [51 x i8] zeroinitializer }, align 32
@null_init_zoned_dev._entry_ptr.8 = internal global ptr @null_init_zoned_dev._entry.6, section ".printk_index", align 4
@null_init_zoned_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->zone_res_lock\00", [44 x i8] zeroinitializer }, align 32
@null_init_zoned_dev._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016null_blk: changed the number of conventional zones to %u\00", [37 x i8] zeroinitializer }, align 32
@null_init_zoned_dev._entry_ptr.12 = internal global ptr @null_init_zoned_dev._entry.10, section ".printk_index", align 4
@null_init_zoned_dev._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016null_blk: zone_max_active limit disabled, limit >= zone count\0A\00", [63 x i8] zeroinitializer }, align 32
@null_init_zoned_dev._entry_ptr.15 = internal global ptr @null_init_zoned_dev._entry.13, section ".printk_index", align 4
@null_init_zoned_dev._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016null_blk: changed the maximum number of open zones to %u\0A\00", [36 x i8] zeroinitializer }, align 32
@null_init_zoned_dev._entry_ptr.18 = internal global ptr @null_init_zoned_dev._entry.16, section ".printk_index", align 4
@null_init_zoned_dev._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016null_blk: zone_max_open limit disabled, limit >= zone count\0A\00", [33 x i8] zeroinitializer }, align 32
@null_init_zoned_dev._entry_ptr.21 = internal global ptr @null_init_zoned_dev._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[32]\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disk\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enum req_opf\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"op\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zone_no\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zone_cond\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s req=%-15s zone_no=%u zone_cond=%-10s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_zones\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s nr_zones=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@null_init_zone_lock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&zone->spinlock\00", [16 x i8] zeroinitializer }, align 32
@null_init_zone_lock.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&zone->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/block/null_blk/trace.h\00", [33 x i8] zeroinitializer }, align 32
@trace_nullb_report_zones.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_nullb_zone_op.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 10, i64 11, i64 12, i64 13, i64 15, i64 17]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 14]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 14]
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"str__nullb__trace_system_name\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 36, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [33 x i8] c"trace_event_fields_nullb_zone_op\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_nullb_zone_op\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"print_fmt_nullb_zone_op\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"event_nullb_zone_op\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [38 x i8] c"trace_event_fields_nullb_report_zones\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_nullb_report_zones\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [29 x i8] c"print_fmt_nullb_report_zones\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [25 x i8] c"event_nullb_report_zones\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 66, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 70, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 78, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 94, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 98, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 105, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 111, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 115, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 33, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 35, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private constant [34 x i8] c"../drivers/block/null_blk/zoned.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 37, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [36 x i8] c"../drivers/block/null_blk/./trace.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 56, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 108, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__bpf_trace_tp_map_nullb_report_zones, ptr @__bpf_trace_tp_map_nullb_zone_op, ptr @__event_nullb_report_zones, ptr @__event_nullb_zone_op, ptr @__tracepoint_nullb_report_zones, ptr @__tracepoint_nullb_zone_op, ptr @__tracepoint_ptr_nullb_report_zones, ptr @__tracepoint_ptr_nullb_zone_op, ptr @event_class_nullb_report_zones, ptr @event_class_nullb_zone_op, ptr @event_nullb_report_zones, ptr @event_nullb_zone_op, ptr @null_init_zoned_dev._entry, ptr @null_init_zoned_dev._entry.10, ptr @null_init_zoned_dev._entry.13, ptr @null_init_zoned_dev._entry.16, ptr @null_init_zoned_dev._entry.19, ptr @null_init_zoned_dev._entry.3, ptr @null_init_zoned_dev._entry.6, ptr @null_init_zoned_dev._entry_ptr, ptr @null_init_zoned_dev._entry_ptr.12, ptr @null_init_zoned_dev._entry_ptr.15, ptr @null_init_zoned_dev._entry_ptr.18, ptr @null_init_zoned_dev._entry_ptr.21, ptr @null_init_zoned_dev._entry_ptr.5, ptr @null_init_zoned_dev._entry_ptr.8, ptr @str__nullb__trace_system_name, ptr @trace_event_fields_nullb_zone_op, ptr @trace_event_type_funcs_nullb_zone_op, ptr @print_fmt_nullb_zone_op, ptr @trace_event_fields_nullb_report_zones, ptr @trace_event_type_funcs_nullb_report_zones, ptr @print_fmt_nullb_report_zones, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @null_init_zoned_dev.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @null_init_zone_lock.__key, ptr @.str.32, ptr @null_init_zone_lock.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__nullb__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nullb_zone_op to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nullb_zone_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nullb_zone_op to i32), i32 149, i32 192, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nullb_zone_op to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_nullb_report_zones to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_nullb_report_zones to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_nullb_report_zones to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_nullb_report_zones to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zoned_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zoned_dev._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zoned_dev._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zoned_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zoned_dev._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zoned_dev._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zoned_dev._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zoned_dev._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zone_lock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @null_init_zone_lock.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nullb_zone_op(ptr nocapture readnone %__data, ptr noundef %cmd, i32 noundef %zone_no, i32 noundef %zone_cond) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nullb_zone_op, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %cmd, i32 noundef %zone_no, i32 noundef %zone_cond) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_nullb_report_zones(ptr nocapture readnone %__data, ptr noundef %nullb, i32 noundef %nr_zones) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nullb_report_zones, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %nullb, i32 noundef %nr_zones) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nullb_zone_op(ptr noundef %__data, ptr nocapture noundef readonly %cmd, i32 noundef %zone_no, i32 noundef %zone_cond) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !94

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !95

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 52) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd, align 8
  %cmd_flags = getelementptr inbounds %struct.request, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %6, 255
  %op = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %op, align 4
  %zone_no6 = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %zone_no6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %zone_no, ptr %zone_no6, align 4
  %zone_cond7 = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %zone_cond7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %zone_cond, ptr %zone_cond7, align 4
  %disk = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %call3, i32 0, i32 1
  %10 = load ptr, ptr %cmd, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %disk9 = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %disk9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disk9, align 8
  %tobool.not.i23 = icmp eq ptr %14, null
  br i1 %tobool.not.i23, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %disk, ptr %disk_name.i, i32 32)
  br label %__assign_disk_name.exit

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call ptr @memset(ptr %disk, i32 0, i32 32)
  br label %__assign_disk_name.exit

__assign_disk_name.exit:                          ; preds = %if.else.i, %if.then.i
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %__assign_disk_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nullb_zone_op(ptr noundef %__data, ptr nocapture noundef readonly %cmd, i32 noundef %zone_no, i32 noundef %zone_cond) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !96
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !84) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd, align 8
  %cmd_flags = getelementptr inbounds %struct.request, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd_flags, align 4
  %and17 = and i32 %30, 255
  %op = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and17, ptr %op, align 4
  %zone_no18 = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %zone_no18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %zone_no, ptr %zone_no18, align 4
  %zone_cond19 = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %zone_cond19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %zone_cond, ptr %zone_cond19, align 4
  %disk = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %call13, i32 0, i32 1
  %34 = load ptr, ptr %cmd, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %disk21 = getelementptr inbounds %struct.request_queue, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %disk21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %disk21, align 8
  %tobool.not.i47 = icmp eq ptr %38, null
  br i1 %tobool.not.i47, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %38, i32 0, i32 3
  %39 = call ptr @memcpy(ptr %disk, ptr %disk_name.i, i32 32)
  br label %__assign_disk_name.exit

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %40 = call ptr @memset(ptr %disk, i32 0, i32 32)
  br label %__assign_disk_name.exit

__assign_disk_name.exit:                          ; preds = %if.else.i, %if.then.i
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %__assign_disk_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_nullb_report_zones(ptr noundef %__data, ptr nocapture noundef readonly %nullb, i32 noundef %nr_zones) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !94

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !95

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nr_zones6 = getelementptr inbounds %struct.trace_event_raw_nullb_report_zones, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %nr_zones6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nr_zones, ptr %nr_zones6, align 4
  %disk = getelementptr inbounds %struct.trace_event_raw_nullb_report_zones, ptr %call3, i32 0, i32 1
  %disk7 = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 4
  %4 = ptrtoint ptr %disk7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk7, align 4
  %tobool.not.i17 = icmp eq ptr %5, null
  br i1 %tobool.not.i17, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %disk, ptr %disk_name.i, i32 32)
  br label %__assign_disk_name.exit

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = call ptr @memset(ptr %disk, i32 0, i32 32)
  br label %__assign_disk_name.exit

__assign_disk_name.exit:                          ; preds = %if.else.i, %if.then.i
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %__assign_disk_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_nullb_report_zones(ptr noundef %__data, ptr nocapture noundef readonly %nullb, i32 noundef %nr_zones) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !96
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !84) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %nr_zones17 = getelementptr inbounds %struct.trace_event_raw_nullb_report_zones, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %nr_zones17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nr_zones, ptr %nr_zones17, align 4
  %disk = getelementptr inbounds %struct.trace_event_raw_nullb_report_zones, ptr %call13, i32 0, i32 1
  %disk18 = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 4
  %28 = ptrtoint ptr %disk18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disk18, align 4
  %tobool.not.i40 = icmp eq ptr %29, null
  br i1 %tobool.not.i40, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %disk, ptr %disk_name.i, i32 32)
  br label %__assign_disk_name.exit

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %31 = call ptr @memset(ptr %disk, i32 0, i32 32)
  br label %__assign_disk_name.exit

__assign_disk_name.exit:                          ; preds = %if.else.i, %if.then.i
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %__assign_disk_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nullb_zone_op(ptr noundef %__data, ptr noundef %cmd, i32 noundef %zone_no, i32 noundef %zone_cond) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %cmd to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %zone_no to i64
  %conv8 = zext i32 %zone_cond to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_nullb_report_zones(ptr noundef %__data, ptr noundef %nullb, i32 noundef %nr_zones) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %nullb to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %nr_zones to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @null_init_zoned_dev(ptr noundef %dev, ptr nocapture noundef readnone %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_size = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %zone_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_size, align 4
  %2 = tail call i32 @llvm.ctpop.i32(i32 %1) #10, !range !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 16
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp ugt i32 %1, %5
  br i1 %cmp, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %zone_capacity = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_capacity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then10, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %zone_capacity, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end9.if.end13_crit_edge
  %9 = ptrtoint ptr %zone_capacity to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %zone_capacity, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp16 = icmp ugt i32 %10, %1
  br i1 %cmp16, label %do.end20, label %if.end25

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef %1) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %conv.i = zext i32 %10 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 11
  %conv.i274 = zext i32 %5 to i64
  %mul.i275 = shl nuw nsw i64 %conv.i274, 11
  %conv.i276 = zext i32 %1 to i64
  %mul.i277 = shl nuw nsw i64 %conv.i276, 11
  %zone_size_sects = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 13
  %11 = ptrtoint ptr %zone_size_sects to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %mul.i277, ptr %zone_size_sects, align 8
  %sub = add nsw i64 %mul.i275, -1
  %sub33 = add nsw i64 %mul.i277, -1
  %or = or i64 %sub, %sub33
  %add = add nsw i64 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %1)
  %tobool.not.i.i = icmp ult i32 %1, 2097152
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i.i = lshr i32 %1, 21
  %12 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #10, !range !97
  %add.i.i = sub nuw nsw i32 64, %12
  br label %cond.end43

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i = trunc i64 %mul.i277 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #10, !range !97
  %sub.i6.i.i = sub nuw nsw i32 32, %13
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end43

cond.end43:                                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i = add nsw i32 %retval.0.i.i, -1
  %sh_prom = zext i32 %sub.i to i64
  %shr = lshr i64 %add, %sh_prom
  %conv = trunc i64 %shr to i32
  %nr_zones = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %nr_zones, align 8
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv, i32 128) #10
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !95

kvmalloc_array.exit.thread:                       ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #12
  %zones286 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 12
  %17 = ptrtoint ptr %zones286 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %zones286, align 4
  br label %cleanup

kvmalloc_array.exit:                              ; preds = %cond.end43
  %18 = extractvalue { i32, i1 } %15, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %18, i32 noundef 3520, i32 noundef -1) #14
  %zones = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 12
  %19 = ptrtoint ptr %zones to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %zones, align 4
  %tobool48.not = icmp eq ptr %call.i.i, null
  br i1 %tobool48.not, label %kvmalloc_array.exit.cleanup_crit_edge, label %do.body51

kvmalloc_array.exit.cleanup_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body51:                                        ; preds = %kvmalloc_array.exit
  %zone_res_lock = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %zone_res_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @null_init_zoned_dev.__key, i16 noundef signext 3) #10
  %zone_nr_conv = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 21
  %20 = ptrtoint ptr %zone_nr_conv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %zone_nr_conv, align 4
  %22 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_zones, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp56.not = icmp ult i32 %21, %23
  br i1 %cmp56.not, label %do.body51.if.end68_crit_edge, label %if.then58

do.body51.if.end68_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then58:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %sub60 = add i32 %23, -1
  %24 = ptrtoint ptr %zone_nr_conv to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub60, ptr %zone_nr_conv, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %sub60) #13
  br label %if.end68

if.end68:                                         ; preds = %if.then58, %do.body51.if.end68_crit_edge
  %zone_max_active = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 23
  %25 = ptrtoint ptr %zone_max_active to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %zone_max_active, align 4
  %27 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_zones, align 8
  %29 = ptrtoint ptr %zone_nr_conv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %zone_nr_conv, align 4
  %sub71 = sub i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub71)
  %cmp72.not = icmp ult i32 %26, %sub71
  br i1 %cmp72.not, label %if.end68.if.end81_crit_edge, label %if.then74

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %zone_max_active to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %zone_max_active, align 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  %32 = ptrtoint ptr %zone_max_active to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %zone_max_active, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %if.end68.if.end81_crit_edge
  %33 = phi i32 [ %.pr, %if.then74 ], [ %26, %if.end68.if.end81_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool83.not = icmp eq i32 %33, 0
  br i1 %tobool83.not, label %if.end81.if.else_crit_edge, label %land.lhs.true

if.end81.if.else_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end81
  %zone_max_open = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 22
  %34 = ptrtoint ptr %zone_max_open to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %zone_max_open, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp85 = icmp ugt i32 %35, %33
  br i1 %cmp85, label %if.then87, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then87:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %zone_max_open to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %zone_max_open, align 8
  %37 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_zones, align 8
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %38) #13
  br label %if.end110

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end81.if.else_crit_edge
  %zone_max_open96 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 22
  %39 = ptrtoint ptr %zone_max_open96 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %zone_max_open96, align 8
  %41 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_zones, align 8
  %43 = ptrtoint ptr %zone_nr_conv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %zone_nr_conv, align 4
  %sub99 = sub i32 %42, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %sub99)
  %cmp100.not = icmp ult i32 %40, %sub99
  br i1 %cmp100.not, label %if.else.if.end110_crit_edge, label %if.then102

if.else.if.end110_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then102:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %zone_max_open96 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %zone_max_open96, align 8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %if.end110

if.end110:                                        ; preds = %if.then102, %if.else.if.end110_crit_edge, %if.then87
  %46 = ptrtoint ptr %zone_max_active to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %zone_max_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool112.not = icmp eq i32 %47, 0
  br i1 %tobool112.not, label %lor.rhs, label %if.end110.lor.end_crit_edge

if.end110.lor.end_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %zone_max_open113 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 22
  %48 = ptrtoint ptr %zone_max_open113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %zone_max_open113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool114 = icmp ne i32 %49, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end110.lor.end_crit_edge
  %50 = phi i1 [ true, %if.end110.lor.end_crit_edge ], [ %tobool114, %lor.rhs ]
  %need_zone_res_mgmt = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 14
  %frombool = zext i1 %50 to i8
  %51 = ptrtoint ptr %need_zone_res_mgmt to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %frombool, ptr %need_zone_res_mgmt, align 8
  %52 = ptrtoint ptr %zone_nr_conv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %zone_nr_conv, align 4
  %imp_close_zone_no = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 11
  %54 = ptrtoint ptr %imp_close_zone_no to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %imp_close_zone_no, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp117288.not = icmp eq i32 %53, 0
  br i1 %cmp117288.not, label %lor.end.for.cond131.preheader_crit_edge, label %for.body.lr.ph

lor.end.for.cond131.preheader_crit_edge:          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond131.preheader

for.body.lr.ph:                                   ; preds = %lor.end
  %memory_backed.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 39
  br label %for.body

for.cond131.preheader:                            ; preds = %null_init_zone_lock.exit.for.cond131.preheader_crit_edge, %lor.end.for.cond131.preheader_crit_edge
  %sector.0.lcssa = phi i64 [ 0, %lor.end.for.cond131.preheader_crit_edge ], [ %add129, %null_init_zone_lock.exit.for.cond131.preheader_crit_edge ]
  %.lcssa = phi i32 [ 0, %lor.end.for.cond131.preheader_crit_edge ], [ %71, %null_init_zone_lock.exit.for.cond131.preheader_crit_edge ]
  %55 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_zones, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %56)
  %cmp133292 = icmp ult i32 %.lcssa, %56
  br i1 %cmp133292, label %for.body135.lr.ph, label %for.cond131.preheader.cleanup_crit_edge

for.cond131.preheader.cleanup_crit_edge:          ; preds = %for.cond131.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body135.lr.ph:                                ; preds = %for.cond131.preheader
  %memory_backed.i279 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 39
  %extract.t273 = trunc i64 %mul.i to i32
  br label %for.body135

for.body:                                         ; preds = %null_init_zone_lock.exit.for.body_crit_edge, %for.body.lr.ph
  %sector.0290 = phi i64 [ 0, %for.body.lr.ph ], [ %add129, %null_init_zone_lock.exit.for.body_crit_edge ]
  %i.0289 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %null_init_zone_lock.exit.for.body_crit_edge ]
  %57 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %zones, align 4
  %arrayidx = getelementptr %struct.nullb_zone, ptr %58, i32 %i.0289
  %59 = ptrtoint ptr %memory_backed.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %memory_backed.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i, label %do.body.i, label %do.body1.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.32, ptr noundef nonnull @null_init_zone_lock.__key, i16 noundef signext 3) #10
  br label %null_init_zone_lock.exit

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mutex_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.34, ptr noundef nonnull @null_init_zone_lock.__key.33) #10
  br label %null_init_zone_lock.exit

null_init_zone_lock.exit:                         ; preds = %do.body1.i, %do.body.i
  %start = getelementptr %struct.nullb_zone, ptr %58, i32 %i.0289, i32 3
  %61 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %sector.0290, ptr %start, align 8
  %62 = ptrtoint ptr %zone_size_sects to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %zone_size_sects, align 8
  %conv121 = trunc i64 %63 to i32
  %len = getelementptr %struct.nullb_zone, ptr %58, i32 %i.0289, i32 5
  %64 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv121, ptr %len, align 8
  %capacity = getelementptr %struct.nullb_zone, ptr %58, i32 %i.0289, i32 6
  %65 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv121, ptr %capacity, align 4
  %conv125 = and i64 %63, 4294967295
  %add126 = add i64 %conv125, %sector.0290
  %wp = getelementptr %struct.nullb_zone, ptr %58, i32 %i.0289, i32 4
  %66 = ptrtoint ptr %wp to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add126, ptr %wp, align 8
  %type = getelementptr %struct.nullb_zone, ptr %58, i32 %i.0289, i32 1
  %67 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %type, align 4
  %cond127 = getelementptr %struct.nullb_zone, ptr %58, i32 %i.0289, i32 2
  %68 = ptrtoint ptr %cond127 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %cond127, align 8
  %69 = load i64, ptr %zone_size_sects, align 8
  %add129 = add i64 %69, %sector.0290
  %inc = add nuw i32 %i.0289, 1
  %70 = ptrtoint ptr %zone_nr_conv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %zone_nr_conv, align 4
  %cmp117 = icmp ult i32 %inc, %71
  br i1 %cmp117, label %null_init_zone_lock.exit.for.body_crit_edge, label %null_init_zone_lock.exit.for.cond131.preheader_crit_edge

null_init_zone_lock.exit.for.cond131.preheader_crit_edge: ; preds = %null_init_zone_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond131.preheader

null_init_zone_lock.exit.for.body_crit_edge:      ; preds = %null_init_zone_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body135:                                      ; preds = %null_init_zone_lock.exit284.for.body135_crit_edge, %for.body135.lr.ph
  %sector.1295 = phi i64 [ %sector.0.lcssa, %for.body135.lr.ph ], [ %add169, %null_init_zone_lock.exit284.for.body135_crit_edge ]
  %i.1293 = phi i32 [ %.lcssa, %for.body135.lr.ph ], [ %inc171, %null_init_zone_lock.exit284.for.body135_crit_edge ]
  %72 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %zones, align 4
  %arrayidx137 = getelementptr %struct.nullb_zone, ptr %73, i32 %i.1293
  %74 = ptrtoint ptr %memory_backed.i279 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %memory_backed.i279, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i280 = icmp eq i8 %75, 0
  br i1 %tobool.not.i280, label %do.body.i281, label %do.body1.i282

do.body.i281:                                     ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx137, ptr noundef nonnull @.str.32, ptr noundef nonnull @null_init_zone_lock.__key, i16 noundef signext 3) #10
  br label %null_init_zone_lock.exit284

do.body1.i282:                                    ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mutex_init(ptr noundef %arrayidx137, ptr noundef nonnull @.str.34, ptr noundef nonnull @null_init_zone_lock.__key.33) #10
  br label %null_init_zone_lock.exit284

null_init_zone_lock.exit284:                      ; preds = %do.body1.i282, %do.body.i281
  %wp138 = getelementptr %struct.nullb_zone, ptr %73, i32 %i.1293, i32 4
  %76 = ptrtoint ptr %wp138 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %sector.1295, ptr %wp138, align 8
  %start139 = getelementptr %struct.nullb_zone, ptr %73, i32 %i.1293, i32 3
  %77 = ptrtoint ptr %start139 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %sector.1295, ptr %start139, align 8
  %78 = ptrtoint ptr %zone_size_sects to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %zone_size_sects, align 8
  %add142 = add i64 %79, %sector.1295
  call void @__sanitizer_cov_trace_cmp8(i64 %add142, i64 %mul.i275)
  %cmp143 = icmp ugt i64 %add142, %mul.i275
  %sub147 = sub i64 %mul.i275, %sector.1295
  %.sink = select i1 %cmp143, i64 %sub147, i64 %79
  %conv152 = trunc i64 %.sink to i32
  %80 = getelementptr %struct.nullb_zone, ptr %73, i32 %i.1293, i32 5
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv152, ptr %80, align 8
  %conv156 = and i64 %.sink, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %conv156)
  %cmp158 = icmp ugt i64 %mul.i, %conv156
  %cond163.off0 = select i1 %cmp158, i32 %conv152, i32 %extract.t273
  %capacity165 = getelementptr %struct.nullb_zone, ptr %73, i32 %i.1293, i32 6
  %82 = ptrtoint ptr %capacity165 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %cond163.off0, ptr %capacity165, align 4
  %type166 = getelementptr %struct.nullb_zone, ptr %73, i32 %i.1293, i32 1
  %83 = ptrtoint ptr %type166 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %type166, align 4
  %cond167 = getelementptr %struct.nullb_zone, ptr %73, i32 %i.1293, i32 2
  %84 = ptrtoint ptr %cond167 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %cond167, align 8
  %85 = ptrtoint ptr %zone_size_sects to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %zone_size_sects, align 8
  %add169 = add i64 %86, %sector.1295
  %inc171 = add nuw i32 %i.1293, 1
  %87 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nr_zones, align 8
  %cmp133 = icmp ult i32 %inc171, %88
  br i1 %cmp133, label %null_init_zone_lock.exit284.for.body135_crit_edge, label %null_init_zone_lock.exit284.cleanup_crit_edge

null_init_zone_lock.exit284.cleanup_crit_edge:    ; preds = %null_init_zone_lock.exit284
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

null_init_zone_lock.exit284.for.body135_crit_edge: ; preds = %null_init_zone_lock.exit284
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body135

cleanup:                                          ; preds = %null_init_zone_lock.exit284.cleanup_crit_edge, %for.cond131.preheader.cleanup_crit_edge, %kvmalloc_array.exit.cleanup_crit_edge, %kvmalloc_array.exit.thread, %do.end20, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ -22, %do.end20 ], [ -22, %do.end ], [ -12, %kvmalloc_array.exit.cleanup_crit_edge ], [ -12, %kvmalloc_array.exit.thread ], [ 0, %for.cond131.preheader.cleanup_crit_edge ], [ 0, %null_init_zone_lock.exit284.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @null_register_zoned_dev(ptr nocapture noundef readonly %nullb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nullb, align 8
  %q2 = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 3
  %2 = ptrtoint ptr %q2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q2, align 8
  %disk = getelementptr inbounds %struct.nullb, ptr %nullb, i32 0, i32 4
  %4 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk, align 4
  tail call void @blk_queue_set_zoned(ptr noundef %5, i32 noundef 2) #10
  tail call void @blk_queue_flag_set(i32 noundef 26, ptr noundef %3) #10
  tail call void @blk_queue_required_elevator_features(ptr noundef %3, i32 noundef 1) #10
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disk, align 4
  %call4 = tail call i32 @blk_revalidate_disk_zones(ptr noundef %9, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup11_crit_edge

if.then.cleanup11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %zone_size_sects = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %zone_size_sects to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %zone_size_sects, align 8
  %conv = trunc i64 %11 to i32
  tail call void @blk_queue_chunk_sectors(ptr noundef %3, i32 noundef %conv) #10
  %12 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disk, align 4
  %call7 = tail call i32 @blkdev_nr_zones(ptr noundef %13) #10
  %nr_zones = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 39
  %14 = ptrtoint ptr %nr_zones to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call7, ptr %nr_zones, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then.if.end8_crit_edge
  %zone_size_sects9 = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %zone_size_sects9 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %zone_size_sects9, align 8
  %conv10 = trunc i64 %16 to i32
  tail call void @blk_queue_max_zone_append_sectors(ptr noundef %3, i32 noundef %conv10) #10
  %zone_max_open = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %zone_max_open to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %zone_max_open, align 8
  %max_open_zones1.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 42
  %19 = ptrtoint ptr %max_open_zones1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_open_zones1.i, align 8
  %zone_max_active = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %zone_max_active to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %zone_max_active, align 4
  %max_active_zones1.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 43
  %22 = ptrtoint ptr %max_active_zones1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_active_zones1.i, align 4
  br label %cleanup11

cleanup11:                                        ; preds = %if.end8, %if.then.cleanup11_crit_edge
  %retval.1 = phi i32 [ 0, %if.end8 ], [ %call4, %if.then.cleanup11_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_set_zoned(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_required_elevator_features(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_revalidate_disk_zones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_chunk_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_nr_zones(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_zone_append_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @null_free_zoned_dev(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %zones = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zones, align 4
  tail call void @kvfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %zones to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %zones, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @null_report_zones(ptr nocapture noundef readonly %disk, i64 noundef %sector, i32 noundef %nr_zones, ptr nocapture noundef readonly %cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %blkz = alloca %struct.blk_zone, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %blkz) #10
  %zone_size_sects.i = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %zone_size_sects.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %zone_size_sects.i, align 8
  %shr.i.i.i = lshr i64 %5, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #10, !range !97
  %add.i.i.i = sub nuw nsw i32 64, %6
  br label %null_zone_no.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i.i = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #10, !range !97
  %sub.i6.i.i.i = sub nuw nsw i32 32, %7
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %null_zone_no.exit

null_zone_no.exit:                                ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub.i.i = add nsw i32 %retval.0.i.i.i, -1
  %sh_prom.i = zext i32 %sub.i.i to i64
  %shr.i = lshr i64 %sector, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %nr_zones2 = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %nr_zones2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_zones2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv.i)
  %cmp.not = icmp ugt i32 %9, %conv.i
  br i1 %cmp.not, label %if.end, label %null_zone_no.exit.cleanup_crit_edge

null_zone_no.exit.cleanup_crit_edge:              ; preds = %null_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %null_zone_no.exit
  %sub = sub i32 %9, %conv.i
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %nr_zones)
  tail call fastcc void @trace_nullb_report_zones(ptr noundef %1, i32 noundef %10)
  %11 = call ptr @memset(ptr %blkz, i32 0, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp553.not = icmp eq i32 %10, 0
  br i1 %cmp553.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %zones = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %zones, align 4
  %arrayidx = getelementptr %struct.nullb_zone, ptr %13, i32 %conv.i
  %memory_backed.i = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 39
  %len7 = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 1
  %wp8 = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 2
  %type10 = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 3
  %cond13 = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 4
  %capacity15 = getelementptr inbounds %struct.blk_zone, ptr %blkz, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %zone.055 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %memory_backed.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %memory_backed.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_lock_irq(ptr noundef %zone.055) #10
  br label %null_lock_zone.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_lock_nested(ptr noundef %zone.055, i32 noundef 0) #10
  br label %null_lock_zone.exit

null_lock_zone.exit:                              ; preds = %if.else.i, %if.then.i
  %start = getelementptr inbounds %struct.nullb_zone, ptr %zone.055, i32 0, i32 3
  %16 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %start, align 8
  %18 = ptrtoint ptr %blkz to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %blkz, align 8
  %len = getelementptr inbounds %struct.nullb_zone, ptr %zone.055, i32 0, i32 5
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 8
  %conv = zext i32 %20 to i64
  %21 = ptrtoint ptr %len7 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %len7, align 8
  %wp = getelementptr inbounds %struct.nullb_zone, ptr %zone.055, i32 0, i32 4
  %22 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %wp, align 8
  %24 = ptrtoint ptr %wp8 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %wp8, align 8
  %type = getelementptr inbounds %struct.nullb_zone, ptr %zone.055, i32 0, i32 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  %conv9 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %type10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv9, ptr %type10, align 8
  %cond11 = getelementptr inbounds %struct.nullb_zone, ptr %zone.055, i32 0, i32 2
  %28 = ptrtoint ptr %cond11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cond11, align 8
  %conv12 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %cond13 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv12, ptr %cond13, align 1
  %capacity = getelementptr inbounds %struct.nullb_zone, ptr %zone.055, i32 0, i32 6
  %31 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %capacity, align 4
  %conv14 = zext i32 %32 to i64
  %33 = ptrtoint ptr %capacity15 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv14, ptr %capacity15, align 8
  %34 = ptrtoint ptr %memory_backed.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %memory_backed.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i50 = icmp eq i8 %35, 0
  br i1 %tobool.not.i50, label %if.then.i51, label %if.else.i52

if.then.i51:                                      ; preds = %null_lock_zone.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irq(ptr noundef %zone.055) #10
  br label %null_unlock_zone.exit

if.else.i52:                                      ; preds = %null_lock_zone.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %zone.055) #10
  br label %null_unlock_zone.exit

null_unlock_zone.exit:                            ; preds = %if.else.i52, %if.then.i51
  %call16 = call i32 %cb(ptr noundef nonnull %blkz, i32 noundef %i.054, ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %for.inc, label %null_unlock_zone.exit.cleanup_crit_edge

null_unlock_zone.exit.cleanup_crit_edge:          ; preds = %null_unlock_zone.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %null_unlock_zone.exit
  %inc = add nuw i32 %i.054, 1
  %incdec.ptr = getelementptr %struct.nullb_zone, ptr %zone.055, i32 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %null_unlock_zone.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %null_zone_no.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %null_zone_no.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call16, %null_unlock_zone.exit.cleanup_crit_edge ], [ %10, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %blkz) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nullb_report_zones(ptr noundef %nullb, i32 noundef %nr_zones) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nullb_report_zones, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_nullb_report_zones, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !99

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !94

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !84) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nullb_report_zones, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %nullb, i32 noundef %nr_zones) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !94

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !84) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nullb_report_zones, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nullb_report_zones.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nullb_report_zones.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 69, ptr noundef nonnull @.str.36) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %38 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @null_zone_valid_read_len(ptr nocapture noundef readonly %nullb, i64 noundef %sector, i32 noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nullb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nullb, align 8
  %zones = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zones, align 4
  %zone_size_sects.i = getelementptr inbounds %struct.nullb_device, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %zone_size_sects.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %zone_size_sects.i, align 8
  %shr.i.i.i = lshr i64 %5, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #10, !range !97
  %add.i.i.i = sub nuw nsw i32 64, %6
  br label %null_zone_no.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i.i = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #10, !range !97
  %sub.i6.i.i.i = sub nuw nsw i32 32, %7
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %null_zone_no.exit

null_zone_no.exit:                                ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub.i.i = add nsw i32 %retval.0.i.i.i, -1
  %sh_prom.i = zext i32 %sub.i.i to i64
  %shr.i = lshr i64 %sector, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %type = getelementptr %struct.nullb_zone, ptr %3, i32 %conv.i, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %null_zone_no.exit.cleanup_crit_edge, label %lor.lhs.false

null_zone_no.exit.cleanup_crit_edge:              ; preds = %null_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %null_zone_no.exit
  %shr = lshr i32 %len, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %conv, %sector
  %wp = getelementptr %struct.nullb_zone, ptr %3, i32 %conv.i, i32 4
  %10 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wp, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %11)
  %cmp2.not = icmp ugt i64 %add, %11
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %sector)
  %cmp5 = icmp ult i64 %11, %sector
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i64 %11, %sector
  %sub.tr = trunc i64 %sub to i32
  %conv10 = shl i32 %sub.tr, 9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %null_zone_no.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv10, %if.end8 ], [ %len, %lor.lhs.false.cleanup_crit_edge ], [ %len, %null_zone_no.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @null_process_zoned_cmd(ptr noundef %cmd, i32 noundef %op, i64 noundef %sector, i64 noundef %nr_sectors) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op, label %sw.default [
    i32 1, label %sw.bb
    i32 13, label %sw.bb1
    i32 15, label %entry.sw.bb4_crit_edge
    i32 17, label %entry.sw.bb4_crit_edge40
    i32 10, label %entry.sw.bb4_crit_edge41
    i32 11, label %entry.sw.bb4_crit_edge42
    i32 12, label %entry.sw.bb4_crit_edge43
  ]

entry.sw.bb4_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i64 %nr_sectors to i32
  %call = tail call fastcc zeroext i8 @null_zone_write(ptr noundef %cmd, i64 noundef %sector, i32 noundef %conv, i1 noundef zeroext false)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv2 = trunc i64 %nr_sectors to i32
  %call3 = tail call fastcc zeroext i8 @null_zone_write(ptr noundef %cmd, i64 noundef %sector, i32 noundef %conv2, i1 noundef zeroext true)
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge40, %entry.sw.bb4_crit_edge41, %entry.sw.bb4_crit_edge42, %entry.sw.bb4_crit_edge43
  %nq.i = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %nq.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nq.i, align 8
  %dev1.i = getelementptr inbounds %struct.nullb_queue, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %op)
  %cmp.i = icmp eq i32 %op, 17
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %sw.bb4
  %zone_nr_conv.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %zone_nr_conv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %zone_nr_conv.i, align 4
  %nr_zones.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_zones.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp2108.i = icmp ult i32 %6, %8
  br i1 %cmp2108.i, label %for.body.lr.ph.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %zones.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 12
  %memory_backed.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 39
  br label %for.body.i

for.body.i:                                       ; preds = %null_unlock_zone.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0109.i = phi i32 [ %6, %for.body.lr.ph.i ], [ %inc.i, %null_unlock_zone.exit.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %zones.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %zones.i, align 4
  %arrayidx.i = getelementptr %struct.nullb_zone, ptr %10, i32 %i.0109.i
  %11 = ptrtoint ptr %memory_backed.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %memory_backed.i.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx.i) #10
  br label %null_lock_zone.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i, i32 noundef 0) #10
  br label %null_lock_zone.exit.i

null_lock_zone.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %cond.i = getelementptr %struct.nullb_zone, ptr %10, i32 %i.0109.i, i32 2
  %13 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cond.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp3.not.i = icmp eq i32 %14, 1
  br i1 %cmp3.not.i, label %null_lock_zone.exit.i.if.end.i_crit_edge, label %if.then4.i

null_lock_zone.exit.i.if.end.i_crit_edge:         ; preds = %null_lock_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then4.i:                                       ; preds = %null_lock_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc zeroext i8 @null_reset_zone(ptr noundef %4, ptr noundef %arrayidx.i) #10
  %15 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cond.i, align 8
  tail call fastcc void @trace_nullb_zone_op(ptr noundef %cmd, i32 noundef %i.0109.i, i32 noundef %16) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %null_lock_zone.exit.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %memory_backed.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %memory_backed.i.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i59.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i59.i, label %if.then.i60.i, label %if.else.i61.i

if.then.i60.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx.i) #10
  br label %null_unlock_zone.exit.i

if.else.i61.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %arrayidx.i) #10
  br label %null_unlock_zone.exit.i

null_unlock_zone.exit.i:                          ; preds = %if.else.i61.i, %if.then.i60.i
  %inc.i = add nuw i32 %i.0109.i, 1
  %19 = ptrtoint ptr %nr_zones.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_zones.i, align 8
  %cmp2.i = icmp ult i32 %inc.i, %20
  br i1 %cmp2.i, label %null_unlock_zone.exit.i.for.body.i_crit_edge, label %null_unlock_zone.exit.i.cleanup_crit_edge

null_unlock_zone.exit.i.cleanup_crit_edge:        ; preds = %null_unlock_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

null_unlock_zone.exit.i.for.body.i_crit_edge:     ; preds = %null_unlock_zone.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end6.i:                                        ; preds = %sw.bb4
  %zone_size_sects.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 13
  %21 = ptrtoint ptr %zone_size_sects.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %zone_size_sects.i.i, align 8
  %shr.i.i.i.i = lshr i64 %22, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %conv.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i.i, i1 true) #10, !range !97
  %add.i.i.i.i = sub nuw nsw i32 64, %23
  br label %null_zone_no.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i.i.i = trunc i64 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %conv1.i.i.i.i, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i.i, i1 true) #10, !range !97
  %sub.i6.i.i.i.i = sub nuw nsw i32 32, %24
  %cond.i7.i.i.i.i = select i1 %tobool.not.i5.i.i.i.i, i32 0, i32 %sub.i6.i.i.i.i
  br label %null_zone_no.exit.i

null_zone_no.exit.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ %cond.i7.i.i.i.i, %if.end.i.i.i.i ]
  %sub.i.i.i = add nsw i32 %retval.0.i.i.i.i, -1
  %sh_prom.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i = lshr i64 %sector, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %zones8.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 12
  %25 = ptrtoint ptr %zones8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %zones8.i, align 4
  %arrayidx9.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i
  %memory_backed.i62.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 39
  %27 = ptrtoint ptr %memory_backed.i62.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %memory_backed.i62.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i63.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i63.i, label %if.then.i64.i, label %if.else.i65.i

if.then.i64.i:                                    ; preds = %null_zone_no.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx9.i) #10
  br label %null_lock_zone.exit66.i

if.else.i65.i:                                    ; preds = %null_zone_no.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %arrayidx9.i, i32 noundef 0) #10
  br label %null_lock_zone.exit66.i

null_lock_zone.exit66.i:                          ; preds = %if.else.i65.i, %if.then.i64.i
  %29 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %op, label %null_lock_zone.exit66.i.if.end21.i_crit_edge [
    i32 15, label %sw.bb.i
    i32 10, label %sw.bb11.i
    i32 11, label %sw.bb13.i
    i32 12, label %sw.bb15.i
  ]

null_lock_zone.exit66.i.if.end21.i_crit_edge:     ; preds = %null_lock_zone.exit66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

sw.bb.i:                                          ; preds = %null_lock_zone.exit66.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call fastcc zeroext i8 @null_reset_zone(ptr noundef %4, ptr noundef %arrayidx9.i) #10
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %null_lock_zone.exit66.i
  %type.i.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 1
  %30 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i67.i = icmp eq i32 %31, 1
  br i1 %cmp.i67.i, label %sw.bb11.i.if.end21.i_crit_edge, label %if.end.i.i

sw.bb11.i.if.end21.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.end.i.i:                                       ; preds = %sw.bb11.i
  %need_zone_res_mgmt.i.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 14
  %32 = ptrtoint ptr %need_zone_res_mgmt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %need_zone_res_mgmt.i.i.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.null_lock_zone_res.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i.null_lock_zone_res.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %null_lock_zone_res.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %zone_res_lock.i.i.i) #10
  br label %null_lock_zone_res.exit.i.i

null_lock_zone_res.exit.i.i:                      ; preds = %if.then.i.i.i, %if.end.i.i.null_lock_zone_res.exit.i.i_crit_edge
  %cond.i.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 2
  %34 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cond.i.i, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %35, label %sw.default.i.i [
    i32 3, label %null_lock_zone_res.exit.i.i.unlock.i.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb6.i.i
    i32 4, label %sw.bb7.i.i
  ]

null_lock_zone_res.exit.i.i.unlock.i.i_crit_edge: ; preds = %null_lock_zone_res.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i.i

sw.bb1.i.i:                                       ; preds = %null_lock_zone_res.exit.i.i
  %call.i.i = tail call fastcc zeroext i8 @null_check_zone_resources(ptr noundef %4, ptr noundef %arrayidx9.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i)
  %cmp2.not.i.i = icmp eq i8 %call.i.i, 0
  br i1 %cmp2.not.i.i, label %sw.bb1.i.i.sw.epilog.i.i_crit_edge, label %sw.bb1.i.i.unlock.i.i_crit_edge

sw.bb1.i.i.unlock.i.i_crit_edge:                  ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i.i

sw.bb1.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %null_lock_zone_res.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_imp_open.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 8
  br label %sw.epilog.sink.split.i.i

sw.bb7.i.i:                                       ; preds = %null_lock_zone_res.exit.i.i
  %call8.i.i = tail call fastcc zeroext i8 @null_check_zone_resources(ptr noundef %4, ptr noundef %arrayidx9.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call8.i.i)
  %cmp10.not.i.i = icmp eq i8 %call8.i.i, 0
  br i1 %cmp10.not.i.i, label %if.end13.i.i, label %sw.bb7.i.i.unlock.i.i_crit_edge

sw.bb7.i.i.unlock.i.i_crit_edge:                  ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i.i

if.end13.i.i:                                     ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_closed.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 10
  br label %sw.epilog.sink.split.i.i

sw.default.i.i:                                   ; preds = %null_lock_zone_res.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i.i

sw.epilog.sink.split.i.i:                         ; preds = %if.end13.i.i, %sw.bb6.i.i
  %nr_zones_closed.sink33.i.i = phi ptr [ %nr_zones_closed.i.i, %if.end13.i.i ], [ %nr_zones_imp_open.i.i, %sw.bb6.i.i ]
  %37 = ptrtoint ptr %nr_zones_closed.sink33.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_zones_closed.sink33.i.i, align 4
  %dec14.i.i = add i32 %38, -1
  store i32 %dec14.i.i, ptr %nr_zones_closed.sink33.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %sw.bb1.i.i.sw.epilog.i.i_crit_edge
  %39 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %cond.i.i, align 8
  %nr_zones_exp_open.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 9
  %40 = ptrtoint ptr %nr_zones_exp_open.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_zones_exp_open.i.i, align 8
  %inc.i.i = add i32 %41, 1
  store i32 %inc.i.i, ptr %nr_zones_exp_open.i.i, align 8
  br label %unlock.i.i

unlock.i.i:                                       ; preds = %sw.epilog.i.i, %sw.default.i.i, %sw.bb7.i.i.unlock.i.i_crit_edge, %sw.bb1.i.i.unlock.i.i_crit_edge, %null_lock_zone_res.exit.i.i.unlock.i.i_crit_edge
  %ret.1.i.i = phi i8 [ 10, %sw.default.i.i ], [ %call8.i.i, %sw.bb7.i.i.unlock.i.i_crit_edge ], [ 0, %sw.epilog.i.i ], [ %call.i.i, %sw.bb1.i.i.unlock.i.i_crit_edge ], [ 0, %null_lock_zone_res.exit.i.i.unlock.i.i_crit_edge ]
  %42 = ptrtoint ptr %need_zone_res_mgmt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %need_zone_res_mgmt.i.i.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i30.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i30.i.i, label %unlock.i.i.sw.epilog.i_crit_edge, label %if.then.i32.i.i

unlock.i.i.sw.epilog.i_crit_edge:                 ; preds = %unlock.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then.i32.i.i:                                  ; preds = %unlock.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i31.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_unlock_irq(ptr noundef %zone_res_lock.i31.i.i) #10
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %null_lock_zone.exit66.i
  %type.i68.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 1
  %44 = ptrtoint ptr %type.i68.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i69.i = icmp eq i32 %45, 1
  br i1 %cmp.i69.i, label %sw.bb13.i.if.end21.i_crit_edge, label %if.end.i72.i

sw.bb13.i.if.end21.i_crit_edge:                   ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.end.i72.i:                                     ; preds = %sw.bb13.i
  %need_zone_res_mgmt.i.i70.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 14
  %46 = ptrtoint ptr %need_zone_res_mgmt.i.i70.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %need_zone_res_mgmt.i.i70.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i71.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i71.i, label %if.end.i72.i.null_lock_zone_res.exit.i75.i_crit_edge, label %if.then.i.i74.i

if.end.i72.i.null_lock_zone_res.exit.i75.i_crit_edge: ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %null_lock_zone_res.exit.i75.i

if.then.i.i74.i:                                  ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i.i73.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %zone_res_lock.i.i73.i) #10
  br label %null_lock_zone_res.exit.i75.i

null_lock_zone_res.exit.i75.i:                    ; preds = %if.then.i.i74.i, %if.end.i72.i.null_lock_zone_res.exit.i75.i_crit_edge
  %cond.i.i.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 2
  %48 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cond.i.i.i, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %49, label %sw.default.i.i.i [
    i32 4, label %null_lock_zone_res.exit.i75.i.__null_close_zone.exit.i.i_crit_edge
    i32 2, label %sw.bb1.i.i.i
    i32 3, label %sw.bb2.i.i.i
  ]

null_lock_zone_res.exit.i75.i.__null_close_zone.exit.i.i_crit_edge: ; preds = %null_lock_zone_res.exit.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__null_close_zone.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %null_lock_zone_res.exit.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_imp_open.i.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 8
  %51 = ptrtoint ptr %nr_zones_imp_open.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_zones_imp_open.i.i.i, align 4
  %dec.i.i.i = add i32 %52, -1
  store i32 %dec.i.i.i, ptr %nr_zones_imp_open.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb2.i.i.i:                                     ; preds = %null_lock_zone_res.exit.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_exp_open.i.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 9
  %53 = ptrtoint ptr %nr_zones_exp_open.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_zones_exp_open.i.i.i, align 8
  %dec3.i.i.i = add i32 %54, -1
  store i32 %dec3.i.i.i, ptr %nr_zones_exp_open.i.i.i, align 8
  br label %sw.epilog.i.i.i

sw.default.i.i.i:                                 ; preds = %null_lock_zone_res.exit.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__null_close_zone.exit.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb2.i.i.i, %sw.bb1.i.i.i
  %wp.i.i.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 4
  %55 = ptrtoint ptr %wp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %wp.i.i.i, align 8
  %start.i.i.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 3
  %57 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %start.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %58)
  %cmp.i.i.i = icmp eq i64 %56, %58
  br i1 %cmp.i.i.i, label %if.then.i4.i.i, label %if.else.i.i.i

if.then.i4.i.i:                                   ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %cond.i.i.i, align 8
  br label %__null_close_zone.exit.i.i

if.else.i.i.i:                                    ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %cond.i.i.i, align 8
  %nr_zones_closed.i.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 10
  %61 = ptrtoint ptr %nr_zones_closed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_zones_closed.i.i.i, align 4
  %inc.i.i.i = add i32 %62, 1
  store i32 %inc.i.i.i, ptr %nr_zones_closed.i.i.i, align 4
  br label %__null_close_zone.exit.i.i

__null_close_zone.exit.i.i:                       ; preds = %if.else.i.i.i, %if.then.i4.i.i, %sw.default.i.i.i, %null_lock_zone_res.exit.i75.i.__null_close_zone.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i8 [ 10, %sw.default.i.i.i ], [ 0, %null_lock_zone_res.exit.i75.i.__null_close_zone.exit.i.i_crit_edge ], [ 0, %if.else.i.i.i ], [ 0, %if.then.i4.i.i ]
  %63 = ptrtoint ptr %need_zone_res_mgmt.i.i70.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %need_zone_res_mgmt.i.i70.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i6.i.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i6.i.i, label %__null_close_zone.exit.i.i.sw.epilog.i_crit_edge, label %if.then.i8.i.i

__null_close_zone.exit.i.i.sw.epilog.i_crit_edge: ; preds = %__null_close_zone.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then.i8.i.i:                                   ; preds = %__null_close_zone.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i7.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_unlock_irq(ptr noundef %zone_res_lock.i7.i.i) #10
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %null_lock_zone.exit66.i
  %type.i77.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 1
  %65 = ptrtoint ptr %type.i77.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i78.i = icmp eq i32 %66, 1
  br i1 %cmp.i78.i, label %sw.bb15.i.if.end21.i_crit_edge, label %if.end.i81.i

sw.bb15.i.if.end21.i_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.end.i81.i:                                     ; preds = %sw.bb15.i
  %need_zone_res_mgmt.i.i79.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 14
  %67 = ptrtoint ptr %need_zone_res_mgmt.i.i79.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %need_zone_res_mgmt.i.i79.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i80.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i.i80.i, label %if.end.i81.i.null_lock_zone_res.exit.i85.i_crit_edge, label %if.then.i.i83.i

if.end.i81.i.null_lock_zone_res.exit.i85.i_crit_edge: ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %null_lock_zone_res.exit.i85.i

if.then.i.i83.i:                                  ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i.i82.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %zone_res_lock.i.i82.i) #10
  br label %null_lock_zone_res.exit.i85.i

null_lock_zone_res.exit.i85.i:                    ; preds = %if.then.i.i83.i, %if.end.i81.i.null_lock_zone_res.exit.i85.i_crit_edge
  %cond.i84.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 2
  %69 = ptrtoint ptr %cond.i84.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cond.i84.i, align 8
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %70, label %sw.default.i94.i [
    i32 14, label %null_lock_zone_res.exit.i85.i.unlock.i97.i_crit_edge
    i32 1, label %sw.bb1.i88.i
    i32 2, label %sw.bb6.i90.i
    i32 3, label %sw.bb7.i92.i
    i32 4, label %sw.bb9.i.i
  ]

null_lock_zone_res.exit.i85.i.unlock.i97.i_crit_edge: ; preds = %null_lock_zone_res.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i97.i

sw.bb1.i88.i:                                     ; preds = %null_lock_zone_res.exit.i85.i
  %call.i86.i = tail call fastcc zeroext i8 @null_check_zone_resources(ptr noundef %4, ptr noundef %arrayidx9.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i86.i)
  %cmp2.not.i87.i = icmp eq i8 %call.i86.i, 0
  br i1 %cmp2.not.i87.i, label %sw.bb1.i88.i.sw.epilog.i95.i_crit_edge, label %sw.bb1.i88.i.unlock.i97.i_crit_edge

sw.bb1.i88.i.unlock.i97.i_crit_edge:              ; preds = %sw.bb1.i88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i97.i

sw.bb1.i88.i.sw.epilog.i95.i_crit_edge:           ; preds = %sw.bb1.i88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i95.i

sw.bb6.i90.i:                                     ; preds = %null_lock_zone_res.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_imp_open.i89.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 8
  %72 = ptrtoint ptr %nr_zones_imp_open.i89.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr_zones_imp_open.i89.i, align 4
  %dec.i.i = add i32 %73, -1
  store i32 %dec.i.i, ptr %nr_zones_imp_open.i89.i, align 4
  br label %sw.epilog.i95.i

sw.bb7.i92.i:                                     ; preds = %null_lock_zone_res.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_exp_open.i91.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 9
  %74 = ptrtoint ptr %nr_zones_exp_open.i91.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_zones_exp_open.i91.i, align 8
  %dec8.i.i = add i32 %75, -1
  store i32 %dec8.i.i, ptr %nr_zones_exp_open.i91.i, align 8
  br label %sw.epilog.i95.i

sw.bb9.i.i:                                       ; preds = %null_lock_zone_res.exit.i85.i
  %call10.i.i = tail call fastcc zeroext i8 @null_check_zone_resources(ptr noundef %4, ptr noundef %arrayidx9.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call10.i.i)
  %cmp12.not.i.i = icmp eq i8 %call10.i.i, 0
  br i1 %cmp12.not.i.i, label %if.end15.i.i, label %sw.bb9.i.i.unlock.i97.i_crit_edge

sw.bb9.i.i.unlock.i97.i_crit_edge:                ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i97.i

if.end15.i.i:                                     ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_closed.i93.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 10
  %76 = ptrtoint ptr %nr_zones_closed.i93.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr_zones_closed.i93.i, align 4
  %dec16.i.i = add i32 %77, -1
  store i32 %dec16.i.i, ptr %nr_zones_closed.i93.i, align 4
  br label %sw.epilog.i95.i

sw.default.i94.i:                                 ; preds = %null_lock_zone_res.exit.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.i97.i

sw.epilog.i95.i:                                  ; preds = %if.end15.i.i, %sw.bb7.i92.i, %sw.bb6.i90.i, %sw.bb1.i88.i.sw.epilog.i95.i_crit_edge
  %78 = ptrtoint ptr %cond.i84.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 14, ptr %cond.i84.i, align 8
  %start.i.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 3
  %79 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %start.i.i, align 8
  %len.i.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 5
  %81 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len.i.i, align 8
  %conv18.i.i = zext i32 %82 to i64
  %add.i.i = add i64 %80, %conv18.i.i
  %wp.i.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 4
  %83 = ptrtoint ptr %wp.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %add.i.i, ptr %wp.i.i, align 8
  br label %unlock.i97.i

unlock.i97.i:                                     ; preds = %sw.epilog.i95.i, %sw.default.i94.i, %sw.bb9.i.i.unlock.i97.i_crit_edge, %sw.bb1.i88.i.unlock.i97.i_crit_edge, %null_lock_zone_res.exit.i85.i.unlock.i97.i_crit_edge
  %ret.1.i96.i = phi i8 [ 10, %sw.default.i94.i ], [ %call10.i.i, %sw.bb9.i.i.unlock.i97.i_crit_edge ], [ 0, %sw.epilog.i95.i ], [ %call.i86.i, %sw.bb1.i88.i.unlock.i97.i_crit_edge ], [ 0, %null_lock_zone_res.exit.i85.i.unlock.i97.i_crit_edge ]
  %84 = ptrtoint ptr %need_zone_res_mgmt.i.i79.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %need_zone_res_mgmt.i.i79.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i35.i.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i35.i.i, label %unlock.i97.i.sw.epilog.i_crit_edge, label %if.then.i37.i.i

unlock.i97.i.sw.epilog.i_crit_edge:               ; preds = %unlock.i97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then.i37.i.i:                                  ; preds = %unlock.i97.i
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i36.i.i = getelementptr inbounds %struct.nullb_device, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_unlock_irq(ptr noundef %zone_res_lock.i36.i.i) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then.i37.i.i, %unlock.i97.i.sw.epilog.i_crit_edge, %if.then.i8.i.i, %__null_close_zone.exit.i.i.sw.epilog.i_crit_edge, %if.then.i32.i.i, %unlock.i.i.sw.epilog.i_crit_edge, %sw.bb.i
  %ret.0.i = phi i8 [ %call10.i, %sw.bb.i ], [ %ret.1.i.i, %unlock.i.i.sw.epilog.i_crit_edge ], [ %ret.1.i.i, %if.then.i32.i.i ], [ %retval.0.i.i.i, %__null_close_zone.exit.i.i.sw.epilog.i_crit_edge ], [ %retval.0.i.i.i, %if.then.i8.i.i ], [ %ret.1.i96.i, %unlock.i97.i.sw.epilog.i_crit_edge ], [ %ret.1.i96.i, %if.then.i37.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.0.i)
  %cmp17.i = icmp eq i8 %ret.0.i, 0
  br i1 %cmp17.i, label %if.then19.i, label %sw.epilog.i.if.end21.i_crit_edge

sw.epilog.i.if.end21.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then19.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond20.i = getelementptr %struct.nullb_zone, ptr %26, i32 %conv.i.i, i32 2
  %86 = ptrtoint ptr %cond20.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cond20.i, align 8
  tail call fastcc void @trace_nullb_zone_op(ptr noundef %cmd, i32 noundef %conv.i.i, i32 noundef %87) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %sw.epilog.i.if.end21.i_crit_edge, %sw.bb15.i.if.end21.i_crit_edge, %sw.bb13.i.if.end21.i_crit_edge, %sw.bb11.i.if.end21.i_crit_edge, %null_lock_zone.exit66.i.if.end21.i_crit_edge
  %ret.0107.i = phi i8 [ 0, %if.then19.i ], [ %ret.0.i, %sw.epilog.i.if.end21.i_crit_edge ], [ 10, %sw.bb15.i.if.end21.i_crit_edge ], [ 10, %sw.bb13.i.if.end21.i_crit_edge ], [ 10, %sw.bb11.i.if.end21.i_crit_edge ], [ 1, %null_lock_zone.exit66.i.if.end21.i_crit_edge ]
  %88 = ptrtoint ptr %memory_backed.i62.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %memory_backed.i62.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i100.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i100.i, label %if.then.i101.i, label %if.else.i102.i

if.then.i101.i:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx9.i) #10
  br label %cleanup

if.else.i102.i:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %arrayidx9.i) #10
  br label %cleanup

sw.default:                                       ; preds = %entry
  %nq = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 4
  %90 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %nq, align 8
  %dev6 = getelementptr inbounds %struct.nullb_queue, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev6, align 4
  %zones = getelementptr inbounds %struct.nullb_device, ptr %93, i32 0, i32 12
  %94 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %zones, align 4
  %zone_size_sects.i = getelementptr inbounds %struct.nullb_device, ptr %93, i32 0, i32 13
  %96 = ptrtoint ptr %zone_size_sects.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %zone_size_sects.i, align 8
  %shr.i.i.i = lshr i64 %97, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i29 = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i29, label %if.end.i.i.i, label %if.then.i.i.i30

if.then.i.i.i30:                                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %98 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #10, !range !97
  %add.i.i.i = sub nuw nsw i32 64, %98
  br label %null_zone_no.exit

if.end.i.i.i:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i.i = trunc i64 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %99 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #10, !range !97
  %sub.i6.i.i.i = sub nuw nsw i32 32, %99
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %null_zone_no.exit

null_zone_no.exit:                                ; preds = %if.end.i.i.i, %if.then.i.i.i30
  %retval.0.i.i.i31 = phi i32 [ %add.i.i.i, %if.then.i.i.i30 ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub.i.i32 = add nsw i32 %retval.0.i.i.i31, -1
  %sh_prom.i = zext i32 %sub.i.i32 to i64
  %shr.i = lshr i64 %sector, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %arrayidx = getelementptr %struct.nullb_zone, ptr %95, i32 %conv.i
  %memory_backed.i = getelementptr inbounds %struct.nullb_device, ptr %93, i32 0, i32 39
  %100 = ptrtoint ptr %memory_backed.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %memory_backed.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i, label %if.then.i33, label %if.else.i

if.then.i33:                                      ; preds = %null_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx) #10
  br label %null_lock_zone.exit

if.else.i:                                        ; preds = %null_zone_no.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #10
  br label %null_lock_zone.exit

null_lock_zone.exit:                              ; preds = %if.else.i, %if.then.i33
  %conv8 = trunc i64 %nr_sectors to i32
  %call9 = tail call zeroext i8 @null_process_cmd(ptr noundef %cmd, i32 noundef %op, i64 noundef %sector, i32 noundef %conv8) #10
  %102 = ptrtoint ptr %memory_backed.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %memory_backed.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i36 = icmp eq i8 %103, 0
  br i1 %tobool.not.i36, label %if.then.i37, label %if.else.i38

if.then.i37:                                      ; preds = %null_lock_zone.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx) #10
  br label %cleanup

if.else.i38:                                      ; preds = %null_lock_zone.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %arrayidx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i38, %if.then.i37, %if.else.i102.i, %if.then.i101.i, %null_unlock_zone.exit.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %sw.bb1, %sw.bb
  %retval.0 = phi i8 [ %call3, %sw.bb1 ], [ %call, %sw.bb ], [ %ret.0107.i, %if.then.i101.i ], [ %ret.0107.i, %if.else.i102.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ %call9, %if.then.i37 ], [ %call9, %if.else.i38 ], [ 0, %null_unlock_zone.exit.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @null_zone_write(ptr noundef %cmd, i64 noundef %sector, i32 noundef %nr_sectors, i1 noundef zeroext %append) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nq = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %nq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nq, align 8
  %dev1 = getelementptr inbounds %struct.nullb_queue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %zone_size_sects.i = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %zone_size_sects.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %zone_size_sects.i, align 8
  %shr.i.i.i = lshr i64 %5, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #10, !range !97
  %add.i.i.i = sub nuw nsw i32 64, %6
  br label %null_zone_no.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i.i = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #10, !range !97
  %sub.i6.i.i.i = sub nuw nsw i32 32, %7
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %null_zone_no.exit

null_zone_no.exit:                                ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub.i.i = add nsw i32 %retval.0.i.i.i, -1
  %sh_prom.i = zext i32 %sub.i.i to i64
  %shr.i = lshr i64 %sector, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %zones = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %zones, align 4
  %arrayidx = getelementptr %struct.nullb_zone, ptr %9, i32 %conv.i
  %cond = getelementptr %struct.nullb_zone, ptr %9, i32 %conv.i, i32 2
  %10 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cond, align 8
  tail call fastcc void @trace_nullb_zone_op(ptr noundef %cmd, i32 noundef %conv.i, i32 noundef %11)
  %type = getelementptr %struct.nullb_zone, ptr %9, i32 %conv.i, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %null_zone_no.exit
  br i1 %append, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call zeroext i8 @null_process_cmd(ptr noundef %cmd, i32 noundef 1, i64 noundef %sector, i32 noundef %nr_sectors) #10
  br label %cleanup

if.end4:                                          ; preds = %null_zone_no.exit
  %memory_backed.i = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 39
  %14 = ptrtoint ptr %memory_backed.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %memory_backed.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx) #10
  br label %null_lock_zone.exit

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #10
  br label %null_lock_zone.exit

null_lock_zone.exit:                              ; preds = %if.else.i, %if.then.i
  %16 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cond, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %17)
  %cmp6 = icmp eq i32 %17, 14
  br i1 %cmp6, label %null_lock_zone.exit.unlock_crit_edge, label %if.end8

null_lock_zone.exit.unlock_crit_edge:             ; preds = %null_lock_zone.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end8:                                          ; preds = %null_lock_zone.exit
  %wp = getelementptr %struct.nullb_zone, ptr %9, i32 %conv.i, i32 4
  %18 = ptrtoint ptr %wp to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %wp, align 8
  br i1 %append, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.end8
  %bio = getelementptr inbounds %struct.nullb_cmd, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bio, align 4
  %tobool11.not = icmp eq ptr %21, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %bi_iter = getelementptr inbounds %struct.bio, ptr %21, i32 0, i32 8
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd, align 8
  %__sector = getelementptr inbounds %struct.request, ptr %23, i32 0, i32 9
  br label %if.end20.sink.split

if.else15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %sector)
  %cmp17.not = icmp eq i64 %19, %sector
  br i1 %cmp17.not, label %if.else15.if.end20_crit_edge, label %if.else15.unlock_crit_edge

if.else15.unlock_crit_edge:                       ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.else15.if.end20_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20.sink.split:                              ; preds = %if.else, %if.then12
  %bi_iter.sink = phi ptr [ %bi_iter, %if.then12 ], [ %__sector, %if.else ]
  %24 = ptrtoint ptr %bi_iter.sink to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %19, ptr %bi_iter.sink, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else15.if.end20_crit_edge
  %sector.addr.0 = phi i64 [ %sector, %if.else15.if.end20_crit_edge ], [ %19, %if.end20.sink.split ]
  %wp21 = getelementptr %struct.nullb_zone, ptr %9, i32 %conv.i, i32 4
  %25 = ptrtoint ptr %wp21 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %wp21, align 8
  %conv = zext i32 %nr_sectors to i64
  %add = add i64 %26, %conv
  %start = getelementptr %struct.nullb_zone, ptr %9, i32 %conv.i, i32 3
  %27 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start, align 8
  %capacity = getelementptr %struct.nullb_zone, ptr %9, i32 %conv.i, i32 6
  %29 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %capacity, align 4
  %conv22 = zext i32 %30 to i64
  %add23 = add i64 %28, %conv22
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add23)
  %cmp24 = icmp ugt i64 %add, %add23
  br i1 %cmp24, label %if.end20.unlock_crit_edge, label %if.end27

if.end20.unlock_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end27:                                         ; preds = %if.end20
  %31 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cond, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %32, label %if.end27.if.end60_crit_edge [
    i32 4, label %if.end27.if.then34_crit_edge
    i32 1, label %if.end27.if.then34_crit_edge181
  ]

if.end27.if.then34_crit_edge181:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.end27.if.then34_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34

if.end27.if.end60_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then34:                                        ; preds = %if.end27.if.then34_crit_edge, %if.end27.if.then34_crit_edge181
  %need_zone_res_mgmt.i = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 14
  %34 = ptrtoint ptr %need_zone_res_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %need_zone_res_mgmt.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i155 = icmp eq i8 %35, 0
  br i1 %tobool.not.i155, label %if.then34.null_lock_zone_res.exit_crit_edge, label %if.then.i156

if.then34.null_lock_zone_res.exit_crit_edge:      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %null_lock_zone_res.exit

if.then.i156:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %zone_res_lock.i) #10
  br label %null_lock_zone_res.exit

null_lock_zone_res.exit:                          ; preds = %if.then.i156, %if.then34.null_lock_zone_res.exit_crit_edge
  %call35 = tail call fastcc zeroext i8 @null_check_zone_resources(ptr noundef %3, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call35)
  %cmp37.not = icmp eq i8 %call35, 0
  br i1 %cmp37.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %null_lock_zone_res.exit
  %36 = ptrtoint ptr %need_zone_res_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %need_zone_res_mgmt.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i158 = icmp eq i8 %37, 0
  br i1 %tobool.not.i158, label %if.then39.unlock_crit_edge, label %if.then39.unlock.sink.split_crit_edge

if.then39.unlock.sink.split_crit_edge:            ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.sink.split

if.then39.unlock_crit_edge:                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end40:                                         ; preds = %null_lock_zone_res.exit
  %38 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cond, align 8
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %39, label %if.end40.if.end53_crit_edge [
    i32 4, label %if.then44
    i32 1, label %if.end40.if.end53thread-pre-split_crit_edge
  ]

if.end40.if.end53thread-pre-split_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53thread-pre-split

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_closed = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 10
  %41 = ptrtoint ptr %nr_zones_closed to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_zones_closed, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %nr_zones_closed, align 4
  br label %if.end53thread-pre-split

if.end53thread-pre-split:                         ; preds = %if.then44, %if.end40.if.end53thread-pre-split_crit_edge
  %nr_zones_imp_open = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 8
  %43 = ptrtoint ptr %nr_zones_imp_open to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_zones_imp_open, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %nr_zones_imp_open, align 4
  %45 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %cond, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end53thread-pre-split, %if.end40.if.end53_crit_edge
  %46 = phi i32 [ %.pr, %if.end53thread-pre-split ], [ %39, %if.end40.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp55.not = icmp eq i32 %46, 3
  br i1 %cmp55.not, label %if.end53.if.end59_crit_edge, label %if.then57

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %cond, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end53.if.end59_crit_edge
  %48 = ptrtoint ptr %need_zone_res_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %need_zone_res_mgmt.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i162 = icmp eq i8 %49, 0
  br i1 %tobool.not.i162, label %if.end59.if.end60_crit_edge, label %if.then.i164

if.end59.if.end60_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then.i164:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i163 = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_unlock_irq(ptr noundef %zone_res_lock.i163) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then.i164, %if.end59.if.end60_crit_edge, %if.end27.if.end60_crit_edge
  %call61 = tail call zeroext i8 @null_process_cmd(ptr noundef %cmd, i32 noundef 1, i64 noundef %sector.addr.0, i32 noundef %nr_sectors) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call61)
  %cmp63.not = icmp eq i8 %call61, 0
  br i1 %cmp63.not, label %if.end66, label %if.end60.unlock_crit_edge

if.end60.unlock_crit_edge:                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end66:                                         ; preds = %if.end60
  %50 = ptrtoint ptr %wp21 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %wp21, align 8
  %add69 = add i64 %51, %conv
  store i64 %add69, ptr %wp21, align 8
  %52 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %start, align 8
  %54 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %capacity, align 4
  %conv73 = zext i32 %55 to i64
  %add74 = add i64 %53, %conv73
  call void @__sanitizer_cov_trace_cmp8(i64 %add69, i64 %add74)
  %cmp75 = icmp eq i64 %add69, %add74
  br i1 %cmp75, label %if.then77, label %if.end66.unlock_crit_edge

if.end66.unlock_crit_edge:                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then77:                                        ; preds = %if.end66
  %need_zone_res_mgmt.i166 = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 14
  %56 = ptrtoint ptr %need_zone_res_mgmt.i166 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %need_zone_res_mgmt.i166, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i167 = icmp eq i8 %57, 0
  br i1 %tobool.not.i167, label %if.then77.null_lock_zone_res.exit170_crit_edge, label %if.then.i169

if.then77.null_lock_zone_res.exit170_crit_edge:   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %null_lock_zone_res.exit170

if.then.i169:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i168 = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %zone_res_lock.i168) #10
  br label %null_lock_zone_res.exit170

null_lock_zone_res.exit170:                       ; preds = %if.then.i169, %if.then77.null_lock_zone_res.exit170_crit_edge
  %58 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cond, align 8
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %59, label %null_lock_zone_res.exit170.if.end91_crit_edge [
    i32 3, label %if.then81
    i32 2, label %if.then87
  ]

null_lock_zone_res.exit170.if.end91_crit_edge:    ; preds = %null_lock_zone_res.exit170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then81:                                        ; preds = %null_lock_zone_res.exit170
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_exp_open = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 9
  %61 = ptrtoint ptr %nr_zones_exp_open to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_zones_exp_open, align 8
  %dec82 = add i32 %62, -1
  store i32 %dec82, ptr %nr_zones_exp_open, align 8
  br label %if.end91

if.then87:                                        ; preds = %null_lock_zone_res.exit170
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_imp_open88 = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 8
  %63 = ptrtoint ptr %nr_zones_imp_open88 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_zones_imp_open88, align 4
  %dec89 = add i32 %64, -1
  store i32 %dec89, ptr %nr_zones_imp_open88, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.then81, %null_lock_zone_res.exit170.if.end91_crit_edge
  %65 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 14, ptr %cond, align 8
  %66 = ptrtoint ptr %need_zone_res_mgmt.i166 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %need_zone_res_mgmt.i166, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i172 = icmp eq i8 %67, 0
  br i1 %tobool.not.i172, label %if.end91.unlock_crit_edge, label %if.end91.unlock.sink.split_crit_edge

if.end91.unlock.sink.split_crit_edge:             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.sink.split

if.end91.unlock_crit_edge:                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

unlock.sink.split:                                ; preds = %if.end91.unlock.sink.split_crit_edge, %if.then39.unlock.sink.split_crit_edge
  %ret.0.ph = phi i8 [ %call35, %if.then39.unlock.sink.split_crit_edge ], [ 0, %if.end91.unlock.sink.split_crit_edge ]
  %zone_res_lock.i173 = getelementptr inbounds %struct.nullb_device, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_unlock_irq(ptr noundef %zone_res_lock.i173) #10
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %if.end91.unlock_crit_edge, %if.end66.unlock_crit_edge, %if.end60.unlock_crit_edge, %if.then39.unlock_crit_edge, %if.end20.unlock_crit_edge, %if.else15.unlock_crit_edge, %null_lock_zone.exit.unlock_crit_edge
  %ret.0 = phi i8 [ %call61, %if.end60.unlock_crit_edge ], [ 10, %null_lock_zone.exit.unlock_crit_edge ], [ 10, %if.else15.unlock_crit_edge ], [ 10, %if.end20.unlock_crit_edge ], [ 0, %if.end66.unlock_crit_edge ], [ %call35, %if.then39.unlock_crit_edge ], [ 0, %if.end91.unlock_crit_edge ], [ %ret.0.ph, %unlock.sink.split ]
  %68 = ptrtoint ptr %memory_backed.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %memory_backed.i, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i177 = icmp eq i8 %69, 0
  br i1 %tobool.not.i177, label %if.then.i178, label %if.else.i179

if.then.i178:                                     ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx) #10
  br label %cleanup

if.else.i179:                                     ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %arrayidx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else.i179, %if.then.i178, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i8 [ %call3, %if.end ], [ 10, %if.then.cleanup_crit_edge ], [ %ret.0, %if.then.i178 ], [ %ret.0, %if.else.i179 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @null_process_cmd(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nullb_zone_op(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %disk = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %1, i32 0, i32 1
  %call1 = tail call ptr @nullb_trace_disk_name(ptr noundef %tmp_seq, ptr noundef %disk) #10
  %op = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  %call2 = tail call ptr @blk_op_str(i32 noundef %3) #10
  %zone_no = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %zone_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zone_no, align 4
  %zone_cond = getelementptr inbounds %struct.trace_event_raw_nullb_zone_op, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %zone_cond to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zone_cond, align 4
  %call3 = tail call ptr @blk_zone_cond_str(i32 noundef %7) #10
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.29, ptr noundef %call1, ptr noundef %call2, i32 noundef %5, ptr noundef %call3) #10
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nullb_trace_disk_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_op_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_zone_cond_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_nullb_report_zones(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %disk = getelementptr inbounds %struct.trace_event_raw_nullb_report_zones, ptr %1, i32 0, i32 1
  %call1 = tail call ptr @nullb_trace_disk_name(ptr noundef %tmp_seq, ptr noundef %disk) #10
  %nr_zones = getelementptr inbounds %struct.trace_event_raw_nullb_report_zones, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_zones to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_zones, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, ptr noundef %call1, i32 noundef %3) #10
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nullb_zone_op(ptr noundef %cmd, i32 noundef %zone_no, i32 noundef %zone_cond) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nullb_zone_op, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_nullb_zone_op, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !99

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !94

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !84) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nullb_zone_op, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %cmd, i32 noundef %zone_no, i32 noundef %zone_cond) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !94

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !84) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_nullb_zone_op, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nullb_zone_op.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_nullb_zone_op.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 54, ptr noundef nonnull @.str.36) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %38 = tail call i32 @llvm.read_register.i32(metadata !84) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @null_check_zone_resources(ptr nocapture noundef %dev, ptr nocapture noundef readonly %zone) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = getelementptr inbounds %struct.nullb_zone, ptr %zone, i32 0, i32 2
  %0 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cond, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %do.end [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.bb2_crit_edge
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  %zone_max_active.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 23
  %3 = ptrtoint ptr %zone_max_active.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %zone_max_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %sw.bb.sw.bb2_crit_edge, label %if.end.i

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.end.i:                                         ; preds = %sw.bb
  %nr_zones_exp_open.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %nr_zones_exp_open.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_zones_exp_open.i, align 8
  %nr_zones_imp_open.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %nr_zones_imp_open.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_zones_imp_open.i, align 4
  %add.i = add i32 %8, %6
  %nr_zones_closed.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 10
  %9 = ptrtoint ptr %nr_zones_closed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_zones_closed.i, align 4
  %add1.i = add i32 %add.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %4)
  %cmp.i = icmp ult i32 %add1.i, %4
  br i1 %cmp.i, label %if.end.i.sw.bb2_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.sw.bb2_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

sw.bb2:                                           ; preds = %if.end.i.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge
  %zone_max_open.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 22
  %11 = ptrtoint ptr %zone_max_open.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %zone_max_open.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i23 = icmp eq i32 %12, 0
  br i1 %tobool.not.i23, label %sw.bb2.cleanup_crit_edge, label %if.end.i28

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i28:                                       ; preds = %sw.bb2
  %nr_zones_exp_open.i24 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 9
  %13 = ptrtoint ptr %nr_zones_exp_open.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_zones_exp_open.i24, align 8
  %nr_zones_imp_open.i25 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 8
  %15 = ptrtoint ptr %nr_zones_imp_open.i25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_zones_imp_open.i25, align 4
  %add.i26 = add i32 %16, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i26, i32 %12)
  %cmp.i27 = icmp ult i32 %add.i26, %12
  br i1 %cmp.i27, label %if.end.i28.cleanup_crit_edge, label %if.end3.i

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not.i = icmp eq i32 %16, 0
  br i1 %tobool5.not.i, label %if.end3.i.cleanup_crit_edge, label %if.then6.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6.i:                                       ; preds = %if.end3.i
  %zone_max_active.i.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 23
  %17 = ptrtoint ptr %zone_max_active.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %zone_max_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.then6.i.if.then9.i_crit_edge, label %if.end.i.i

if.then6.i.if.then9.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.end.i.i:                                       ; preds = %if.then6.i
  %nr_zones_closed.i.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 10
  %19 = ptrtoint ptr %nr_zones_closed.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_zones_closed.i.i, align 4
  %add1.i.i = add i32 %20, %add.i26
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %18)
  %cmp.i.i = icmp ult i32 %add1.i.i, %18
  br i1 %cmp.i.i, label %if.end.i.i.if.then9.i_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.if.then9.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i.i.if.then9.i_crit_edge, %if.then6.i.if.then9.i_crit_edge
  %imp_close_zone_no.i.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 11
  %21 = ptrtoint ptr %imp_close_zone_no.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %imp_close_zone_no.i.i, align 8
  %nr_zones.i.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 7
  %23 = ptrtoint ptr %nr_zones.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_zones.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not.i.i = icmp ult i32 %22, %24
  br i1 %cmp.not.i.i, label %if.then9.i.if.end.i18.i_crit_edge, label %if.then.i.i

if.then9.i.if.end.i18.i_crit_edge:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i18.i

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %zone_nr_conv.i.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 21
  %25 = ptrtoint ptr %zone_nr_conv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %zone_nr_conv.i.i, align 4
  br label %if.end.i18.i

if.end.i18.i:                                     ; preds = %if.then.i.i, %if.then9.i.if.end.i18.i_crit_edge
  %zno.0.i.i = phi i32 [ %26, %if.then.i.i ], [ %22, %if.then9.i.if.end.i18.i_crit_edge ]
  %zone_nr_conv1.i.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 21
  %27 = ptrtoint ptr %zone_nr_conv1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %zone_nr_conv1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp333.i.i = icmp ult i32 %28, %24
  br i1 %cmp333.i.i, label %for.body.lr.ph.i.i, label %if.end.i18.i.cleanup_crit_edge

if.end.i18.i.cleanup_crit_edge:                   ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end.i18.i
  %zones.i.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 12
  %29 = ptrtoint ptr %zones.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %zones.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc13.i.i = add i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc13.i.i, %24
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.035.i.i = phi i32 [ %28, %for.body.lr.ph.i.i ], [ %inc13.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %zno.134.i.i = phi i32 [ %zno.0.i.i, %for.body.lr.ph.i.i ], [ %spec.select.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %zno.134.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %24)
  %cmp5.not.i.i = icmp ult i32 %inc.i.i, %24
  %spec.select.i.i = select i1 %cmp5.not.i.i, i32 %inc.i.i, i32 %28
  %cond.i.i = getelementptr %struct.nullb_zone, ptr %30, i32 %zno.134.i.i, i32 2
  %31 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cond.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp9.i.i = icmp eq i32 %32, 2
  br i1 %cmp9.i.i, label %sw.epilog.i.i.i, label %for.cond.i.i

sw.epilog.i.i.i:                                  ; preds = %for.body.i.i
  %dec.i.i.i = add i32 %16, -1
  %33 = ptrtoint ptr %nr_zones_imp_open.i25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec.i.i.i, ptr %nr_zones_imp_open.i25, align 4
  %wp.i.i.i = getelementptr %struct.nullb_zone, ptr %30, i32 %zno.134.i.i, i32 4
  %34 = ptrtoint ptr %wp.i.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %wp.i.i.i, align 8
  %start.i.i.i = getelementptr %struct.nullb_zone, ptr %30, i32 %zno.134.i.i, i32 3
  %36 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %start.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp.i.i.i = icmp eq i64 %35, %37
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %cond.i.i, align 8
  br label %__null_close_zone.exit.i.i

if.else.i.i.i:                                    ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %cond.i.i, align 8
  %nr_zones_closed.i.i.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 10
  %40 = ptrtoint ptr %nr_zones_closed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_zones_closed.i.i.i, align 4
  %inc.i.i.i = add i32 %41, 1
  store i32 %inc.i.i.i, ptr %nr_zones_closed.i.i.i, align 4
  br label %__null_close_zone.exit.i.i

__null_close_zone.exit.i.i:                       ; preds = %if.else.i.i.i, %if.then.i.i.i
  %42 = ptrtoint ptr %imp_close_zone_no.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select.i.i, ptr %imp_close_zone_no.i.i, align 8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 361, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %__null_close_zone.exit.i.i, %for.cond.i.i.cleanup_crit_edge, %if.end.i18.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i28.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i8 [ 10, %do.end ], [ 16, %if.end.i.cleanup_crit_edge ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %if.end.i28.cleanup_crit_edge ], [ 15, %if.end3.i.cleanup_crit_edge ], [ 15, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.end.i18.i.cleanup_crit_edge ], [ 0, %__null_close_zone.exit.i.i ], [ 0, %for.cond.i.i.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @null_reset_zone(ptr noundef %dev, ptr nocapture noundef %zone) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.nullb_zone, ptr %zone, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %need_zone_res_mgmt.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %need_zone_res_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_zone_res_mgmt.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.null_lock_zone_res.exit_crit_edge, label %if.then.i

if.end.null_lock_zone_res.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %null_lock_zone_res.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %zone_res_lock.i) #10
  br label %null_lock_zone_res.exit

null_lock_zone_res.exit:                          ; preds = %if.then.i, %if.end.null_lock_zone_res.exit_crit_edge
  %cond = getelementptr inbounds %struct.nullb_zone, ptr %zone, i32 0, i32 2
  %4 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cond, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
    i32 14, label %null_lock_zone_res.exit.sw.epilog_crit_edge
  ]

null_lock_zone_res.exit.sw.epilog_crit_edge:      ; preds = %null_lock_zone_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %null_lock_zone_res.exit
  %7 = ptrtoint ptr %need_zone_res_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %need_zone_res_mgmt.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i25 = icmp eq i8 %8, 0
  br i1 %tobool.not.i25, label %sw.bb.return_crit_edge, label %if.then.i27

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i27:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i26 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 15
  tail call void @_raw_spin_unlock_irq(ptr noundef %zone_res_lock.i26) #10
  br label %return

sw.bb1:                                           ; preds = %null_lock_zone_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_imp_open = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %nr_zones_imp_open to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_zones_imp_open, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %nr_zones_imp_open, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %null_lock_zone_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_exp_open = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 9
  %11 = ptrtoint ptr %nr_zones_exp_open to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_zones_exp_open, align 8
  %dec3 = add i32 %12, -1
  store i32 %dec3, ptr %nr_zones_exp_open, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %null_lock_zone_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  %nr_zones_closed = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 10
  %13 = ptrtoint ptr %nr_zones_closed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_zones_closed, align 4
  %dec5 = add i32 %14, -1
  store i32 %dec5, ptr %nr_zones_closed, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %null_lock_zone_res.exit
  %15 = ptrtoint ptr %need_zone_res_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %need_zone_res_mgmt.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i29 = icmp eq i8 %16, 0
  br i1 %tobool.not.i29, label %sw.default.return_crit_edge, label %if.then.i31

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i31:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i30 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 15
  tail call void @_raw_spin_unlock_irq(ptr noundef %zone_res_lock.i30) #10
  br label %return

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb1, %null_lock_zone_res.exit.sw.epilog_crit_edge
  %17 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %cond, align 8
  %start = getelementptr inbounds %struct.nullb_zone, ptr %zone, i32 0, i32 3
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start, align 8
  %wp = getelementptr inbounds %struct.nullb_zone, ptr %zone, i32 0, i32 4
  %20 = ptrtoint ptr %wp to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %wp, align 8
  %21 = ptrtoint ptr %need_zone_res_mgmt.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %need_zone_res_mgmt.i, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i34 = icmp eq i8 %22, 0
  br i1 %tobool.not.i34, label %sw.epilog.null_unlock_zone_res.exit37_crit_edge, label %if.then.i36

sw.epilog.null_unlock_zone_res.exit37_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %null_unlock_zone_res.exit37

if.then.i36:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %zone_res_lock.i35 = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 15
  tail call void @_raw_spin_unlock_irq(ptr noundef %zone_res_lock.i35) #10
  br label %null_unlock_zone_res.exit37

null_unlock_zone_res.exit37:                      ; preds = %if.then.i36, %sw.epilog.null_unlock_zone_res.exit37_crit_edge
  %memory_backed = getelementptr inbounds %struct.nullb_device, ptr %dev, i32 0, i32 39
  %23 = ptrtoint ptr %memory_backed to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %memory_backed, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %null_unlock_zone_res.exit37.return_crit_edge, label %if.then7

null_unlock_zone_res.exit37.return_crit_edge:     ; preds = %null_unlock_zone_res.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then7:                                         ; preds = %null_unlock_zone_res.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.nullb_zone, ptr %zone, i32 0, i32 5
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 8
  %conv = zext i32 %28 to i64
  %call = tail call zeroext i8 @null_handle_discard(ptr noundef %dev, i64 noundef %26, i64 noundef %conv) #10
  br label %return

return:                                           ; preds = %if.then7, %null_unlock_zone_res.exit37.return_crit_edge, %if.then.i31, %sw.default.return_crit_edge, %if.then.i27, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ %call, %if.then7 ], [ 10, %entry.return_crit_edge ], [ 0, %null_unlock_zone_res.exit37.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %if.then.i27 ], [ 10, %sw.default.return_crit_edge ], [ 10, %if.then.i31 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @null_handle_discard(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__tracepoint_nullb_zone_op, !1, !"__tracepoint_nullb_zone_op", i1 false, i1 false}
!1 = !{!"../drivers/block/null_blk/./trace.h", i32 33, i32 1}
!2 = !{ptr @__tracepoint_ptr_nullb_zone_op, !1, !"__tracepoint_ptr_nullb_zone_op", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_nullb_zone_op, !1, !"__SCK__tp_func_nullb_zone_op", i1 false, i1 false}
!4 = !{ptr @__tracepoint_nullb_report_zones, !5, !"__tracepoint_nullb_report_zones", i1 false, i1 false}
!5 = !{!"../drivers/block/null_blk/./trace.h", i32 56, i32 1}
!6 = !{ptr @__tracepoint_ptr_nullb_report_zones, !5, !"__tracepoint_ptr_nullb_report_zones", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_nullb_report_zones, !5, !"__SCK__tp_func_nullb_report_zones", i1 false, i1 false}
!8 = !{ptr @event_class_nullb_zone_op, !1, !"event_class_nullb_zone_op", i1 false, i1 false}
!9 = !{ptr @event_nullb_zone_op, !1, !"event_nullb_zone_op", i1 false, i1 false}
!10 = !{ptr @__event_nullb_zone_op, !1, !"__event_nullb_zone_op", i1 false, i1 false}
!11 = !{ptr @event_class_nullb_report_zones, !5, !"event_class_nullb_report_zones", i1 false, i1 false}
!12 = !{ptr @event_nullb_report_zones, !5, !"event_nullb_report_zones", i1 false, i1 false}
!13 = !{ptr @__event_nullb_report_zones, !5, !"__event_nullb_report_zones", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_nullb_zone_op, !1, !"__bpf_trace_tp_map_nullb_zone_op", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_nullb_report_zones, !5, !"__bpf_trace_tp_map_nullb_report_zones", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/block/null_blk/zoned.c", i32 66, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @null_init_zoned_dev._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @null_init_zoned_dev._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/block/null_blk/zoned.c", i32 70, i32 3}
!24 = !{ptr @null_init_zoned_dev._entry.3, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @null_init_zoned_dev._entry_ptr.5, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/block/null_blk/zoned.c", i32 78, i32 3}
!28 = !{ptr @null_init_zoned_dev._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @null_init_zoned_dev._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @null_init_zoned_dev.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/block/null_blk/zoned.c", i32 94, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/null_blk/zoned.c", i32 98, i32 3}
!35 = !{ptr @null_init_zoned_dev._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @null_init_zoned_dev._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/block/null_blk/zoned.c", i32 105, i32 3}
!39 = !{ptr @null_init_zoned_dev._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @null_init_zoned_dev._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/block/null_blk/zoned.c", i32 111, i32 3}
!43 = !{ptr @null_init_zoned_dev._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @null_init_zoned_dev._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/block/null_blk/zoned.c", i32 115, i32 3}
!47 = !{ptr @null_init_zoned_dev._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @null_init_zoned_dev._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @__tpstrtab_nullb_zone_op, !1, !"__tpstrtab_nullb_zone_op", i1 false, i1 false}
!50 = !{ptr @__tpstrtab_nullb_report_zones, !5, !"__tpstrtab_nullb_report_zones", i1 false, i1 false}
!51 = !{ptr @str__nullb__trace_system_name, !52, !"str__nullb__trace_system_name", i1 false, i1 false}
!52 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!53 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @trace_event_fields_nullb_zone_op, !1, !"trace_event_fields_nullb_zone_op", i1 false, i1 false}
!61 = !{ptr @trace_event_type_funcs_nullb_zone_op, !1, !"trace_event_type_funcs_nullb_zone_op", i1 false, i1 false}
!62 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @print_fmt_nullb_zone_op, !1, !"print_fmt_nullb_zone_op", i1 false, i1 false}
!64 = !{ptr @.str.30, !5, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @trace_event_fields_nullb_report_zones, !5, !"trace_event_fields_nullb_report_zones", i1 false, i1 false}
!66 = !{ptr @trace_event_type_funcs_nullb_report_zones, !5, !"trace_event_type_funcs_nullb_report_zones", i1 false, i1 false}
!67 = !{ptr @.str.31, !5, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @print_fmt_nullb_report_zones, !5, !"print_fmt_nullb_report_zones", i1 false, i1 false}
!69 = !{ptr @null_init_zone_lock.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/block/null_blk/zoned.c", i32 35, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @null_init_zone_lock.__key.33, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/block/null_blk/zoned.c", i32 37, i32 3}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!76 = !{ptr @.str.35, !5, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!78 = !{ptr @.str.36, !5, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!83 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{!"auto-init"}
!97 = !{i32 0, i32 33}
!98 = !{i8 0, i8 2}
!99 = !{i64 2148325667, i64 2148325672, i64 2148325685, i64 2148325729, i64 2148325763, i64 2148325784}
!100 = !{i64 2154550889}
!101 = !{i64 2154551118}
!102 = !{i64 2149267167}
!103 = !{i64 2149268203}
!104 = !{i64 2154534193}
!105 = !{i64 2154534428}
