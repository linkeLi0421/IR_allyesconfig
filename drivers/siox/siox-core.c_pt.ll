; ModuleID = '/llk/IR_all_yes/drivers/siox/siox-core.c_pt.bc'
source_filename = "../drivers/siox/siox-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+siox_device_synced\22, \22a\22\09"
module asm "\09.weak\09__crc_siox_device_synced\09\09\09\09"
module asm "\09.long\09__crc_siox_device_synced\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siox_device_synced:\09\09\09\09\09"
module asm "\09.asciz \09\22siox_device_synced\22\09\09\09\09\09"
module asm "__kstrtabns_siox_device_synced:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+siox_device_connected\22, \22a\22\09"
module asm "\09.weak\09__crc_siox_device_connected\09\09\09\09"
module asm "\09.long\09__crc_siox_device_connected\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siox_device_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22siox_device_connected\22\09\09\09\09\09"
module asm "__kstrtabns_siox_device_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+siox_master_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_siox_master_alloc\09\09\09\09"
module asm "\09.long\09__crc_siox_master_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siox_master_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22siox_master_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_siox_master_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+siox_master_register\22, \22a\22\09"
module asm "\09.weak\09__crc_siox_master_register\09\09\09\09"
module asm "\09.long\09__crc_siox_master_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siox_master_register:\09\09\09\09\09"
module asm "\09.asciz \09\22siox_master_register\22\09\09\09\09\09"
module asm "__kstrtabns_siox_master_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+siox_master_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_siox_master_unregister\09\09\09\09"
module asm "\09.long\09__crc_siox_master_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siox_master_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22siox_master_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_siox_master_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__siox_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc___siox_driver_register\09\09\09\09"
module asm "\09.long\09__crc___siox_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___siox_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__siox_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___siox_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.97, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.siox_device = type { %struct.list_head, ptr, %struct.device, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.trace_event_raw_siox_set_data = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.siox_master = type { i32, ptr, i32, %struct.mutex, i8, ptr, %struct.device, i32, %struct.list_head, i32, i32, i32, ptr, i8, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_siox_get_data = type { %struct.trace_entry, i32, i32, i8, i32, i32, [0 x i8] }
%struct.siox_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.25, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.25 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_siox_set_data = internal constant [14 x i8] c"siox_set_data\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_siox_set_data = dso_local global %struct.static_call_key { ptr @__traceiter_siox_set_data }, align 4
@__tracepoint_siox_set_data = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_siox_set_data, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_siox_set_data, ptr null, ptr @__traceiter_siox_set_data, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_siox_set_data = internal constant ptr @__tracepoint_siox_set_data, section "__tracepoints_ptrs", align 4
@__tpstrtab_siox_get_data = internal constant [14 x i8] c"siox_get_data\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_siox_get_data = dso_local global %struct.static_call_key { ptr @__traceiter_siox_get_data }, align 4
@__tracepoint_siox_get_data = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_siox_get_data, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_siox_get_data, ptr null, ptr @__traceiter_siox_get_data, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_siox_get_data = internal constant ptr @__tracepoint_siox_get_data, section "__tracepoints_ptrs", align 4
@str__siox__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"siox\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_siox_set_data = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.95 { %struct.anon.96 { ptr @.str.9, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_siox_set_data = internal global %struct.trace_event_class { ptr @str__siox__trace_system_name, ptr @trace_event_raw_event_siox_set_data, ptr @perf_trace_siox_set_data, ptr @trace_event_reg, ptr @trace_event_fields_siox_set_data, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_siox_set_data, i64 24), ptr getelementptr (i8, ptr @event_class_siox_set_data, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_siox_set_data = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_siox_set_data, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_siox_set_data = internal global { [90 x i8], [38 x i8] } { [90 x i8] c"\22siox-%d-%u [%*phD]\22, REC->busno, REC->devno, (int)REC->inbytes, __get_dynamic_array(buf)\00", [38 x i8] zeroinitializer }, align 32
@event_siox_set_data = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_siox_set_data, %union.anon.97 { ptr @__tracepoint_siox_set_data }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_siox_set_data }, ptr @print_fmt_siox_set_data, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_siox_set_data = internal global ptr @event_siox_set_data, section "_ftrace_events", align 4
@trace_event_fields_siox_get_data = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.95 { %struct.anon.96 { ptr @.str.9, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.95 { %struct.anon.96 { ptr @.str.18, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.95 { %struct.anon.96 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_siox_get_data = internal global %struct.trace_event_class { ptr @str__siox__trace_system_name, ptr @trace_event_raw_event_siox_get_data, ptr @perf_trace_siox_get_data, ptr @trace_event_reg, ptr @trace_event_fields_siox_get_data, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_siox_get_data, i64 24), ptr getelementptr (i8, ptr @event_class_siox_get_data, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_siox_get_data = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_siox_get_data, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_siox_get_data = internal global { [119 x i8], [41 x i8] } { [119 x i8] c"\22siox-%d-%u (%02hhx) [%*phD]\22, REC->busno, REC->devno, REC->status_clean, (int)REC->outbytes, __get_dynamic_array(buf)\00", [41 x i8] zeroinitializer }, align 32
@event_siox_get_data = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_siox_get_data, %union.anon.97 { ptr @__tracepoint_siox_get_data }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_siox_get_data }, ptr @print_fmt_siox_get_data, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_siox_get_data = internal global ptr @event_siox_get_data, section "_ftrace_events", align 4
@__bpf_trace_tp_map_siox_set_data = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_siox_set_data, ptr @__bpf_trace_siox_set_data, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_siox_get_data = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_siox_get_data, ptr @__bpf_trace_siox_get_data, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab_siox_device_synced = external dso_local constant [0 x i8], align 1
@__kstrtabns_siox_device_synced = external dso_local constant [0 x i8], align 1
@__ksymtab_siox_device_synced = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siox_device_synced to i32), ptr @__kstrtab_siox_device_synced, ptr @__kstrtabns_siox_device_synced }, section "___ksymtab_gpl+siox_device_synced", align 4
@__kstrtab_siox_device_connected = external dso_local constant [0 x i8], align 1
@__kstrtabns_siox_device_connected = external dso_local constant [0 x i8], align 1
@__ksymtab_siox_device_connected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siox_device_connected to i32), ptr @__kstrtab_siox_device_connected, ptr @__kstrtabns_siox_device_connected }, section "___ksymtab_gpl+siox_device_connected", align 4
@siox_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @siox_match, ptr null, ptr @siox_probe, ptr null, ptr @siox_remove, ptr @siox_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@siox_master_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @siox_master_groups, ptr null, ptr null, ptr @siox_master_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_siox_master_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_siox_master_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_siox_master_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siox_master_alloc to i32), ptr @__kstrtab_siox_master_alloc, ptr @__kstrtabns_siox_master_alloc }, section "___ksymtab_gpl+siox_master_alloc", align 4
@siox_is_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"siox-%d\00", [24 x i8] zeroinitializer }, align 32
@siox_master_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&smaster->lock\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_siox_master_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_siox_master_register = external dso_local constant [0 x i8], align 1
@__ksymtab_siox_master_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siox_master_register to i32), ptr @__kstrtab_siox_master_register, ptr @__kstrtabns_siox_master_register }, section "___ksymtab_gpl+siox_master_register", align 4
@__kstrtab_siox_master_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_siox_master_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_siox_master_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siox_master_unregister to i32), ptr @__kstrtab_siox_master_unregister, ptr @__kstrtabns_siox_master_unregister }, section "___ksymtab_gpl+siox_master_unregister", align 4
@__siox_driver_register._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 892, ptr null, ptr null }, align 1
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Driver %s doesn't provide needed callbacks\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__siox_driver_register\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/siox/siox-core.c\00", [39 x i8] zeroinitializer }, align 32
@__siox_driver_register._entry_ptr = internal global ptr @__siox_driver_register._entry, section ".printk_index", align 4
@__siox_driver_register._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 902, ptr null, ptr null }, align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Failed to register siox driver %s (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@__siox_driver_register._entry_ptr.7 = internal global ptr @__siox_driver_register._entry.5, section ".printk_index", align 4
@__kstrtab___siox_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___siox_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___siox_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__siox_driver_register to i32), ptr @__kstrtab___siox_driver_register, ptr @__kstrtabns___siox_driver_register }, section "___ksymtab_gpl+__siox_driver_register", align 4
@__initcall__kmod_siox_core__265_922_siox_init4 = internal global ptr @siox_init, section ".initcall4.init", align 4
@__exitcall_siox_exit = internal global ptr @siox_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author266 = internal constant [68 x i8] c"siox_core.author=Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [49 x i8] c"siox_core.description=Eckelmann SIOX driver core\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [38 x i8] c"siox_core.file=drivers/siox/siox-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [25 x i8] c"siox_core.license=GPL v2\00", section ".modinfo", align 1
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"busno\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"devno\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inbytes\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__data_loc u8[]\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"siox-%d-%u [%*phD]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"status_clean\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"outbytes\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"siox-%d-%u (%02hhx) [%*phD]\0A\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"siox\00", [27 x i8] zeroinitializer }, align 32
@siox_device_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @siox_device_groups, ptr null, ptr null, ptr @siox_device_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@siox_device_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @siox_device_group, ptr null], [24 x i8] zeroinitializer }, align 32
@siox_device_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @siox_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@siox_device_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_type, ptr @dev_attr_inbytes, ptr @dev_attr_outbytes, ptr @dev_attr_status_errors, ptr @dev_attr_connected, ptr @dev_attr_watchdog, ptr @dev_attr_watchdog_errors, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inbytes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inbytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_outbytes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @outbytes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_status_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @status_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_connected = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @connected_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_watchdog = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @watchdog_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_watchdog_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @watchdog_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%zu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"status_errors\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connected\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"watchdog_errors\00", [16 x i8] zeroinitializer }, align 32
@siox_master_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @siox_master_group, ptr null], [24 x i8] zeroinitializer }, align 32
@siox_master_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @siox_master_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@siox_master_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_active, ptr @dev_attr_device_add, ptr @dev_attr_device_remove, ptr @dev_attr_poll_interval_ns, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_active = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_show, ptr @active_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_add = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @device_add_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_remove = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @device_remove_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_poll_interval_ns = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @poll_interval_ns_show, ptr @poll_interval_ns_store }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"device_add\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%19s %zu %zu %hhu\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"siox-12x8\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"siox-%d-%d\00", [21 x i8] zeroinitializer }, align 32
@siox_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 805, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to realloc buffer to %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"siox_device_add\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@siox_device_add._entry_ptr = internal global ptr @siox_device_add._entry, section ".printk_index", align 4
@siox_device_add._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.4, i32 816, ptr @.str.38, ptr @.str.39 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register device: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@siox_device_add._entry_ptr.42 = internal global ptr @siox_device_add._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"poll_interval_ns\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/siox.h\00", [36 x i8] zeroinitializer }, align 32
@trace_siox_set_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_siox_get_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@siox_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Registration of SIOX bus type failed: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"siox_init\00", [22 x i8] zeroinitializer }, align 32
@siox_init._entry_ptr = internal global ptr @siox_init._entry, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant [29 x i8] c"str__siox__trace_system_name\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 36, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [33 x i8] c"trace_event_fields_siox_set_data\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_siox_set_data\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"print_fmt_siox_set_data\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"event_siox_set_data\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [33 x i8] c"trace_event_fields_siox_get_data\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_siox_get_data\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"print_fmt_siox_get_data\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"event_siox_get_data\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"siox_bus_type\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 546, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"siox_master_type\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 679, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"siox_is_registered\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 720, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 722, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 891, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 901, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 34, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 547, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"siox_device_type\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 501, i32 27 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"siox_device_groups\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"siox_device_group\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 492, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"siox_device_attrs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 482, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"dev_attr_inbytes\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 402, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"dev_attr_outbytes\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 412, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant [23 x i8] c"dev_attr_status_errors\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c"dev_attr_connected\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [18 x i8] c"dev_attr_watchdog\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [25 x i8] c"dev_attr_watchdog_errors\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 392, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 389, i32 22 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 399, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 429, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 426, i32 22 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 446, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 463, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 460, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 480, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant [19 x i8] c"siox_master_groups\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [18 x i8] c"siox_master_group\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 670, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"siox_master_attrs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 663, i32 26 }
@___asan_gen_.218 = private unnamed_addr constant [16 x i8] c"dev_attr_active\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c"dev_attr_device_add\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [23 x i8] c"dev_attr_device_remove\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [26 x i8] c"dev_attr_poll_interval_ns\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 585, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 614, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 601, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 606, i32 19 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 795, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 804, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 816, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 630, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 661, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 637, i32 22 }
@___asan_gen_.279 = private unnamed_addr constant [31 x i8] c"../include/trace/events/siox.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 9, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 108, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [28 x i8] c"../drivers/siox/siox-core.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 914, i32 3 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__bpf_trace_tp_map_siox_get_data, ptr @__bpf_trace_tp_map_siox_set_data, ptr @__event_siox_get_data, ptr @__event_siox_set_data, ptr @__exitcall_siox_exit, ptr @__initcall__kmod_siox_core__265_922_siox_init4, ptr @__ksymtab___siox_driver_register, ptr @__ksymtab_siox_device_connected, ptr @__ksymtab_siox_device_synced, ptr @__ksymtab_siox_master_alloc, ptr @__ksymtab_siox_master_register, ptr @__ksymtab_siox_master_unregister, ptr @__siox_driver_register._entry, ptr @__siox_driver_register._entry.5, ptr @__siox_driver_register._entry_ptr, ptr @__siox_driver_register._entry_ptr.7, ptr @__tracepoint_ptr_siox_get_data, ptr @__tracepoint_ptr_siox_set_data, ptr @__tracepoint_siox_get_data, ptr @__tracepoint_siox_set_data, ptr @event_class_siox_get_data, ptr @event_class_siox_set_data, ptr @event_siox_get_data, ptr @event_siox_set_data, ptr @siox_device_add._entry, ptr @siox_device_add._entry.40, ptr @siox_device_add._entry_ptr, ptr @siox_device_add._entry_ptr.42, ptr @siox_exit, ptr @siox_init._entry, ptr @siox_init._entry_ptr, ptr @str__siox__trace_system_name, ptr @trace_event_fields_siox_set_data, ptr @trace_event_type_funcs_siox_set_data, ptr @print_fmt_siox_set_data, ptr @trace_event_fields_siox_get_data, ptr @trace_event_type_funcs_siox_get_data, ptr @print_fmt_siox_get_data, ptr @siox_bus_type, ptr @siox_master_type, ptr @siox_is_registered, ptr @.str, ptr @siox_master_register.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @siox_device_type, ptr @siox_device_groups, ptr @siox_device_group, ptr @siox_device_attrs, ptr @dev_attr_type, ptr @dev_attr_inbytes, ptr @dev_attr_outbytes, ptr @dev_attr_status_errors, ptr @dev_attr_connected, ptr @dev_attr_watchdog, ptr @dev_attr_watchdog_errors, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @siox_master_groups, ptr @siox_master_group, ptr @siox_master_attrs, ptr @dev_attr_active, ptr @dev_attr_device_add, ptr @dev_attr_device_remove, ptr @dev_attr_poll_interval_ns, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__siox__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_siox_set_data to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_siox_set_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_siox_set_data to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_siox_set_data to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_siox_get_data to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_siox_get_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_siox_get_data to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_siox_get_data to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_master_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_is_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_master_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_device_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_device_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_device_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inbytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_outbytes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_connected to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_watchdog to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_watchdog_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_master_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_master_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_master_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_add to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_remove to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_poll_interval_ns to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_device_add._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @siox_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_siox_set_data(ptr nocapture readnone %__data, ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i32 noundef %bufoffset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_siox_set_data, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i32 noundef %bufoffset) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_siox_get_data(ptr nocapture readnone %__data, ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i8 noundef zeroext %status_clean, i32 noundef %bufoffset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_siox_get_data, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i8 noundef zeroext %status_clean, i32 noundef %bufoffset) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_siox_set_data(ptr noundef %__data, ptr nocapture noundef readonly %smaster, ptr nocapture noundef readonly %sdevice, i32 noundef %devno, i32 noundef %bufoffset) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !183

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !184

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %inbytes.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 4
  %3 = ptrtoint ptr %inbytes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inbytes.i, align 4
  %add = add i32 %4, 24
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %shl.i = shl i32 %4, 16
  %or.i = or i32 %shl.i, 24
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_buf, align 4
  %6 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smaster, align 8
  %busno6 = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %busno6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %busno6, align 4
  %devno7 = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %devno7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %devno, ptr %devno7, align 4
  %10 = ptrtoint ptr %inbytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inbytes.i, align 4
  %inbytes8 = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %inbytes8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %inbytes8, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %buf10 = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 12
  %13 = ptrtoint ptr %buf10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf10, align 8
  %add.ptr11 = getelementptr i8, ptr %14, i32 %bufoffset
  %15 = load i32, ptr %inbytes.i, align 4
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr11, i32 %15)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_siox_set_data(ptr noundef %__data, ptr nocapture noundef readonly %smaster, ptr nocapture noundef readonly %sdevice, i32 noundef %devno, i32 noundef %bufoffset) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !185
  %inbytes.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 4
  %2 = ptrtoint ptr %inbytes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inbytes.i, align 4
  %shl.i = shl i32 %3, 16
  %or.i = or i32 %shl.i, 24
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %3, 35
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #15
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !173) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %call13, i32 0, i32 4
  %29 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_buf, align 4
  %30 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %smaster, align 8
  %busno17 = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %busno17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %busno17, align 4
  %devno18 = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %devno18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %devno, ptr %devno18, align 4
  %34 = ptrtoint ptr %inbytes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %inbytes.i, align 4
  %inbytes19 = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %inbytes19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %inbytes19, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %buf22 = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 12
  %37 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf22, align 8
  %add.ptr23 = getelementptr i8, ptr %38, i32 %bufoffset
  %39 = load i32, ptr %inbytes.i, align 4
  %40 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr23, i32 %39)
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %13, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_siox_get_data(ptr noundef %__data, ptr nocapture noundef readonly %smaster, ptr nocapture noundef readonly %sdevice, i32 noundef %devno, i8 noundef zeroext %status_clean, i32 noundef %bufoffset) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !183

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !184

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %outbytes.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 5
  %3 = ptrtoint ptr %outbytes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %outbytes.i, align 8
  %add = add i32 %4, 28
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %shl.i = shl i32 %4, 16
  %or.i = or i32 %shl.i, 28
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call3, i32 0, i32 5
  %5 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_buf, align 4
  %6 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smaster, align 8
  %busno6 = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %busno6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %busno6, align 4
  %devno7 = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %devno7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %devno, ptr %devno7, align 4
  %status_clean8 = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %status_clean8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %status_clean, ptr %status_clean8, align 4
  %11 = ptrtoint ptr %outbytes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outbytes.i, align 8
  %outbytes9 = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %outbytes9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %outbytes9, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %buf11 = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 12
  %14 = ptrtoint ptr %buf11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf11, align 8
  %add.ptr12 = getelementptr i8, ptr %15, i32 %bufoffset
  %16 = load i32, ptr %outbytes.i, align 8
  %17 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr12, i32 %16)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_siox_get_data(ptr noundef %__data, ptr nocapture noundef readonly %smaster, ptr nocapture noundef readonly %sdevice, i32 noundef %devno, i8 noundef zeroext %status_clean, i32 noundef %bufoffset) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !185
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !185
  %outbytes.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 5
  %2 = ptrtoint ptr %outbytes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outbytes.i, align 8
  %shl.i = shl i32 %3, 16
  %or.i = or i32 %shl.i, 28
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %3, 39
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #15
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !173) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call13, i32 0, i32 5
  %29 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_buf, align 4
  %30 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %smaster, align 8
  %busno17 = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %busno17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %busno17, align 4
  %devno18 = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %devno18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %devno, ptr %devno18, align 4
  %status_clean19 = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %status_clean19 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %status_clean, ptr %status_clean19, align 4
  %35 = ptrtoint ptr %outbytes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %outbytes.i, align 8
  %outbytes20 = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %outbytes20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %outbytes20, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %buf23 = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 12
  %38 = ptrtoint ptr %buf23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf23, align 8
  %add.ptr24 = getelementptr i8, ptr %39, i32 %bufoffset
  %40 = load i32, ptr %outbytes.i, align 8
  %41 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr24, i32 %40)
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %13, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_siox_set_data(ptr noundef %__data, ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i32 noundef %bufoffset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %smaster to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %sdevice to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %devno to i64
  %conv12 = zext i32 %bufoffset to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_siox_get_data(ptr noundef %__data, ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i8 noundef zeroext %status_clean, i32 noundef %bufoffset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %smaster to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %sdevice to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %devno to i64
  %conv12 = zext i8 %status_clean to i64
  %conv16 = zext i32 %bufoffset to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @siox_device_synced(ptr nocapture noundef readonly %sdevice) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %status_read_clean = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 7
  %0 = ptrtoint ptr %status_read_clean to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status_read_clean, align 1
  %2 = lshr i8 %1, 4
  %statustype2.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 6
  %3 = ptrtoint ptr %statustype2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %statustype2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %siox_device_type_error.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %switch.selectcmp.case1.i = icmp ult i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %2)
  %switch.selectcmp.case2.i = icmp eq i8 %2, 15
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br i1 %switch.selectcmp.i, label %if.else.i.return_crit_edge, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

siox_device_type_error.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.not.i.not = icmp eq i8 %2, %4
  br i1 %cmp.not.i.not, label %siox_device_type_error.exit.if.end_crit_edge, label %siox_device_type_error.exit.return_crit_edge

siox_device_type_error.exit.return_crit_edge:     ; preds = %siox_device_type_error.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

siox_device_type_error.exit.if.end_crit_edge:     ; preds = %siox_device_type_error.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %siox_device_type_error.exit.if.end_crit_edge, %if.else.i.if.end_crit_edge
  %5 = and i8 %1, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.not = icmp eq i8 %5, 0
  br label %return

return:                                           ; preds = %if.end, %siox_device_type_error.exit.return_crit_edge, %if.else.i.return_crit_edge
  %retval.0 = phi i1 [ %cmp.i.not, %if.end ], [ false, %siox_device_type_error.exit.return_crit_edge ], [ false, %if.else.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @siox_device_connected(ptr nocapture noundef readonly %sdevice) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %status_read_clean.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 7
  %0 = ptrtoint ptr %status_read_clean.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status_read_clean.i, align 1
  %2 = lshr i8 %1, 4
  %statustype2.i.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 6
  %3 = ptrtoint ptr %statustype2.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %statustype2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %siox_device_type_error.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %switch.selectcmp.case1.i.i = icmp ult i8 %1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %2)
  %switch.selectcmp.case2.i.i = icmp eq i8 %2, 15
  %switch.selectcmp.i.i = or i1 %switch.selectcmp.case1.i.i, %switch.selectcmp.case2.i.i
  br i1 %switch.selectcmp.i.i, label %if.else.i.i.return_crit_edge, label %if.else.i.i.siox_device_synced.exit_crit_edge

if.else.i.i.siox_device_synced.exit_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %siox_device_synced.exit

if.else.i.i.return_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

siox_device_type_error.exit.i:                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.not.i.not.i = icmp eq i8 %2, %4
  br i1 %cmp.not.i.not.i, label %siox_device_type_error.exit.i.siox_device_synced.exit_crit_edge, label %siox_device_type_error.exit.i.return_crit_edge

siox_device_type_error.exit.i.return_crit_edge:   ; preds = %siox_device_type_error.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

siox_device_type_error.exit.i.siox_device_synced.exit_crit_edge: ; preds = %siox_device_type_error.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %siox_device_synced.exit

siox_device_synced.exit:                          ; preds = %siox_device_type_error.exit.i.siox_device_synced.exit_crit_edge, %if.else.i.i.siox_device_synced.exit_crit_edge
  %5 = and i8 %1, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.not.i = icmp eq i8 %5, 0
  br i1 %cmp.i.not.i, label %if.end, label %siox_device_synced.exit.return_crit_edge

siox_device_synced.exit.return_crit_edge:         ; preds = %siox_device_synced.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %siox_device_synced.exit
  call void @__sanitizer_cov_trace_pc() #17
  %6 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp ne i8 %6, 0
  br label %return

return:                                           ; preds = %if.end, %siox_device_synced.exit.return_crit_edge, %siox_device_type_error.exit.i.return_crit_edge, %if.else.i.i.return_crit_edge
  %retval.0 = phi i1 [ %cmp.i, %if.end ], [ false, %siox_device_synced.exit.return_crit_edge ], [ false, %siox_device_type_error.exit.i.return_crit_edge ], [ false, %if.else.i.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @siox_master_alloc(ptr noundef %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %add = add i32 %size, 1080
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #18
  %tobool1.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool1.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end3

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev4 = getelementptr inbounds %struct.siox_master, ptr %call9.i.i, i32 0, i32 6
  tail call void @device_initialize(ptr noundef %dev4) #15
  %0 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %call9.i.i, align 128
  %bus = getelementptr inbounds %struct.siox_master, ptr %call9.i.i, i32 0, i32 6, i32 5
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @siox_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.siox_master, ptr %call9.i.i, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @siox_master_type, ptr %type, align 4
  %parent = getelementptr inbounds %struct.siox_master, ptr %call9.i.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 8
  %poll_interval = getelementptr inbounds %struct.siox_master, ptr %call9.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %poll_interval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %poll_interval, align 8
  %arrayidx = getelementptr %struct.siox_master, ptr %call9.i.i, i32 1
  %driver_data.i = getelementptr inbounds %struct.siox_master, ptr %call9.i.i, i32 0, i32 6, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @siox_master_register(ptr noundef %smaster) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %.b39 = load i1, ptr @siox_is_registered, align 1
  br i1 %.b39, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pushpull = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 1
  %0 = ptrtoint ptr %pushpull to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pushpull, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 6
  %2 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smaster, align 8
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %3) #15
  %lock = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @siox_master_register.__key) #15
  %devices = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 8
  %4 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %devices, ptr %devices, align 4
  %prev.i = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %devices, ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %last_poll = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 14
  %7 = ptrtoint ptr %last_poll to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last_poll, align 8
  %8 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smaster, align 8
  %call5 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @siox_poll_thread, ptr noundef %smaster, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef %9) #15
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %poll_thread41 = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 15
  %10 = ptrtoint ptr %poll_thread41 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %poll_thread41, align 4
  %active = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 4
  %11 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %active, align 8
  %12 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end3
  %call8 = tail call i32 @wake_up_process(ptr noundef %call5) #15
  %poll_thread = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 15
  %13 = ptrtoint ptr %poll_thread to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %poll_thread, align 4
  %call17 = tail call i32 @device_add(ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.then19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %poll_thread to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %poll_thread, align 4
  %call21 = tail call i32 @kthread_stop(ptr noundef %15) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end15.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then12 ], [ -517, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call17, %if.then19 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siox_poll_thread(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 6
  %call = tail call ptr @get_device(ptr noundef %dev) #15
  %call1183 = tail call zeroext i1 @kthread_should_stop() #15
  br i1 %call1183, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %lock.i = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 3
  %active = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 4
  %last_poll = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 14
  %poll_interval = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 2
  %setbuf_len.i = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 9
  %status.i = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 13
  %buf.i = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 12
  %devices.i = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 8
  %pushpull.i = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 1
  %getbuf_len.i = getelementptr inbounds %struct.siox_master, ptr %data, i32 0, i32 10
  br label %if.end

if.then:                                          ; preds = %__here131.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @put_device(ptr noundef %dev) #15
  ret i32 0

if.end:                                           ; preds = %__here131.if.end_crit_edge, %if.end.lr.ph
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 8, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.__here_crit_edge, label %if.then3

if.end.__here_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %last_poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_poll, align 8
  %4 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %poll_interval, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = add i32 %5, %3
  %sub = sub i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then4, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then4:                                         ; preds = %if.then3
  %8 = ptrtoint ptr %setbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %setbuf_len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %last_poll to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_poll, align 8
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status.i, align 4
  %inc.i = add i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %inc.i)
  %cmp.i = icmp ugt i8 %inc.i, 13
  %spec.select.i = select i1 %cmp.i, i8 0, i8 %inc.i
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select.i, ptr %status.i, align 4
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf.i, align 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 %9)
  %18 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %sdevice.0276.i = load ptr, ptr %devices.i, align 4
  %cmp5.not277.i = icmp eq ptr %sdevice.0276.i, %devices.i
  br i1 %cmp5.not277.i, label %if.then4.for.end.i_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.for.end.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %if.end19.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %sdevice.0281.i = phi ptr [ %sdevice.0.i, %if.end19.i.for.body.i_crit_edge ], [ %sdevice.0276.i, %if.then4.for.body.i_crit_edge ]
  %i.0280.i = phi i32 [ %sub.i, %if.end19.i.for.body.i_crit_edge ], [ %9, %if.then4.for.body.i_crit_edge ]
  %devno.0279.i = phi i32 [ %inc23.i, %if.end19.i.for.body.i_crit_edge ], [ 0, %if.then4.for.body.i_crit_edge ]
  %unsync_error.0278.i = phi i32 [ %40, %if.end19.i.for.body.i_crit_edge ], [ 0, %if.then4.for.body.i_crit_edge ]
  %driver.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.0281.i, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 -20
  %retval.0.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status.i, align 4
  %status_written.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.0281.i, i32 0, i32 8
  %23 = ptrtoint ptr %status_written.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %status_written.i, align 2
  %inbytes.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.0281.i, i32 0, i32 4
  %24 = ptrtoint ptr %inbytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %inbytes.i, align 4
  %sub.i = sub i32 %i.0280.i, %25
  %status_read_clean.i.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.0281.i, i32 0, i32 7
  %26 = ptrtoint ptr %status_read_clean.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %status_read_clean.i.i, align 1
  %28 = lshr i8 %27, 4
  %statustype2.i.i.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.0281.i, i32 0, i32 6
  %29 = ptrtoint ptr %statustype2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %statustype2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %siox_device_type_error.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %27)
  %switch.selectcmp.case1.i.i.i = icmp ult i8 %27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %28)
  %switch.selectcmp.case2.i.i.i = icmp eq i8 %28, 15
  %switch.selectcmp.i.i.i = or i1 %switch.selectcmp.case1.i.i.i, %switch.selectcmp.case2.i.i.i
  br i1 %switch.selectcmp.i.i.i, label %if.else.i.i.i.if.else.i_crit_edge, label %if.else.i.i.i.siox_device_synced.exit.i_crit_edge

