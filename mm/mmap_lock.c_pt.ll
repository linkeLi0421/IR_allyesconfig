; ModuleID = '/llk/IR_all_yes/mm/mmap_lock.c_pt.bc'
source_filename = "../mm/mmap_lock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__tracepoint_mmap_lock_start_locking\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_mmap_lock_start_locking\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_mmap_lock_start_locking\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_mmap_lock_start_locking\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_mmap_lock_start_locking\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_mmap_lock_start_locking\09\09\09\09"
module asm "\09.long\09__crc___traceiter_mmap_lock_start_locking\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_mmap_lock_start_locking\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_mmap_lock_start_locking\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_mmap_lock_start_locking\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_mmap_lock_start_locking\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_mmap_lock_start_locking\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_mmap_lock_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tracepoint_mmap_lock_acquire_returned\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_mmap_lock_acquire_returned\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_mmap_lock_acquire_returned\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_mmap_lock_acquire_returned\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_mmap_lock_acquire_returned\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_mmap_lock_acquire_returned\09\09\09\09"
module asm "\09.long\09__crc___traceiter_mmap_lock_acquire_returned\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_mmap_lock_acquire_returned\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_mmap_lock_acquire_returned\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_mmap_lock_acquire_returned\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_mmap_lock_acquire_returned\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_mmap_lock_acquire_returned\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_mmap_lock_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__tracepoint_mmap_lock_released\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_mmap_lock_released\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_mmap_lock_released\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_mmap_lock_released\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__traceiter_mmap_lock_released\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_mmap_lock_released\09\09\09\09"
module asm "\09.long\09__crc___traceiter_mmap_lock_released\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_mmap_lock_released\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__SCK__tp_func_mmap_lock_released\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_mmap_lock_released\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_mmap_lock_released\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_mmap_lock_released\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_mmap_lock_released:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__mmap_lock_do_trace_start_locking\22, \22a\22\09"
module asm "\09.weak\09__crc___mmap_lock_do_trace_start_locking\09\09\09\09"
module asm "\09.long\09__crc___mmap_lock_do_trace_start_locking\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmap_lock_do_trace_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmap_lock_do_trace_start_locking\22\09\09\09\09\09"
module asm "__kstrtabns___mmap_lock_do_trace_start_locking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__mmap_lock_do_trace_acquire_returned\22, \22a\22\09"
module asm "\09.weak\09__crc___mmap_lock_do_trace_acquire_returned\09\09\09\09"
module asm "\09.long\09__crc___mmap_lock_do_trace_acquire_returned\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmap_lock_do_trace_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmap_lock_do_trace_acquire_returned\22\09\09\09\09\09"
module asm "__kstrtabns___mmap_lock_do_trace_acquire_returned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__mmap_lock_do_trace_released\22, \22a\22\09"
module asm "\09.weak\09__crc___mmap_lock_do_trace_released\09\09\09\09"
module asm "\09.long\09__crc___mmap_lock_do_trace_released\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmap_lock_do_trace_released:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmap_lock_do_trace_released\22\09\09\09\09\09"
module asm "__kstrtabns___mmap_lock_do_trace_released:\09\09\09\09\09"
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
%union.anon.101 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.memcg_path = type { %struct.local_lock_t, ptr, %struct.local_t }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.local_t = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mmap_lock = type { %struct.trace_entry, ptr, i32, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mmap_lock_acquire_returned = type { %struct.trace_entry, ptr, i32, i8, i8, [0 x i8] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mmap_lock_start_locking = internal constant [24 x i8] c"mmap_lock_start_locking\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmap_lock_start_locking = dso_local global %struct.static_call_key { ptr @__traceiter_mmap_lock_start_locking }, align 4
@__tracepoint_mmap_lock_start_locking = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mmap_lock_start_locking, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mmap_lock_start_locking, ptr null, ptr @__traceiter_mmap_lock_start_locking, ptr @trace_mmap_lock_reg, ptr @trace_mmap_lock_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmap_lock_start_locking = internal constant ptr @__tracepoint_mmap_lock_start_locking, section "__tracepoints_ptrs", align 4
@__tpstrtab_mmap_lock_released = internal constant [19 x i8] c"mmap_lock_released\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmap_lock_released = dso_local global %struct.static_call_key { ptr @__traceiter_mmap_lock_released }, align 4
@__tracepoint_mmap_lock_released = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mmap_lock_released, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mmap_lock_released, ptr null, ptr @__traceiter_mmap_lock_released, ptr @trace_mmap_lock_reg, ptr @trace_mmap_lock_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmap_lock_released = internal constant ptr @__tracepoint_mmap_lock_released, section "__tracepoints_ptrs", align 4
@__tpstrtab_mmap_lock_acquire_returned = internal constant [27 x i8] c"mmap_lock_acquire_returned\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mmap_lock_acquire_returned = dso_local global %struct.static_call_key { ptr @__traceiter_mmap_lock_acquire_returned }, align 4
@__tracepoint_mmap_lock_acquire_returned = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mmap_lock_acquire_returned, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mmap_lock_acquire_returned, ptr null, ptr @__traceiter_mmap_lock_acquire_returned, ptr @trace_mmap_lock_reg, ptr @trace_mmap_lock_unreg, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mmap_lock_acquire_returned = internal constant ptr @__tracepoint_mmap_lock_acquire_returned, section "__tracepoints_ptrs", align 4
@str__mmap_lock__trace_system_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmap_lock\00", [22 x i8] zeroinitializer }, align 32
@trace_event_fields_mmap_lock = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.95 { %struct.anon.96 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mmap_lock = internal global %struct.trace_event_class { ptr @str__mmap_lock__trace_system_name, ptr @trace_event_raw_event_mmap_lock, ptr @perf_trace_mmap_lock, ptr @trace_event_reg, ptr @trace_event_fields_mmap_lock, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmap_lock, i64 24), ptr getelementptr (i8, ptr @event_class_mmap_lock, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mmap_lock = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mmap_lock, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mmap_lock = internal global { [94 x i8], [34 x i8] } { [94 x i8] c"\22mm=%p memcg_path=%s write=%s\22, REC->mm, __get_str(memcg_path), REC->write ? \22true\22 : \22false\22\00", [34 x i8] zeroinitializer }, align 32
@event_mmap_lock_start_locking = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmap_lock, %union.anon.97 { ptr @__tracepoint_mmap_lock_start_locking }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmap_lock }, ptr @print_fmt_mmap_lock, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mmap_lock_start_locking = internal global ptr @event_mmap_lock_start_locking, section "_ftrace_events", align 4
@event_mmap_lock_released = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmap_lock, %union.anon.97 { ptr @__tracepoint_mmap_lock_released }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmap_lock }, ptr @print_fmt_mmap_lock, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mmap_lock_released = internal global ptr @event_mmap_lock_released, section "_ftrace_events", align 4
@trace_event_fields_mmap_lock_acquire_returned = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.95 { %struct.anon.96 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mmap_lock_acquire_returned = internal global %struct.trace_event_class { ptr @str__mmap_lock__trace_system_name, ptr @trace_event_raw_event_mmap_lock_acquire_returned, ptr @perf_trace_mmap_lock_acquire_returned, ptr @trace_event_reg, ptr @trace_event_fields_mmap_lock_acquire_returned, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mmap_lock_acquire_returned, i64 24), ptr getelementptr (i8, ptr @event_class_mmap_lock_acquire_returned, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mmap_lock_acquire_returned = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mmap_lock_acquire_returned, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mmap_lock_acquire_returned = internal global { [138 x i8], [54 x i8] } { [138 x i8] c"\22mm=%p memcg_path=%s write=%s success=%s\22, REC->mm, __get_str(memcg_path), REC->write ? \22true\22 : \22false\22, REC->success ? \22true\22 : \22false\22\00", [54 x i8] zeroinitializer }, align 32
@event_mmap_lock_acquire_returned = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mmap_lock_acquire_returned, %union.anon.97 { ptr @__tracepoint_mmap_lock_acquire_returned }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mmap_lock_acquire_returned }, ptr @print_fmt_mmap_lock_acquire_returned, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mmap_lock_acquire_returned = internal global ptr @event_mmap_lock_acquire_returned, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mmap_lock_start_locking = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_mmap_lock_start_locking, ptr @__bpf_trace_mmap_lock, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mmap_lock_released = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_mmap_lock_released, ptr @__bpf_trace_mmap_lock, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mmap_lock_acquire_returned = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_mmap_lock_acquire_returned, ptr @__bpf_trace_mmap_lock_acquire_returned, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab___tracepoint_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_mmap_lock_start_locking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_mmap_lock_start_locking to i32), ptr @__kstrtab___tracepoint_mmap_lock_start_locking, ptr @__kstrtabns___tracepoint_mmap_lock_start_locking }, section "___ksymtab+__tracepoint_mmap_lock_start_locking", align 4
@__kstrtab___traceiter_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_mmap_lock_start_locking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_mmap_lock_start_locking to i32), ptr @__kstrtab___traceiter_mmap_lock_start_locking, ptr @__kstrtabns___traceiter_mmap_lock_start_locking }, section "___ksymtab+__traceiter_mmap_lock_start_locking", align 4
@__kstrtab___SCK__tp_func_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_mmap_lock_start_locking = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_mmap_lock_start_locking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_mmap_lock_start_locking to i32), ptr @__kstrtab___SCK__tp_func_mmap_lock_start_locking, ptr @__kstrtabns___SCK__tp_func_mmap_lock_start_locking }, section "___ksymtab+__SCK__tp_func_mmap_lock_start_locking", align 4
@__kstrtab___tracepoint_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_mmap_lock_acquire_returned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_mmap_lock_acquire_returned to i32), ptr @__kstrtab___tracepoint_mmap_lock_acquire_returned, ptr @__kstrtabns___tracepoint_mmap_lock_acquire_returned }, section "___ksymtab+__tracepoint_mmap_lock_acquire_returned", align 4
@__kstrtab___traceiter_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_mmap_lock_acquire_returned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_mmap_lock_acquire_returned to i32), ptr @__kstrtab___traceiter_mmap_lock_acquire_returned, ptr @__kstrtabns___traceiter_mmap_lock_acquire_returned }, section "___ksymtab+__traceiter_mmap_lock_acquire_returned", align 4
@__kstrtab___SCK__tp_func_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_mmap_lock_acquire_returned = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_mmap_lock_acquire_returned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_mmap_lock_acquire_returned to i32), ptr @__kstrtab___SCK__tp_func_mmap_lock_acquire_returned, ptr @__kstrtabns___SCK__tp_func_mmap_lock_acquire_returned }, section "___ksymtab+__SCK__tp_func_mmap_lock_acquire_returned", align 4
@__kstrtab___tracepoint_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_mmap_lock_released = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_mmap_lock_released to i32), ptr @__kstrtab___tracepoint_mmap_lock_released, ptr @__kstrtabns___tracepoint_mmap_lock_released }, section "___ksymtab+__tracepoint_mmap_lock_released", align 4
@__kstrtab___traceiter_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_mmap_lock_released = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_mmap_lock_released to i32), ptr @__kstrtab___traceiter_mmap_lock_released, ptr @__kstrtabns___traceiter_mmap_lock_released }, section "___ksymtab+__traceiter_mmap_lock_released", align 4
@__kstrtab___SCK__tp_func_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_mmap_lock_released = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_mmap_lock_released = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_mmap_lock_released to i32), ptr @__kstrtab___SCK__tp_func_mmap_lock_released, ptr @__kstrtabns___SCK__tp_func_mmap_lock_released }, section "___ksymtab+__SCK__tp_func_mmap_lock_released", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@memcg_paths = weak dso_local global %struct.memcg_path { %struct.local_lock_t { %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 1, i32 0, i32 0 }, ptr null }, ptr null, %struct.local_t zeroinitializer }, section ".data..percpu", align 4
@reg_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reg_lock, i64 52), ptr getelementptr (i8, ptr @reg_lock, i64 52) }, ptr @reg_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@reg_refcount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@tmp_bufs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab___mmap_lock_do_trace_start_locking = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmap_lock_do_trace_start_locking = external dso_local constant [0 x i8], align 1
@__ksymtab___mmap_lock_do_trace_start_locking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmap_lock_do_trace_start_locking to i32), ptr @__kstrtab___mmap_lock_do_trace_start_locking, ptr @__kstrtabns___mmap_lock_do_trace_start_locking }, section "___ksymtab+__mmap_lock_do_trace_start_locking", align 4
@__kstrtab___mmap_lock_do_trace_acquire_returned = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmap_lock_do_trace_acquire_returned = external dso_local constant [0 x i8], align 1
@__ksymtab___mmap_lock_do_trace_acquire_returned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmap_lock_do_trace_acquire_returned to i32), ptr @__kstrtab___mmap_lock_do_trace_acquire_returned, ptr @__kstrtabns___mmap_lock_do_trace_acquire_returned }, section "___ksymtab+__mmap_lock_do_trace_acquire_returned", align 4
@__kstrtab___mmap_lock_do_trace_released = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmap_lock_do_trace_released = external dso_local constant [0 x i8], align 1
@__ksymtab___mmap_lock_do_trace_released = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmap_lock_do_trace_released to i32), ptr @__kstrtab___mmap_lock_do_trace_released, ptr @__kstrtabns___mmap_lock_do_trace_released }, section "___ksymtab+__mmap_lock_do_trace_released", align 4
@__pcpu_unique_memcg_paths = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"struct mm_struct *\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mm\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"memcg_path\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mm=%p memcg_path=%s write=%s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mm=%p memcg_path=%s write=%s success=%s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_lock\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@free_memcg_path_bufs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm/mmap_lock.c\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l->owner\00", [23 x i8] zeroinitializer }, align 32
@get_memcg_path_buf.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/trace/events/mmap_lock.h\00", [63 x i8] zeroinitializer }, align 32
@trace_mmap_lock_start_locking.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@trace_mmap_lock_acquire_returned.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_mmap_lock_released.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.28 = private unnamed_addr constant [34 x i8] c"str__mmap_lock__trace_system_name\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 36, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [29 x i8] c"trace_event_fields_mmap_lock\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_mmap_lock\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"print_fmt_mmap_lock\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [30 x i8] c"event_mmap_lock_start_locking\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [25 x i8] c"event_mmap_lock_released\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 50, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [46 x i8] c"trace_event_fields_mmap_lock_acquire_returned\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [50 x i8] c"trace_event_type_funcs_mmap_lock_acquire_returned\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [37 x i8] c"print_fmt_mmap_lock_acquire_returned\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [33 x i8] c"event_mmap_lock_acquire_returned\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 49, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"reg_lock\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"reg_refcount\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 29, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"tmp_bufs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 53, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 230, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 16, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 52, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 28, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 64, i32 14 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 30, i32 2 }
@___asan_gen_.131 = private constant [18 x i8] c"../mm/mmap_lock.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 140, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 695, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 723, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [36 x i8] c"../include/trace/events/mmap_lock.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 49, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 108, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 36, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__bpf_trace_tp_map_mmap_lock_acquire_returned, ptr @__bpf_trace_tp_map_mmap_lock_released, ptr @__bpf_trace_tp_map_mmap_lock_start_locking, ptr @__event_mmap_lock_acquire_returned, ptr @__event_mmap_lock_released, ptr @__event_mmap_lock_start_locking, ptr @__ksymtab___SCK__tp_func_mmap_lock_acquire_returned, ptr @__ksymtab___SCK__tp_func_mmap_lock_released, ptr @__ksymtab___SCK__tp_func_mmap_lock_start_locking, ptr @__ksymtab___mmap_lock_do_trace_acquire_returned, ptr @__ksymtab___mmap_lock_do_trace_released, ptr @__ksymtab___mmap_lock_do_trace_start_locking, ptr @__ksymtab___traceiter_mmap_lock_acquire_returned, ptr @__ksymtab___traceiter_mmap_lock_released, ptr @__ksymtab___traceiter_mmap_lock_start_locking, ptr @__ksymtab___tracepoint_mmap_lock_acquire_returned, ptr @__ksymtab___tracepoint_mmap_lock_released, ptr @__ksymtab___tracepoint_mmap_lock_start_locking, ptr @__tracepoint_mmap_lock_acquire_returned, ptr @__tracepoint_mmap_lock_released, ptr @__tracepoint_mmap_lock_start_locking, ptr @__tracepoint_ptr_mmap_lock_acquire_returned, ptr @__tracepoint_ptr_mmap_lock_released, ptr @__tracepoint_ptr_mmap_lock_start_locking, ptr @event_class_mmap_lock, ptr @event_class_mmap_lock_acquire_returned, ptr @event_mmap_lock_acquire_returned, ptr @event_mmap_lock_released, ptr @event_mmap_lock_start_locking, ptr @str__mmap_lock__trace_system_name, ptr @trace_event_fields_mmap_lock, ptr @trace_event_type_funcs_mmap_lock, ptr @print_fmt_mmap_lock, ptr @trace_event_fields_mmap_lock_acquire_returned, ptr @trace_event_type_funcs_mmap_lock_acquire_returned, ptr @print_fmt_mmap_lock_acquire_returned, ptr @.str, ptr @reg_lock, ptr @reg_refcount, ptr @tmp_bufs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mmap_lock__trace_system_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mmap_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mmap_lock to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mmap_lock to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mmap_lock_start_locking to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mmap_lock_released to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mmap_lock_acquire_returned to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mmap_lock_acquire_returned to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mmap_lock_acquire_returned to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mmap_lock_acquire_returned to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_refcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp_bufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmap_lock_start_locking(ptr nocapture readnone %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  tail call void %2(ptr noundef %4, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_mmap_lock_reg() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @reg_lock, i32 noundef 0) #13
  %0 = load i32, ptr @reg_refcount, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @reg_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %1) #13
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i, i32 4) #13
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !120

