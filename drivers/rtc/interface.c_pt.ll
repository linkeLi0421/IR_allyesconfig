; ModuleID = '/llk/IR_all_yes/drivers/rtc/interface.c_pt.bc'
source_filename = "../drivers/rtc/interface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rtc_read_time\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_read_time\09\09\09\09"
module asm "\09.long\09__crc_rtc_read_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_read_time:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_read_time\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_read_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_set_time\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_set_time\09\09\09\09"
module asm "\09.long\09__crc_rtc_set_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_set_time:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_set_time\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_set_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_read_alarm\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_read_alarm\09\09\09\09"
module asm "\09.long\09__crc_rtc_read_alarm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_read_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_read_alarm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_read_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_set_alarm\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_set_alarm\09\09\09\09"
module asm "\09.long\09__crc_rtc_set_alarm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_set_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_set_alarm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_set_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_initialize_alarm\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_initialize_alarm\09\09\09\09"
module asm "\09.long\09__crc_rtc_initialize_alarm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_initialize_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_initialize_alarm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_initialize_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_alarm_irq_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_alarm_irq_enable\09\09\09\09"
module asm "\09.long\09__crc_rtc_alarm_irq_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_alarm_irq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_alarm_irq_enable\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_alarm_irq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_update_irq_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_update_irq_enable\09\09\09\09"
module asm "\09.long\09__crc_rtc_update_irq_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_update_irq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_update_irq_enable\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_update_irq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_update_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_update_irq\09\09\09\09"
module asm "\09.long\09__crc_rtc_update_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_update_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_update_irq\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_update_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_class_open\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_class_open\09\09\09\09"
module asm "\09.long\09__crc_rtc_class_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_class_open:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_class_open\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_class_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_class_close\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_class_close\09\09\09\09"
module asm "\09.long\09__crc_rtc_class_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_class_close:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_class_close\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_class_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.96 }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.98, %struct.trace_event, ptr, ptr, %union.anon.99, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.98 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.99 = type { ptr }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_rtc_time_alarm_class = type { %struct.trace_entry, i64, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_rtc_irq_set_freq = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rtc_irq_set_state = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rtc_alarm_irq_enable = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rtc_offset_class = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rtc_timer_class = type { %struct.trace_entry, ptr, i64, i64, [0 x i8] }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_rtc_set_time = internal constant [13 x i8] c"rtc_set_time\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_set_time = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_set_time }, align 4
@__tracepoint_rtc_set_time = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_set_time, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_set_time, ptr null, ptr @__traceiter_rtc_set_time, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_set_time = internal constant ptr @__tracepoint_rtc_set_time, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_read_time = internal constant [14 x i8] c"rtc_read_time\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_read_time = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_read_time }, align 4
@__tracepoint_rtc_read_time = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_read_time, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_read_time, ptr null, ptr @__traceiter_rtc_read_time, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_read_time = internal constant ptr @__tracepoint_rtc_read_time, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_set_alarm = internal constant [14 x i8] c"rtc_set_alarm\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_set_alarm = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_set_alarm }, align 4
@__tracepoint_rtc_set_alarm = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_set_alarm, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_set_alarm, ptr null, ptr @__traceiter_rtc_set_alarm, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_set_alarm = internal constant ptr @__tracepoint_rtc_set_alarm, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_read_alarm = internal constant [15 x i8] c"rtc_read_alarm\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_read_alarm = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_read_alarm }, align 4
@__tracepoint_rtc_read_alarm = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_read_alarm, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_read_alarm, ptr null, ptr @__traceiter_rtc_read_alarm, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_read_alarm = internal constant ptr @__tracepoint_rtc_read_alarm, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_irq_set_freq = internal constant [17 x i8] c"rtc_irq_set_freq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_irq_set_freq = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_irq_set_freq }, align 4
@__tracepoint_rtc_irq_set_freq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_irq_set_freq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_irq_set_freq, ptr null, ptr @__traceiter_rtc_irq_set_freq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_irq_set_freq = internal constant ptr @__tracepoint_rtc_irq_set_freq, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_irq_set_state = internal constant [18 x i8] c"rtc_irq_set_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_irq_set_state = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_irq_set_state }, align 4
@__tracepoint_rtc_irq_set_state = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_irq_set_state, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_irq_set_state, ptr null, ptr @__traceiter_rtc_irq_set_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_irq_set_state = internal constant ptr @__tracepoint_rtc_irq_set_state, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_alarm_irq_enable = internal constant [21 x i8] c"rtc_alarm_irq_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_alarm_irq_enable = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_alarm_irq_enable }, align 4
@__tracepoint_rtc_alarm_irq_enable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_alarm_irq_enable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_alarm_irq_enable, ptr null, ptr @__traceiter_rtc_alarm_irq_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_alarm_irq_enable = internal constant ptr @__tracepoint_rtc_alarm_irq_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_set_offset = internal constant [15 x i8] c"rtc_set_offset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_set_offset = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_set_offset }, align 4
@__tracepoint_rtc_set_offset = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_set_offset, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_set_offset, ptr null, ptr @__traceiter_rtc_set_offset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_set_offset = internal constant ptr @__tracepoint_rtc_set_offset, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_read_offset = internal constant [16 x i8] c"rtc_read_offset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_read_offset = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_read_offset }, align 4
@__tracepoint_rtc_read_offset = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_read_offset, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_read_offset, ptr null, ptr @__traceiter_rtc_read_offset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_read_offset = internal constant ptr @__tracepoint_rtc_read_offset, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_timer_enqueue = internal constant [18 x i8] c"rtc_timer_enqueue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_timer_enqueue = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_timer_enqueue }, align 4
@__tracepoint_rtc_timer_enqueue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_timer_enqueue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_timer_enqueue, ptr null, ptr @__traceiter_rtc_timer_enqueue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_timer_enqueue = internal constant ptr @__tracepoint_rtc_timer_enqueue, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_timer_dequeue = internal constant [18 x i8] c"rtc_timer_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_timer_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_timer_dequeue }, align 4
@__tracepoint_rtc_timer_dequeue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_timer_dequeue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_timer_dequeue, ptr null, ptr @__traceiter_rtc_timer_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_timer_dequeue = internal constant ptr @__tracepoint_rtc_timer_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_timer_fired = internal constant [16 x i8] c"rtc_timer_fired\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_timer_fired = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_timer_fired }, align 4
@__tracepoint_rtc_timer_fired = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rtc_timer_fired, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rtc_timer_fired, ptr null, ptr @__traceiter_rtc_timer_fired, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_timer_fired = internal constant ptr @__tracepoint_rtc_timer_fired, section "__tracepoints_ptrs", align 4
@str__rtc__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_rtc_time_alarm_class = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.96 { %struct.anon.97 { ptr @.str.17, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.96 { %struct.anon.97 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rtc_time_alarm_class = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_time_alarm_class, ptr @perf_trace_rtc_time_alarm_class, ptr @trace_event_reg, ptr @trace_event_fields_rtc_time_alarm_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_time_alarm_class, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_time_alarm_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_time_alarm_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rtc_time_alarm_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rtc_time_alarm_class = internal global { [39 x i8], [57 x i8] } { [39 x i8] c"\22UTC (%lld) (%d)\22, REC->secs, REC->err\00", [57 x i8] zeroinitializer }, align 32
@event_rtc_set_time = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_time_alarm_class, %union.anon.98 { ptr @__tracepoint_rtc_set_time }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_time_alarm_class }, ptr @print_fmt_rtc_time_alarm_class, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_set_time = internal global ptr @event_rtc_set_time, section "_ftrace_events", align 4
@event_rtc_read_time = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_time_alarm_class, %union.anon.98 { ptr @__tracepoint_rtc_read_time }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_time_alarm_class }, ptr @print_fmt_rtc_time_alarm_class, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_read_time = internal global ptr @event_rtc_read_time, section "_ftrace_events", align 4
@event_rtc_set_alarm = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_time_alarm_class, %union.anon.98 { ptr @__tracepoint_rtc_set_alarm }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_time_alarm_class }, ptr @print_fmt_rtc_time_alarm_class, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_set_alarm = internal global ptr @event_rtc_set_alarm, section "_ftrace_events", align 4
@event_rtc_read_alarm = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_time_alarm_class, %union.anon.98 { ptr @__tracepoint_rtc_read_alarm }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_time_alarm_class }, ptr @print_fmt_rtc_time_alarm_class, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_read_alarm = internal global ptr @event_rtc_read_alarm, section "_ftrace_events", align 4
@trace_event_fields_rtc_irq_set_freq = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.96 { %struct.anon.97 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.96 { %struct.anon.97 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rtc_irq_set_freq = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_irq_set_freq, ptr @perf_trace_rtc_irq_set_freq, ptr @trace_event_reg, ptr @trace_event_fields_rtc_irq_set_freq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_irq_set_freq, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_irq_set_freq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_irq_set_freq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rtc_irq_set_freq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rtc_irq_set_freq = internal global { [62 x i8], [34 x i8] } { [62 x i8] c"\22set RTC periodic IRQ frequency:%u (%d)\22, REC->freq, REC->err\00", [34 x i8] zeroinitializer }, align 32
@event_rtc_irq_set_freq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_irq_set_freq, %union.anon.98 { ptr @__tracepoint_rtc_irq_set_freq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_irq_set_freq }, ptr @print_fmt_rtc_irq_set_freq, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_irq_set_freq = internal global ptr @event_rtc_irq_set_freq, section "_ftrace_events", align 4
@trace_event_fields_rtc_irq_set_state = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.96 { %struct.anon.97 { ptr @.str.23, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.96 { %struct.anon.97 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rtc_irq_set_state = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_irq_set_state, ptr @perf_trace_rtc_irq_set_state, ptr @trace_event_reg, ptr @trace_event_fields_rtc_irq_set_state, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_irq_set_state, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_irq_set_state, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_irq_set_state = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rtc_irq_set_state, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rtc_irq_set_state = internal global { [82 x i8], [46 x i8] } { [82 x i8] c"\22%s RTC 2^N Hz periodic IRQs (%d)\22, REC->enabled ? \22enable\22 : \22disable\22, REC->err\00", [46 x i8] zeroinitializer }, align 32
@event_rtc_irq_set_state = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_irq_set_state, %union.anon.98 { ptr @__tracepoint_rtc_irq_set_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_irq_set_state }, ptr @print_fmt_rtc_irq_set_state, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_irq_set_state = internal global ptr @event_rtc_irq_set_state, section "_ftrace_events", align 4
@trace_event_fields_rtc_alarm_irq_enable = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.27, %union.anon.96 { %struct.anon.97 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.96 { %struct.anon.97 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rtc_alarm_irq_enable = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_alarm_irq_enable, ptr @perf_trace_rtc_alarm_irq_enable, ptr @trace_event_reg, ptr @trace_event_fields_rtc_alarm_irq_enable, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_alarm_irq_enable, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_alarm_irq_enable, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_alarm_irq_enable = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rtc_alarm_irq_enable, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rtc_alarm_irq_enable = internal global { [71 x i8], [57 x i8] } { [71 x i8] c"\22%s RTC alarm IRQ (%d)\22, REC->enabled ? \22enable\22 : \22disable\22, REC->err\00", [57 x i8] zeroinitializer }, align 32
@event_rtc_alarm_irq_enable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_alarm_irq_enable, %union.anon.98 { ptr @__tracepoint_rtc_alarm_irq_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_alarm_irq_enable }, ptr @print_fmt_rtc_alarm_irq_enable, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_alarm_irq_enable = internal global ptr @event_rtc_alarm_irq_enable, section "_ftrace_events", align 4
@trace_event_fields_rtc_offset_class = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.96 { %struct.anon.97 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.96 { %struct.anon.97 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_rtc_offset_class = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_offset_class, ptr @perf_trace_rtc_offset_class, ptr @trace_event_reg, ptr @trace_event_fields_rtc_offset_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_offset_class, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_offset_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_offset_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rtc_offset_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rtc_offset_class = internal global { [46 x i8], [50 x i8] } { [46 x i8] c"\22RTC offset: %ld (%d)\22, REC->offset, REC->err\00", [50 x i8] zeroinitializer }, align 32
@event_rtc_set_offset = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_offset_class, %union.anon.98 { ptr @__tracepoint_rtc_set_offset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_offset_class }, ptr @print_fmt_rtc_offset_class, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_set_offset = internal global ptr @event_rtc_set_offset, section "_ftrace_events", align 4
@event_rtc_read_offset = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_offset_class, %union.anon.98 { ptr @__tracepoint_rtc_read_offset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_offset_class }, ptr @print_fmt_rtc_offset_class, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_read_offset = internal global ptr @event_rtc_read_offset, section "_ftrace_events", align 4
@trace_event_fields_rtc_timer_class = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.96 { %struct.anon.97 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.96 { %struct.anon.97 { ptr @.str.35, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.96 { %struct.anon.97 { ptr @.str.36, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_rtc_timer_class = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_timer_class, ptr @perf_trace_rtc_timer_class, ptr @trace_event_reg, ptr @trace_event_fields_rtc_timer_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_timer_class, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_timer_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_timer_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rtc_timer_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rtc_timer_class = internal global { [81 x i8], [47 x i8] } { [81 x i8] c"\22RTC timer:(%p) expires:%lld period:%lld\22, REC->timer, REC->expires, REC->period\00", [47 x i8] zeroinitializer }, align 32
@event_rtc_timer_enqueue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_timer_class, %union.anon.98 { ptr @__tracepoint_rtc_timer_enqueue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_timer_class }, ptr @print_fmt_rtc_timer_class, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_timer_enqueue = internal global ptr @event_rtc_timer_enqueue, section "_ftrace_events", align 4
@event_rtc_timer_dequeue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_timer_class, %union.anon.98 { ptr @__tracepoint_rtc_timer_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_timer_class }, ptr @print_fmt_rtc_timer_class, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_timer_dequeue = internal global ptr @event_rtc_timer_dequeue, section "_ftrace_events", align 4
@event_rtc_timer_fired = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_timer_class, %union.anon.98 { ptr @__tracepoint_rtc_timer_fired }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_timer_class }, ptr @print_fmt_rtc_timer_class, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rtc_timer_fired = internal global ptr @event_rtc_timer_fired, section "_ftrace_events", align 4
@__bpf_trace_tp_map_rtc_set_time = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_set_time, ptr @__bpf_trace_rtc_time_alarm_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_read_time = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_read_time, ptr @__bpf_trace_rtc_time_alarm_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_set_alarm = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_set_alarm, ptr @__bpf_trace_rtc_time_alarm_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_read_alarm = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_read_alarm, ptr @__bpf_trace_rtc_time_alarm_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_irq_set_freq = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_irq_set_freq, ptr @__bpf_trace_rtc_irq_set_freq, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_irq_set_state = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_irq_set_state, ptr @__bpf_trace_rtc_irq_set_state, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_alarm_irq_enable = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_alarm_irq_enable, ptr @__bpf_trace_rtc_alarm_irq_enable, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_set_offset = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_set_offset, ptr @__bpf_trace_rtc_offset_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_read_offset = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_read_offset, ptr @__bpf_trace_rtc_offset_class, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_timer_enqueue = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_timer_enqueue, ptr @__bpf_trace_rtc_timer_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_timer_dequeue = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_timer_dequeue, ptr @__bpf_trace_rtc_timer_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rtc_timer_fired = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_rtc_timer_fired, ptr @__bpf_trace_rtc_timer_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab_rtc_read_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_read_time = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_read_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_read_time to i32), ptr @__kstrtab_rtc_read_time, ptr @__kstrtabns_rtc_read_time }, section "___ksymtab_gpl+rtc_read_time", align 4
@__kstrtab_rtc_set_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_set_time = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_set_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_set_time to i32), ptr @__kstrtab_rtc_set_time, ptr @__kstrtabns_rtc_set_time }, section "___ksymtab_gpl+rtc_set_time", align 4
@__rtc_read_alarm.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__rtc_read_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/interface.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alarm rollover: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"day\00", [28 x i8] zeroinitializer }, align 32
@__rtc_read_alarm.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"month\00", [26 x i8] zeroinitializer }, align 32
@__rtc_read_alarm.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"year\00", [27 x i8] zeroinitializer }, align 32
@__rtc_read_alarm._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 373, ptr @.str.8, ptr @.str.9 }, align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"alarm rollover not handled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__rtc_read_alarm._entry_ptr = internal global ptr @__rtc_read_alarm._entry, section ".printk_index", align 4
@__rtc_read_alarm._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 381, ptr @.str.8, ptr @.str.9 }, align 1
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid alarm value: %ptR\0A\00", [37 x i8] zeroinitializer }, align 32
@__rtc_read_alarm._entry_ptr.12 = internal global ptr @__rtc_read_alarm._entry.10, section ".printk_index", align 4
@__kstrtab_rtc_read_alarm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_read_alarm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_read_alarm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_read_alarm to i32), ptr @__kstrtab_rtc_read_alarm, ptr @__kstrtabns_rtc_read_alarm }, section "___ksymtab_gpl+rtc_read_alarm", align 4
@__kstrtab_rtc_set_alarm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_set_alarm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_set_alarm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_set_alarm to i32), ptr @__kstrtab_rtc_set_alarm, ptr @__kstrtabns_rtc_set_alarm }, section "___ksymtab_gpl+rtc_set_alarm", align 4
@__kstrtab_rtc_initialize_alarm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_initialize_alarm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_initialize_alarm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_initialize_alarm to i32), ptr @__kstrtab_rtc_initialize_alarm, ptr @__kstrtabns_rtc_initialize_alarm }, section "___ksymtab_gpl+rtc_initialize_alarm", align 4
@__kstrtab_rtc_alarm_irq_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_alarm_irq_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_alarm_irq_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_alarm_irq_enable to i32), ptr @__kstrtab_rtc_alarm_irq_enable, ptr @__kstrtabns_rtc_alarm_irq_enable }, section "___ksymtab_gpl+rtc_alarm_irq_enable", align 4
@__kstrtab_rtc_update_irq_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_update_irq_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_update_irq_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_update_irq_enable to i32), ptr @__kstrtab_rtc_update_irq_enable, ptr @__kstrtabns_rtc_update_irq_enable }, section "___ksymtab_gpl+rtc_update_irq_enable", align 4
@__kstrtab_rtc_update_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_update_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_update_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_update_irq to i32), ptr @__kstrtab_rtc_update_irq, ptr @__kstrtabns_rtc_update_irq }, section "___ksymtab_gpl+rtc_update_irq", align 4
@rtc_class = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_rtc_class_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_class_open = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_class_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_class_open to i32), ptr @__kstrtab_rtc_class_open, ptr @__kstrtabns_rtc_class_open }, section "___ksymtab_gpl+rtc_class_open", align 4
@__kstrtab_rtc_class_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_class_close = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_class_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_class_close to i32), ptr @__kstrtab_rtc_class_close, ptr @__kstrtabns_rtc_class_close }, section "___ksymtab_gpl+rtc_class_close", align 4
@rtc_timer_do_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 954, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__rtc_set_alarm: err=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtc_timer_do_work\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtc_timer_do_work._entry_ptr = internal global ptr @rtc_timer_do_work._entry, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"time64_t\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"secs\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"err\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UTC (%lld) (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set RTC periodic IRQ frequency:%u (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s RTC 2^N Hz periodic IRQs (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s RTC alarm IRQ (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RTC offset: %ld (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"struct rtc_timer *\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ktime_t\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"expires\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"period\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RTC timer:(%p) expires:%lld period:%lld\0A\00", [55 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__rtc_read_time.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__rtc_read_time\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"read_time: fail to read: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__rtc_read_time.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 0, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"read_time: rtc_time isn't valid\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/rtc.h\00", [37 x i8] zeroinitializer }, align 32
@trace_rtc_read_time.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@trace_rtc_set_time.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_read_alarm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_timer_enqueue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_alarm_irq_enable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_irq_set_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_irq_set_freq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_timer_dequeue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_timer_fired.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_set_alarm.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_read_offset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_rtc_set_offset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967234]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967234]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967234]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967234]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967234]
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"str__rtc__trace_system_name\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 36, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [40 x i8] c"trace_event_fields_rtc_time_alarm_class\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_rtc_time_alarm_class\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [31 x i8] c"print_fmt_rtc_time_alarm_class\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"event_rtc_set_time\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 31, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"event_rtc_read_time\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"event_rtc_set_alarm\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 45, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"event_rtc_read_alarm\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 52, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [36 x i8] c"trace_event_fields_rtc_irq_set_freq\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_rtc_irq_set_freq\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"print_fmt_rtc_irq_set_freq\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [23 x i8] c"event_rtc_irq_set_freq\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [37 x i8] c"trace_event_fields_rtc_irq_set_state\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_rtc_irq_set_state\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"print_fmt_rtc_irq_set_state\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"event_rtc_irq_set_state\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [40 x i8] c"trace_event_fields_rtc_alarm_irq_enable\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_rtc_alarm_irq_enable\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"print_fmt_rtc_alarm_irq_enable\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"event_rtc_alarm_irq_enable\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [36 x i8] c"trace_event_fields_rtc_offset_class\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_rtc_offset_class\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"print_fmt_rtc_offset_class\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"event_rtc_set_offset\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 145, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"event_rtc_read_offset\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 152, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [35 x i8] c"trace_event_fields_rtc_timer_class\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_rtc_timer_class\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [26 x i8] c"print_fmt_rtc_timer_class\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [24 x i8] c"event_rtc_timer_enqueue\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 182, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant [24 x i8] c"event_rtc_timer_dequeue\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 189, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [22 x i8] c"event_rtc_timer_fired\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 196, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 339, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 350, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 365, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 373, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 380, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 954, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 10, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 59, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 80, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 102, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 124, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 159, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 96, i32 4 }
@___asan_gen_.260 = private constant [27 x i8] c"../drivers/rtc/interface.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 105, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant [30 x i8] c"../include/trace/events/rtc.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 38, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 108, i32 2 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__bpf_trace_tp_map_rtc_alarm_irq_enable, ptr @__bpf_trace_tp_map_rtc_irq_set_freq, ptr @__bpf_trace_tp_map_rtc_irq_set_state, ptr @__bpf_trace_tp_map_rtc_read_alarm, ptr @__bpf_trace_tp_map_rtc_read_offset, ptr @__bpf_trace_tp_map_rtc_read_time, ptr @__bpf_trace_tp_map_rtc_set_alarm, ptr @__bpf_trace_tp_map_rtc_set_offset, ptr @__bpf_trace_tp_map_rtc_set_time, ptr @__bpf_trace_tp_map_rtc_timer_dequeue, ptr @__bpf_trace_tp_map_rtc_timer_enqueue, ptr @__bpf_trace_tp_map_rtc_timer_fired, ptr @__event_rtc_alarm_irq_enable, ptr @__event_rtc_irq_set_freq, ptr @__event_rtc_irq_set_state, ptr @__event_rtc_read_alarm, ptr @__event_rtc_read_offset, ptr @__event_rtc_read_time, ptr @__event_rtc_set_alarm, ptr @__event_rtc_set_offset, ptr @__event_rtc_set_time, ptr @__event_rtc_timer_dequeue, ptr @__event_rtc_timer_enqueue, ptr @__event_rtc_timer_fired, ptr @__ksymtab_rtc_alarm_irq_enable, ptr @__ksymtab_rtc_class_close, ptr @__ksymtab_rtc_class_open, ptr @__ksymtab_rtc_initialize_alarm, ptr @__ksymtab_rtc_read_alarm, ptr @__ksymtab_rtc_read_time, ptr @__ksymtab_rtc_set_alarm, ptr @__ksymtab_rtc_set_time, ptr @__ksymtab_rtc_update_irq, ptr @__ksymtab_rtc_update_irq_enable, ptr @__rtc_read_alarm._entry, ptr @__rtc_read_alarm._entry.10, ptr @__rtc_read_alarm._entry_ptr, ptr @__rtc_read_alarm._entry_ptr.12, ptr @__tracepoint_ptr_rtc_alarm_irq_enable, ptr @__tracepoint_ptr_rtc_irq_set_freq, ptr @__tracepoint_ptr_rtc_irq_set_state, ptr @__tracepoint_ptr_rtc_read_alarm, ptr @__tracepoint_ptr_rtc_read_offset, ptr @__tracepoint_ptr_rtc_read_time, ptr @__tracepoint_ptr_rtc_set_alarm, ptr @__tracepoint_ptr_rtc_set_offset, ptr @__tracepoint_ptr_rtc_set_time, ptr @__tracepoint_ptr_rtc_timer_dequeue, ptr @__tracepoint_ptr_rtc_timer_enqueue, ptr @__tracepoint_ptr_rtc_timer_fired, ptr @__tracepoint_rtc_alarm_irq_enable, ptr @__tracepoint_rtc_irq_set_freq, ptr @__tracepoint_rtc_irq_set_state, ptr @__tracepoint_rtc_read_alarm, ptr @__tracepoint_rtc_read_offset, ptr @__tracepoint_rtc_read_time, ptr @__tracepoint_rtc_set_alarm, ptr @__tracepoint_rtc_set_offset, ptr @__tracepoint_rtc_set_time, ptr @__tracepoint_rtc_timer_dequeue, ptr @__tracepoint_rtc_timer_enqueue, ptr @__tracepoint_rtc_timer_fired, ptr @event_class_rtc_alarm_irq_enable, ptr @event_class_rtc_irq_set_freq, ptr @event_class_rtc_irq_set_state, ptr @event_class_rtc_offset_class, ptr @event_class_rtc_time_alarm_class, ptr @event_class_rtc_timer_class, ptr @event_rtc_alarm_irq_enable, ptr @event_rtc_irq_set_freq, ptr @event_rtc_irq_set_state, ptr @event_rtc_read_alarm, ptr @event_rtc_read_offset, ptr @event_rtc_read_time, ptr @event_rtc_set_alarm, ptr @event_rtc_set_offset, ptr @event_rtc_set_time, ptr @event_rtc_timer_dequeue, ptr @event_rtc_timer_enqueue, ptr @event_rtc_timer_fired, ptr @rtc_timer_do_work._entry, ptr @rtc_timer_do_work._entry_ptr, ptr @str__rtc__trace_system_name, ptr @trace_event_fields_rtc_time_alarm_class, ptr @trace_event_type_funcs_rtc_time_alarm_class, ptr @print_fmt_rtc_time_alarm_class, ptr @trace_event_fields_rtc_irq_set_freq, ptr @trace_event_type_funcs_rtc_irq_set_freq, ptr @print_fmt_rtc_irq_set_freq, ptr @trace_event_fields_rtc_irq_set_state, ptr @trace_event_type_funcs_rtc_irq_set_state, ptr @print_fmt_rtc_irq_set_state, ptr @trace_event_fields_rtc_alarm_irq_enable, ptr @trace_event_type_funcs_rtc_alarm_irq_enable, ptr @print_fmt_rtc_alarm_irq_enable, ptr @trace_event_fields_rtc_offset_class, ptr @trace_event_type_funcs_rtc_offset_class, ptr @print_fmt_rtc_offset_class, ptr @trace_event_fields_rtc_timer_class, ptr @trace_event_type_funcs_rtc_timer_class, ptr @print_fmt_rtc_timer_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__rtc__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rtc_time_alarm_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rtc_time_alarm_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rtc_time_alarm_class to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_set_time to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_read_time to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_set_alarm to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_read_alarm to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rtc_irq_set_freq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rtc_irq_set_freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rtc_irq_set_freq to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_irq_set_freq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rtc_irq_set_state to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rtc_irq_set_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rtc_irq_set_state to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_irq_set_state to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rtc_alarm_irq_enable to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rtc_alarm_irq_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rtc_alarm_irq_enable to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_alarm_irq_enable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rtc_offset_class to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rtc_offset_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rtc_offset_class to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_set_offset to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_read_offset to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rtc_timer_class to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rtc_timer_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rtc_timer_class to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_timer_enqueue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_timer_dequeue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rtc_timer_fired to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_timer_do_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_set_time(ptr nocapture readnone %__data, i64 noundef %secs, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_time, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %secs, i32 noundef %err) #8
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
define dso_local i32 @__traceiter_rtc_read_time(ptr nocapture readnone %__data, i64 noundef %secs, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_time, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %secs, i32 noundef %err) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_set_alarm(ptr nocapture readnone %__data, i64 noundef %secs, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_alarm, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %secs, i32 noundef %err) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_read_alarm(ptr nocapture readnone %__data, i64 noundef %secs, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_alarm, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i64 noundef %secs, i32 noundef %err) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_irq_set_freq(ptr nocapture readnone %__data, i32 noundef %freq, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_irq_set_freq, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %freq, i32 noundef %err) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_irq_set_state(ptr nocapture readnone %__data, i32 noundef %enabled, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_irq_set_state, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %enabled, i32 noundef %err) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_alarm_irq_enable(ptr nocapture readnone %__data, i32 noundef %enabled, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %enabled, i32 noundef %err) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_set_offset(ptr nocapture readnone %__data, i32 noundef %offset, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_offset, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %offset, i32 noundef %err) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_read_offset(ptr nocapture readnone %__data, i32 noundef %offset, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_offset, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %offset, i32 noundef %err) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_timer_enqueue(ptr nocapture readnone %__data, ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %timer) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_timer_dequeue(ptr nocapture readnone %__data, ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %timer) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_timer_fired(ptr nocapture readnone %__data, ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_fired, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %timer) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_time_alarm_class(ptr noundef %__data, i64 noundef %secs, i32 noundef %err) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !242

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !243

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %secs6 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %secs6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %secs, ptr %secs6, align 8
  %err7 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %err7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %err, ptr %err7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rtc_time_alarm_class(ptr noundef %__data, i64 noundef %secs, i32 noundef %err) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !244
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !232) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %secs17 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %secs17 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %secs, ptr %secs17, align 8
  %err18 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %err18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %err, ptr %err18, align 8
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_irq_set_freq(ptr noundef %__data, i32 noundef %freq, i32 noundef %err) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !242

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !243

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %freq6 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %freq6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %freq, ptr %freq6, align 4
  %err7 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %err7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %err, ptr %err7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rtc_irq_set_freq(ptr noundef %__data, i32 noundef %freq, i32 noundef %err) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !244
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !232) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %freq17 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %freq17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %freq, ptr %freq17, align 4
  %err18 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %err18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %err, ptr %err18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_irq_set_state(ptr noundef %__data, i32 noundef %enabled, i32 noundef %err) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !242

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !243

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %enabled6 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %enabled6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %enabled, ptr %enabled6, align 4
  %err7 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %err7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %err, ptr %err7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rtc_irq_set_state(ptr noundef %__data, i32 noundef %enabled, i32 noundef %err) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !244
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !232) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %enabled17 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %enabled17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %enabled, ptr %enabled17, align 4
  %err18 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %err18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %err, ptr %err18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_alarm_irq_enable(ptr noundef %__data, i32 noundef %enabled, i32 noundef %err) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !242

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !243

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %enabled6 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %enabled6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %enabled, ptr %enabled6, align 4
  %err7 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %err7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %err, ptr %err7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rtc_alarm_irq_enable(ptr noundef %__data, i32 noundef %enabled, i32 noundef %err) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !244
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !232) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %enabled17 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %enabled17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %enabled, ptr %enabled17, align 4
  %err18 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %err18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %err, ptr %err18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_offset_class(ptr noundef %__data, i32 noundef %offset, i32 noundef %err) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !242

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !243

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %offset6 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %offset6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %offset, ptr %offset6, align 4
  %err7 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %err7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %err, ptr %err7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rtc_offset_class(ptr noundef %__data, i32 noundef %offset, i32 noundef %err) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !244
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !232) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %offset17 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %offset17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %offset, ptr %offset17, align 4
  %err18 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %err18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %err, ptr %err18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_timer_class(ptr noundef %__data, ptr noundef %timer) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !242

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !243

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %timer6 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %timer6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %timer, ptr %timer6, align 8
  %expires = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %expires, align 8
  %expires7 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %expires7 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %expires7, align 8
  %period = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 1
  %7 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %period, align 8
  %period8 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %period8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %period8, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rtc_timer_class(ptr noundef %__data, ptr noundef %timer) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !244
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !232) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %timer17 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %timer17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %timer, ptr %timer17, align 8
  %expires = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %28 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %expires, align 8
  %expires18 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %expires18 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %expires18, align 8
  %period = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 1
  %31 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %period, align 8
  %period19 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %period19 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %period19, align 8
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rtc_time_alarm_class(ptr noundef %__data, i64 noundef %secs, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %err to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %secs, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rtc_irq_set_freq(ptr noundef %__data, i32 noundef %freq, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %freq to i64
  %conv4 = zext i32 %err to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rtc_irq_set_state(ptr noundef %__data, i32 noundef %enabled, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %enabled to i64
  %conv4 = zext i32 %err to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rtc_alarm_irq_enable(ptr noundef %__data, i32 noundef %enabled, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %enabled to i64
  %conv4 = zext i32 %err to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rtc_offset_class(ptr noundef %__data, i32 noundef %offset, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %offset to i64
  %conv4 = zext i32 %err to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rtc_timer_class(ptr noundef %__data, ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %timer to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_read_time(ptr noundef %rtc, ptr noundef %tm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @__rtc_read_time(ptr noundef %rtc, ptr noundef %tm)
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  %call3 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #8
  tail call fastcc void @trace_rtc_read_time(i64 noundef %call3, i32 noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rtc_read_time(ptr noundef %rtc, ptr noundef %tm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %read_time = getelementptr inbounds %struct.rtc_class_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_time, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %if.else4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else4:                                         ; preds = %if.else
  %4 = call ptr @memset(ptr %tm, i32 0, i32 36)
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 8
  %read_time6 = getelementptr inbounds %struct.rtc_class_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %read_time6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_time6, align 4
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call = tail call i32 %8(ptr noundef %10, ptr noundef %tm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end15

do.body:                                          ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rtc_read_time.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__rtc_read_time, %cleanup)) #8
          to label %if.then13 [label %cleanup], !srcloc !245

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__rtc_read_time.__UNIQUE_ID_ddebug313, ptr noundef %rtc, ptr noundef nonnull @.str.39, i32 noundef %call) #8
  br label %cleanup

if.end15:                                         ; preds = %if.else4
  %offset_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 25
  %11 = ptrtoint ptr %offset_secs.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset_secs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i, label %if.end15.rtc_add_offset.exit_crit_edge, label %if.end.i

if.end15.rtc_add_offset.exit_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_add_offset.exit

if.end.i:                                         ; preds = %if.end15
  %call.i = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #8
  %start_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 24
  %13 = ptrtoint ptr %start_secs.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %start_secs.i, align 8
  %range_min.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 22
  %15 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %range_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp.i = icmp sle i64 %14, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %14)
  %cmp2.not.i = icmp slt i64 %call.i, %14
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp2.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i, label %if.end.i.rtc_add_offset.exit_crit_edge

if.end.i.rtc_add_offset.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_add_offset.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp5.i = icmp slt i64 %14, %16
  br i1 %cmp5.i, label %land.lhs.true6.i, label %lor.lhs.false.i.if.end11.i_crit_edge

lor.lhs.false.i.if.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true6.i:                                 ; preds = %lor.lhs.false.i
  %range_max.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 23
  %17 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %range_max.i, align 8
  %add.i = sub i64 %14, %16
  %sub.i = add i64 %add.i, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %sub.i)
  %cmp9.not.i = icmp ugt i64 %call.i, %sub.i
  br i1 %cmp9.not.i, label %land.lhs.true6.i.if.end11.i_crit_edge, label %land.lhs.true6.i.rtc_add_offset.exit_crit_edge

land.lhs.true6.i.rtc_add_offset.exit_crit_edge:   ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_add_offset.exit

land.lhs.true6.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true6.i.if.end11.i_crit_edge, %lor.lhs.false.i.if.end11.i_crit_edge
  %19 = ptrtoint ptr %offset_secs.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %offset_secs.i, align 8
  %add13.i = add i64 %20, %call.i
  tail call void @rtc_time64_to_tm(i64 noundef %add13.i, ptr noundef %tm) #8
  br label %rtc_add_offset.exit

rtc_add_offset.exit:                              ; preds = %if.end11.i, %land.lhs.true6.i.rtc_add_offset.exit_crit_edge, %if.end.i.rtc_add_offset.exit_crit_edge, %if.end15.rtc_add_offset.exit_crit_edge
  %call16 = tail call i32 @rtc_valid_tm(ptr noundef %tm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body19, label %rtc_add_offset.exit.cleanup_crit_edge

rtc_add_offset.exit.cleanup_crit_edge:            ; preds = %rtc_add_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body19:                                        ; preds = %rtc_add_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rtc_read_time.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__rtc_read_time, %cleanup)) #8
          to label %if.then33 [label %cleanup], !srcloc !245

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__rtc_read_time.__UNIQUE_ID_ddebug314, ptr noundef %rtc, ptr noundef nonnull @.str.40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body19, %rtc_add_offset.exit.cleanup_crit_edge, %if.then13, %do.body, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then13 ], [ %call16, %if.then33 ], [ %call16, %rtc_add_offset.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call, %do.body ], [ %call16, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_read_time(i64 noundef %secs, i32 noundef %err) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_time, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_read_time, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !246
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_time, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i64 noundef %secs, i32 noundef %err) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !247
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !247
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_time, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_read_time.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_read_time.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 43, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_set_time(ptr noundef %rtc, ptr noundef %tm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtc_valid_tm(ptr noundef %tm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %range_min.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 22
  %0 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %range_min.i, align 8
  %range_max.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 23
  %2 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %range_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp.not.i = icmp eq i64 %1, %3
  br i1 %cmp.not.i, label %if.end.if.end3_crit_edge, label %if.then.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #8
  %set_start_time.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 26
  %4 = ptrtoint ptr %set_start_time.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %set_start_time.i, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %start_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 24
  %cond.in.i = select i1 %tobool.not.i, ptr %range_min.i, ptr %start_secs.i
  %6 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %cond.i = load i64, ptr %cond.in.i, align 8
  br i1 %tobool.not.i, label %cond.false10.i, label %cond.true6.i

cond.true6.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %start_secs.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start_secs.i, align 8
  %9 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %range_max.i, align 8
  %add.i = add i64 %10, %8
  %11 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %range_min.i, align 8
  %sub.i = sub i64 %add.i, %12
  br label %cond.end12.i

cond.false10.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %range_max.i, align 8
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.false10.i, %cond.true6.i
  %cond13.i = phi i64 [ %sub.i, %cond.true6.i ], [ %14, %cond.false10.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %cond.i)
  %cmp14.i = icmp sge i64 %call.i, %cond.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %cond13.i)
  %cmp15.i = icmp ule i64 %call.i, %cond13.i
  %or.cond.i = select i1 %cmp14.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %cond.end12.i.if.end3_crit_edge, label %cond.end12.i.cleanup_crit_edge

cond.end12.i.cleanup_crit_edge:                   ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end12.i.if.end3_crit_edge:                   ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %cond.end12.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %offset_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 25
  %15 = ptrtoint ptr %offset_secs.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset_secs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not.i71 = icmp eq i64 %16, 0
  br i1 %tobool.not.i71, label %if.end3.rtc_subtract_offset.exit_crit_edge, label %if.end.i

if.end3.rtc_subtract_offset.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_subtract_offset.exit

if.end.i:                                         ; preds = %if.end3
  %call.i72 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #8
  %17 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %range_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i72, i64 %18)
  %cmp.not.i74 = icmp slt i64 %call.i72, %18
  br i1 %cmp.not.i74, label %if.end.i.if.end3.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %19 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %range_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i72, i64 %20)
  %cmp1.not.i = icmp ugt i64 %call.i72, %20
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end3.i_crit_edge, label %land.lhs.true.i.rtc_subtract_offset.exit_crit_edge

land.lhs.true.i.rtc_subtract_offset.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_subtract_offset.exit

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %land.lhs.true.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %21 = ptrtoint ptr %offset_secs.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %offset_secs.i, align 8
  %sub.i76 = sub i64 %call.i72, %22
  tail call void @rtc_time64_to_tm(i64 noundef %sub.i76, ptr noundef %tm) #8
  br label %rtc_subtract_offset.exit

rtc_subtract_offset.exit:                         ; preds = %if.end3.i, %land.lhs.true.i.rtc_subtract_offset.exit_crit_edge, %if.end3.rtc_subtract_offset.exit_crit_edge
  %enabled = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 15, i32 4
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not = icmp eq i32 %24, 0
  br i1 %tobool4.not, label %lor.end, label %rtc_subtract_offset.exit.if.then7_crit_edge

rtc_subtract_offset.exit.if.then7_crit_edge:      ; preds = %rtc_subtract_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.end:                                          ; preds = %rtc_subtract_offset.exit
  %uie_irq_active = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 30
  %25 = ptrtoint ptr %uie_irq_active to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %uie_irq_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool5 = icmp slt i8 %bf.load, 0
  br i1 %tobool5, label %lor.end.if.then7_crit_edge, label %lor.end.if.end12_crit_edge

lor.end.if.end12_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

lor.end.if.then7_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %lor.end.if.then7_crit_edge, %rtc_subtract_offset.exit.if.then7_crit_edge
  %call8 = tail call i32 @rtc_update_irq_enable(ptr noundef %rtc, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %lor.end.if.end12_crit_edge
  %26 = phi i1 [ true, %if.then7.if.end12_crit_edge ], [ false, %lor.end.if.end12_crit_edge ]
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  %call13 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %ops = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 8
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %if.end16.if.end27_crit_edge, label %if.else

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.else:                                          ; preds = %if.end16
  %set_time = getelementptr inbounds %struct.rtc_class_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %set_time to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_time, align 4
  %tobool20.not = icmp eq ptr %30, null
  br i1 %tobool20.not, label %if.else.if.end27_crit_edge, label %if.then21

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 8
  %call24 = tail call i32 %30(ptr noundef %32, ptr noundef %tm) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.else.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %err.0 = phi i32 [ %call24, %if.then21 ], [ -19, %if.end16.if.end27_crit_edge ], [ -22, %if.else.if.end27_crit_edge ]
  %parent29 = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %33 = ptrtoint ptr %parent29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent29, align 8
  tail call void @pm_stay_awake(ptr noundef %34) #8
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  %irqwork = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %irqwork) #8
  br i1 %26, label %if.then33, label %if.end27.if.end38_crit_edge

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then33:                                        ; preds = %if.end27
  %call34 = tail call i32 @rtc_update_irq_enable(ptr noundef %rtc, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end38_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %if.then33.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %err.1 = phi i32 [ 0, %if.then33.if.end38_crit_edge ], [ %err.0, %if.end27.if.end38_crit_edge ]
  %call39 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #8
  tail call fastcc void @trace_rtc_set_time(i64 noundef %call39, i32 noundef %err.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then33.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %cond.end12.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %if.end38 ], [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call34, %if.then33.cleanup_crit_edge ], [ -34, %cond.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_update_irq_enable(ptr noundef %rtc, i32 noundef %enabled) #0 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup38_crit_edge

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %cmp = icmp eq i32 %enabled, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %uie_irq_active = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 30
  %0 = ptrtoint ptr %uie_irq_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %uie_irq_active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %land.lhs.true.if.end5_crit_edge, label %if.then2

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  %call4 = tail call i32 @rtc_dev_update_irq_enable_emul(ptr noundef %rtc, i32 noundef 0) #8
  br label %cleanup38

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %uie_rtctimer = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 15
  %enabled6 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 15, i32 4
  %1 = ptrtoint ptr %enabled6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enabled6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %enabled)
  %cmp7 = icmp eq i32 %2, %enabled
  br i1 %cmp7, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %if.end5
  %features = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %features, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.end9.if.then16_crit_edge, label %lor.lhs.false

if.end9.if.then16_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end9
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %features, align 4
  %and1.i61 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i61)
  %tobool15.not = icmp eq i32 %and1.i61, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.then16_crit_edge, label %if.end19

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end9.if.then16_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  %call18 = tail call i32 @rtc_dev_update_irq_enable_emul(ptr noundef %rtc, i32 noundef %enabled) #8
  br label %cleanup38

if.end19:                                         ; preds = %lor.lhs.false
  br i1 %cmp, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #8
  %8 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %call22 = call fastcc i32 @__rtc_read_time(ptr noundef %rtc, ptr noundef nonnull %tm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.0.load = load i32, ptr %tm, align 4
  %.fca.0.insert = insertvalue [9 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 1
  %10 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [9 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 2
  %11 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [9 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 3
  %12 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [9 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 4
  %13 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [9 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 5
  %14 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [9 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 6
  %15 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [9 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 7
  %16 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [9 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %.fca.8.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 8
  %17 = ptrtoint ptr %.fca.8.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %.fca.8.load = load i32, ptr %.fca.8.gep, align 4
  %.fca.8.insert = insertvalue [9 x i32] %.fca.7.insert, i32 %.fca.8.load, 8
  %call27 = call i64 @rtc_tm_to_ktime([9 x i32] %.fca.8.insert) #8
  %add = add i64 %call27, 1000000000
  %expires = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 15, i32 0, i32 1
  %18 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add, ptr %expires, align 8
  %period = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %period to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1000000000, ptr %period, align 8
  %call32 = call fastcc i32 @rtc_timer_enqueue(ptr noundef %rtc, ptr noundef %uie_rtctimer)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then21.cleanup_crit_edge
  %err.0 = phi i32 [ %call32, %if.end25 ], [ %call22, %if.then21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #8
  br label %out

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtc_timer_remove(ptr noundef %rtc, ptr noundef %uie_rtctimer)
  br label %out

out:                                              ; preds = %if.else, %cleanup, %if.end5.out_crit_edge
  %err.1 = phi i32 [ 0, %if.end5.out_crit_edge ], [ %err.0, %cleanup ], [ 0, %if.else ]
  call void @mutex_unlock(ptr noundef %ops_lock) #8
  br label %cleanup38

cleanup38:                                        ; preds = %out, %if.then16, %if.then2, %entry.cleanup38_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then2 ], [ %err.1, %out ], [ %call18, %if.then16 ], [ %call, %entry.cleanup38_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_set_time(i64 noundef %secs, i32 noundef %err) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_time, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_set_time, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !251
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_time, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i64 noundef %secs, i32 noundef %err) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !252
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !252
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_time, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_set_time.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_set_time.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 36, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
define dso_local i32 @__rtc_read_alarm(ptr noundef %rtc, ptr noundef %alarm) local_unnamed_addr #0 align 64 {
entry:
  %before = alloca %struct.rtc_time, align 4
  %now = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %before) #8
  %0 = call ptr @memset(ptr %before, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %now) #8
  %1 = call ptr @memset(ptr %now, i32 255, i32 36)
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.rtc_read_time.exit_crit_edge

entry.rtc_read_time.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_read_time.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call fastcc i32 @__rtc_read_time(ptr noundef %rtc, ptr noundef nonnull %before) #8
  call void @mutex_unlock(ptr noundef %ops_lock.i) #8
  %call3.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %before) #8
  call fastcc void @trace_rtc_read_time(i64 noundef %call3.i, i32 noundef %call1.i) #8
  br label %rtc_read_time.exit

rtc_read_time.exit:                               ; preds = %if.end.i, %entry.rtc_read_time.exit_crit_edge
  %retval.0.i262 = phi i32 [ %call1.i, %if.end.i ], [ %call.i, %entry.rtc_read_time.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i262)
  %cmp = icmp slt i32 %retval.0.i262, 0
  br i1 %cmp, label %rtc_read_time.exit.cleanup_crit_edge, label %if.end2.preheader

rtc_read_time.exit.cleanup_crit_edge:             ; preds = %rtc_read_time.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2.preheader:                                ; preds = %rtc_read_time.exit
  %call.i264303 = call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264303)
  %tobool.not.i265304 = icmp eq i32 %call.i264303, 0
  br i1 %tobool.not.i265304, label %if.end.i266.lr.ph, label %if.end2.preheader.cleanup_crit_edge

if.end2.preheader.cleanup_crit_edge:              ; preds = %if.end2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i266.lr.ph:                                ; preds = %if.end2.preheader
  %ops.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %features.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  %pending.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %time.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %parent.i = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %before, i32 0, i32 1
  %tm_min16 = getelementptr inbounds %struct.rtc_time, ptr %now, i32 0, i32 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %before, i32 0, i32 2
  %tm_hour18 = getelementptr inbounds %struct.rtc_time, ptr %now, i32 0, i32 2
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %before, i32 0, i32 4
  %tm_mon21 = getelementptr inbounds %struct.rtc_time, ptr %now, i32 0, i32 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %before, i32 0, i32 5
  %tm_year23 = getelementptr inbounds %struct.rtc_time, ptr %now, i32 0, i32 5
  br label %if.end.i266

if.then1:                                         ; preds = %lor.rhs.if.then1_crit_edge, %lor.lhs.false20.if.then1_crit_edge, %lor.lhs.false.if.then1_crit_edge, %do.cond.if.then1_crit_edge
  %2 = call ptr @memcpy(ptr %before, ptr %now, i32 36)
  %call.i264 = call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock.i, i32 noundef 0) #8
  %tobool.not.i265 = icmp eq i32 %call.i264, 0
  br i1 %tobool.not.i265, label %if.then1.if.end.i266_crit_edge, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.if.end.i266_crit_edge:                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i266

if.end.i266:                                      ; preds = %if.then1.if.end.i266_crit_edge, %if.end.i266.lr.ph
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.end.i266.rtc_read_alarm_internal.exit_crit_edge, label %if.else.i

if.end.i266.rtc_read_alarm_internal.exit_crit_edge: ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_read_alarm_internal.exit

if.else.i:                                        ; preds = %if.end.i266
  %5 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %features.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool4.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool4.not.i, label %if.else.i.rtc_read_alarm_internal.exit_crit_edge, label %lor.lhs.false.i

if.else.i.rtc_read_alarm_internal.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_read_alarm_internal.exit

lor.lhs.false.i:                                  ; preds = %if.else.i
  %read_alarm.i = getelementptr inbounds %struct.rtc_class_ops, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %read_alarm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_alarm.i, align 4
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %lor.lhs.false.i.rtc_read_alarm_internal.exit_crit_edge, label %if.else8.i

lor.lhs.false.i.rtc_read_alarm_internal.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_read_alarm_internal.exit

if.else8.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %alarm, align 4
  %10 = ptrtoint ptr %pending.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pending.i, align 1
  %11 = call ptr @memset(ptr %time.i, i32 255, i32 36)
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 8
  %read_alarm18.i = getelementptr inbounds %struct.rtc_class_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %read_alarm18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_alarm18.i, align 4
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %call19.i = call i32 %15(ptr noundef %17, ptr noundef %alarm) #8
  br label %rtc_read_alarm_internal.exit

rtc_read_alarm_internal.exit:                     ; preds = %if.else8.i, %lor.lhs.false.i.rtc_read_alarm_internal.exit_crit_edge, %if.else.i.rtc_read_alarm_internal.exit_crit_edge, %if.end.i266.rtc_read_alarm_internal.exit_crit_edge
  %err.0.i = phi i32 [ %call19.i, %if.else8.i ], [ -19, %if.end.i266.rtc_read_alarm_internal.exit_crit_edge ], [ -22, %lor.lhs.false.i.rtc_read_alarm_internal.exit_crit_edge ], [ -22, %if.else.i.rtc_read_alarm_internal.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %ops_lock.i) #8
  %call24.i = call i64 @rtc_tm_to_time64(ptr noundef %time.i) #8
  call fastcc void @trace_rtc_read_alarm(i64 noundef %call24.i, i32 noundef %err.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool4.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool4.not, label %if.end6, label %rtc_read_alarm_internal.exit.cleanup_crit_edge

rtc_read_alarm_internal.exit.cleanup_crit_edge:   ; preds = %rtc_read_alarm_internal.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %rtc_read_alarm_internal.exit
  %call7 = call i32 @rtc_valid_tm(ptr noundef %time.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %offset_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 25
  %18 = ptrtoint ptr %offset_secs.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset_secs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.i268 = icmp eq i64 %19, 0
  br i1 %tobool.not.i268, label %if.then9.cleanup_crit_edge, label %if.end.i270

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i270:                                      ; preds = %if.then9
  %call.i269 = call i64 @rtc_tm_to_time64(ptr noundef %time.i) #8
  %start_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 24
  %20 = ptrtoint ptr %start_secs.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start_secs.i, align 8
  %range_min.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 22
  %22 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %range_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp.i = icmp sle i64 %21, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i269, i64 %21)
  %cmp2.not.i = icmp slt i64 %call.i269, %21
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp2.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i271, label %if.end.i270.cleanup_crit_edge

if.end.i270.cleanup_crit_edge:                    ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i271:                               ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp5.i = icmp slt i64 %21, %23
  br i1 %cmp5.i, label %land.lhs.true6.i, label %lor.lhs.false.i271.if.end11.i_crit_edge

lor.lhs.false.i271.if.end11.i_crit_edge:          ; preds = %lor.lhs.false.i271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true6.i:                                 ; preds = %lor.lhs.false.i271
  %range_max.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 23
  %24 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %range_max.i, align 8
  %add.i = sub i64 %21, %23
  %sub.i = add i64 %add.i, %25
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i269, i64 %sub.i)
  %cmp9.not.i = icmp ugt i64 %call.i269, %sub.i
  br i1 %cmp9.not.i, label %land.lhs.true6.i.if.end11.i_crit_edge, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true6.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true6.i.if.end11.i_crit_edge, %lor.lhs.false.i271.if.end11.i_crit_edge
  %26 = ptrtoint ptr %offset_secs.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %offset_secs.i, align 8
  %add13.i = add i64 %27, %call.i269
  call void @rtc_time64_to_tm(i64 noundef %add13.i, ptr noundef %time.i) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call.i273 = call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %tobool.not.i274 = icmp eq i32 %call.i273, 0
  br i1 %tobool.not.i274, label %if.end.i277, label %if.end11.rtc_read_time.exit279_crit_edge

if.end11.rtc_read_time.exit279_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_read_time.exit279

if.end.i277:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i275 = call fastcc i32 @__rtc_read_time(ptr noundef %rtc, ptr noundef nonnull %now) #8
  call void @mutex_unlock(ptr noundef %ops_lock.i) #8
  %call3.i276 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %now) #8
  call fastcc void @trace_rtc_read_time(i64 noundef %call3.i276, i32 noundef %call1.i275) #8
  br label %rtc_read_time.exit279

rtc_read_time.exit279:                            ; preds = %if.end.i277, %if.end11.rtc_read_time.exit279_crit_edge
  %retval.0.i278 = phi i32 [ %call1.i275, %if.end.i277 ], [ %call.i273, %if.end11.rtc_read_time.exit279_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i278)
  %cmp13 = icmp slt i32 %retval.0.i278, 0
  br i1 %cmp13, label %rtc_read_time.exit279.cleanup_crit_edge, label %do.cond

rtc_read_time.exit279.cleanup_crit_edge:          ; preds = %rtc_read_time.exit279
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %rtc_read_time.exit279
  %28 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_min, align 4
  %30 = ptrtoint ptr %tm_min16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_min16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp17.not = icmp eq i32 %29, %31
  br i1 %cmp17.not, label %lor.lhs.false, label %do.cond.if.then1_crit_edge

do.cond.if.then1_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

lor.lhs.false:                                    ; preds = %do.cond
  %32 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_hour, align 4
  %34 = ptrtoint ptr %tm_hour18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_hour18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp19.not = icmp eq i32 %33, %35
  br i1 %cmp19.not, label %lor.lhs.false20, label %lor.lhs.false.if.then1_crit_edge

lor.lhs.false.if.then1_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %36 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_mon, align 4
  %38 = ptrtoint ptr %tm_mon21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mon21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp22.not = icmp eq i32 %37, %39
  br i1 %cmp22.not, label %lor.rhs, label %lor.lhs.false20.if.then1_crit_edge

lor.lhs.false20.if.then1_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

lor.rhs:                                          ; preds = %lor.lhs.false20
  %40 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_year, align 4
  %42 = ptrtoint ptr %tm_year23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_year23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp24.not = icmp eq i32 %41, %43
  br i1 %cmp24.not, label %do.end, label %lor.rhs.if.then1_crit_edge

lor.rhs.if.then1_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

do.end:                                           ; preds = %lor.rhs
  %44 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %time.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp26 = icmp eq i32 %45, -1
  br i1 %cmp26, label %if.then27, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %now, align 4
  %48 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %time.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %do.end.if.end31_crit_edge
  %tm_min33 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %tm_min33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tm_min33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp34 = icmp eq i32 %50, -1
  br i1 %cmp34, label %if.then35, label %if.end31.if.end39_crit_edge

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %tm_min33 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %29, ptr %tm_min33, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end31.if.end39_crit_edge
  %tm_hour41 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %tm_hour41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_hour41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp42 = icmp eq i32 %53, -1
  br i1 %cmp42, label %if.then43, label %if.end39.if.end47_crit_edge

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %tm_hour41 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %33, ptr %tm_hour41, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end39.if.end47_crit_edge
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %55 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_mday, align 4
  %57 = add i32 %56, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %57)
  %58 = icmp ult i32 %57, -31
  br i1 %58, label %if.then54, label %if.end47.if.end58_crit_edge

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %tm_mday55 = getelementptr inbounds %struct.rtc_time, ptr %now, i32 0, i32 3
  %59 = ptrtoint ptr %tm_mday55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tm_mday55, align 4
  %61 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %tm_mday, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end47.if.end58_crit_edge
  %cmp66 = phi i32 [ 1, %if.then54 ], [ 2, %if.end47.if.end58_crit_edge ]
  %missing.0 = phi i32 [ 1, %if.then54 ], [ 0, %if.end47.if.end58_crit_edge ]
  %tm_mon60 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %62 = ptrtoint ptr %tm_mon60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tm_mon60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %63)
  %cmp61 = icmp ugt i32 %63, 11
  br i1 %cmp61, label %if.then62, label %if.end58.if.end69_crit_edge

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %tm_mon60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %37, ptr %tm_mon60, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end58.if.end69_crit_edge
  %missing.1 = phi i32 [ %cmp66, %if.then62 ], [ %missing.0, %if.end58.if.end69_crit_edge ]
  %tm_year71 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %65 = ptrtoint ptr %tm_year71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_year71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp72 = icmp eq i32 %66, -1
  br i1 %cmp72, label %if.then73, label %if.end69.if.end80_crit_edge

if.end69.if.end80_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %tm_year71 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %41, ptr %tm_year71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %missing.1)
  %cmp77 = icmp eq i32 %missing.1, 0
  %spec.store.select202 = select i1 %cmp77, i32 3, i32 %missing.1
  br label %if.end80

if.end80:                                         ; preds = %if.then73, %if.end69.if.end80_crit_edge
  %missing.2 = phi i32 [ %spec.store.select202, %if.then73 ], [ %missing.1, %if.end69.if.end80_crit_edge ]
  %call82 = call i32 @rtc_valid_tm(ptr noundef %time.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end80.do.end189_crit_edge

if.end80.do.end189_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end189

if.end85:                                         ; preds = %if.end80
  %call86 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %now) #8
  %call88 = call i64 @rtc_tm_to_time64(ptr noundef %time.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call86, i64 %call88)
  %cmp89 = icmp slt i64 %call86, %call88
  br i1 %cmp89, label %if.end85.cleanup_crit_edge, label %if.end91

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end91:                                         ; preds = %if.end85
  %68 = zext i32 %missing.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %missing.2, label %do.end181 [
    i32 1, label %do.body92
    i32 2, label %do.body104
    i32 3, label %do.body147
  ]

do.body92:                                        ; preds = %if.end91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rtc_read_alarm.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__rtc_read_alarm, %do.end101)) #8
          to label %if.then98 [label %do.end101], !srcloc !245

if.then98:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__rtc_read_alarm.__UNIQUE_ID_ddebug315, ptr noundef %rtc, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %do.body92
  %add = add i64 %call88, 86400
  call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %time.i) #8
  br label %done