if.else.i.i.i.siox_device_synced.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %siox_device_synced.exit.i

if.else.i.i.i.if.else.i_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

siox_device_type_error.exit.i.i:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp.not.i.not.i.i = icmp eq i8 %28, %30
  br i1 %cmp.not.i.not.i.i, label %siox_device_type_error.exit.i.i.siox_device_synced.exit.i_crit_edge, label %siox_device_type_error.exit.i.i.if.else.i_crit_edge

siox_device_type_error.exit.i.i.if.else.i_crit_edge: ; preds = %siox_device_type_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

siox_device_type_error.exit.i.i.siox_device_synced.exit.i_crit_edge: ; preds = %siox_device_type_error.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %siox_device_synced.exit.i

siox_device_synced.exit.i:                        ; preds = %siox_device_type_error.exit.i.i.siox_device_synced.exit.i_crit_edge, %if.else.i.i.i.siox_device_synced.exit.i_crit_edge
  %31 = and i8 %27, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.i.not.i.i = icmp eq i8 %31, 0
  br i1 %cmp.i.not.i.i, label %32, label %siox_device_synced.exit.i.if.else.i_crit_edge

siox_device_synced.exit.i.if.else.i_crit_edge:    ; preds = %siox_device_synced.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

32:                                               ; preds = %siox_device_synced.exit.i
  %tobool.not.i = icmp ne ptr %retval.0.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unsync_error.0278.i)
  %tobool11.not.i = icmp eq i32 %unsync_error.0278.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond.i, label %if.then12.i, label %.if.else.i_crit_edge