kmalloc_array.exit.thread:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @tmp_bufs, align 4
  br label %out_fail

if.end7.i:                                        ; preds = %if.end.i.i
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3264) #16
  store ptr %call8.i, ptr @tmp_bufs, align 4
  %cmp = icmp eq ptr %call8.i, null
  br i1 %cmp, label %if.end7.i.out_fail_crit_edge, label %for.cond.preheader

if.end7.i.out_fail_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fail

for.cond.preheader:                               ; preds = %if.end7.i
  %call465 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call465, i32 %5)
  %cmp566 = icmp ult i32 %call465, %5
  br i1 %cmp566, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call467 = phi i32 [ %call4, %do.body.for.body_crit_edge ], [ %call465, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1024) #18
  %cmp7 = icmp eq ptr %call7.i, null
  br i1 %cmp7, label %out_fail_free, label %do.body

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !121
  %arrayidx43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call467
  %7 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx43, align 4
  %add44 = add i32 %8, ptrtoint (ptr @memcg_paths to i32)
  %9 = inttoptr i32 %add44 to ptr
  %buf45 = getelementptr inbounds %struct.memcg_path, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %buf45 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i, ptr %buf45, align 4
  %call4 = tail call i32 @cpumask_next(i32 noundef %call467, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp5 = icmp ult i32 %call4, %11
  br i1 %cmp5, label %do.body.for.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out_fail_free:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @free_memcg_path_bufs()
  br label %out_fail

out_fail:                                         ; preds = %out_fail_free, %if.end7.i.out_fail_crit_edge, %kmalloc_array.exit.thread
  %12 = load i32, ptr @reg_refcount, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr @reg_refcount, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_fail, %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out_fail ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @reg_lock) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trace_mmap_lock_unreg() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @reg_lock, i32 noundef 0) #13
  %0 = load i32, ptr @reg_refcount, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @reg_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @free_memcg_path_bufs()
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @reg_lock) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmap_lock_released(ptr nocapture readnone %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_released, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  tail call void %2(ptr noundef %4, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mmap_lock_acquire_returned(ptr nocapture readnone %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body3.do.body3_crit_edge ], [ %0, %entry.do.body3_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %do.body3.if.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %do.body3.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mmap_lock(ptr noundef %__data, ptr noundef %mm, ptr noundef readonly %memcg_path, i1 noundef zeroext %write) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %frombool = zext i1 %write to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !122

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !120

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #13
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i29 = icmp eq ptr %memcg_path, null
  %spec.select.i = select i1 %tobool.not.i29, ptr @.str.2, ptr %memcg_path
  %call.i30 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #19
  %add = add i32 %call.i30, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = shl i32 %call.i30, 16
  %or.i = add i32 %add.i, 65553
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_memcg_path to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_memcg_path, align 4
  %mm8 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %mm8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mm, ptr %mm8, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 17
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #20
  %write13 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %write13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %write13, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mmap_lock(ptr noundef %__data, ptr noundef %mm, ptr noundef readonly %memcg_path, i1 noundef zeroext %write) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %frombool = zext i1 %write to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !123
  %tobool.not.i = icmp eq ptr %memcg_path, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.2, ptr %memcg_path
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #19
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65553
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !110) #13
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
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i53.not = icmp eq ptr %15, null
  br i1 %tobool.not.i53.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %add13 = add i32 %call.i, 32
  %and = and i32 %add13, -8
  %sub = add i32 %and, -4
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #13
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !110) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %call14, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_memcg_path to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_memcg_path, align 4
  %mm19 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %call14, i32 0, i32 1
  %28 = ptrtoint ptr %mm19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mm, ptr %mm19, align 4
  %add.ptr = getelementptr i8, ptr %call14, i32 17
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #20
  %write25 = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %write25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %write25, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef %sub, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mmap_lock_acquire_returned(ptr noundef %__data, ptr noundef %mm, ptr noundef readonly %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %frombool = zext i1 %write to i8
  %frombool1 = zext i1 %success to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !122

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !120

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #13
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i36 = icmp eq ptr %memcg_path, null
  %spec.select.i = select i1 %tobool.not.i36, ptr @.str.2, ptr %memcg_path
  %call.i37 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #19
  %add = add i32 %call.i37, 21
  %call5 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = shl i32 %call.i37, 16
  %or.i = add i32 %add.i, 65554
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %call5, i32 0, i32 2
  %3 = ptrtoint ptr %__data_loc_memcg_path to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_memcg_path, align 4
  %mm10 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %call5, i32 0, i32 1
  %4 = ptrtoint ptr %mm10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mm, ptr %mm10, align 4
  %add.ptr = getelementptr i8, ptr %call5, i32 18
  %call13 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #20
  %write15 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %call5, i32 0, i32 3
  %5 = ptrtoint ptr %write15 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %write15, align 4
  %success18 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %call5, i32 0, i32 4
  %6 = ptrtoint ptr %success18 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool1, ptr %success18, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mmap_lock_acquire_returned(ptr noundef %__data, ptr noundef %mm, ptr noundef readonly %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %frombool = zext i1 %write to i8
  %frombool1 = zext i1 %success to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !123
  %tobool.not.i = icmp eq ptr %memcg_path, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.2, ptr %memcg_path
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #19
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65554
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !110) #13
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
  br i1 %tobool.i.not, label %land.lhs.true10, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true10:                                  ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i60.not = icmp eq ptr %15, null
  br i1 %tobool.not.i60.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %entry.if.end_crit_edge
  %add15 = add i32 %call.i, 32
  %and = and i32 %add15, -8
  %sub = add i32 %and, -4
  %call16 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #13
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !110) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %call16, i32 0, i32 2
  %27 = ptrtoint ptr %__data_loc_memcg_path to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_memcg_path, align 4
  %mm21 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %call16, i32 0, i32 1
  %28 = ptrtoint ptr %mm21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mm, ptr %mm21, align 4
  %add.ptr = getelementptr i8, ptr %call16, i32 18
  %call25 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #20
  %write27 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %call16, i32 0, i32 3
  %29 = ptrtoint ptr %write27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %write27, align 4
  %success30 = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %call16, i32 0, i32 4
  %30 = ptrtoint ptr %success30 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool1, ptr %success30, align 1
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call16, i32 noundef %sub, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mmap_lock(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %mm to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %memcg_path to i32
  %conv4 = zext i32 %1 to i64
  %conv9 = zext i1 %write to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mmap_lock_acquire_returned(ptr noundef %__data, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %mm to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %memcg_path to i32
  %conv5 = zext i32 %1 to i64
  %conv10 = zext i1 %write to i64
  %conv16 = zext i1 %success to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5, i64 noundef %conv10, i64 noundef %conv16) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_memcg_path_bufs() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call65 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call65, i32 %0)
  %cmp66 = icmp ult i32 %call65, %0
  br i1 %cmp66, label %do.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.preheader:                                ; preds = %entry
  %1 = load ptr, ptr @tmp_bufs, align 4
  br label %do.body

do.body:                                          ; preds = %do.end9.do.body_crit_edge, %do.body.preheader
  %call68 = phi i32 [ %call, %do.end9.do.body_crit_edge ], [ %call65, %do.body.preheader ]
  %old.067 = phi ptr [ %incdec.ptr, %do.end9.do.body_crit_edge ], [ %1, %do.body.preheader ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call68
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @memcg_paths to i32)
  %4 = inttoptr i32 %add to ptr
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @reg_lock, i32 0, i32 5), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %do.body
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @free_memcg_path_bufs.__warned, align 1
  br i1 %.b64, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @free_memcg_path_bufs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 65, ptr noundef nonnull @.str.17) #13
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %do.body.do.end9_crit_edge
  %buf = getelementptr inbounds %struct.memcg_path, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %incdec.ptr = getelementptr ptr, ptr %old.067, i32 1
  %7 = ptrtoint ptr %old.067 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %old.067, align 4
  store volatile ptr null, ptr %buf, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call68, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %8
  br i1 %cmp, label %do.end9.do.body_crit_edge, label %do.end9.for.end_crit_edge

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end9.do.body_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %do.end9.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @synchronize_rcu() #13
  %call5069 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5069, i32 %9)
  %cmp5170 = icmp ult i32 %call5069, %9
  br i1 %cmp5170, label %for.body52.preheader, label %for.end.for.end54_crit_edge