do.body104:                                       ; preds = %if.end91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rtc_read_alarm.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__rtc_read_alarm, %do.body123)) #8
          to label %if.then118 [label %do.body123], !srcloc !245

if.then118:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__rtc_read_alarm.__UNIQUE_ID_ddebug316, ptr noundef %rtc, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #8
  br label %do.body123

do.body123:                                       ; preds = %if.end135.do.body123_crit_edge, %if.then118, %do.body104
  %69 = ptrtoint ptr %tm_mon60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tm_mon60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %70)
  %cmp126 = icmp slt i32 %70, 11
  br i1 %cmp126, label %do.body123.if.end135_crit_edge, label %if.else

do.body123.if.end135_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.else:                                          ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %tm_mon60 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %tm_mon60, align 4
  %72 = ptrtoint ptr %tm_year71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tm_year71, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else, %do.body123.if.end135_crit_edge
  %.sink = phi i32 [ %73, %if.else ], [ %70, %do.body123.if.end135_crit_edge ]
  %tm_year71.sink = phi ptr [ %tm_year71, %if.else ], [ %tm_mon60, %do.body123.if.end135_crit_edge ]
  %inc134 = add i32 %.sink, 1
  %74 = ptrtoint ptr %tm_year71.sink to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %inc134, ptr %tm_year71.sink, align 4
  %75 = ptrtoint ptr %tm_mon60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tm_mon60, align 4
  %77 = ptrtoint ptr %tm_year71 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tm_year71, align 4
  %call140 = call i32 @rtc_month_days(i32 noundef %76, i32 noundef %78) #8
  %79 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tm_mday, align 4
  %cmp144 = icmp ult i32 %call140, %80
  br i1 %cmp144, label %if.end135.do.body123_crit_edge, label %if.end135.done_crit_edge