.if.else.i_crit_edge:                             ; preds = %32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then12.i:                                      ; preds = %32
  call void @__sanitizer_cov_trace_pc() #17
  %set_data.i = getelementptr inbounds %struct.siox_driver, ptr %retval.0.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %set_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_data.i, align 4
  %35 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf.i, align 8
  %add.i = add i32 %sub.i, 1
  %arrayidx.i = getelementptr i8, ptr %36, i32 %add.i
  %call15.i = tail call i32 %34(ptr noundef %sdevice.0281.i, i8 noundef zeroext %22, ptr noundef %arrayidx.i) #15
  br label %if.end19.i

if.else.i:                                        ; preds = %.if.else.i_crit_edge, %siox_device_synced.exit.i.if.else.i_crit_edge, %siox_device_type_error.exit.i.i.if.else.i_crit_edge, %if.else.i.i.i.if.else.i_crit_edge
  %37 = phi i32 [ %unsync_error.0278.i, %.if.else.i_crit_edge ], [ 1, %siox_device_synced.exit.i.if.else.i_crit_edge ], [ 1, %siox_device_type_error.exit.i.i.if.else.i_crit_edge ], [ 1, %if.else.i.i.i.if.else.i_crit_edge ]
  %38 = and i8 %22, -2
  %39 = ptrtoint ptr %status_written.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %status_written.i, align 2
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then12.i
  %40 = phi i32 [ %37, %if.else.i ], [ 0, %if.then12.i ]
  %41 = ptrtoint ptr %status_written.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %status_written.i, align 2
  %43 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf.i, align 8
  %arrayidx22.i = getelementptr i8, ptr %44, i32 %sub.i
  %45 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %42, ptr %arrayidx22.i, align 1
  tail call fastcc void @trace_siox_set_data(ptr noundef %data, ptr noundef %sdevice.0281.i, i32 noundef %devno.0279.i, i32 noundef %sub.i) #15
  %inc23.i = add i32 %devno.0279.i, 1
  %46 = ptrtoint ptr %sdevice.0281.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %sdevice.0.i = load ptr, ptr %sdevice.0281.i, align 4
  %cmp5.not.i = icmp eq ptr %sdevice.0.i, %devices.i
  br i1 %cmp5.not.i, label %if.end19.i.for.end.i_crit_edge, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %if.end19.i.for.end.i_crit_edge, %if.then4.for.end.i_crit_edge
  %47 = ptrtoint ptr %pushpull.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pushpull.i, align 4
  %49 = ptrtoint ptr %setbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %setbuf_len.i, align 4
  %51 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf.i, align 8
  %53 = ptrtoint ptr %getbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %getbuf_len.i, align 8
  %add.ptr33.i = getelementptr i8, ptr %52, i32 %50
  %call34.i = tail call i32 %48(ptr noundef %data, i32 noundef %50, ptr noundef %52, i32 noundef %54, ptr noundef %add.ptr33.i) #15
  %55 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %sdevice.1282.i = load ptr, ptr %devices.i, align 4
  %cmp44.not283.i = icmp eq ptr %sdevice.1282.i, %devices.i
  br i1 %cmp44.not283.i, label %for.end.i.if.end10_crit_edge, label %for.body47.preheader.i