for.end.for.end54_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end54

for.body52.preheader:                             ; preds = %for.end
  %10 = load ptr, ptr @tmp_bufs, align 4
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.preheader
  %call5072 = phi i32 [ %call50, %for.body52.for.body52_crit_edge ], [ %call5069, %for.body52.preheader ]
  %old.171 = phi ptr [ %incdec.ptr53, %for.body52.for.body52_crit_edge ], [ %10, %for.body52.preheader ]
  %incdec.ptr53 = getelementptr ptr, ptr %old.171, i32 1
  %11 = ptrtoint ptr %old.171 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %old.171, align 4
  tail call void @kfree(ptr noundef %12) #13
  %call50 = tail call i32 @cpumask_next(i32 noundef %call5072, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp51 = icmp ult i32 %call50, %13
  br i1 %cmp51, label %for.body52.for.body52_crit_edge, label %for.body52.for.end54_crit_edge

for.body52.for.end54_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end54

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body52

for.end54:                                        ; preds = %for.body52.for.end54_crit_edge, %for.end.for.end54_crit_edge
  %14 = load ptr, ptr @tmp_bufs, align 4
  tail call void @kfree(ptr noundef %14) #13
  store ptr null, ptr @tmp_bufs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext %write) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !124
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @memcg_paths to i32)
  %10 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %10)
  %call9 = tail call fastcc ptr @get_mm_memcg_path(ptr noundef %mm)
  %cmp.not = icmp eq ptr %call9, null
  %spec.select = select i1 %cmp.not, ptr @.str.1, ptr %call9
  tail call fastcc void @trace_mmap_lock_start_locking(ptr noundef %mm, ptr noundef nonnull %spec.select, i1 noundef zeroext %write)
  br i1 %cmp.not, label %entry.do.body14_crit_edge, label %if.then, !prof !120

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