if.end135.done_crit_edge:                         ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end135.do.body123_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body123

do.body147:                                       ; preds = %if.end91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rtc_read_alarm.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__rtc_read_alarm, %do.body166)) #8
          to label %if.then161 [label %do.body166], !srcloc !245

if.then161:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__rtc_read_alarm.__UNIQUE_ID_ddebug317, ptr noundef %rtc, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6) #8
  br label %do.body166

do.body166:                                       ; preds = %land.rhs.do.body166_crit_edge, %if.then161, %do.body147
  %81 = ptrtoint ptr %tm_year71 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tm_year71, align 4
  %inc169 = add i32 %82, 1
  store i32 %inc169, ptr %tm_year71, align 4
  %add173 = add i32 %82, 1901
  %rem.i = and i32 %add173, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i280 = icmp eq i32 %rem.i, 0
  %rem1.i = urem i32 %add173, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %tobool2.not.i = icmp ne i32 %rem1.i, 0
  %or.cond.i281.not = and i1 %tobool.not.i280, %tobool2.not.i
  %rem3.i = urem i32 %add173, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i)
  %tobool4.not.i282 = icmp eq i32 %rem3.i, 0
  %or.cond294 = select i1 %or.cond.i281.not, i1 true, i1 %tobool4.not.i282
  br i1 %or.cond294, label %do.body166.done_crit_edge, label %land.rhs