for.end.i.if.end10_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

for.body47.preheader.i:                           ; preds = %for.end.i
  %56 = ptrtoint ptr %setbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %setbuf_len.i, align 4
  br label %for.body47.i

for.body47.i:                                     ; preds = %if.end128.i.for.body47.i_crit_edge, %for.body47.preheader.i
  %sdevice.1287.i = phi ptr [ %sdevice.1.i, %if.end128.i.for.body47.i_crit_edge ], [ %sdevice.1282.i, %for.body47.preheader.i ]
  %i.1286.i = phi i32 [ %add131.i, %if.end128.i.for.body47.i_crit_edge ], [ %57, %for.body47.preheader.i ]
  %devno.1285.i = phi i32 [ %inc129.i, %if.end128.i.for.body47.i_crit_edge ], [ 0, %for.body47.preheader.i ]
  %unsync_error.2284.i = phi i32 [ %72, %if.end128.i.for.body47.i_crit_edge ], [ 0, %for.body47.preheader.i ]
  %driver50.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 2, i32 6
  %58 = ptrtoint ptr %driver50.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver50.i, align 4
  %tobool.not.i233.i = icmp eq ptr %59, null
  %add.ptr.i234.i = getelementptr i8, ptr %59, i32 -20
  %retval.0.i235.i = select i1 %tobool.not.i233.i, ptr null, ptr %add.ptr.i234.i
  %60 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf.i, align 8
  %outbytes.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 5
  %62 = ptrtoint ptr %outbytes.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %outbytes.i, align 8
  %add54.i = add i32 %i.1286.i, -1
  %sub55.i = add i32 %add54.i, %63
  %arrayidx56.i = getelementptr i8, ptr %61, i32 %sub55.i
  %64 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx56.i, align 1
  %status_read_clean.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 7
  %66 = ptrtoint ptr %status_read_clean.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %status_read_clean.i, align 1
  %68 = lshr i8 %67, 4
  %statustype2.i.i237.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 6
  %69 = ptrtoint ptr %statustype2.i.i237.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %statustype2.i.i237.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i238.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i.i238.i, label %if.else.i.i242.i, label %siox_device_type_error.exit.i244.i

if.else.i.i242.i:                                 ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %67)
  %switch.selectcmp.case1.i.i239.i = icmp ult i8 %67, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %68)
  %switch.selectcmp.case2.i.i240.i = icmp eq i8 %68, 15
  %switch.selectcmp.i.i241.i = or i1 %switch.selectcmp.case1.i.i239.i, %switch.selectcmp.case2.i.i240.i
  br i1 %switch.selectcmp.i.i241.i, label %if.else.i.i242.i.siox_device_synced.exit248.thread.i_crit_edge, label %if.else.i.i242.i.siox_device_synced.exit248.i_crit_edge

if.else.i.i242.i.siox_device_synced.exit248.i_crit_edge: ; preds = %if.else.i.i242.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %siox_device_synced.exit248.i

if.else.i.i242.i.siox_device_synced.exit248.thread.i_crit_edge: ; preds = %if.else.i.i242.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %siox_device_synced.exit248.thread.i

siox_device_type_error.exit.i244.i:               ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp.not.i.not.i243.i = icmp eq i8 %68, %70
  br i1 %cmp.not.i.not.i243.i, label %siox_device_type_error.exit.i244.i.siox_device_synced.exit248.i_crit_edge, label %siox_device_type_error.exit.i244.i.siox_device_synced.exit248.thread.i_crit_edge

siox_device_type_error.exit.i244.i.siox_device_synced.exit248.thread.i_crit_edge: ; preds = %siox_device_type_error.exit.i244.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %siox_device_synced.exit248.thread.i

siox_device_type_error.exit.i244.i.siox_device_synced.exit248.i_crit_edge: ; preds = %siox_device_type_error.exit.i244.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %siox_device_synced.exit248.i

siox_device_synced.exit248.i:                     ; preds = %siox_device_type_error.exit.i244.i.siox_device_synced.exit248.i_crit_edge, %if.else.i.i242.i.siox_device_synced.exit248.i_crit_edge
  %71 = and i8 %67, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp.i.not.i245.i = icmp eq i8 %71, 0
  %spec.select274.i = select i1 %cmp.i.not.i245.i, i32 %unsync_error.2284.i, i32 1
  br label %siox_device_synced.exit248.thread.i

siox_device_synced.exit248.thread.i:              ; preds = %siox_device_synced.exit248.i, %siox_device_type_error.exit.i244.i.siox_device_synced.exit248.thread.i_crit_edge, %if.else.i.i242.i.siox_device_synced.exit248.thread.i_crit_edge
  %72 = phi i32 [ 1, %siox_device_type_error.exit.i244.i.siox_device_synced.exit248.thread.i_crit_edge ], [ 1, %if.else.i.i242.i.siox_device_synced.exit248.thread.i_crit_edge ], [ %spec.select274.i, %siox_device_synced.exit248.i ]
  %tobool60.not.i = icmp eq ptr %retval.0.i235.i, null
  %tobool60.not.not.i = xor i1 %tobool60.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool61.not.i = icmp eq i32 %72, 0
  %or.cond230.i = select i1 %tobool60.not.not.i, i1 %tobool61.not.i, i1 false
  %73 = and i8 %65, -2
  %status52.0.i = select i1 %or.cond230.i, i8 %65, i8 %73
  %status_written_lastcycle.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 9
  %74 = ptrtoint ptr %status_written_lastcycle.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %status_written_lastcycle.i, align 1
  %76 = and i8 %75, 14
  %77 = xor i8 %76, %status52.0.i
  %xor3.i.i = xor i8 %77, 14
  %78 = and i8 %xor3.i.i, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp.i.not.i = icmp eq i8 %78, 0
  br i1 %cmp.i.not.i, label %lor.lhs.false70.i, label %if.then73.i

lor.lhs.false70.i:                                ; preds = %siox_device_synced.exit248.thread.i
  %79 = lshr i8 %status52.0.i, 4
  br i1 %tobool.not.i.i238.i, label %if.else.i.i, label %siox_device_type_error.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %xor3.i.i)
  %switch.selectcmp.case1.i.i = icmp ult i8 %xor3.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %79)
  %switch.selectcmp.case2.i.i = icmp eq i8 %79, 15
  %switch.selectcmp.i.i = or i1 %switch.selectcmp.case1.i.i, %switch.selectcmp.case2.i.i
  br i1 %switch.selectcmp.i.i, label %if.then73.thread270.i, label %if.else.i.i._crit_edge

if.else.i.i._crit_edge:                           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %88

siox_device_type_error.exit.i:                    ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %70)
  %cmp.not.i.not.i = icmp eq i8 %79, %70
  br i1 %cmp.not.i.not.i, label %siox_device_type_error.exit.i._crit_edge, label %if.then73.thread.i

siox_device_type_error.exit.i._crit_edge:         ; preds = %siox_device_type_error.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %88

if.then73.i:                                      ; preds = %siox_device_synced.exit248.thread.i
  %80 = and i8 %67, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp.i251.not.i = icmp eq i8 %80, 0
  br i1 %cmp.i251.not.i, label %lor.rhs.i, label %if.then73.i.if.end82.thread.i_crit_edge

if.then73.i.if.end82.thread.i_crit_edge:          ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82.thread.i

if.then73.thread270.i:                            ; preds = %if.else.i.i
  %81 = and i8 %67, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp.i251271.not.i = icmp eq i8 %81, 0
  br i1 %cmp.i251271.not.i, label %if.then73.thread270.i.if.else.i259.i_crit_edge, label %if.then73.thread270.i.if.end82.thread.i_crit_edge

if.then73.thread270.i.if.end82.thread.i_crit_edge: ; preds = %if.then73.thread270.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82.thread.i

if.then73.thread270.i.if.else.i259.i_crit_edge:   ; preds = %if.then73.thread270.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i259.i

if.then73.thread.i:                               ; preds = %siox_device_type_error.exit.i
  %82 = and i8 %67, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp.i251269.i = icmp ne i8 %82, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp.not.i254.i = icmp ne i8 %68, %70
  %or.cond275.i = select i1 %cmp.i251269.i, i1 true, i1 %cmp.not.i254.i
  br i1 %or.cond275.i, label %if.then73.thread.i.if.end82.thread.i_crit_edge, label %if.then73.thread.i.if.then79.i_crit_edge

if.then73.thread.i.if.then79.i_crit_edge:         ; preds = %if.then73.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79.i

if.then73.thread.i.if.end82.thread.i_crit_edge:   ; preds = %if.then73.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82.thread.i

lor.rhs.i:                                        ; preds = %if.then73.i
  br i1 %tobool.not.i.i238.i, label %lor.rhs.i.if.else.i259.i_crit_edge, label %siox_device_type_error.exit261.i

lor.rhs.i.if.else.i259.i_crit_edge:               ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i259.i