if.then:                                          ; preds = %entry
  %11 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i37 = add i32 %16, ptrtoint (ptr @memcg_paths to i32)
  %17 = inttoptr i32 %add.i37 to ptr
  %buf_idx.i = getelementptr inbounds %struct.memcg_path, ptr %17, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_idx.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %buf_idx.i, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_idx.i, ptr %buf_idx.i, i32 256, ptr elementtype(i32) %buf_idx.i) #13, !srcloc !125
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then.put_memcg_path_buf.exit_crit_edge, label %land.lhs.true.i.i

if.then.put_memcg_path_buf.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_memcg_path_buf.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.put_memcg_path_buf.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.put_memcg_path_buf.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_memcg_path_buf.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.put_memcg_path_buf.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.put_memcg_path_buf.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_memcg_path_buf.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %put_memcg_path_buf.exit

put_memcg_path_buf.exit:                          ; preds = %if.then.i.i, %land.lhs.true2.i.i.put_memcg_path_buf.exit_crit_edge, %land.lhs.true.i.i.put_memcg_path_buf.exit_crit_edge, %if.then.put_memcg_path_buf.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  %19 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %do.body14

do.body14:                                        ; preds = %put_memcg_path_buf.exit, %entry.do.body14_crit_edge
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  %arrayidx23 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %26, ptrtoint (ptr @memcg_paths to i32)
  %27 = inttoptr i32 %add24 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %27)
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !127
  %28 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i35 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i35 to ptr
  %preempt_count.i.i36 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i36, align 4
  %sub.i = add i32 %31, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i36, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_acquire(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %l, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@local_lock_acquire, %__here) to i32)) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !122

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 30, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %owner39 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %owner39, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_mm_memcg_path(ptr noundef %mm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_mem_cgroup_from_mm(ptr noundef %mm) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 128
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.end.out_put_crit_edge, label %if.end4, !prof !120

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end4:                                          ; preds = %if.end
  %2 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, ptrtoint (ptr @memcg_paths to i32)
  %8 = inttoptr i32 %add.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !128
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end4.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end4.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end4
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end4.rcu_read_lock.exit.i_crit_edge
  %buf6.i = getelementptr inbounds %struct.memcg_path, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %buf6.i, align 4
  %call8.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end14.i_crit_edge

rcu_read_lock.exit.i.do.end14.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.do.end14.i_crit_edge, label %land.lhs.true11.i

land.lhs.true.i.do.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b24.i = load i1, ptr @get_memcg_path_buf.__warned, align 1
  br i1 %.b24.i, label %land.lhs.true11.i.do.end14.i_crit_edge, label %if.then.i

land.lhs.true11.i.do.end14.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14.i

if.then.i:                                        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @get_memcg_path_buf.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 140, ptr noundef nonnull @.str.21) #13
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then.i, %land.lhs.true11.i.do.end14.i_crit_edge, %land.lhs.true.i.do.end14.i_crit_edge, %rcu_read_lock.exit.i.do.end14.i_crit_edge
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %if.then16.i, label %get_memcg_path_buf.exit