do.body166.done_crit_edge:                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

land.rhs:                                         ; preds = %do.body166
  %call176 = call i32 @rtc_valid_tm(ptr noundef %time.i) #8
  %cmp177.not = icmp eq i32 %call176, 0
  br i1 %cmp177.not, label %land.rhs.done_crit_edge, label %land.rhs.do.body166_crit_edge

land.rhs.do.body166_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body166

land.rhs.done_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.end181:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rtc, ptr noundef nonnull @.str.7) #11
  br label %done

done:                                             ; preds = %do.end181, %land.rhs.done_crit_edge, %do.body166.done_crit_edge, %if.end135.done_crit_edge, %do.end101
  %call184 = call i32 @rtc_valid_tm(ptr noundef %time.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %done.cleanup_crit_edge, label %done.do.end189_crit_edge

done.do.end189_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end189

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end189:                                        ; preds = %done.do.end189_crit_edge, %if.end80.do.end189_crit_edge
  %err.0293 = phi i32 [ %call184, %done.do.end189_crit_edge ], [ %call82, %if.end80.do.end189_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %rtc, ptr noundef nonnull @.str.11, ptr noundef %time.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end189, %done.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %rtc_read_time.exit279.cleanup_crit_edge, %if.end11.i, %land.lhs.true6.i.cleanup_crit_edge, %if.end.i270.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %rtc_read_alarm_internal.exit.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %if.end2.preheader.cleanup_crit_edge, %rtc_read_time.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i262, %rtc_read_time.exit.cleanup_crit_edge ], [ %err.0293, %do.end189 ], [ 0, %done.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end.i270.cleanup_crit_edge ], [ 0, %land.lhs.true6.i.cleanup_crit_edge ], [ 0, %if.end11.i ], [ 0, %if.end85.cleanup_crit_edge ], [ %call.i264303, %if.end2.preheader.cleanup_crit_edge ], [ %err.0.i, %rtc_read_alarm_internal.exit.cleanup_crit_edge ], [ %retval.0.i278, %rtc_read_time.exit279.cleanup_crit_edge ], [ %call.i264, %if.then1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %before) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_month_days(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_read_alarm(ptr noundef %rtc, ptr noundef %alarm) #0 align 64 {
entry:
  %tmp = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end12_crit_edge, label %if.else

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else:                                          ; preds = %if.end
  %features = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %features, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %if.else.if.end12_crit_edge, label %lor.lhs.false

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

lor.lhs.false:                                    ; preds = %if.else
  %read_alarm = getelementptr inbounds %struct.rtc_class_ops, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %read_alarm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_alarm, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.lhs.false.if.end12_crit_edge, label %if.else8

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else8:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memset(ptr %alarm, i32 0, i32 40)
  %enabled = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14, i32 4
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled, align 8
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %alarm, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp) #8
  %expires = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14, i32 0, i32 1
  %10 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %expires, align 8
  call void @rtc_ktime_to_tm(ptr nonnull sret(%struct.rtc_time) align 4 %tmp, i64 noundef %11) #8
  %12 = call ptr @memcpy(ptr %time, ptr %tmp, i32 36)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp) #8
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %lor.lhs.false.if.end12_crit_edge, %if.else.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %err.0 = phi i32 [ 0, %if.else8 ], [ -19, %if.end.if.end12_crit_edge ], [ -22, %lor.lhs.false.if.end12_crit_edge ], [ -22, %if.else.if.end12_crit_edge ]
  call void @mutex_unlock(ptr noundef %ops_lock) #8
  %time14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call15 = call i64 @rtc_tm_to_time64(ptr noundef %time14) #8
  call fastcc void @trace_rtc_read_alarm(i64 noundef %call15, i32 noundef %err.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end12 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_ktime_to_tm(ptr sret(%struct.rtc_time) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_read_alarm(i64 noundef %secs, i32 noundef %err) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_alarm, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_read_alarm, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !253
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_alarm, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i64 noundef %secs, i32 noundef %err) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !254
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !254
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_alarm, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_read_alarm.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_read_alarm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 57, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
define dso_local i32 @rtc_set_alarm(ptr noundef %rtc, ptr noundef %alarm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %features = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %features, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool1.not = icmp eq i32 %and1.i, 0
  br i1 %tobool1.not, label %if.else.cleanup_crit_edge, label %if.end3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call4 = tail call i32 @rtc_valid_tm(ptr noundef %time) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %range_min.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 22
  %4 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %range_min.i, align 8
  %range_max.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 23
  %6 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %range_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.not.i = icmp eq i64 %5, %7
  br i1 %cmp.not.i, label %if.end6.if.end11_crit_edge, label %if.then.i

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i:                                        ; preds = %if.end6
  %call.i = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #8
  %set_start_time.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 26
  %8 = ptrtoint ptr %set_start_time.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %set_start_time.i, align 8, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %start_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 24
  %cond.in.i = select i1 %tobool.not.i, ptr %range_min.i, ptr %start_secs.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %cond.i = load i64, ptr %cond.in.i, align 8
  br i1 %tobool.not.i, label %cond.false10.i, label %cond.true6.i

cond.true6.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %start_secs.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start_secs.i, align 8
  %13 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %range_max.i, align 8
  %add.i = add i64 %14, %12
  %15 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %range_min.i, align 8
  %sub.i = sub i64 %add.i, %16
  br label %cond.end12.i

cond.false10.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %range_max.i, align 8
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.false10.i, %cond.true6.i
  %cond13.i = phi i64 [ %sub.i, %cond.true6.i ], [ %18, %cond.false10.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %cond.i)
  %cmp14.i = icmp sge i64 %call.i, %cond.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %cond13.i)
  %cmp15.i = icmp ule i64 %call.i, %cond13.i
  %or.cond.i = select i1 %cmp14.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %cond.end12.i.if.end11_crit_edge, label %cond.end12.i.cleanup_crit_edge

cond.end12.i.cleanup_crit_edge:                   ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end12.i.if.end11_crit_edge:                  ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %cond.end12.i.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  %call12 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %aie_timer = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14
  %enabled = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14, i32 4
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtc_timer_remove(ptr noundef %rtc, ptr noundef %aie_timer)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %21 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %time, align 4
  %22 = insertvalue [9 x i32] undef, i32 %.unpack, 0
  %.elt62 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %.elt62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack63 = load i32, ptr %.elt62, align 4
  %24 = insertvalue [9 x i32] %22, i32 %.unpack63, 1
  %.elt64 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %.elt64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack65 = load i32, ptr %.elt64, align 4
  %26 = insertvalue [9 x i32] %24, i32 %.unpack65, 2
  %.elt66 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %.elt66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack67 = load i32, ptr %.elt66, align 4
  %28 = insertvalue [9 x i32] %26, i32 %.unpack67, 3
  %.elt68 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %.elt68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack69 = load i32, ptr %.elt68, align 4
  %30 = insertvalue [9 x i32] %28, i32 %.unpack69, 4
  %.elt70 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %.elt70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack71 = load i32, ptr %.elt70, align 4
  %32 = insertvalue [9 x i32] %30, i32 %.unpack71, 5
  %.elt72 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %33 = ptrtoint ptr %.elt72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack73 = load i32, ptr %.elt72, align 4
  %34 = insertvalue [9 x i32] %32, i32 %.unpack73, 6
  %.elt74 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 7
  %35 = ptrtoint ptr %.elt74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack75 = load i32, ptr %.elt74, align 4
  %36 = insertvalue [9 x i32] %34, i32 %.unpack75, 7
  %.elt76 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 8
  %37 = ptrtoint ptr %.elt76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack77 = load i32, ptr %.elt76, align 4
  %38 = insertvalue [9 x i32] %36, i32 %.unpack77, 8
  %call21 = tail call i64 @rtc_tm_to_ktime([9 x i32] %38) #8
  %39 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %features, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool25.not = icmp eq i32 %41, 0
  br i1 %tobool25.not, label %if.end19.if.end28_crit_edge, label %if.then26

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %time, align 4
  %conv = sext i32 %43 to i64
  %mul.neg = mul nsw i64 %conv, -1000000000
  %sub = add i64 %mul.neg, %call21
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end19.if.end28_crit_edge
  %alarm_time.0 = phi i64 [ %sub, %if.then26 ], [ %call21, %if.end19.if.end28_crit_edge ]
  %expires = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14, i32 0, i32 1
  %44 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %alarm_time.0, ptr %expires, align 8
  %period = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14, i32 1
  %45 = ptrtoint ptr %period to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %period, align 8
  %46 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool32.not = icmp eq i8 %47, 0
  br i1 %tobool32.not, label %if.end28.if.end36_crit_edge, label %if.then33

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call fastcc i32 @rtc_timer_enqueue(ptr noundef %rtc, ptr noundef %aie_timer)
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end28.if.end36_crit_edge
  %err.0 = phi i32 [ %call35, %if.then33 ], [ 0, %if.end28.if.end36_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end11.cleanup_crit_edge, %cond.end12.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end36 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -34, %cond.end12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtc_timer_remove(ptr noundef %rtc, ptr noundef %timer) unnamed_addr #0 align 64 {
entry:
  %alarm = alloca %struct.rtc_wkalrm, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timerqueue = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 13
  %rb_leftmost.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i, align 4
  %call2 = tail call zeroext i1 @timerqueue_del(ptr noundef %timerqueue, ptr noundef %timer) #8
  tail call fastcc void @trace_rtc_timer_dequeue(ptr noundef %timer)
  %enabled = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 4
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %enabled, align 8
  %cmp = icmp eq ptr %1, %timer
  br i1 %cmp, label %if.then, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup15

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alarm) #8
  %3 = call ptr @memset(ptr %alarm, i32 255, i32 40)
  %4 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then6.rtc_alarm_disable.exit_crit_edge, label %lor.lhs.false.i

if.then6.rtc_alarm_disable.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_alarm_disable.exit

lor.lhs.false.i:                                  ; preds = %if.then6
  %features.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  %8 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %features.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool1.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.rtc_alarm_disable.exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.rtc_alarm_disable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_alarm_disable.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %alarm_irq_enable.i = getelementptr inbounds %struct.rtc_class_ops, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %alarm_irq_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alarm_irq_enable.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.rtc_alarm_disable.exit_crit_edge, label %if.end.i

lor.lhs.false2.i.rtc_alarm_disable.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_alarm_disable.exit

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  %call7.i = tail call i32 %11(ptr noundef %13, i32 noundef 0) #8
  tail call fastcc void @trace_rtc_alarm_irq_enable(i32 noundef 0, i32 noundef 0) #8
  br label %rtc_alarm_disable.exit

rtc_alarm_disable.exit:                           ; preds = %if.end.i, %lor.lhs.false2.i.rtc_alarm_disable.exit_crit_edge, %lor.lhs.false.i.rtc_alarm_disable.exit_crit_edge, %if.then6.rtc_alarm_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alarm) #8
  br label %cleanup15