if.else.i259.i:                                   ; preds = %lor.rhs.i.if.else.i259.i_crit_edge, %if.then73.thread270.i.if.else.i259.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %67)
  %switch.selectcmp.case1.i256.i = icmp ult i8 %67, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %68)
  %switch.selectcmp.case2.i257.i = icmp eq i8 %68, 15
  %switch.selectcmp.i258.i = or i1 %switch.selectcmp.case1.i256.i, %switch.selectcmp.case2.i257.i
  br i1 %switch.selectcmp.i258.i, label %if.else.i259.i.if.end82.thread.i_crit_edge, label %if.else.i259.i.if.then79.i_crit_edge

if.else.i259.i.if.then79.i_crit_edge:             ; preds = %if.else.i259.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79.i

if.else.i259.i.if.end82.thread.i_crit_edge:       ; preds = %if.else.i259.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82.thread.i

siox_device_type_error.exit261.i:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp.not.i254.old.not.i = icmp eq i8 %68, %70
  br i1 %cmp.not.i254.old.not.i, label %siox_device_type_error.exit261.i.if.then79.i_crit_edge, label %siox_device_type_error.exit261.i.if.end82.thread.i_crit_edge

siox_device_type_error.exit261.i.if.end82.thread.i_crit_edge: ; preds = %siox_device_type_error.exit261.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82.thread.i

siox_device_type_error.exit261.i.if.then79.i_crit_edge: ; preds = %siox_device_type_error.exit261.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79.i

if.then79.i:                                      ; preds = %siox_device_type_error.exit261.i.if.then79.i_crit_edge, %if.else.i259.i.if.then79.i_crit_edge, %if.then73.thread.i.if.then79.i_crit_edge
  %status_errors.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 12
  %83 = ptrtoint ptr %status_errors.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %status_errors.i, align 8
  %inc80.i = add i32 %84, 1
  store i32 %inc80.i, ptr %status_errors.i, align 8
  %status_errors_kn.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 13
  %85 = ptrtoint ptr %status_errors_kn.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %status_errors_kn.i, align 4
  tail call void @kernfs_notify(ptr noundef %86) #15
  br label %if.end82.thread.i

if.end82.thread.i:                                ; preds = %if.then79.i, %siox_device_type_error.exit261.i.if.end82.thread.i_crit_edge, %if.else.i259.i.if.end82.thread.i_crit_edge, %if.then73.thread.i.if.end82.thread.i_crit_edge, %if.then73.thread270.i.if.end82.thread.i_crit_edge, %if.then73.i.if.end82.thread.i_crit_edge
  %87 = and i8 %xor3.i.i, -2
  br label %88

88:                                               ; preds = %if.end82.thread.i, %siox_device_type_error.exit.i._crit_edge, %if.else.i.i._crit_edge
  %89 = phi i8 [ %87, %if.end82.thread.i ], [ %xor3.i.i, %siox_device_type_error.exit.i._crit_edge ], [ %xor3.i.i, %if.else.i.i._crit_edge ]
  %90 = and i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp.i262.i = icmp eq i8 %90, 0
  %91 = xor i1 %cmp.i262.i, true
  %xor227.i = xor i8 %89, %67
  %92 = and i8 %xor227.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool98.not.i = icmp eq i8 %92, 0
  br i1 %tobool98.not.i, label %.if.end104.i_crit_edge, label %if.then99.i

.if.end104.i_crit_edge:                           ; preds = %88
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.i

if.then99.i:                                      ; preds = %88
  %watchdog_kn.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 14
  %93 = ptrtoint ptr %watchdog_kn.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %watchdog_kn.i, align 8
  tail call void @kernfs_notify(ptr noundef %94) #15
  br i1 %cmp.i262.i, label %if.then101.i, label %if.then99.i.if.end104.i_crit_edge

if.then99.i.if.end104.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104.i

if.then101.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #17
  %watchdog_errors_kn.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 15
  %95 = ptrtoint ptr %watchdog_errors_kn.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %watchdog_errors_kn.i, align 4
  %watchdog_errors.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 11
  %97 = ptrtoint ptr %watchdog_errors.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %watchdog_errors.i, align 4
  %inc102.i = add i32 %98, 1
  store i32 %inc102.i, ptr %watchdog_errors.i, align 4
  tail call void @kernfs_notify(ptr noundef %96) #15
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then101.i, %if.then99.i.if.end104.i_crit_edge, %.if.end104.i_crit_edge
  %connected107.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 10
  %99 = ptrtoint ptr %connected107.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %connected107.i, align 8, !range !186
  %101 = zext i1 %91 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %101)
  %cmp110.not.i = icmp eq i8 %100, %101
  br i1 %cmp110.not.i, label %if.end104.i.if.end113.i_crit_edge, label %if.then112.i

if.end104.i.if.end113.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113.i

if.then112.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #17
  %connected_kn.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 16
  %102 = ptrtoint ptr %connected_kn.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %connected_kn.i, align 8
  tail call void @kernfs_notify(ptr noundef %103) #15
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then112.i, %if.end104.i.if.end113.i_crit_edge
  %104 = ptrtoint ptr %status_read_clean.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %89, ptr %status_read_clean.i, align 1
  %status_written115.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.1287.i, i32 0, i32 8
  %105 = ptrtoint ptr %status_written115.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %status_written115.i, align 2
  %107 = ptrtoint ptr %status_written_lastcycle.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %status_written_lastcycle.i, align 1
  %108 = ptrtoint ptr %connected107.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %101, ptr %connected107.i, align 8
  tail call fastcc void @trace_siox_get_data(ptr noundef %data, ptr noundef %sdevice.1287.i, i32 noundef %devno.1285.i, i8 noundef zeroext %89, i32 noundef %i.1286.i) #15
  %brmerge.i = select i1 %tobool60.not.i, i1 true, i1 %cmp.i262.i
  br i1 %brmerge.i, label %if.end113.i.if.end128.i_crit_edge, label %if.then124.i

if.end113.i.if.end128.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128.i

if.then124.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #17
  %get_data.i = getelementptr inbounds %struct.siox_driver, ptr %retval.0.i235.i, i32 0, i32 4
  %109 = ptrtoint ptr %get_data.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %get_data.i, align 4
  %111 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %buf.i, align 8
  %arrayidx126.i = getelementptr i8, ptr %112, i32 %i.1286.i
  %call127.i = tail call i32 %110(ptr noundef %sdevice.1287.i, ptr noundef %arrayidx126.i) #15
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then124.i, %if.end113.i.if.end128.i_crit_edge
  %inc129.i = add i32 %devno.1285.i, 1
  %113 = ptrtoint ptr %outbytes.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %outbytes.i, align 8
  %add131.i = add i32 %114, %i.1286.i
  %115 = ptrtoint ptr %sdevice.1287.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %sdevice.1.i = load ptr, ptr %sdevice.1287.i, align 4
  %cmp44.not.i = icmp eq ptr %sdevice.1.i, %devices.i
  br i1 %cmp44.not.i, label %if.end128.i.if.end10_crit_edge, label %if.end128.i.for.body47.i_crit_edge

if.end128.i.for.body47.i_crit_edge:               ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body47.i

if.end128.i.if.end10_crit_edge:                   ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end10:                                         ; preds = %if.end128.i.if.end10_crit_edge, %for.end.i.if.end10_crit_edge, %if.then3.if.end10_crit_edge
  %116 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %poll_interval, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %118 = load volatile i32, ptr @jiffies, align 128
  %119 = ptrtoint ptr %last_poll to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %last_poll, align 8
  %sub8.neg = sub i32 %120, %118
  %sub9 = add i32 %sub8.neg, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9)
  %cmp11 = icmp sgt i32 %sub9, 0
  br i1 %cmp11, label %if.end10.__here_crit_edge, label %do.body82.critedge

if.end10.__here_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %if.end10.__here_crit_edge, %if.end.__here_crit_edge
  %timeout.0181 = phi i32 [ %sub9, %if.end10.__here_crit_edge ], [ 2147483647, %if.end.__here_crit_edge ]
  %121 = tail call i32 @llvm.read_register.i32(metadata !173) #15
  %and.i = and i32 %121, -16384
  %122 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 212
  %125 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 ptrtoint (ptr blockaddress(@siox_poll_thread, %__here) to i32), ptr %task_state_change, align 4
  %126 = load ptr, ptr %task, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 1026, ptr %126, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !187
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  %call79 = tail call i32 @schedule_timeout(i32 noundef %timeout.0181) #15
  br label %__here131

do.body82.critedge:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  br label %__here131

__here131:                                        ; preds = %do.body82.critedge, %__here
  %128 = tail call i32 @llvm.read_register.i32(metadata !173) #15
  %and.i178 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i178 to ptr
  %task134 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %task134 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %task134, align 8
  %task_state_change135 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 212
  %132 = ptrtoint ptr %task_state_change135 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 ptrtoint (ptr blockaddress(@siox_poll_thread, %__here131) to i32), ptr %task_state_change135, align 4
  %133 = load ptr, ptr %task134, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 0, ptr %133, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !188
  %call1 = tail call zeroext i1 @kthread_should_stop() #15
  br i1 %call1, label %__here131.if.then_crit_edge, label %__here131.if.end_crit_edge

__here131.if.end_crit_edge:                       ; preds = %__here131
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

__here131.if.then_crit_edge:                      ; preds = %__here131
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @siox_master_unregister(ptr noundef %smaster) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 6
  tail call void @device_del(ptr noundef %dev) #15
  %lock.i = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %active.i = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 4
  %0 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active.i, align 8, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.__siox_stop.exit_crit_edge, label %if.then.i

entry.__siox_stop.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__siox_stop.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %active.i, align 8
  %devices.i = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 8
  %3 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %sdevice.019.i = load ptr, ptr %devices.i, align 4
  %cmp.not20.i = icmp eq ptr %sdevice.019.i, %devices.i
  br i1 %cmp.not20.i, label %if.then.i.__siox_stop.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.__siox_stop.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__siox_stop.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %sdevice.021.i = phi ptr [ %sdevice.0.i, %if.end.i.for.body.i_crit_edge ], [ %sdevice.019.i, %if.then.i.for.body.i_crit_edge ]
  %connected.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.021.i, i32 0, i32 10
  %4 = ptrtoint ptr %connected.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %connected.i, align 8, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then4.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %connected_kn.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.021.i, i32 0, i32 16
  %6 = ptrtoint ptr %connected_kn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connected_kn.i, align 8
  tail call void @kernfs_notify(ptr noundef %7) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %for.body.i.if.end.i_crit_edge
  %8 = ptrtoint ptr %connected.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %connected.i, align 8
  %9 = ptrtoint ptr %sdevice.021.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %sdevice.0.i = load ptr, ptr %sdevice.021.i, align 4
  %cmp.not.i = icmp eq ptr %sdevice.0.i, %devices.i
  br i1 %cmp.not.i, label %if.end.i.__siox_stop.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end.i.__siox_stop.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__siox_stop.exit

__siox_stop.exit:                                 ; preds = %if.end.i.__siox_stop.exit_crit_edge, %if.then.i.__siox_stop.exit_crit_edge, %entry.__siox_stop.exit_crit_edge
  %num_devices = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 7
  %10 = ptrtoint ptr %num_devices to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_devices, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not17 = icmp eq i32 %11, 0
  br i1 %tobool.not17, label %__siox_stop.exit.while.end_crit_edge, label %while.body.lr.ph