if.then16.i:                                      ; preds = %do.end14.i
  %call.i25.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i25.i, label %if.then16.i.get_memcg_path_buf.exit.thread_crit_edge, label %land.lhs.true.i28.i

if.then16.i.get_memcg_path_buf.exit.thread_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_memcg_path_buf.exit.thread

land.lhs.true.i28.i:                              ; preds = %if.then16.i
  %call1.i26.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call1.i26.i, 0
  br i1 %tobool.not.i27.i, label %land.lhs.true.i28.i.get_memcg_path_buf.exit.thread_crit_edge, label %land.lhs.true2.i30.i

land.lhs.true.i28.i.get_memcg_path_buf.exit.thread_crit_edge: ; preds = %land.lhs.true.i28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_memcg_path_buf.exit.thread

land.lhs.true2.i30.i:                             ; preds = %land.lhs.true.i28.i
  %.b4.i29.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29.i, label %land.lhs.true2.i30.i.get_memcg_path_buf.exit.thread_crit_edge, label %if.then.i31.i

land.lhs.true2.i30.i.get_memcg_path_buf.exit.thread_crit_edge: ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_memcg_path_buf.exit.thread

if.then.i31.i:                                    ; preds = %land.lhs.true2.i30.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %get_memcg_path_buf.exit.thread

get_memcg_path_buf.exit.thread:                   ; preds = %if.then.i31.i, %land.lhs.true2.i30.i.get_memcg_path_buf.exit.thread_crit_edge, %land.lhs.true.i28.i.get_memcg_path_buf.exit.thread_crit_edge, %if.then16.i.get_memcg_path_buf.exit.thread_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i.i32.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i32.i to ptr
  %preempt_count.i.i.i.i33.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i33.i, align 4
  %sub.i.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i33.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %out_put

get_memcg_path_buf.exit:                          ; preds = %do.end14.i
  %buf_idx.i = getelementptr inbounds %struct.memcg_path, ptr %8, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_idx.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %buf_idx.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_idx.i, ptr %buf_idx.i, i32 256, ptr elementtype(i32) %buf_idx.i) #13, !srcloc !130
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !131
  %sub.i = add i32 %asmresult.i.i.i.i.i, -256
  %arrayidx19.i = getelementptr i8, ptr %12, i32 %sub.i
  %cmp6 = icmp eq ptr %arrayidx19.i, null
  br i1 %cmp6, label %get_memcg_path_buf.exit.out_put_crit_edge, label %if.end8

get_memcg_path_buf.exit.out_put_crit_edge:        ; preds = %get_memcg_path_buf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end8:                                          ; preds = %get_memcg_path_buf.exit
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 128
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kn.i, align 8
  %call.i.i18 = tail call i32 @kernfs_path_from_node(ptr noundef %21, ptr noundef null, ptr noundef nonnull %arrayidx19.i, i32 noundef 256) #13
  br label %out_put

out_put:                                          ; preds = %if.end8, %get_memcg_path_buf.exit.out_put_crit_edge, %get_memcg_path_buf.exit.thread, %if.end.out_put_crit_edge
  %buf.0 = phi ptr [ null, %if.end.out_put_crit_edge ], [ null, %get_memcg_path_buf.exit.out_put_crit_edge ], [ %arrayidx19.i, %if.end8 ], [ null, %get_memcg_path_buf.exit.thread ]
  %flags.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 7
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i19 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i19, label %if.then.i20, label %out_put.out_crit_edge

out_put.out_crit_edge:                            ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i20:                                      ; preds = %out_put
  %refcnt.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 2
  %24 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !128
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i.i.i, label %if.then.i20.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i20.rcu_read_lock.exit.i.i.i_crit_edge:   ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i20
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #13
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then.i20.rcu_read_lock.exit.i.i.i_crit_edge
  %28 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !122

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !132
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i2.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %36, %29
  %37 = inttoptr i32 %add.i.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add15.i.i.i = add i32 %39, -1
  store i32 %add15.i.i.i, ptr %37, align 4
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !133
  %and.i.i.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !120

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #13, !srcloc !134
  br label %if.end48.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %42, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %42, i32 1, i32 3, i32 1) #13
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #13, !srcloc !136
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then45.i.i.i, label %if.else.i.i.i.if.end48.i.i.i_crit_edge, !prof !120