if.end:                                           ; preds = %if.then
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %expires = getelementptr inbounds %struct.timerqueue_node, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %expires, align 8
  call void @rtc_ktime_to_tm(ptr nonnull sret(%struct.rtc_time) align 4 %time, i64 noundef %15) #8
  %16 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %alarm, align 4
  %call8 = call fastcc i32 @__rtc_set_alarm(ptr noundef %rtc, ptr noundef nonnull %alarm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call8)
  %cmp9 = icmp eq i32 %call8, -62
  br i1 %cmp9, label %if.then10, label %if.end14.critedge

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  call void @pm_stay_awake(ptr noundef %18) #8
  %irqwork = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %irqwork) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alarm) #8
  br label %cleanup15

if.end14.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alarm) #8
  br label %cleanup15

cleanup15:                                        ; preds = %if.end14.critedge, %if.then10, %rtc_alarm_disable.exit, %entry.cleanup15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_ktime([9 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtc_timer_enqueue(ptr noundef %rtc, ptr noundef %timer) unnamed_addr #0 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  %alarm = alloca %struct.rtc_wkalrm, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timerqueue = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 13
  %rb_leftmost.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #8
  %2 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %enabled = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 4
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %enabled, align 8
  %call1 = call fastcc i32 @__rtc_read_time(ptr noundef %rtc, ptr noundef nonnull %tm)
  %4 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %4)
  %.fca.0.load = load i32, ptr %tm, align 4
  %.fca.0.insert = insertvalue [9 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 1
  %5 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [9 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 2
  %6 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [9 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 3
  %7 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [9 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 4
  %8 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [9 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 5
  %9 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [9 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 6
  %10 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [9 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 7
  %11 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [9 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %.fca.8.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 8
  %12 = ptrtoint ptr %.fca.8.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.8.load = load i32, ptr %.fca.8.gep, align 4
  %.fca.8.insert = insertvalue [9 x i32] %.fca.7.insert, i32 %.fca.8.load, 8
  %call2 = call i64 @rtc_tm_to_ktime([9 x i32] %.fca.8.insert) #8
  %tobool.not52 = icmp eq ptr %1, null
  br i1 %tobool.not52, label %entry.if.then11.critedge_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.then11.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.critedge

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %next.053 = phi ptr [ %call3, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %expires = getelementptr inbounds %struct.timerqueue_node, ptr %next.053, i32 0, i32 1
  %13 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %expires, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %call2)
  %cmp.not = icmp slt i64 %14, %call2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.critedge

if.end:                                           ; preds = %while.body
  %call3 = call ptr @timerqueue_iterate_next(ptr noundef nonnull %next.053) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.if.then11.critedge_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.if.then11.critedge_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.critedge

lor.lhs.false.critedge:                           ; preds = %while.body
  %call5.c = call zeroext i1 @timerqueue_add(ptr noundef %timerqueue, ptr noundef %timer) #8
  call fastcc void @trace_rtc_timer_enqueue(ptr noundef %timer)
  %expires8 = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %15 = ptrtoint ptr %expires8 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %expires8, align 8
  %17 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %expires, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp.i.i = icmp slt i64 %16, %18
  br i1 %cmp.i.i, label %lor.lhs.false.critedge.if.then11_crit_edge, label %lor.lhs.false.critedge.cleanup29_crit_edge

lor.lhs.false.critedge.cleanup29_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup29

lor.lhs.false.critedge.if.then11_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11.critedge:                               ; preds = %if.end.if.then11.critedge_crit_edge, %entry.if.then11.critedge_crit_edge
  %call5.c51 = call zeroext i1 @timerqueue_add(ptr noundef %timerqueue, ptr noundef %timer) #8
  call fastcc void @trace_rtc_timer_enqueue(ptr noundef %timer)
  br label %if.then11

if.then11:                                        ; preds = %if.then11.critedge, %lor.lhs.false.critedge.if.then11_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alarm) #8
  %19 = call ptr @memset(ptr %alarm, i32 255, i32 40)
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %expires13 = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %20 = ptrtoint ptr %expires13 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %expires13, align 8
  call void @rtc_ktime_to_tm(ptr nonnull sret(%struct.rtc_time) align 4 %time, i64 noundef %21) #8
  %22 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %alarm, align 4
  %call15 = call fastcc i32 @__rtc_set_alarm(ptr noundef %rtc, ptr noundef nonnull %alarm)
  %23 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call15, label %if.then20 [
    i32 -62, label %if.then17
    i32 0, label %if.then11.cleanup_crit_edge
  ]

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  call void @pm_stay_awake(ptr noundef %25) #8
  %irqwork = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %irqwork) #8
  br label %cleanup

if.then20:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call zeroext i1 @timerqueue_del(ptr noundef %timerqueue, ptr noundef %timer) #8
  call fastcc void @trace_rtc_timer_dequeue(ptr noundef %timer)
  %27 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %enabled, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alarm) #8
  br label %cleanup29

cleanup:                                          ; preds = %if.then17, %if.then11.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alarm) #8
  br label %cleanup29

cleanup29:                                        ; preds = %cleanup, %if.then20, %lor.lhs.false.critedge.cleanup29_crit_edge
  %retval.1 = phi i32 [ %call15, %if.then20 ], [ 0, %cleanup ], [ 0, %lor.lhs.false.critedge.cleanup29_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_initialize_alarm(ptr noundef %rtc, ptr noundef %alarm) #0 align 64 {
entry:
  %now = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %now) #8
  %0 = call ptr @memset(ptr %now, i32 255, i32 36)
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call = tail call i32 @rtc_valid_tm(ptr noundef %time) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %rtc_read_time.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

rtc_read_time.exit:                               ; preds = %if.end
  %call1.i = call fastcc i32 @__rtc_read_time(ptr noundef %rtc, ptr noundef nonnull %now) #8
  call void @mutex_unlock(ptr noundef %ops_lock.i) #8
  %call3.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %now) #8
  call fastcc void @trace_rtc_read_time(i64 noundef %call3.i, i32 noundef %call1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end3, label %rtc_read_time.exit.cleanup_crit_edge

rtc_read_time.exit.cleanup_crit_edge:             ; preds = %rtc_read_time.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %rtc_read_time.exit
  %call4 = call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %1 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack = load i32, ptr %time, align 4
  %2 = insertvalue [9 x i32] undef, i32 %.unpack, 0
  %.elt45 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %.elt45 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack46 = load i32, ptr %.elt45, align 4
  %4 = insertvalue [9 x i32] %2, i32 %.unpack46, 1
  %.elt47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %.elt47 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack48 = load i32, ptr %.elt47, align 4
  %6 = insertvalue [9 x i32] %4, i32 %.unpack48, 2
  %.elt49 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %.elt49 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack50 = load i32, ptr %.elt49, align 4
  %8 = insertvalue [9 x i32] %6, i32 %.unpack50, 3
  %.elt51 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %.elt51 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack52 = load i32, ptr %.elt51, align 4
  %10 = insertvalue [9 x i32] %8, i32 %.unpack52, 4
  %.elt53 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %.elt53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack54 = load i32, ptr %.elt53, align 4
  %12 = insertvalue [9 x i32] %10, i32 %.unpack54, 5
  %.elt55 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %.elt55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack56 = load i32, ptr %.elt55, align 4
  %14 = insertvalue [9 x i32] %12, i32 %.unpack56, 6
  %.elt57 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %.elt57 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack58 = load i32, ptr %.elt57, align 4
  %16 = insertvalue [9 x i32] %14, i32 %.unpack58, 7
  %.elt59 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %.elt59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack60 = load i32, ptr %.elt59, align 4
  %18 = insertvalue [9 x i32] %16, i32 %.unpack60, 8
  %call9 = call i64 @rtc_tm_to_ktime([9 x i32] %18) #8
  %aie_timer = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14
  %expires = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14, i32 0, i32 1
  %19 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call9, ptr %expires, align 8
  %period = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14, i32 1
  %20 = ptrtoint ptr %period to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %period, align 8
  %21 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool11.not = icmp eq i8 %22, 0
  br i1 %tobool11.not, label %if.end7.if.end25_crit_edge, label %land.lhs.true

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end7
  %23 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.0.load = load i32, ptr %now, align 4
  %.fca.0.insert = insertvalue [9 x i32] poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [9 x i32], ptr %now, i32 0, i32 1
  %24 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [9 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [9 x i32], ptr %now, i32 0, i32 2
  %25 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [9 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [9 x i32], ptr %now, i32 0, i32 3
  %26 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [9 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [9 x i32], ptr %now, i32 0, i32 4
  %27 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [9 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [9 x i32], ptr %now, i32 0, i32 5
  %28 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [9 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [9 x i32], ptr %now, i32 0, i32 6
  %29 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [9 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [9 x i32], ptr %now, i32 0, i32 7
  %30 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [9 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %.fca.8.gep = getelementptr inbounds [9 x i32], ptr %now, i32 0, i32 8
  %31 = ptrtoint ptr %.fca.8.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %.fca.8.load = load i32, ptr %.fca.8.gep, align 4
  %.fca.8.insert = insertvalue [9 x i32] %.fca.7.insert, i32 %.fca.8.load, 8
  %call12 = call i64 @rtc_tm_to_ktime([9 x i32] %.fca.8.insert) #8
  %32 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %expires, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %33)
  %cmp16 = icmp slt i64 %call12, %33
  br i1 %cmp16, label %if.then18, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %enabled20 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14, i32 4
  %34 = ptrtoint ptr %enabled20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %enabled20, align 8
  %timerqueue = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 13
  %call23 = call zeroext i1 @timerqueue_add(ptr noundef %timerqueue, ptr noundef %aie_timer) #8
  call fastcc void @trace_rtc_timer_enqueue(ptr noundef %aie_timer)
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %land.lhs.true.if.end25_crit_edge, %if.end7.if.end25_crit_edge
  call void @mutex_unlock(ptr noundef %ops_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end3.cleanup_crit_edge, %rtc_read_time.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %call, %entry.cleanup_crit_edge ], [ %call1.i, %rtc_read_time.exit.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %now) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_timer_enqueue(ptr noundef %timer) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_timer_enqueue, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !255
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %timer) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !256
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !256
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_timer_enqueue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_timer_enqueue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 187, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
define dso_local i32 @rtc_alarm_irq_enable(ptr noundef %rtc, i32 noundef %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %aie_timer = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14
  %enabled1 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %enabled1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %enabled)
  %cmp.not = icmp eq i32 %1, %enabled
  br i1 %cmp.not, label %if.end.if.else12_crit_edge, label %if.then2

if.end.if.else12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else12

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool3.not = icmp eq i32 %enabled, 0
  br i1 %tobool3.not, label %if.else, label %if.end9

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtc_timer_remove(ptr noundef %rtc, ptr noundef %aie_timer)
  br label %if.else12

if.end9:                                          ; preds = %if.then2
  %call6 = tail call fastcc i32 @rtc_timer_enqueue(ptr noundef %rtc, ptr noundef %aie_timer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool10.not = icmp eq i32 %call6, 0
  br i1 %tobool10.not, label %if.end9.if.else12_crit_edge, label %if.end9.if.end27_crit_edge

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end9.if.else12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else12

if.else12:                                        ; preds = %if.end9.if.else12_crit_edge, %if.else, %if.end.if.else12_crit_edge
  %ops = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %if.else12.if.end27_crit_edge, label %if.else15

if.else12.if.end27_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.else15:                                        ; preds = %if.else12
  %features = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %features, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool17.not = icmp eq i32 %and1.i, 0
  br i1 %tobool17.not, label %if.else15.if.end27_crit_edge, label %lor.lhs.false

if.else15.if.end27_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

lor.lhs.false:                                    ; preds = %if.else15
  %alarm_irq_enable = getelementptr inbounds %struct.rtc_class_ops, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %alarm_irq_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alarm_irq_enable, align 4
  %tobool19.not = icmp eq ptr %7, null
  br i1 %tobool19.not, label %lor.lhs.false.if.end27_crit_edge, label %if.else21

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.else21:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call24 = tail call i32 %7(ptr noundef %9, i32 noundef %enabled) #8
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %lor.lhs.false.if.end27_crit_edge, %if.else15.if.end27_crit_edge, %if.else12.if.end27_crit_edge, %if.end9.if.end27_crit_edge
  %err.1 = phi i32 [ %call6, %if.end9.if.end27_crit_edge ], [ %call24, %if.else21 ], [ -19, %if.else12.if.end27_crit_edge ], [ -22, %lor.lhs.false.if.end27_crit_edge ], [ -22, %if.else15.if.end27_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  tail call fastcc void @trace_rtc_alarm_irq_enable(i32 noundef %enabled, i32 noundef %err.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %if.end27 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_alarm_irq_enable(i32 noundef %enabled, i32 noundef %err) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_alarm_irq_enable, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !257
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %enabled, i32 noundef %err) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !258
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !258
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_alarm_irq_enable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_alarm_irq_enable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 122, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
declare dso_local i32 @rtc_dev_update_irq_enable_emul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_handle_legacy_irq(ptr noundef %rtc, i32 noundef %num, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #8
  %irq_data = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 7
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_data, align 4
  %shl = shl i32 %num, 8
  %add = add i32 %1, %shl
  %or = or i32 %add, %mode
  %or5 = or i32 %or, 128
  store i32 %or5, ptr %irq_data, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #8
  %irq_queue = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %async_queue = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 10
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_aie_update_irq(ptr noundef %rtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #8
  %irq_data.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 7
  %0 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_data.i, align 4
  %add.i = add i32 %1, 256
  %or5.i = or i32 %add.i, 160
  store i32 %or5.i, ptr %irq_data.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #8
  %irq_queue.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %irq_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %async_queue.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 10
  tail call void @kill_fasync(ptr noundef %async_queue.i, i32 noundef 29, i32 noundef 1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_uie_update_irq(ptr noundef %rtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #8
  %irq_data.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 7
  %0 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_data.i, align 4
  %add.i = add i32 %1, 256
  %or5.i = or i32 %add.i, 144
  store i32 %or5.i, ptr %irq_data.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #8
  %irq_queue.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %irq_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %async_queue.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 10
  tail call void @kill_fasync(ptr noundef %async_queue.i, i32 noundef 29, i32 noundef 1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_pie_update_irq(ptr noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_freq = getelementptr i8, ptr %timer, i32 -116
  %0 = ptrtoint ptr %irq_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_freq, align 4
  %div = sdiv i32 1000000000, %1
  %conv = sext i32 %div to i64
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %5() #8
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef %conv) #8
  %conv1 = trunc i64 %call1.i to i32
  %irq_lock.i = getelementptr i8, ptr %timer, i32 -216
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #8
  %irq_data.i = getelementptr i8, ptr %timer, i32 -220
  %6 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_data.i, align 4
  %shl.i = shl i32 %conv1, 8
  %add.i = add i32 %7, %shl.i
  %or5.i = or i32 %add.i, 192
  store i32 %or5.i, ptr %irq_data.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #8
  %irq_queue.i = getelementptr i8, ptr %timer, i32 -172
  tail call void @__wake_up(ptr noundef %irq_queue.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %async_queue.i = getelementptr i8, ptr %timer, i32 -120
  tail call void @kill_fasync(ptr noundef %async_queue.i, i32 noundef 29, i32 noundef 1) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_update_irq(ptr noundef %rtc, i32 %num, i32 %events) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %rtc, null
  %cmp.i = icmp ugt ptr %rtc, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void @pm_stay_awake(ptr noundef %1) #8
  %irqwork = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %irqwork) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtc_class_open(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtc_class to i32))
  %0 = load ptr, ptr @rtc_class, align 4
  %call.i = tail call ptr @class_find_device(ptr noundef %0, ptr noundef null, ptr noundef %name, ptr noundef nonnull @device_match_name) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then2

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %entry
  %owner = getelementptr inbounds %struct.rtc_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 8
  %call3 = tail call zeroext i1 @try_module_get(ptr noundef %2) #8
  br i1 %call3, label %if.then2.if.end6_crit_edge, label %if.then4

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %call.i) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2.if.end6_crit_edge, %entry.if.end6_crit_edge
  %rtc.1 = phi ptr [ %call.i, %if.then2.if.end6_crit_edge ], [ null, %if.then4 ], [ null, %entry.if.end6_crit_edge ]
  ret ptr %rtc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_class_close(ptr noundef %rtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 8
  tail call void @module_put(ptr noundef %1) #8
  tail call void @put_device(ptr noundef %rtc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_irq_set_state(ptr noundef %rtc, i32 noundef %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pie_timer.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 16
  %call.i13 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %pie_timer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp.i14 = icmp slt i32 %call.i13, 0
  br i1 %cmp.i14, label %entry.do.end_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

if.end.i:                                         ; preds = %do.end.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not.i = icmp eq i32 %enabled, 0
  br i1 %tobool.not.i, label %if.end.i.while.end_crit_edge, label %if.then1.i

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_freq.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 11
  %0 = ptrtoint ptr %irq_freq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_freq.i, align 4
  %div.i = sdiv i32 1000000000, %1
  %conv.i = sext i32 %div.i to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %pie_timer.i, i64 noundef %conv.i, i64 noundef 0, i32 noundef 1) #8
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !259
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !260
  %call.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %pie_timer.i) #8
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.do.end_crit_edge, label %do.end.if.end.i_crit_edge

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.end:                                        ; preds = %if.then1.i, %if.end.i.while.end_crit_edge
  %pie_enabled = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 17
  %2 = ptrtoint ptr %pie_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %enabled, ptr %pie_enabled, align 8
  tail call fastcc void @trace_rtc_irq_set_state(i32 noundef %enabled)
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_irq_set_state(i32 noundef %enabled) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_irq_set_state, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_irq_set_state, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !261
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_irq_set_state, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %enabled, i32 noundef 0) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !262
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !262
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_irq_set_state, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rtc_irq_set_state.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_irq_set_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 100, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_irq_set_freq(ptr noundef %rtc, i32 noundef %freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %freq, -8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8192, i32 %0)
  %1 = icmp ult i32 %0, -8192
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_freq = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 11
  %2 = ptrtoint ptr %irq_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %freq, ptr %irq_freq, align 4
  %pie_enabled = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 17
  %3 = ptrtoint ptr %pie_enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pie_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not17 = icmp eq i32 %4, 0
  br i1 %tobool.not17, label %if.end.while.end_crit_edge, label %land.rhs.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %pie_timer.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 16
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %call.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %pie_timer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %rtc_update_hrtimer.exit

rtc_update_hrtimer.exit:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %irq_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_freq, align 4
  %div.i = sdiv i32 1000000000, %6
  %conv.i = sext i32 %div.i to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %pie_timer.i, i64 noundef %conv.i, i64 noundef 0, i32 noundef 1) #8
  br label %while.end

do.end:                                           ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !263
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !264
  %7 = ptrtoint ptr %pie_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pie_enabled, align 8
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %rtc_update_hrtimer.exit, %if.end.while.end_crit_edge
  tail call fastcc void @trace_rtc_irq_set_freq(i32 noundef %freq)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_irq_set_freq(i32 noundef %freq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_irq_set_freq, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_irq_set_freq, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !265
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_irq_set_freq, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %freq, i32 noundef 0) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !266
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !266
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !242

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_irq_set_freq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_rtc_irq_set_freq.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_irq_set_freq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 78, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_timer_do_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  %alarm = alloca %struct.rtc_wkalrm, align 4
  %tmp28 = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #8
  %0 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %add.ptr = getelementptr i8, ptr %work, i32 -1468
  %ops_lock = getelementptr i8, ptr %work, i32 -528
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %.fca.1.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 1
  %.fca.2.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 2
  %.fca.3.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 3
  %.fca.4.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 4
  %.fca.5.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 5
  %.fca.6.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 6
  %.fca.7.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 7
  %.fca.8.gep = getelementptr inbounds [9 x i32], ptr %tm, i32 0, i32 8
  %timerqueue = getelementptr i8, ptr %work, i32 -160
  %rb_leftmost.i = getelementptr i8, ptr %work, i32 -156
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  br label %again

again:                                            ; preds = %cleanup, %entry
  %call = call fastcc i32 @__rtc_read_time(ptr noundef %add.ptr, ptr noundef nonnull %tm)
  %1 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %tm, align 4
  %.fca.0.insert = insertvalue [9 x i32] poison, i32 %.fca.0.load, 0
  %2 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [9 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %3 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [9 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %4 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [9 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %5 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [9 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %6 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [9 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %7 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [9 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %8 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [9 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %9 = ptrtoint ptr %.fca.8.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %.fca.8.load = load i32, ptr %.fca.8.gep, align 4
  %.fca.8.insert = insertvalue [9 x i32] %.fca.7.insert, i32 %.fca.8.load, 8
  %call1 = call i64 @rtc_tm_to_ktime([9 x i32] %.fca.8.insert) #8
  %10 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not92 = icmp eq ptr %11, null
  br i1 %tobool.not92, label %again.if.else50_crit_edge, label %again.while.body_crit_edge

again.while.body_crit_edge:                       ; preds = %again
  br label %while.body

again.if.else50_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else50

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %again.while.body_crit_edge
  %12 = phi ptr [ %26, %if.end25.while.body_crit_edge ], [ %11, %again.while.body_crit_edge ]
  %expires = getelementptr inbounds %struct.timerqueue_node, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %expires, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %call1)
  %cmp = icmp sgt i64 %14, %call1
  br i1 %cmp, label %if.then27.critedge, label %if.end

if.end:                                           ; preds = %while.body
  %call7 = call zeroext i1 @timerqueue_del(ptr noundef %timerqueue, ptr noundef nonnull %12) #8
  call fastcc void @trace_rtc_timer_dequeue(ptr noundef nonnull %12)
  %enabled = getelementptr inbounds %struct.rtc_timer, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %enabled, align 8
  %func = getelementptr inbounds %struct.rtc_timer, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func, align 8
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rtc11 = getelementptr inbounds %struct.rtc_timer, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %rtc11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtc11, align 4
  call void %17(ptr noundef %19) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  call fastcc void @trace_rtc_timer_fired(ptr noundef nonnull %12)
  %period = getelementptr inbounds %struct.rtc_timer, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %period, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool14.not = icmp eq i64 %21, 0
  br i1 %tobool14.not, label %if.end12.if.end25_crit_edge, label %if.then15

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %expires, align 8
  %add = add i64 %23, %21
  store i64 %add, ptr %expires, align 8
  %24 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %enabled, align 8
  %call24 = call zeroext i1 @timerqueue_add(ptr noundef %timerqueue, ptr noundef nonnull %12) #8
  call fastcc void @trace_rtc_timer_enqueue(ptr noundef nonnull %12)
  br label %if.end25

if.end25:                                         ; preds = %if.then15, %if.end12.if.end25_crit_edge
  %25 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %if.end25.if.else50_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end25.if.else50_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else50

if.then27.critedge:                               ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alarm) #8
  %27 = call ptr @memset(ptr %alarm, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tmp28) #8
  %28 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %expires, align 8
  call void @rtc_ktime_to_tm(ptr nonnull sret(%struct.rtc_time) align 4 %tmp28, i64 noundef %29) #8
  %30 = call ptr @memcpy(ptr %time, ptr %tmp28, i32 36)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tmp28) #8
  %31 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %alarm, align 4
  %call31 = call fastcc i32 @__rtc_set_alarm(ptr noundef %add.ptr, ptr noundef nonnull %alarm)
  %32 = zext i32 %call31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call31, label %if.then35 [
    i32 -62, label %if.then27.critedge.cleanup_crit_edge
    i32 0, label %if.then27.critedge.cleanup.thread_crit_edge
  ]

if.then27.critedge.cleanup.thread_crit_edge:      ; preds = %if.then27.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then27.critedge.cleanup_crit_edge:             ; preds = %if.then27.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.then27.critedge
  %call31.1 = call fastcc i32 @__rtc_set_alarm(ptr noundef %add.ptr, ptr noundef nonnull %alarm)
  %33 = zext i32 %call31.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call31.1, label %if.then35.1 [
    i32 -62, label %if.then35.cleanup_crit_edge
    i32 0, label %if.then35.cleanup.thread_crit_edge
  ]

if.then35.cleanup.thread_crit_edge:               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35.1:                                      ; preds = %if.then35
  %call31.2 = call fastcc i32 @__rtc_set_alarm(ptr noundef %add.ptr, ptr noundef nonnull %alarm)
  %34 = zext i32 %call31.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call31.2, label %if.then35.2 [
    i32 -62, label %if.then35.1.cleanup_crit_edge
    i32 0, label %if.then35.1.cleanup.thread_crit_edge
  ]

if.then35.1.cleanup.thread_crit_edge:             ; preds = %if.then35.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then35.1.cleanup_crit_edge:                    ; preds = %if.then35.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35.2:                                      ; preds = %if.then35.1
  %call31.3 = call fastcc i32 @__rtc_set_alarm(ptr noundef %add.ptr, ptr noundef nonnull %alarm)
  %35 = zext i32 %call31.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call31.3, label %if.then35.3 [
    i32 -62, label %if.then35.2.cleanup_crit_edge
    i32 0, label %if.then35.2.cleanup.thread_crit_edge
  ]

if.then35.2.cleanup.thread_crit_edge:             ; preds = %if.then35.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then35.2.cleanup_crit_edge:                    ; preds = %if.then35.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35.3:                                      ; preds = %if.then35.2
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = call zeroext i1 @timerqueue_del(ptr noundef %timerqueue, ptr noundef nonnull %12) #8
  call fastcc void @trace_rtc_timer_dequeue(ptr noundef nonnull %12)
  %enabled45 = getelementptr inbounds %struct.rtc_timer, ptr %12, i32 0, i32 4
  %36 = ptrtoint ptr %enabled45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %enabled45, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.13, i32 noundef %call31.3) #11
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then35.2.cleanup.thread_crit_edge, %if.then35.1.cleanup.thread_crit_edge, %if.then35.cleanup.thread_crit_edge, %if.then27.critedge.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alarm) #8
  br label %if.end51

cleanup:                                          ; preds = %if.then35.3, %if.then35.2.cleanup_crit_edge, %if.then35.1.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then27.critedge.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alarm) #8
  br label %again

if.else50:                                        ; preds = %if.end25.if.else50_crit_edge, %again.if.else50_crit_edge
  %ops.i = getelementptr i8, ptr %work, i32 -532
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.else50.if.end51_crit_edge, label %lor.lhs.false.i

if.else50.if.end51_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

lor.lhs.false.i:                                  ; preds = %if.else50
  %features.i = getelementptr i8, ptr %work, i32 52
  %39 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %features.i, align 4
  %and1.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool1.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end51_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.end51_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %alarm_irq_enable.i = getelementptr inbounds %struct.rtc_class_ops, ptr %38, i32 0, i32 6
  %41 = ptrtoint ptr %alarm_irq_enable.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %alarm_irq_enable.i, align 4
  %tobool4.not.i = icmp eq ptr %42, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.if.end51_crit_edge, label %if.end.i

lor.lhs.false2.i.if.end51_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i = getelementptr i8, ptr %work, i32 -1332
  %43 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i, align 8
  %call7.i = call i32 %42(ptr noundef %44, i32 noundef 0) #8
  call fastcc void @trace_rtc_alarm_irq_enable(i32 noundef 0, i32 noundef 0) #8
  br label %if.end51

if.end51:                                         ; preds = %if.end.i, %lor.lhs.false2.i.if.end51_crit_edge, %lor.lhs.false.i.if.end51_crit_edge, %if.else50.if.end51_crit_edge, %cleanup.thread
  %parent = getelementptr i8, ptr %work, i32 -1332
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent, align 8
  call void @pm_relax(ptr noundef %46) #8
  call void @mutex_unlock(ptr noundef %ops_lock) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_timer_dequeue(ptr noundef %timer) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_timer_dequeue, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !267
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %timer) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !268
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !268
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_timer_dequeue.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_timer_dequeue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 194, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_timer_fired(ptr noundef %timer) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_fired, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_timer_fired, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !269
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_fired, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %timer) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !270
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !270
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_timer_fired, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_timer_fired.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_timer_fired.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 201, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
define internal fastcc i32 @__rtc_set_alarm(ptr noundef %rtc, ptr noundef %alarm) unnamed_addr #0 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #8
  %0 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %call = tail call i32 @rtc_valid_tm(ptr noundef %time) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #8
  %call3 = call fastcc i32 @__rtc_read_time(ptr noundef %rtc, ptr noundef nonnull %tm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %call7)
  %cmp.not = icmp sgt i64 %call2, %call7
  br i1 %cmp.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %offset_secs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 25
  %1 = ptrtoint ptr %offset_secs.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %offset_secs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not.i = icmp eq i64 %2, 0
  br i1 %tobool.not.i, label %if.end9.rtc_subtract_offset.exit_crit_edge, label %if.end.i

if.end9.rtc_subtract_offset.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_subtract_offset.exit

if.end.i:                                         ; preds = %if.end9
  %call.i = call i64 @rtc_tm_to_time64(ptr noundef %time) #8
  %range_min.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 22
  %3 = ptrtoint ptr %range_min.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %range_min.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %4)
  %cmp.not.i = icmp slt i64 %call.i, %4
  br i1 %cmp.not.i, label %if.end.i.if.end3.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %range_max.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 23
  %5 = ptrtoint ptr %range_max.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %range_max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %6)
  %cmp1.not.i = icmp ugt i64 %call.i, %6
  br i1 %cmp1.not.i, label %land.lhs.true.i.if.end3.i_crit_edge, label %land.lhs.true.i.rtc_subtract_offset.exit_crit_edge

land.lhs.true.i.rtc_subtract_offset.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtc_subtract_offset.exit

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %land.lhs.true.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %7 = ptrtoint ptr %offset_secs.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset_secs.i, align 8
  %sub.i = sub i64 %call.i, %8
  call void @rtc_time64_to_tm(i64 noundef %sub.i, ptr noundef %time) #8
  br label %rtc_subtract_offset.exit

rtc_subtract_offset.exit:                         ; preds = %if.end3.i, %land.lhs.true.i.rtc_subtract_offset.exit_crit_edge, %if.end9.rtc_subtract_offset.exit_crit_edge
  %ops = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 8
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %rtc_subtract_offset.exit.if.end20_crit_edge, label %if.else

rtc_subtract_offset.exit.if.end20_crit_edge:      ; preds = %rtc_subtract_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %rtc_subtract_offset.exit
  %features = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 21
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %features, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool14.not = icmp eq i32 %and1.i, 0
  br i1 %tobool14.not, label %if.else.if.end20_crit_edge, label %if.else16

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %set_alarm = getelementptr inbounds %struct.rtc_class_ops, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %set_alarm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_alarm, align 4
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %call18 = call i32 %14(ptr noundef %16, ptr noundef %alarm) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.else.if.end20_crit_edge, %rtc_subtract_offset.exit.if.end20_crit_edge
  %err.0 = phi i32 [ %call18, %if.else16 ], [ -19, %rtc_subtract_offset.exit.if.end20_crit_edge ], [ -22, %if.else.if.end20_crit_edge ]
  %call22 = call i64 @rtc_tm_to_time64(ptr noundef %time) #8
  call fastcc void @trace_rtc_set_alarm(i64 noundef %call22, i32 noundef %err.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end20 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -62, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtc_timer_init(ptr noundef %timer, ptr noundef %f, ptr noundef %rtc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %timer to i32
  %1 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %timer, align 8
  %enabled = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 4
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %enabled, align 8
  %func = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %f, ptr %func, align 8
  %rtc1 = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 3
  %4 = ptrtoint ptr %rtc1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rtc, ptr %rtc1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_timer_start(ptr noundef %rtc, ptr noundef %timer, i64 noundef %expires, i64 noundef %period) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtc_timer_remove(ptr noundef %rtc, ptr noundef %timer)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %expires1 = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %2 = ptrtoint ptr %expires1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %expires, ptr %expires1, align 8
  %period2 = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 1
  %3 = ptrtoint ptr %period2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %period, ptr %period2, align 8
  %call = tail call fastcc i32 @rtc_timer_enqueue(ptr noundef %rtc, ptr noundef %timer)
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_timer_cancel(ptr noundef %rtc, ptr noundef %timer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.rtc_timer, ptr %timer, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rtc_timer_remove(ptr noundef %rtc, ptr noundef %timer)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_read_offset(ptr noundef %rtc, ptr noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_offset = getelementptr inbounds %struct.rtc_class_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %read_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_offset, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %read_offset6 = getelementptr inbounds %struct.rtc_class_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %read_offset6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_offset6, align 4
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call = tail call i32 %7(ptr noundef %9, ptr noundef %offset) #8
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  tail call fastcc void @trace_rtc_read_offset(i32 noundef %11, i32 noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_read_offset(i32 noundef %offset, i32 noundef %err) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_offset, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_read_offset, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !271
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_offset, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %offset, i32 noundef %err) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !272
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !272
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_read_offset, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_read_offset.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_read_offset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 157, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
define dso_local i32 @rtc_set_offset(ptr noundef %rtc, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_offset = getelementptr inbounds %struct.rtc_class_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %set_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_offset, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %set_offset6 = getelementptr inbounds %struct.rtc_class_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %set_offset6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_offset6, align 4
  %parent = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call = tail call i32 %7(ptr noundef %9, i32 noundef %offset) #8
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  tail call fastcc void @trace_rtc_set_offset(i32 noundef %offset, i32 noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_set_offset(i32 noundef %offset, i32 noundef %err) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_offset, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_set_offset, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !273
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_offset, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %offset, i32 noundef %err) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !274
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !274
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_offset, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_set_offset.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_set_offset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 150, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_time_alarm_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %secs = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %secs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %secs, align 8
  %err = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, i64 noundef %3, i32 noundef %5) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
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
define internal i32 @trace_raw_output_rtc_irq_set_freq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %freq = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  %err = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, i32 noundef %3, i32 noundef %5) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_irq_set_state(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %enabled = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %err = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond, i32 noundef %5) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_alarm_irq_enable(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %enabled = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %err = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond, i32 noundef %5) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_offset_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %offset = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %err = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, i32 noundef %3, i32 noundef %5) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_timer_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %timer = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %expires = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %expires, align 8
  %period = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %period, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.37, ptr noundef %3, i64 noundef %5, i64 noundef %7) #8
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
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
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @timerqueue_iterate_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_set_alarm(i64 noundef %secs, i32 noundef %err) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_alarm, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rtc_set_alarm, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !242

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !275
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_alarm, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i64 noundef %secs, i32 noundef %err) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !276
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !276
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !242

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !232) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !248
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rtc_set_alarm, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rtc_set_alarm.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rtc_set_alarm.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.41, i32 noundef 50, ptr noundef nonnull @.str.42) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !249
  %38 = tail call i32 @llvm.read_register.i32(metadata !232) #8
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !97, !99, !100, !101, !102, !103, !104, !106, !107, !109, !110, !112, !113, !114, !115, !116, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205, !206, !207, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!llvm.named.register.sp = !{!232}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @__tracepoint_rtc_set_time, !1, !"__tracepoint_rtc_set_time", i1 false, i1 false}
!1 = !{!"../include/trace/events/rtc.h", i32 31, i32 1}
!2 = !{ptr @__tracepoint_ptr_rtc_set_time, !1, !"__tracepoint_ptr_rtc_set_time", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_rtc_set_time, !1, !"__SCK__tp_func_rtc_set_time", i1 false, i1 false}
!4 = !{ptr @__tracepoint_rtc_read_time, !5, !"__tracepoint_rtc_read_time", i1 false, i1 false}
!5 = !{!"../include/trace/events/rtc.h", i32 38, i32 1}
!6 = !{ptr @__tracepoint_ptr_rtc_read_time, !5, !"__tracepoint_ptr_rtc_read_time", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_rtc_read_time, !5, !"__SCK__tp_func_rtc_read_time", i1 false, i1 false}
!8 = !{ptr @__tracepoint_rtc_set_alarm, !9, !"__tracepoint_rtc_set_alarm", i1 false, i1 false}
!9 = !{!"../include/trace/events/rtc.h", i32 45, i32 1}
!10 = !{ptr @__tracepoint_ptr_rtc_set_alarm, !9, !"__tracepoint_ptr_rtc_set_alarm", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_rtc_set_alarm, !9, !"__SCK__tp_func_rtc_set_alarm", i1 false, i1 false}
!12 = !{ptr @__tracepoint_rtc_read_alarm, !13, !"__tracepoint_rtc_read_alarm", i1 false, i1 false}
!13 = !{!"../include/trace/events/rtc.h", i32 52, i32 1}
!14 = !{ptr @__tracepoint_ptr_rtc_read_alarm, !13, !"__tracepoint_ptr_rtc_read_alarm", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_rtc_read_alarm, !13, !"__SCK__tp_func_rtc_read_alarm", i1 false, i1 false}
!16 = !{ptr @__tracepoint_rtc_irq_set_freq, !17, !"__tracepoint_rtc_irq_set_freq", i1 false, i1 false}
!17 = !{!"../include/trace/events/rtc.h", i32 59, i32 1}
!18 = !{ptr @__tracepoint_ptr_rtc_irq_set_freq, !17, !"__tracepoint_ptr_rtc_irq_set_freq", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_rtc_irq_set_freq, !17, !"__SCK__tp_func_rtc_irq_set_freq", i1 false, i1 false}
!20 = !{ptr @__tracepoint_rtc_irq_set_state, !21, !"__tracepoint_rtc_irq_set_state", i1 false, i1 false}
!21 = !{!"../include/trace/events/rtc.h", i32 80, i32 1}
!22 = !{ptr @__tracepoint_ptr_rtc_irq_set_state, !21, !"__tracepoint_ptr_rtc_irq_set_state", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_rtc_irq_set_state, !21, !"__SCK__tp_func_rtc_irq_set_state", i1 false, i1 false}
!24 = !{ptr @__tracepoint_rtc_alarm_irq_enable, !25, !"__tracepoint_rtc_alarm_irq_enable", i1 false, i1 false}
!25 = !{!"../include/trace/events/rtc.h", i32 102, i32 1}
!26 = !{ptr @__tracepoint_ptr_rtc_alarm_irq_enable, !25, !"__tracepoint_ptr_rtc_alarm_irq_enable", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_rtc_alarm_irq_enable, !25, !"__SCK__tp_func_rtc_alarm_irq_enable", i1 false, i1 false}
!28 = !{ptr @__tracepoint_rtc_set_offset, !29, !"__tracepoint_rtc_set_offset", i1 false, i1 false}
!29 = !{!"../include/trace/events/rtc.h", i32 145, i32 1}
!30 = !{ptr @__tracepoint_ptr_rtc_set_offset, !29, !"__tracepoint_ptr_rtc_set_offset", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_rtc_set_offset, !29, !"__SCK__tp_func_rtc_set_offset", i1 false, i1 false}
!32 = !{ptr @__tracepoint_rtc_read_offset, !33, !"__tracepoint_rtc_read_offset", i1 false, i1 false}
!33 = !{!"../include/trace/events/rtc.h", i32 152, i32 1}
!34 = !{ptr @__tracepoint_ptr_rtc_read_offset, !33, !"__tracepoint_ptr_rtc_read_offset", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_rtc_read_offset, !33, !"__SCK__tp_func_rtc_read_offset", i1 false, i1 false}
!36 = !{ptr @__tracepoint_rtc_timer_enqueue, !37, !"__tracepoint_rtc_timer_enqueue", i1 false, i1 false}
!37 = !{!"../include/trace/events/rtc.h", i32 182, i32 1}
!38 = !{ptr @__tracepoint_ptr_rtc_timer_enqueue, !37, !"__tracepoint_ptr_rtc_timer_enqueue", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_rtc_timer_enqueue, !37, !"__SCK__tp_func_rtc_timer_enqueue", i1 false, i1 false}
!40 = !{ptr @__tracepoint_rtc_timer_dequeue, !41, !"__tracepoint_rtc_timer_dequeue", i1 false, i1 false}
!41 = !{!"../include/trace/events/rtc.h", i32 189, i32 1}
!42 = !{ptr @__tracepoint_ptr_rtc_timer_dequeue, !41, !"__tracepoint_ptr_rtc_timer_dequeue", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_rtc_timer_dequeue, !41, !"__SCK__tp_func_rtc_timer_dequeue", i1 false, i1 false}
!44 = !{ptr @__tracepoint_rtc_timer_fired, !45, !"__tracepoint_rtc_timer_fired", i1 false, i1 false}
!45 = !{!"../include/trace/events/rtc.h", i32 196, i32 1}
!46 = !{ptr @__tracepoint_ptr_rtc_timer_fired, !45, !"__tracepoint_ptr_rtc_timer_fired", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_rtc_timer_fired, !45, !"__SCK__tp_func_rtc_timer_fired", i1 false, i1 false}
!48 = !{ptr @event_class_rtc_time_alarm_class, !49, !"event_class_rtc_time_alarm_class", i1 false, i1 false}
!49 = !{!"../include/trace/events/rtc.h", i32 10, i32 1}
!50 = !{ptr @event_rtc_set_time, !1, !"event_rtc_set_time", i1 false, i1 false}
!51 = !{ptr @__event_rtc_set_time, !1, !"__event_rtc_set_time", i1 false, i1 false}
!52 = !{ptr @event_rtc_read_time, !5, !"event_rtc_read_time", i1 false, i1 false}
!53 = !{ptr @__event_rtc_read_time, !5, !"__event_rtc_read_time", i1 false, i1 false}
!54 = !{ptr @event_rtc_set_alarm, !9, !"event_rtc_set_alarm", i1 false, i1 false}
!55 = !{ptr @__event_rtc_set_alarm, !9, !"__event_rtc_set_alarm", i1 false, i1 false}
!56 = !{ptr @event_rtc_read_alarm, !13, !"event_rtc_read_alarm", i1 false, i1 false}
!57 = !{ptr @__event_rtc_read_alarm, !13, !"__event_rtc_read_alarm", i1 false, i1 false}
!58 = !{ptr @event_class_rtc_irq_set_freq, !17, !"event_class_rtc_irq_set_freq", i1 false, i1 false}
!59 = !{ptr @event_rtc_irq_set_freq, !17, !"event_rtc_irq_set_freq", i1 false, i1 false}
!60 = !{ptr @__event_rtc_irq_set_freq, !17, !"__event_rtc_irq_set_freq", i1 false, i1 false}
!61 = !{ptr @event_class_rtc_irq_set_state, !21, !"event_class_rtc_irq_set_state", i1 false, i1 false}
!62 = !{ptr @event_rtc_irq_set_state, !21, !"event_rtc_irq_set_state", i1 false, i1 false}
!63 = !{ptr @__event_rtc_irq_set_state, !21, !"__event_rtc_irq_set_state", i1 false, i1 false}
!64 = !{ptr @event_class_rtc_alarm_irq_enable, !25, !"event_class_rtc_alarm_irq_enable", i1 false, i1 false}
!65 = !{ptr @event_rtc_alarm_irq_enable, !25, !"event_rtc_alarm_irq_enable", i1 false, i1 false}
!66 = !{ptr @__event_rtc_alarm_irq_enable, !25, !"__event_rtc_alarm_irq_enable", i1 false, i1 false}
!67 = !{ptr @event_class_rtc_offset_class, !68, !"event_class_rtc_offset_class", i1 false, i1 false}
!68 = !{!"../include/trace/events/rtc.h", i32 124, i32 1}
!69 = !{ptr @event_rtc_set_offset, !29, !"event_rtc_set_offset", i1 false, i1 false}
!70 = !{ptr @__event_rtc_set_offset, !29, !"__event_rtc_set_offset", i1 false, i1 false}
!71 = !{ptr @event_rtc_read_offset, !33, !"event_rtc_read_offset", i1 false, i1 false}
!72 = !{ptr @__event_rtc_read_offset, !33, !"__event_rtc_read_offset", i1 false, i1 false}
!73 = !{ptr @event_class_rtc_timer_class, !74, !"event_class_rtc_timer_class", i1 false, i1 false}
!74 = !{!"../include/trace/events/rtc.h", i32 159, i32 1}
!75 = !{ptr @event_rtc_timer_enqueue, !37, !"event_rtc_timer_enqueue", i1 false, i1 false}
!76 = !{ptr @__event_rtc_timer_enqueue, !37, !"__event_rtc_timer_enqueue", i1 false, i1 false}
!77 = !{ptr @event_rtc_timer_dequeue, !41, !"event_rtc_timer_dequeue", i1 false, i1 false}
!78 = !{ptr @__event_rtc_timer_dequeue, !41, !"__event_rtc_timer_dequeue", i1 false, i1 false}
!79 = !{ptr @event_rtc_timer_fired, !45, !"event_rtc_timer_fired", i1 false, i1 false}
!80 = !{ptr @__event_rtc_timer_fired, !45, !"__event_rtc_timer_fired", i1 false, i1 false}
!81 = !{ptr @__bpf_trace_tp_map_rtc_set_time, !1, !"__bpf_trace_tp_map_rtc_set_time", i1 false, i1 false}
!82 = !{ptr @__bpf_trace_tp_map_rtc_read_time, !5, !"__bpf_trace_tp_map_rtc_read_time", i1 false, i1 false}
!83 = !{ptr @__bpf_trace_tp_map_rtc_set_alarm, !9, !"__bpf_trace_tp_map_rtc_set_alarm", i1 false, i1 false}
!84 = !{ptr @__bpf_trace_tp_map_rtc_read_alarm, !13, !"__bpf_trace_tp_map_rtc_read_alarm", i1 false, i1 false}
!85 = !{ptr @__bpf_trace_tp_map_rtc_irq_set_freq, !17, !"__bpf_trace_tp_map_rtc_irq_set_freq", i1 false, i1 false}
!86 = !{ptr @__bpf_trace_tp_map_rtc_irq_set_state, !21, !"__bpf_trace_tp_map_rtc_irq_set_state", i1 false, i1 false}
!87 = !{ptr @__bpf_trace_tp_map_rtc_alarm_irq_enable, !25, !"__bpf_trace_tp_map_rtc_alarm_irq_enable", i1 false, i1 false}
!88 = !{ptr @__bpf_trace_tp_map_rtc_set_offset, !29, !"__bpf_trace_tp_map_rtc_set_offset", i1 false, i1 false}
!89 = !{ptr @__bpf_trace_tp_map_rtc_read_offset, !33, !"__bpf_trace_tp_map_rtc_read_offset", i1 false, i1 false}
!90 = !{ptr @__bpf_trace_tp_map_rtc_timer_enqueue, !37, !"__bpf_trace_tp_map_rtc_timer_enqueue", i1 false, i1 false}
!91 = !{ptr @__bpf_trace_tp_map_rtc_timer_dequeue, !41, !"__bpf_trace_tp_map_rtc_timer_dequeue", i1 false, i1 false}
!92 = !{ptr @__bpf_trace_tp_map_rtc_timer_fired, !45, !"__bpf_trace_tp_map_rtc_timer_fired", i1 false, i1 false}
!93 = !{ptr @__ksymtab_rtc_read_time, !94, !"__ksymtab_rtc_read_time", i1 false, i1 false}
!94 = !{!"../drivers/rtc/interface.c", i32 124, i32 1}
!95 = !{ptr @__ksymtab_rtc_set_time, !96, !"__ksymtab_rtc_set_time", i1 false, i1 false}
!96 = !{!"../drivers/rtc/interface.c", i32 176, i32 1}
!97 = !{ptr @.str, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/rtc/interface.c", i32 339, i32 3}
!99 = !{ptr @.str.1, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.2, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.3, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__rtc_read_alarm.__UNIQUE_ID_ddebug315, !98, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!103 = !{ptr @.str.4, !98, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @__rtc_read_alarm.__UNIQUE_ID_ddebug316, !105, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!105 = !{!"../drivers/rtc/interface.c", i32 350, i32 3}
!106 = !{ptr @.str.5, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @__rtc_read_alarm.__UNIQUE_ID_ddebug317, !108, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!108 = !{!"../drivers/rtc/interface.c", i32 365, i32 3}
!109 = !{ptr @.str.6, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.7, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/rtc/interface.c", i32 373, i32 3}
!112 = !{ptr @.str.8, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.9, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__rtc_read_alarm._entry, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @__rtc_read_alarm._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.11, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/rtc/interface.c", i32 380, i32 3}
!118 = !{ptr @__rtc_read_alarm._entry.10, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @__rtc_read_alarm._entry_ptr.12, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @__ksymtab_rtc_read_alarm, !121, !"__ksymtab_rtc_read_alarm", i1 false, i1 false}
!121 = !{!"../drivers/rtc/interface.c", i32 407, i32 1}
!122 = !{ptr @__ksymtab_rtc_set_alarm, !123, !"__ksymtab_rtc_set_alarm", i1 false, i1 false}
!123 = !{!"../drivers/rtc/interface.c", i32 490, i32 1}
!124 = !{ptr @__ksymtab_rtc_initialize_alarm, !125, !"__ksymtab_rtc_initialize_alarm", i1 false, i1 false}
!125 = !{!"../drivers/rtc/interface.c", i32 523, i32 1}
!126 = !{ptr @__ksymtab_rtc_alarm_irq_enable, !127, !"__ksymtab_rtc_alarm_irq_enable", i1 false, i1 false}
!127 = !{!"../drivers/rtc/interface.c", i32 554, i32 1}
!128 = !{ptr @__ksymtab_rtc_update_irq_enable, !129, !"__ksymtab_rtc_update_irq_enable", i1 false, i1 false}
!129 = !{!"../drivers/rtc/interface.c", i32 605, i32 1}
!130 = !{ptr @__ksymtab_rtc_update_irq, !131, !"__ksymtab_rtc_update_irq", i1 false, i1 false}
!131 = !{!"../drivers/rtc/interface.c", i32 692, i32 1}
!132 = !{ptr @__ksymtab_rtc_class_open, !133, !"__ksymtab_rtc_class_open", i1 false, i1 false}
!133 = !{!"../drivers/rtc/interface.c", i32 712, i32 1}
!134 = !{ptr @__ksymtab_rtc_class_close, !135, !"__ksymtab_rtc_class_close", i1 false, i1 false}
!135 = !{!"../drivers/rtc/interface.c", i32 719, i32 1}
!136 = !{ptr @.str.13, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/rtc/interface.c", i32 954, i32 4}
!138 = !{ptr @.str.14, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.15, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @rtc_timer_do_work._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @rtc_timer_do_work._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @__tpstrtab_rtc_set_time, !1, !"__tpstrtab_rtc_set_time", i1 false, i1 false}
!143 = !{ptr @__tpstrtab_rtc_read_time, !5, !"__tpstrtab_rtc_read_time", i1 false, i1 false}
!144 = !{ptr @__tpstrtab_rtc_set_alarm, !9, !"__tpstrtab_rtc_set_alarm", i1 false, i1 false}
!145 = !{ptr @__tpstrtab_rtc_read_alarm, !13, !"__tpstrtab_rtc_read_alarm", i1 false, i1 false}
!146 = !{ptr @__tpstrtab_rtc_irq_set_freq, !17, !"__tpstrtab_rtc_irq_set_freq", i1 false, i1 false}
!147 = !{ptr @__tpstrtab_rtc_irq_set_state, !21, !"__tpstrtab_rtc_irq_set_state", i1 false, i1 false}
!148 = !{ptr @__tpstrtab_rtc_alarm_irq_enable, !25, !"__tpstrtab_rtc_alarm_irq_enable", i1 false, i1 false}
!149 = !{ptr @__tpstrtab_rtc_set_offset, !29, !"__tpstrtab_rtc_set_offset", i1 false, i1 false}
!150 = !{ptr @__tpstrtab_rtc_read_offset, !33, !"__tpstrtab_rtc_read_offset", i1 false, i1 false}
!151 = !{ptr @__tpstrtab_rtc_timer_enqueue, !37, !"__tpstrtab_rtc_timer_enqueue", i1 false, i1 false}
!152 = !{ptr @__tpstrtab_rtc_timer_dequeue, !41, !"__tpstrtab_rtc_timer_dequeue", i1 false, i1 false}
!153 = !{ptr @__tpstrtab_rtc_timer_fired, !45, !"__tpstrtab_rtc_timer_fired", i1 false, i1 false}
!154 = !{ptr @str__rtc__trace_system_name, !155, !"str__rtc__trace_system_name", i1 false, i1 false}
!155 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!156 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @trace_event_fields_rtc_time_alarm_class, !49, !"trace_event_fields_rtc_time_alarm_class", i1 false, i1 false}
!161 = !{ptr @trace_event_type_funcs_rtc_time_alarm_class, !49, !"trace_event_type_funcs_rtc_time_alarm_class", i1 false, i1 false}
!162 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @print_fmt_rtc_time_alarm_class, !49, !"print_fmt_rtc_time_alarm_class", i1 false, i1 false}
!164 = !{ptr @.str.21, !17, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @trace_event_fields_rtc_irq_set_freq, !17, !"trace_event_fields_rtc_irq_set_freq", i1 false, i1 false}
!166 = !{ptr @trace_event_type_funcs_rtc_irq_set_freq, !17, !"trace_event_type_funcs_rtc_irq_set_freq", i1 false, i1 false}
!167 = !{ptr @.str.22, !17, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @print_fmt_rtc_irq_set_freq, !17, !"print_fmt_rtc_irq_set_freq", i1 false, i1 false}
!169 = !{ptr @.str.23, !21, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @trace_event_fields_rtc_irq_set_state, !21, !"trace_event_fields_rtc_irq_set_state", i1 false, i1 false}
!171 = !{ptr @trace_event_type_funcs_rtc_irq_set_state, !21, !"trace_event_type_funcs_rtc_irq_set_state", i1 false, i1 false}
!172 = !{ptr @.str.24, !21, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.25, !21, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.26, !21, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @print_fmt_rtc_irq_set_state, !21, !"print_fmt_rtc_irq_set_state", i1 false, i1 false}
!176 = !{ptr @.str.27, !25, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @trace_event_fields_rtc_alarm_irq_enable, !25, !"trace_event_fields_rtc_alarm_irq_enable", i1 false, i1 false}
!178 = !{ptr @trace_event_type_funcs_rtc_alarm_irq_enable, !25, !"trace_event_type_funcs_rtc_alarm_irq_enable", i1 false, i1 false}
!179 = !{ptr @.str.28, !25, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @print_fmt_rtc_alarm_irq_enable, !25, !"print_fmt_rtc_alarm_irq_enable", i1 false, i1 false}
!181 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @trace_event_fields_rtc_offset_class, !68, !"trace_event_fields_rtc_offset_class", i1 false, i1 false}
!184 = !{ptr @trace_event_type_funcs_rtc_offset_class, !68, !"trace_event_type_funcs_rtc_offset_class", i1 false, i1 false}
!185 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @print_fmt_rtc_offset_class, !68, !"print_fmt_rtc_offset_class", i1 false, i1 false}
!187 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @trace_event_fields_rtc_timer_class, !74, !"trace_event_fields_rtc_timer_class", i1 false, i1 false}
!193 = !{ptr @trace_event_type_funcs_rtc_timer_class, !74, !"trace_event_type_funcs_rtc_timer_class", i1 false, i1 false}
!194 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @print_fmt_rtc_timer_class, !74, !"print_fmt_rtc_timer_class", i1 false, i1 false}
!196 = !{ptr @.str.38, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/rtc/interface.c", i32 96, i32 4}
!198 = !{ptr @.str.39, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @__rtc_read_time.__UNIQUE_ID_ddebug313, !197, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!200 = !{ptr @.str.40, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/rtc/interface.c", i32 105, i32 4}
!202 = !{ptr @__rtc_read_time.__UNIQUE_ID_ddebug314, !201, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!203 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!204 = !{ptr @.str.41, !5, !"<string literal>", i1 false, i1 false}
!205 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!206 = !{ptr @.str.42, !5, !"<string literal>", i1 false, i1 false}
!207 = distinct !{null, !208, !"__already_done", i1 false, i1 false}
!208 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!209 = !{ptr @.str.43, !208, !"<string literal>", i1 false, i1 false}
!210 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!211 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!212 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!213 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!214 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!215 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!216 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!217 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!218 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!219 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!220 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!221 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!222 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!223 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!224 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!225 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!226 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!227 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!228 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!229 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!230 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!231 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!232 = !{!"sp"}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{!"branch_weights", i32 2000, i32 1}
!243 = !{!"branch_weights", i32 1, i32 2000}
!244 = !{!"auto-init"}
!245 = !{i64 2148751266, i64 2148751271, i64 2148751284, i64 2148751328, i64 2148751362, i64 2148751383}
!246 = !{i64 2153898650}
!247 = !{i64 2153898857}
!248 = !{i64 2149332332}
!249 = !{i64 2149333368}
!250 = !{i8 0, i8 2}
!251 = !{i64 2153882760}
!252 = !{i64 2153882965}
!253 = !{i64 2153934637}
!254 = !{i64 2153934846}
!255 = !{i64 2154036229}
!256 = !{i64 2154036436}
!257 = !{i64 2153987562}
!258 = !{i64 2153987789}
!259 = !{i64 2155710635}
!260 = !{i64 2155710477}
!261 = !{i64 2153966927}
!262 = !{i64 2153967148}
!263 = !{i64 2155710918}
!264 = !{i64 2155710760}
!265 = !{i64 2153950679}
!266 = !{i64 2153950892}
!267 = !{i64 2154056553}
!268 = !{i64 2154056760}
!269 = !{i64 2154072740}
!270 = !{i64 2154072943}
!271 = !{i64 2154020032}
!272 = !{i64 2154020247}
!273 = !{i64 2154003953}
!274 = !{i64 2154004166}
!275 = !{i64 2153918655}
!276 = !{i64 2153918862}