__siox_stop.exit.while.end_crit_edge:             ; preds = %__siox_stop.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %__siox_stop.exit
  %prev = getelementptr inbounds %struct.siox_master, ptr %smaster, i32 0, i32 8, i32 1
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %12 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %22 = ptrtoint ptr %num_devices to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_devices, align 8
  %dec = add i32 %23, -1
  store i32 %dec, ptr %num_devices, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  %dev2 = getelementptr inbounds %struct.siox_device, ptr %13, i32 0, i32 2
  tail call void @device_unregister(ptr noundef %dev2) #15
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %24 = ptrtoint ptr %num_devices to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_devices, align 8
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %__siox_stop.exit.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #15
  tail call void @put_device(ptr noundef %dev) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__siox_driver_register(ptr noundef %sdriver, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %.b33 = load i1, ptr @siox_is_registered, align 1
  br i1 %.b33, label %if.end, label %entry.cleanup_crit_edge, !prof !183

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %sdriver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdriver, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %set_data = getelementptr inbounds %struct.siox_driver, ptr %sdriver, i32 0, i32 3
  %2 = ptrtoint ptr %set_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_data, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true, label %lor.lhs.false.if.end8_crit_edge

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false
  %get_data = getelementptr inbounds %struct.siox_driver, ptr %sdriver, i32 0, i32 4
  %4 = ptrtoint ptr %get_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_data, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %driver = getelementptr inbounds %struct.siox_driver, ptr %sdriver, i32 0, i32 5
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %7) #19
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge
  %driver9 = getelementptr inbounds %struct.siox_driver, ptr %sdriver, i32 0, i32 5
  %owner10 = getelementptr inbounds %struct.siox_driver, ptr %sdriver, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %owner10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %owner, ptr %owner10, align 4
  %bus = getelementptr inbounds %struct.siox_driver, ptr %sdriver, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @siox_bus_type, ptr %bus, align 4
  %call13 = tail call i32 @driver_register(ptr noundef %driver9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end8.cleanup_crit_edge, label %do.end18

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %driver9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver9, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %call13) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -517, %entry.cleanup_crit_edge ], [ %call13, %do.end18 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @siox_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @siox_bus_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @siox_is_registered, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @siox_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @bus_unregister(ptr noundef nonnull @siox_bus_type) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_siox_set_data(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %busno = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %busno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busno, align 4
  %devno = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  %inbytes = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %inbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inbytes, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_siox_set_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_loc_buf, align 4
  %and = and i32 %9, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %add.ptr) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
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
define internal i32 @trace_raw_output_siox_get_data(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %busno = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %busno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busno, align 4
  %devno = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  %status_clean = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %status_clean to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status_clean, align 4
  %conv = zext i8 %7 to i32
  %outbytes = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %outbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outbytes, align 4
  %__data_loc_buf = getelementptr inbounds %struct.trace_event_raw_siox_get_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %__data_loc_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %__data_loc_buf, align 4
  %and = and i32 %11, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %5, i32 noundef %conv, i32 noundef %9, ptr noundef %add.ptr) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
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
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @siox_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %drv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp.not = icmp eq ptr %1, @siox_device_type
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @siox_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -20
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %2 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %retval.0.i, align 4
  %call1 = tail call i32 %3(ptr noundef %add.ptr) #15
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siox_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -16
  tail call void %3(ptr noundef %add.ptr3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siox_shutdown(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %shutdown = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shutdown, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %3(ptr noundef %add.ptr) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siox_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inbytes_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %inbytes = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %inbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inbytes, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @outbytes_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %outbytes = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %outbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %outbytes, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %smaster = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smaster, align 8
  %lock.i = getelementptr inbounds %struct.siox_master, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %status_errors1 = getelementptr i8, ptr %dev, i32 952
  %2 = ptrtoint ptr %status_errors1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status_errors1, align 8
  %4 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smaster, align 8
  %lock.i5 = getelementptr inbounds %struct.siox_master, ptr %5, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock.i5) #15
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connected_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %smaster = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smaster, align 8
  %lock.i = getelementptr inbounds %struct.siox_master, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %connected1 = getelementptr i8, ptr %dev, i32 944
  %2 = ptrtoint ptr %connected1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %connected1, align 8, !range !186
  %4 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smaster, align 8
  %lock.i6 = getelementptr inbounds %struct.siox_master, ptr %5, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock.i6) #15
  %6 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %smaster = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smaster, align 8
  %lock.i = getelementptr inbounds %struct.siox_master, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %status_read_clean = getelementptr i8, ptr %dev, i32 941
  %2 = ptrtoint ptr %status_read_clean to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status_read_clean, align 1
  %4 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smaster, align 8
  %lock.i4 = getelementptr inbounds %struct.siox_master, ptr %5, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock.i4) #15
  %6 = and i8 %3, 1
  %and = zext i8 %6 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %and)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %smaster = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smaster, align 8
  %lock.i = getelementptr inbounds %struct.siox_master, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %watchdog_errors1 = getelementptr i8, ptr %dev, i32 948
  %2 = ptrtoint ptr %watchdog_errors1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %watchdog_errors1, align 4
  %4 = ptrtoint ptr %smaster to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smaster, align 8
  %lock.i5 = getelementptr inbounds %struct.siox_master, ptr %5, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %lock.i5) #15
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @siox_master_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 8, !range !186
  %2 = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %active = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active) #15
  %0 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %active, align 4, !annotation !185
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %active) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %lock.i.i14 = getelementptr i8, ptr %dev, i32 -100
  call void @mutex_lock_nested(ptr noundef %lock.i.i14, i32 noundef 0) #15
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %setbuf_len.i.i = getelementptr i8, ptr %dev, i32 940
  %3 = ptrtoint ptr %setbuf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %setbuf_len.i.i, align 4
  %getbuf_len.i.i = getelementptr i8, ptr %dev, i32 944
  %5 = ptrtoint ptr %getbuf_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %getbuf_len.i.i, align 8
  %add.i.i = sub i32 0, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i.i)
  %tobool.not.i.i = icmp eq i32 %4, %add.i.i
  br i1 %tobool.not.i.i, label %if.then1.if.end4_crit_edge, label %if.end.i.i

if.then1.if.end4_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end.i.i:                                       ; preds = %if.then1
  %buf.i.i = getelementptr i8, ptr %dev, i32 952
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end4_crit_edge, label %if.end3.i.i

if.end.i.i.if.end4_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end3.i.i:                                      ; preds = %if.end.i.i
  %active.i.i = getelementptr i8, ptr %dev, i32 -8
  %9 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %active.i.i, align 8, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end3.i.i.if.end4_crit_edge

if.end3.i.i.if.end4_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %active.i.i, align 8
  %poll_thread.i.i = getelementptr i8, ptr %dev, i32 964
  %12 = ptrtoint ptr %poll_thread.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %poll_thread.i.i, align 4
  %call.i.i = call i32 @wake_up_process(ptr noundef %13) #15
  br label %if.end4

if.else:                                          ; preds = %if.end
  %active.i.i15 = getelementptr i8, ptr %dev, i32 -8
  %14 = ptrtoint ptr %active.i.i15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active.i.i15, align 8, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i16 = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i16, label %if.else.if.end4_crit_edge, label %if.then.i.i

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then.i.i:                                      ; preds = %if.else
  %16 = ptrtoint ptr %active.i.i15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %active.i.i15, align 8
  %devices.i.i = getelementptr i8, ptr %dev, i32 932
  %17 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %sdevice.019.i.i = load ptr, ptr %devices.i.i, align 4
  %cmp.not20.i.i = icmp eq ptr %sdevice.019.i.i, %devices.i.i
  br i1 %cmp.not20.i.i, label %if.then.i.i.if.end4_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.if.end4_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.body.i.i:                                     ; preds = %if.end.i.i17.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %sdevice.021.i.i = phi ptr [ %sdevice.0.i.i, %if.end.i.i17.for.body.i.i_crit_edge ], [ %sdevice.019.i.i, %if.then.i.i.for.body.i.i_crit_edge ]
  %connected.i.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.021.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %connected.i.i, align 8, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool3.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool3.not.i.i, label %for.body.i.i.if.end.i.i17_crit_edge, label %if.then4.i.i

for.body.i.i.if.end.i.i17_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i17

if.then4.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %connected_kn.i.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.021.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %connected_kn.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %connected_kn.i.i, align 8
  call void @kernfs_notify(ptr noundef %21) #15
  br label %if.end.i.i17

if.end.i.i17:                                     ; preds = %if.then4.i.i, %for.body.i.i.if.end.i.i17_crit_edge
  %22 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %connected.i.i, align 8
  %23 = ptrtoint ptr %sdevice.021.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %sdevice.0.i.i = load ptr, ptr %sdevice.021.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %sdevice.0.i.i, %devices.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i17.if.end4_crit_edge, label %if.end.i.i17.for.body.i.i_crit_edge

if.end.i.i17.for.body.i.i_crit_edge:              ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end.i.i17.if.end4_crit_edge:                   ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.i17.if.end4_crit_edge, %if.then.i.i.if.end4_crit_edge, %if.else.if.end4_crit_edge, %if.end6.i.i, %if.end3.i.i.if.end4_crit_edge, %if.end.i.i.if.end4_crit_edge, %if.then1.if.end4_crit_edge
  %cmp5 = phi i32 [ %count, %if.then.i.i.if.end4_crit_edge ], [ %count, %if.else.if.end4_crit_edge ], [ %count, %if.end6.i.i ], [ %count, %if.end3.i.i.if.end4_crit_edge ], [ -12, %if.end.i.i.if.end4_crit_edge ], [ -19, %if.then1.if.end4_crit_edge ], [ %count, %if.end.i.i17.if.end4_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i.i14) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %cmp5, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_add_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %type = alloca [20 x i8], align 1
  %inbytes = alloca i32, align 4
  %outbytes = alloca i32, align 4
  %statustype = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %type) #15
  %0 = call ptr @memset(ptr %type, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbytes) #15
  %1 = ptrtoint ptr %inbytes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %inbytes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outbytes) #15
  %2 = ptrtoint ptr %outbytes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %outbytes, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %statustype) #15
  %3 = ptrtoint ptr %statustype to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %statustype, align 1
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.33, ptr noundef nonnull %type, ptr noundef nonnull %inbytes, ptr noundef nonnull %outbytes, ptr noundef nonnull %statustype)
  %call.off = add i32 %call, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off)
  %switch = icmp ult i32 %call.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %type, ptr noundef nonnull dereferenceable(10) @.str.34, i32 10) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %inbytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp4.not = icmp eq i32 %5, 2
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %outbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp6.not = icmp eq i32 %7, 4
  br i1 %cmp6.not, label %if.end8, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %8 = ptrtoint ptr %statustype to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %statustype, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 992) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %if.end.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %type2.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.34, ptr %type2.i, align 8
  %inbytes3.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %inbytes3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %inbytes3.i, align 4
  %outbytes4.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %outbytes4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %outbytes4.i, align 8
  %statustype5.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %statustype5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %statustype5.i, align 4
  %smaster6.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %smaster6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %smaster6.i, align 8
  %dev7.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 2
  %parent.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent.i, align 8
  %bus.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @siox_bus_type, ptr %bus.i, align 8
  %type10.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %type10.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @siox_device_type, ptr %type10.i, align 4
  %lock.i.i = getelementptr i8, ptr %dev, i32 -100
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #15
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 8
  %num_devices.i = getelementptr i8, ptr %dev, i32 928
  %21 = ptrtoint ptr %num_devices.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_devices.i, align 8
  %call12.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev7.i, ptr noundef nonnull @.str.35, i32 noundef %20, i32 noundef %22) #15
  %setbuf_len.i = getelementptr i8, ptr %dev, i32 940
  %23 = ptrtoint ptr %setbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %setbuf_len.i, align 4
  %getbuf_len.i = getelementptr i8, ptr %dev, i32 944
  %25 = ptrtoint ptr %getbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %getbuf_len.i, align 8
  %add13.i = add i32 %24, 6
  %add14.i = add i32 %add13.i, %26
  %buf_len15.i = getelementptr i8, ptr %dev, i32 948
  %27 = ptrtoint ptr %buf_len15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_len15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add14.i)
  %cmp.i = icmp ult i32 %28, %add14.i
  br i1 %cmp.i, label %if.then16.i, label %if.end.i.if.end25.i_crit_edge

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.then16.i:                                      ; preds = %if.end.i
  %buf17.i = getelementptr i8, ptr %dev, i32 952
  %29 = ptrtoint ptr %buf17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf17.i, align 8
  %call18.i = call noalias ptr @krealloc(ptr noundef %30, i32 noundef %add14.i, i32 noundef 3264) #22
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %buf_len15.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add14.i, ptr %buf_len15.i, align 4
  %32 = ptrtoint ptr %buf17.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call18.i, ptr %buf17.i, align 8
  br label %if.end25.i