if.else.i.i.i.if.end48.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i.i.i

if.then45.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i.i, align 4
  %release.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %release.i.i.i, align 4
  tail call void %47(ptr noundef %refcnt.i) #13
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then45.i.i.i, %if.else.i.i.i.if.end48.i.i.i_crit_edge, %do.end31.i.i.i
  %call.i3.i.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i3.i.i.i, label %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true.i6.i.i.i

if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge:   ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %percpu_ref_put.exit.i

land.lhs.true.i6.i.i.i:                           ; preds = %if.end48.i.i.i
  %call1.i4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %call1.i4.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true2.i8.i.i.i

land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %percpu_ref_put.exit.i

land.lhs.true2.i8.i.i.i:                          ; preds = %land.lhs.true.i6.i.i.i
  %.b4.i7.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i, label %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, label %if.then.i9.i.i.i

land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %percpu_ref_put.exit.i

if.then.i9.i.i.i:                                 ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %percpu_ref_put.exit.i

percpu_ref_put.exit.i:                            ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  %48 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i.i10.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %out

out:                                              ; preds = %percpu_ref_put.exit.i, %out_put.out_crit_edge, %entry.out_crit_edge
  %buf.1 = phi ptr [ null, %entry.out_crit_edge ], [ %buf.0, %out_put.out_crit_edge ], [ %buf.0, %percpu_ref_put.exit.i ]
  ret ptr %buf.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mmap_lock_start_locking(ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mmap_lock_start_locking, %do.body)) #13
          to label %if.end49 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !122

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %if.end31

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !139
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end49.critedge, label %if.end31.do.body2.i_crit_edge

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
  tail call void %15(ptr noundef %17, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #13
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !140
  br label %if.end49.sink.split

if.end49.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !140
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end49.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i74.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i74.c to ptr
  %preempt_count.i.i75.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i75.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i75.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75.c, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !122

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %27, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %29 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i84
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i85.not = icmp eq i32 %32, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %33 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !141
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_mmap_lock_start_locking.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_mmap_lock_start_locking.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 49, ptr noundef nonnull @.str.21) #13
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !142
  %38 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i87 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !122

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.27) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext %write, i1 noundef zeroext %success) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !143
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @memcg_paths to i32)
  %10 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %10)
  %call10 = tail call fastcc ptr @get_mm_memcg_path(ptr noundef %mm)
  %cmp.not = icmp eq ptr %call10, null
  %spec.select = select i1 %cmp.not, ptr @.str.1, ptr %call10
  tail call fastcc void @trace_mmap_lock_acquire_returned(ptr noundef %mm, ptr noundef nonnull %spec.select, i1 noundef zeroext %write, i1 noundef zeroext %success)
  br i1 %cmp.not, label %entry.do.body16_crit_edge, label %if.then, !prof !120

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16

if.then:                                          ; preds = %entry
  %11 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i39 = add i32 %16, ptrtoint (ptr @memcg_paths to i32)
  %17 = inttoptr i32 %add.i39 to ptr
  %buf_idx.i = getelementptr inbounds %struct.memcg_path, ptr %17, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_idx.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %buf_idx.i, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_idx.i, ptr %buf_idx.i, i32 256, ptr elementtype(i32) %buf_idx.i) #13, !srcloc !125
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then.put_memcg_path_buf.exit_crit_edge, label %land.lhs.true.i.i

if.then.put_memcg_path_buf.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_memcg_path_buf.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.put_memcg_path_buf.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.put_memcg_path_buf.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_memcg_path_buf.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.put_memcg_path_buf.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.put_memcg_path_buf.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_memcg_path_buf.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %put_memcg_path_buf.exit

put_memcg_path_buf.exit:                          ; preds = %if.then.i.i, %land.lhs.true2.i.i.put_memcg_path_buf.exit_crit_edge, %land.lhs.true.i.i.put_memcg_path_buf.exit_crit_edge, %if.then.put_memcg_path_buf.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  %19 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %do.body16

do.body16:                                        ; preds = %put_memcg_path_buf.exit, %entry.do.body16_crit_edge
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  %arrayidx25 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx25, align 4
  %add26 = add i32 %26, ptrtoint (ptr @memcg_paths to i32)
  %27 = inttoptr i32 %add26 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %27)
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !144
  %28 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i37 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i37 to ptr
  %preempt_count.i.i38 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i38, align 4
  %sub.i = add i32 %31, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i38, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mmap_lock_acquire_returned(ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mmap_lock_acquire_returned, %do.body)) #13
          to label %if.end51 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !122

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i78 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i78
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end72_crit_edge, label %if.end32

cpu_online.exit.if.end72_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.end32:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !145
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end51.critedge, label %if.end32.do.body3.i_crit_edge

if.end32.do.body3.i_crit_edge:                    ; preds = %if.end32
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %if.end32.do.body3.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body3.i.do.body3.i_crit_edge ], [ %13, %if.end32.do.body3.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write, i1 noundef zeroext %success) #13
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool12.not.i = icmp eq ptr %19, null
  br i1 %tobool12.not.i, label %cleanup, label %do.body3.i.do.body3.i_crit_edge

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

cleanup:                                          ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !146
  br label %if.end51.sink.split

if.end51.critedge:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !146
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.end51.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i76.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i76.c to ptr
  %preempt_count.i.i77.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i77.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i77.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i77.c, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i79 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i79 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i80 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i80, label %if.end51.cpu_online.exit88_crit_edge, label %land.rhs.i.i.i.i82

if.end51.cpu_online.exit88_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit88

land.rhs.i.i.i.i82:                               ; preds = %if.end51
  %.b37.i.i.i.i81 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i81, label %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, label %if.then.i.i.i.i83, !prof !122

land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge:   ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit88

if.then.i.i.i.i83:                                ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit88

cpu_online.exit88:                                ; preds = %if.then.i.i.i.i83, %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, %if.end51.cpu_online.exit88_crit_edge
  %div1.i.i.i84 = lshr i32 %27, 5
  %arrayidx.i.i.i85 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i84
  %29 = ptrtoint ptr %arrayidx.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i85, align 4
  %and.i.i.i86 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i86
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i87.not = icmp eq i32 %32, 0
  br i1 %tobool.i87.not, label %cpu_online.exit88.if.end72_crit_edge, label %if.then55

cpu_online.exit88.if.end72_crit_edge:             ; preds = %cpu_online.exit88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then55:                                        ; preds = %cpu_online.exit88
  %33 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !141
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 7), align 4
  %call61 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.then55.do.end70_crit_edge

if.then55.do.end70_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

land.lhs.true:                                    ; preds = %if.then55
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @trace_mmap_lock_acquire_returned.__warned, align 1
  br i1 %.b75, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_mmap_lock_acquire_returned.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 82, ptr noundef nonnull @.str.21) #13
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge, %if.then55.do.end70_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !142
  %38 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i89 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i89 to ptr
  %preempt_count.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i90, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i90, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %cpu_online.exit88.if.end72_crit_edge, %cpu_online.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext %write) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @memcg_paths to i32)
  %10 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %10)
  %call9 = tail call fastcc ptr @get_mm_memcg_path(ptr noundef %mm)
  %cmp.not = icmp eq ptr %call9, null
  %spec.select = select i1 %cmp.not, ptr @.str.1, ptr %call9
  tail call fastcc void @trace_mmap_lock_released(ptr noundef %mm, ptr noundef nonnull %spec.select, i1 noundef zeroext %write)
  br i1 %cmp.not, label %entry.do.body14_crit_edge, label %if.then, !prof !120

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

if.then:                                          ; preds = %entry
  %11 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i37 = add i32 %16, ptrtoint (ptr @memcg_paths to i32)
  %17 = inttoptr i32 %add.i37 to ptr
  %buf_idx.i = getelementptr inbounds %struct.memcg_path, ptr %17, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buf_idx.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %buf_idx.i, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %buf_idx.i, ptr %buf_idx.i, i32 256, ptr elementtype(i32) %buf_idx.i) #13, !srcloc !125
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.then.put_memcg_path_buf.exit_crit_edge, label %land.lhs.true.i.i

if.then.put_memcg_path_buf.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_memcg_path_buf.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.put_memcg_path_buf.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.put_memcg_path_buf.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_memcg_path_buf.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.put_memcg_path_buf.exit_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.put_memcg_path_buf.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_memcg_path_buf.exit

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #13
  br label %put_memcg_path_buf.exit

put_memcg_path_buf.exit:                          ; preds = %if.then.i.i, %land.lhs.true2.i.i.put_memcg_path_buf.exit_crit_edge, %land.lhs.true.i.i.put_memcg_path_buf.exit_crit_edge, %if.then.put_memcg_path_buf.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  %19 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %do.body14

do.body14:                                        ; preds = %put_memcg_path_buf.exit, %entry.do.body14_crit_edge
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  %arrayidx23 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %26, ptrtoint (ptr @memcg_paths to i32)
  %27 = inttoptr i32 %add24 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %27)
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !148
  %28 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i35 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i35 to ptr
  %preempt_count.i.i36 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i36, align 4
  %sub.i = add i32 %31, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i36, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mmap_lock_released(ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mmap_lock_released, %do.body)) #13
          to label %if.end49 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !122

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %if.end31

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_released, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end49.critedge, label %if.end31.do.body2.i_crit_edge

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
  tail call void %15(ptr noundef %17, ptr noundef %mm, ptr noundef %memcg_path, i1 noundef zeroext %write) #13
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !150
  br label %if.end49.sink.split