cleanup.i:                                        ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %add14.i) #19
  br label %err_buf_alloc.i

if.end25.i:                                       ; preds = %cleanup.thread.i, %if.end.i.if.end25.i_crit_edge
  %call27.i = call i32 @device_register(ptr noundef %dev7.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end34.i, label %do.end32.i

do.end32.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call27.i) #19
  br label %err_buf_alloc.i

if.end34.i:                                       ; preds = %if.end25.i
  %33 = ptrtoint ptr %num_devices.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_devices.i, align 8
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %num_devices.i, align 8
  %devices.i = getelementptr i8, ptr %dev, i32 932
  %prev.i.i = getelementptr i8, ptr %dev, i32 936
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %36, ptr noundef %devices.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end34.i.list_add_tail.exit.i_crit_edge

if.end34.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %devices.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i.i.i, ptr %36, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end34.i.list_add_tail.exit.i_crit_edge
  %41 = ptrtoint ptr %inbytes3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %inbytes3.i, align 4
  %43 = ptrtoint ptr %setbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %setbuf_len.i, align 4
  %add38.i = add i32 %44, %42
  store i32 %add38.i, ptr %setbuf_len.i, align 4
  %45 = ptrtoint ptr %outbytes4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %outbytes4.i, align 8
  %47 = ptrtoint ptr %getbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %getbuf_len.i, align 8
  %add41.i = add i32 %48, %46
  store i32 %add41.i, ptr %getbuf_len.i, align 8
  %sd.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 5
  %49 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sd.i, align 8
  %call.i.i2.i = call ptr @kernfs_find_and_get_ns(ptr noundef %50, ptr noundef nonnull @.str.25, ptr noundef null) #15
  %status_errors_kn.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 13
  %51 = ptrtoint ptr %status_errors_kn.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i2.i, ptr %status_errors_kn.i, align 4
  %52 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sd.i, align 8
  %call.i.i3.i = call ptr @kernfs_find_and_get_ns(ptr noundef %53, ptr noundef nonnull @.str.28, ptr noundef null) #15
  %watchdog_kn.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 14
  %54 = ptrtoint ptr %watchdog_kn.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i.i3.i, ptr %watchdog_kn.i, align 8
  %55 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sd.i, align 8
  %call.i.i4.i = call ptr @kernfs_find_and_get_ns(ptr noundef %56, ptr noundef nonnull @.str.30, ptr noundef null) #15
  %watchdog_errors_kn.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 15
  %57 = ptrtoint ptr %watchdog_errors_kn.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i4.i, ptr %watchdog_errors_kn.i, align 4
  %58 = ptrtoint ptr %sd.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sd.i, align 8
  %call.i.i5.i = call ptr @kernfs_find_and_get_ns(ptr noundef %59, ptr noundef nonnull @.str.27, ptr noundef null) #15
  %connected_kn.i = getelementptr inbounds %struct.siox_device, ptr %call7.i.i.i, i32 0, i32 16
  %60 = ptrtoint ptr %connected_kn.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i.i5.i, ptr %connected_kn.i, align 8
  call void @mutex_unlock(ptr noundef %lock.i.i) #15
  br label %cleanup

err_buf_alloc.i:                                  ; preds = %do.end32.i, %cleanup.i
  call void @mutex_unlock(ptr noundef %lock.i.i) #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %err_buf_alloc.i, %list_add_tail.exit.i, %if.end8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end8.cleanup_crit_edge ], [ %count, %list_add_tail.exit.i ], [ %count, %err_buf_alloc.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %statustype) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outbytes) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbytes) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %type) #15
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_remove_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i.i = getelementptr i8, ptr %dev, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #15
  %num_devices.i = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %num_devices.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_devices.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #15
  br label %siox_device_remove.exit

if.end.i:                                         ; preds = %entry
  %prev.i = getelementptr i8, ptr %dev, i32 936
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %num_devices.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_devices.i, align 8
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %num_devices.i, align 8
  %inbytes.i = getelementptr inbounds %struct.siox_device, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %inbytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inbytes.i, align 4
  %setbuf_len.i = getelementptr i8, ptr %dev, i32 940
  %16 = ptrtoint ptr %setbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %setbuf_len.i, align 4
  %sub.i = sub i32 %17, %15
  store i32 %sub.i, ptr %setbuf_len.i, align 4
  %outbytes.i = getelementptr inbounds %struct.siox_device, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %outbytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %outbytes.i, align 8
  %getbuf_len.i = getelementptr i8, ptr %dev, i32 944
  %20 = ptrtoint ptr %getbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %getbuf_len.i, align 8
  %sub2.i = sub i32 %21, %19
  store i32 %sub2.i, ptr %getbuf_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %list_del.exit.i.if.end6.i_crit_edge

list_del.exit.i.if.end6.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then5.i:                                       ; preds = %list_del.exit.i
  %active.i.i = getelementptr i8, ptr %dev, i32 -8
  %22 = ptrtoint ptr %active.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %active.i.i, align 8, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %if.then5.i.if.end6.i_crit_edge, label %if.then.i.i

if.then5.i.if.end6.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then.i.i:                                      ; preds = %if.then5.i
  %24 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %active.i.i, align 8
  %devices.i.i = getelementptr i8, ptr %dev, i32 932
  %25 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %sdevice.019.i.i = load ptr, ptr %devices.i.i, align 4
  %cmp.not20.i.i = icmp eq ptr %sdevice.019.i.i, %devices.i.i
  br i1 %cmp.not20.i.i, label %if.then.i.i.if.end6.i_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.if.end6.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %sdevice.021.i.i = phi ptr [ %sdevice.0.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %sdevice.019.i.i, %if.then.i.i.for.body.i.i_crit_edge ]
  %connected.i.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.021.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %connected.i.i, align 8, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool3.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool3.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then4.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then4.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %connected_kn.i.i = getelementptr inbounds %struct.siox_device, ptr %sdevice.021.i.i, i32 0, i32 16
  %28 = ptrtoint ptr %connected_kn.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %connected_kn.i.i, align 8
  tail call void @kernfs_notify(ptr noundef %29) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then4.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %30 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %connected.i.i, align 8
  %31 = ptrtoint ptr %sdevice.021.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %sdevice.0.i.i = load ptr, ptr %sdevice.021.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %sdevice.0.i.i, %devices.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end6.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end.i.i.if.end6.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i.if.end6.i_crit_edge, %if.then.i.i.if.end6.i_crit_edge, %if.then5.i.if.end6.i_crit_edge, %list_del.exit.i.if.end6.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #15
  %dev.i = getelementptr inbounds %struct.siox_device, ptr %3, i32 0, i32 2
  tail call void @device_unregister(ptr noundef %dev.i) #15
  br label %siox_device_remove.exit

siox_device_remove.exit:                          ; preds = %if.end6.i, %if.then.i
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poll_interval_ns_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_interval = getelementptr i8, ptr %dev, i32 -104
  %0 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_interval, align 8
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef %1) #15
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, i64 noundef %mul.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poll_interval_ns_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #15
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %val, align 8, !annotation !185
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %lock.i = getelementptr i8, ptr %dev, i32 -100
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %val, align 8
  %call1 = call i32 @nsecs_to_jiffies(i64 noundef %2) #15
  %poll_interval = getelementptr i8, ptr %dev, i32 -104
  %3 = ptrtoint ptr %poll_interval to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1, ptr %poll_interval, align 8
  call void @mutex_unlock(ptr noundef %lock.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_siox_set_data(ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i32 noundef %bufoffset) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_siox_set_data, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_siox_set_data, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !183

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !190
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_siox_set_data, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i32 noundef %bufoffset) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !191
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !191
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !183

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !173) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_siox_set_data, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_siox_set_data.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_siox_set_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 32, ptr noundef nonnull @.str.48) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !193
  %38 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