if.end49.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !150
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end49.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i74.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i74.c to ptr
  %preempt_count.i.i75.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i75.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i75.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75.c, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !122

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %27, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %29 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i84
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i85.not = icmp eq i32 %32, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %33 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !141
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mmap_lock_released, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_mmap_lock_released.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_mmap_lock_released.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 50, ptr noundef nonnull @.str.21) #13
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !142
  %38 = tail call i32 @llvm.read_register.i32(metadata !110) #13
  %and.i.i.i.i87 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mmap_lock(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %mm = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm, align 4
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_memcg_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_memcg_path, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %write = getelementptr inbounds %struct.trace_event_raw_mmap_lock, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, ptr noundef %3, ptr noundef %add.ptr, ptr noundef nonnull %cond) #13
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #13
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
define internal i32 @trace_raw_output_mmap_lock_acquire_returned(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %mm = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm, align 4
  %__data_loc_memcg_path = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_memcg_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_memcg_path, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %write = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.11, ptr @.str.10
  %success = getelementptr inbounds %struct.trace_event_raw_mmap_lock_acquire_returned, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %success to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %success, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, ptr noundef %3, ptr noundef %add.ptr, ptr noundef nonnull %cond, ptr noundef nonnull %cond2) #13
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mem_cgroup_from_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !106, !107, !108, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__tracepoint_mmap_lock_start_locking, !1, !"__tracepoint_mmap_lock_start_locking", i1 false, i1 false}
!1 = !{!"../include/trace/events/mmap_lock.h", i32 49, i32 1}
!2 = !{ptr @__tracepoint_ptr_mmap_lock_start_locking, !1, !"__tracepoint_ptr_mmap_lock_start_locking", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mmap_lock_start_locking, !1, !"__SCK__tp_func_mmap_lock_start_locking", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mmap_lock_released, !5, !"__tracepoint_mmap_lock_released", i1 false, i1 false}
!5 = !{!"../include/trace/events/mmap_lock.h", i32 50, i32 1}
!6 = !{ptr @__tracepoint_ptr_mmap_lock_released, !5, !"__tracepoint_ptr_mmap_lock_released", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mmap_lock_released, !5, !"__SCK__tp_func_mmap_lock_released", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mmap_lock_acquire_returned, !9, !"__tracepoint_mmap_lock_acquire_returned", i1 false, i1 false}
!9 = !{!"../include/trace/events/mmap_lock.h", i32 52, i32 1}
!10 = !{ptr @__tracepoint_ptr_mmap_lock_acquire_returned, !9, !"__tracepoint_ptr_mmap_lock_acquire_returned", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mmap_lock_acquire_returned, !9, !"__SCK__tp_func_mmap_lock_acquire_returned", i1 false, i1 false}
!12 = !{ptr @event_class_mmap_lock, !13, !"event_class_mmap_lock", i1 false, i1 false}
!13 = !{!"../include/trace/events/mmap_lock.h", i32 16, i32 1}
!14 = !{ptr @event_mmap_lock_start_locking, !1, !"event_mmap_lock_start_locking", i1 false, i1 false}
!15 = !{ptr @__event_mmap_lock_start_locking, !1, !"__event_mmap_lock_start_locking", i1 false, i1 false}
!16 = !{ptr @event_mmap_lock_released, !5, !"event_mmap_lock_released", i1 false, i1 false}
!17 = !{ptr @__event_mmap_lock_released, !5, !"__event_mmap_lock_released", i1 false, i1 false}
!18 = !{ptr @event_class_mmap_lock_acquire_returned, !9, !"event_class_mmap_lock_acquire_returned", i1 false, i1 false}
!19 = !{ptr @event_mmap_lock_acquire_returned, !9, !"event_mmap_lock_acquire_returned", i1 false, i1 false}
!20 = !{ptr @__event_mmap_lock_acquire_returned, !9, !"__event_mmap_lock_acquire_returned", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_mmap_lock_start_locking, !1, !"__bpf_trace_tp_map_mmap_lock_start_locking", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_mmap_lock_released, !5, !"__bpf_trace_tp_map_mmap_lock_released", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_mmap_lock_acquire_returned, !9, !"__bpf_trace_tp_map_mmap_lock_acquire_returned", i1 false, i1 false}
!24 = !{ptr @__ksymtab___tracepoint_mmap_lock_start_locking, !25, !"__ksymtab___tracepoint_mmap_lock_start_locking", i1 false, i1 false}
!25 = !{!"../mm/mmap_lock.c", i32 16, i32 1}
!26 = !{ptr @__ksymtab___traceiter_mmap_lock_start_locking, !25, !"__ksymtab___traceiter_mmap_lock_start_locking", i1 false, i1 false}
!27 = !{ptr @__ksymtab___SCK__tp_func_mmap_lock_start_locking, !25, !"__ksymtab___SCK__tp_func_mmap_lock_start_locking", i1 false, i1 false}
!28 = !{ptr @__ksymtab___tracepoint_mmap_lock_acquire_returned, !29, !"__ksymtab___tracepoint_mmap_lock_acquire_returned", i1 false, i1 false}
!29 = !{!"../mm/mmap_lock.c", i32 17, i32 1}
!30 = !{ptr @__ksymtab___traceiter_mmap_lock_acquire_returned, !29, !"__ksymtab___traceiter_mmap_lock_acquire_returned", i1 false, i1 false}
!31 = !{ptr @__ksymtab___SCK__tp_func_mmap_lock_acquire_returned, !29, !"__ksymtab___SCK__tp_func_mmap_lock_acquire_returned", i1 false, i1 false}
!32 = !{ptr @__ksymtab___tracepoint_mmap_lock_released, !33, !"__ksymtab___tracepoint_mmap_lock_released", i1 false, i1 false}
!33 = !{!"../mm/mmap_lock.c", i32 18, i32 1}
!34 = !{ptr @__ksymtab___traceiter_mmap_lock_released, !33, !"__ksymtab___traceiter_mmap_lock_released", i1 false, i1 false}
!35 = !{ptr @__ksymtab___SCK__tp_func_mmap_lock_released, !33, !"__ksymtab___SCK__tp_func_mmap_lock_released", i1 false, i1 false}
!36 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../mm/mmap_lock.c", i32 49, i32 10}
!38 = !{ptr @memcg_paths, !39, !"memcg_paths", i1 false, i1 false}
!39 = !{!"../mm/mmap_lock.c", i32 48, i32 8}
!40 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/mmap_lock.c", i32 230, i32 2}
!42 = !{ptr @__ksymtab___mmap_lock_do_trace_start_locking, !43, !"__ksymtab___mmap_lock_do_trace_start_locking", i1 false, i1 false}
!43 = !{!"../mm/mmap_lock.c", i32 232, i32 1}
!44 = !{ptr @__ksymtab___mmap_lock_do_trace_acquire_returned, !45, !"__ksymtab___mmap_lock_do_trace_acquire_returned", i1 false, i1 false}
!45 = !{!"../mm/mmap_lock.c", i32 239, i32 1}
!46 = !{ptr @__ksymtab___mmap_lock_do_trace_released, !47, !"__ksymtab___mmap_lock_do_trace_released", i1 false, i1 false}
!47 = !{!"../mm/mmap_lock.c", i32 245, i32 1}
!48 = !{ptr @reg_refcount, !49, !"reg_refcount", i1 false, i1 false}
!49 = !{!"../mm/mmap_lock.c", i32 29, i32 12}
!50 = !{ptr @__pcpu_unique_memcg_paths, !39, !"__pcpu_unique_memcg_paths", i1 false, i1 false}
!51 = !{ptr @tmp_bufs, !52, !"tmp_bufs", i1 false, i1 false}
!52 = !{!"../mm/mmap_lock.c", i32 53, i32 15}
!53 = !{ptr @__tpstrtab_mmap_lock_start_locking, !1, !"__tpstrtab_mmap_lock_start_locking", i1 false, i1 false}
!54 = !{ptr @__tpstrtab_mmap_lock_released, !5, !"__tpstrtab_mmap_lock_released", i1 false, i1 false}
!55 = !{ptr @__tpstrtab_mmap_lock_acquire_returned, !9, !"__tpstrtab_mmap_lock_acquire_returned", i1 false, i1 false}
!56 = !{ptr @str__mmap_lock__trace_system_name, !57, !"str__mmap_lock__trace_system_name", i1 false, i1 false}
!57 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!58 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @trace_event_fields_mmap_lock, !13, !"trace_event_fields_mmap_lock", i1 false, i1 false}
!66 = !{ptr @trace_event_type_funcs_mmap_lock, !13, !"trace_event_type_funcs_mmap_lock", i1 false, i1 false}
!67 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.11, !13, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @print_fmt_mmap_lock, !13, !"print_fmt_mmap_lock", i1 false, i1 false}
!71 = !{ptr @.str.12, !9, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @trace_event_fields_mmap_lock_acquire_returned, !9, !"trace_event_fields_mmap_lock_acquire_returned", i1 false, i1 false}
!73 = !{ptr @trace_event_type_funcs_mmap_lock_acquire_returned, !9, !"trace_event_type_funcs_mmap_lock_acquire_returned", i1 false, i1 false}
!74 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @print_fmt_mmap_lock_acquire_returned, !9, !"print_fmt_mmap_lock_acquire_returned", i1 false, i1 false}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../mm/mmap_lock.c", i32 28, i32 8}
!78 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @reg_lock, !77, !"reg_lock", i1 false, i1 false}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../mm/mmap_lock.c", i32 64, i32 14}
!82 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.18, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/local_lock_internal.h", i32 30, i32 2}
!86 = !{ptr @.str.19, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../mm/mmap_lock.c", i32 140, i32 8}
!90 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!93 = !{ptr @.str.22, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!97 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!99 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!103 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.27, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!106 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!107 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!108 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!109 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{i64 2155767568}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!"auto-init"}
!124 = !{i64 2155790529}
!125 = !{i64 2148370238, i64 2148370264, i64 2148370293, i64 2148370327, i64 2148370358, i64 2148370381}
!126 = !{i64 2149181914}
!127 = !{i64 2155792768}
!128 = !{i64 2149181648}
!129 = !{i64 2148453208}
!130 = !{i64 2148368493, i64 2148368525, i64 2148368554, i64 2148368588, i64 2148368619, i64 2148368642}
!131 = !{i64 2148453437}
!132 = !{i64 770676, i64 770737}
!133 = !{i64 773408}
!134 = !{i64 773693}
!135 = !{i64 2148456249}
!136 = !{i64 2148370958, i64 2148370990, i64 2148371019, i64 2148371053, i64 2148371084, i64 2148371107}
!137 = !{i64 2148456478}
!138 = !{i64 2148849648, i64 2148849653, i64 2148849666, i64 2148849710, i64 2148849744, i64 2148849765}
!139 = !{i64 2152327548}
!140 = !{i64 2152327799}
!141 = !{i64 2149190207}
!142 = !{i64 2149191243}
!143 = !{i64 2155799758}
!144 = !{i64 2155802000}
!145 = !{i64 2152363179}
!146 = !{i64 2152363454}
!147 = !{i64 2155804987}
!148 = !{i64 2155807221}
!149 = !{i64 2152345388}
!150 = !{i64 2152345629}
!151 = !{i8 0, i8 2}