define internal fastcc void @trace_siox_get_data(ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i8 noundef zeroext %status_clean, i32 noundef %bufoffset) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_siox_get_data, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_siox_get_data, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !189

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !183

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !173) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !194
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_siox_get_data, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %smaster, ptr noundef %sdevice, i32 noundef %devno, i8 noundef zeroext %status_clean, i32 noundef %bufoffset) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !195
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !195
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !183

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !173) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_siox_get_data, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_siox_get_data.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_siox_get_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 61, ptr noundef nonnull @.str.48) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !193
  %38 = tail call i32 @llvm.read_register.i32(metadata !173) #15
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
declare dso_local void @kernfs_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !81, !83, !85, !87, !88, !90, !92, !93, !95, !97, !99, !101, !103, !104, !106, !108, !109, !111, !112, !114, !116, !117, !119, !121, !122, !124, !126, !127, !129, !130, !132, !134, !136, !138, !139, !140, !141, !142, !143, !145, !146, !147, !149, !150, !152, !153, !155, !157, !159, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172}
!llvm.named.register.sp = !{!173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__tracepoint_siox_set_data, !1, !"__tracepoint_siox_set_data", i1 false, i1 false}
!1 = !{!"../include/trace/events/siox.h", i32 9, i32 1}
!2 = !{ptr @__tracepoint_ptr_siox_set_data, !1, !"__tracepoint_ptr_siox_set_data", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_siox_set_data, !1, !"__SCK__tp_func_siox_set_data", i1 false, i1 false}
!4 = !{ptr @__tracepoint_siox_get_data, !5, !"__tracepoint_siox_get_data", i1 false, i1 false}
!5 = !{!"../include/trace/events/siox.h", i32 34, i32 1}
!6 = !{ptr @__tracepoint_ptr_siox_get_data, !5, !"__tracepoint_ptr_siox_get_data", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_siox_get_data, !5, !"__SCK__tp_func_siox_get_data", i1 false, i1 false}
!8 = !{ptr @event_class_siox_set_data, !1, !"event_class_siox_set_data", i1 false, i1 false}
!9 = !{ptr @event_siox_set_data, !1, !"event_siox_set_data", i1 false, i1 false}
!10 = !{ptr @__event_siox_set_data, !1, !"__event_siox_set_data", i1 false, i1 false}
!11 = !{ptr @event_class_siox_get_data, !5, !"event_class_siox_get_data", i1 false, i1 false}
!12 = !{ptr @event_siox_get_data, !5, !"event_siox_get_data", i1 false, i1 false}
!13 = !{ptr @__event_siox_get_data, !5, !"__event_siox_get_data", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_siox_set_data, !1, !"__bpf_trace_tp_map_siox_set_data", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_siox_get_data, !5, !"__bpf_trace_tp_map_siox_get_data", i1 false, i1 false}
!16 = !{ptr @__ksymtab_siox_device_synced, !17, !"__ksymtab_siox_device_synced", i1 false, i1 false}
!17 = !{!"../drivers/siox/siox-core.c", i32 113, i32 1}
!18 = !{ptr @__ksymtab_siox_device_connected, !19, !"__ksymtab_siox_device_connected", i1 false, i1 false}
!19 = !{!"../drivers/siox/siox-core.c", i32 126, i32 1}
!20 = !{ptr @__ksymtab_siox_master_alloc, !21, !"__ksymtab_siox_master_alloc", i1 false, i1 false}
!21 = !{!"../drivers/siox/siox-core.c", i32 708, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/siox/siox-core.c", i32 720, i32 30}
!24 = !{ptr @siox_master_register.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/siox/siox-core.c", i32 722, i32 2}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__ksymtab_siox_master_register, !28, !"__ksymtab_siox_master_register", i1 false, i1 false}
!28 = !{!"../drivers/siox/siox-core.c", i32 739, i32 1}
!29 = !{ptr @__ksymtab_siox_master_unregister, !30, !"__ksymtab_siox_master_unregister", i1 false, i1 false}
!30 = !{!"../drivers/siox/siox-core.c", i32 769, i32 1}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/siox/siox-core.c", i32 891, i32 3}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__siox_driver_register._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @__siox_driver_register._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/siox/siox-core.c", i32 901, i32 3}
!39 = !{ptr @__siox_driver_register._entry.5, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @__siox_driver_register._entry_ptr.7, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab___siox_driver_register, !42, !"__ksymtab___siox_driver_register", i1 false, i1 false}
!42 = !{!"../drivers/siox/siox-core.c", i32 906, i32 1}
!43 = !{ptr @__initcall__kmod_siox_core__265_922_siox_init4, !44, !"__initcall__kmod_siox_core__265_922_siox_init4", i1 false, i1 false}
!44 = !{!"../drivers/siox/siox-core.c", i32 922, i32 1}
!45 = !{ptr @__exitcall_siox_exit, !46, !"__exitcall_siox_exit", i1 false, i1 false}
!46 = !{!"../drivers/siox/siox-core.c", i32 928, i32 1}
!47 = !{ptr @__UNIQUE_ID_author266, !48, !"__UNIQUE_ID_author266", i1 false, i1 false}
!48 = !{!"../drivers/siox/siox-core.c", i32 930, i32 1}
!49 = !{ptr @__UNIQUE_ID_description267, !50, !"__UNIQUE_ID_description267", i1 false, i1 false}
!50 = !{!"../drivers/siox/siox-core.c", i32 931, i32 1}
!51 = !{ptr @__UNIQUE_ID_file268, !52, !"__UNIQUE_ID_file268", i1 false, i1 false}
!52 = !{!"../drivers/siox/siox-core.c", i32 932, i32 1}
!53 = !{ptr @__UNIQUE_ID_license269, !52, !"__UNIQUE_ID_license269", i1 false, i1 false}
!54 = distinct !{null, !55, !"siox_is_registered", i1 false, i1 false}
!55 = !{!"../drivers/siox/siox-core.c", i32 39, i32 13}
!56 = !{ptr @__tpstrtab_siox_set_data, !1, !"__tpstrtab_siox_set_data", i1 false, i1 false}
!57 = !{ptr @__tpstrtab_siox_get_data, !5, !"__tpstrtab_siox_get_data", i1 false, i1 false}
!58 = !{ptr @str__siox__trace_system_name, !59, !"str__siox__trace_system_name", i1 false, i1 false}
!59 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!60 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @trace_event_fields_siox_set_data, !1, !"trace_event_fields_siox_set_data", i1 false, i1 false}
!69 = !{ptr @trace_event_type_funcs_siox_set_data, !1, !"trace_event_type_funcs_siox_set_data", i1 false, i1 false}
!70 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @print_fmt_siox_set_data, !1, !"print_fmt_siox_set_data", i1 false, i1 false}
!72 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.18, !5, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.19, !5, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @trace_event_fields_siox_get_data, !5, !"trace_event_fields_siox_get_data", i1 false, i1 false}
!76 = !{ptr @trace_event_type_funcs_siox_get_data, !5, !"trace_event_type_funcs_siox_get_data", i1 false, i1 false}
!77 = !{ptr @.str.20, !5, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @print_fmt_siox_get_data, !5, !"print_fmt_siox_get_data", i1 false, i1 false}
!79 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/siox/siox-core.c", i32 547, i32 10}
!81 = !{ptr @siox_bus_type, !82, !"siox_bus_type", i1 false, i1 false}
!82 = !{!"../drivers/siox/siox-core.c", i32 546, i32 24}
!83 = !{ptr @siox_device_type, !84, !"siox_device_type", i1 false, i1 false}
!84 = !{!"../drivers/siox/siox-core.c", i32 501, i32 27}
!85 = !{ptr @siox_device_groups, !86, !"siox_device_groups", i1 false, i1 false}
!86 = !{!"../drivers/siox/siox-core.c", i32 492, i32 1}
!87 = !{ptr @siox_device_group, !86, !"siox_device_group", i1 false, i1 false}
!88 = !{ptr @siox_device_attrs, !89, !"siox_device_attrs", i1 false, i1 false}
!89 = !{!"../drivers/siox/siox-core.c", i32 482, i32 26}
!90 = !{ptr @.str.22, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/siox/siox-core.c", i32 392, i32 8}
!92 = !{ptr @dev_attr_type, !91, !"dev_attr_type", i1 false, i1 false}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/siox/siox-core.c", i32 389, i32 22}
!95 = !{ptr @dev_attr_inbytes, !96, !"dev_attr_inbytes", i1 false, i1 false}
!96 = !{!"../drivers/siox/siox-core.c", i32 402, i32 8}
!97 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/siox/siox-core.c", i32 399, i32 22}
!99 = !{ptr @dev_attr_outbytes, !100, !"dev_attr_outbytes", i1 false, i1 false}
!100 = !{!"../drivers/siox/siox-core.c", i32 412, i32 8}
!101 = !{ptr @.str.25, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/siox/siox-core.c", i32 429, i32 8}
!103 = !{ptr @dev_attr_status_errors, !102, !"dev_attr_status_errors", i1 false, i1 false}
!104 = !{ptr @.str.26, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/siox/siox-core.c", i32 426, i32 22}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/siox/siox-core.c", i32 446, i32 8}
!108 = !{ptr @dev_attr_connected, !107, !"dev_attr_connected", i1 false, i1 false}
!109 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/siox/siox-core.c", i32 463, i32 8}
!111 = !{ptr @dev_attr_watchdog, !110, !"dev_attr_watchdog", i1 false, i1 false}
!112 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/siox/siox-core.c", i32 460, i32 22}
!114 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/siox/siox-core.c", i32 480, i32 8}
!116 = !{ptr @dev_attr_watchdog_errors, !115, !"dev_attr_watchdog_errors", i1 false, i1 false}
!117 = !{ptr @siox_master_type, !118, !"siox_master_type", i1 false, i1 false}
!118 = !{!"../drivers/siox/siox-core.c", i32 679, i32 27}
!119 = !{ptr @siox_master_groups, !120, !"siox_master_groups", i1 false, i1 false}
!120 = !{!"../drivers/siox/siox-core.c", i32 670, i32 1}
!121 = !{ptr @siox_master_group, !120, !"siox_master_group", i1 false, i1 false}
!122 = !{ptr @siox_master_attrs, !123, !"siox_master_attrs", i1 false, i1 false}
!123 = !{!"../drivers/siox/siox-core.c", i32 663, i32 26}
!124 = !{ptr @.str.31, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/siox/siox-core.c", i32 585, i32 8}
!126 = !{ptr @dev_attr_active, !125, !"dev_attr_active", i1 false, i1 false}
!127 = !{ptr @.str.32, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/siox/siox-core.c", i32 614, i32 8}
!129 = !{ptr @dev_attr_device_add, !128, !"dev_attr_device_add", i1 false, i1 false}
!130 = !{ptr @.str.33, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/siox/siox-core.c", i32 601, i32 20}
!132 = !{ptr @.str.34, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/siox/siox-core.c", i32 606, i32 19}
!134 = !{ptr @.str.35, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/siox/siox-core.c", i32 795, i32 30}
!136 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/siox/siox-core.c", i32 804, i32 4}
!138 = !{ptr @.str.37, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.39, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @siox_device_add._entry, !137, !"_entry", i1 false, i1 false}
!142 = !{ptr @siox_device_add._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.41, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/siox/siox-core.c", i32 816, i32 3}
!145 = !{ptr @siox_device_add._entry.40, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @siox_device_add._entry_ptr.42, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.43, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/siox/siox-core.c", i32 630, i32 8}
!149 = !{ptr @dev_attr_device_remove, !148, !"dev_attr_device_remove", i1 false, i1 false}
!150 = !{ptr @.str.44, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/siox/siox-core.c", i32 661, i32 8}
!152 = !{ptr @dev_attr_poll_interval_ns, !151, !"dev_attr_poll_interval_ns", i1 false, i1 false}
!153 = !{ptr @.str.45, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/siox/siox-core.c", i32 637, i32 22}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../drivers/siox/siox-core.c", i32 311, i32 4}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../drivers/siox/siox-core.c", i32 323, i32 3}
!159 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!160 = !{ptr @.str.47, !1, !"<string literal>", i1 false, i1 false}
!161 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!162 = !{ptr @.str.48, !1, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!165 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!166 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!167 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!168 = !{ptr @.str.50, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/siox/siox-core.c", i32 914, i32 3}
!170 = !{ptr @.str.51, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @siox_init._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @siox_init._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{!"sp"}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{!"auto-init"}
!186 = !{i8 0, i8 2}
!187 = !{i64 2155275661}
!188 = !{i64 2155280390}
!189 = !{i64 2148711304, i64 2148711309, i64 2148711322, i64 2148711366, i64 2148711400, i64 2148711421}
!190 = !{i64 2152749470}
!191 = !{i64 2152749727}
!192 = !{i64 2149319893}
!193 = !{i64 2149320929}
!194 = !{i64 2152771933}
!195 = !{i64 2152772218}
