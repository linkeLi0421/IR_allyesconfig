; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_events_trigger.c_pt.bc'
source_filename = "../kernel/trace/trace_events_trigger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+event_triggers_call\22, \22a\22\09"
module asm "\09.weak\09__crc_event_triggers_call\09\09\09\09"
module asm "\09.long\09__crc_event_triggers_call\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_event_triggers_call:\09\09\09\09\09"
module asm "\09.asciz \09\22event_triggers_call\22\09\09\09\09\09"
module asm "__kstrtabns_event_triggers_call:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__trace_trigger_soft_disabled\22, \22a\22\09"
module asm "\09.weak\09__crc___trace_trigger_soft_disabled\09\09\09\09"
module asm "\09.long\09__crc___trace_trigger_soft_disabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___trace_trigger_soft_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22__trace_trigger_soft_disabled\22\09\09\09\09\09"
module asm "__kstrtabns___trace_trigger_soft_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+event_triggers_post_call\22, \22a\22\09"
module asm "\09.weak\09__crc_event_triggers_post_call\09\09\09\09"
module asm "\09.long\09__crc_event_triggers_post_call\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_event_triggers_post_call:\09\09\09\09\09"
module asm "\09.asciz \09\22event_triggers_post_call\22\09\09\09\09\09"
module asm "__kstrtabns_event_triggers_post_call:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.event_command = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.event_trigger_ops = type { ptr, ptr, ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.event_trigger_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, %struct.list_head, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.94 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.enable_trigger_data = type { ptr, i8, i8 }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.74, %struct.trace_event, ptr, ptr, %union.anon.76, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.76 = type { ptr }

@event_triggers_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"kernel/trace/trace_events_trigger.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@event_triggers_call.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_event_triggers_call = external dso_local constant [0 x i8], align 1
@__kstrtabns_event_triggers_call = external dso_local constant [0 x i8], align 1
@__ksymtab_event_triggers_call = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @event_triggers_call to i32), ptr @__kstrtab_event_triggers_call, ptr @__kstrtabns_event_triggers_call }, section "___ksymtab_gpl+event_triggers_call", align 4
@__kstrtab___trace_trigger_soft_disabled = external dso_local constant [0 x i8], align 1
@__kstrtabns___trace_trigger_soft_disabled = external dso_local constant [0 x i8], align 1
@__ksymtab___trace_trigger_soft_disabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__trace_trigger_soft_disabled to i32), ptr @__kstrtab___trace_trigger_soft_disabled, ptr @__kstrtabns___trace_trigger_soft_disabled }, section "___ksymtab_gpl+__trace_trigger_soft_disabled", align 4
@event_triggers_post_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_event_triggers_post_call = external dso_local constant [0 x i8], align 1
@__kstrtabns_event_triggers_post_call = external dso_local constant [0 x i8], align 1
@__ksymtab_event_triggers_post_call = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @event_triggers_post_call to i32), ptr @__kstrtab_event_triggers_post_call, ptr @__kstrtabns_event_triggers_post_call }, section "___ksymtab_gpl+event_triggers_post_call", align 4
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c": \09\00", [28 x i8] zeroinitializer }, align 32
@trigger_cmd_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @trigger_cmd_mutex, i64 52), ptr getelementptr (i8, ptr @trigger_cmd_mutex, i64 52) }, ptr @trigger_cmd_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@trigger_commands = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @trigger_commands, ptr @trigger_commands }, [24 x i8] zeroinitializer }, align 32
@event_trigger_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @tracing_lseek, ptr @seq_read, ptr @event_trigger_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @event_trigger_open, ptr null, ptr @event_trigger_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@event_mutex = external dso_local global %struct.mutex, align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" \09\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"if\00", [29 x i8] zeroinitializer }, align 32
@named_triggers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @named_triggers, ptr @named_triggers }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:%s:%s\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_hist\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disable_hist\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable_event\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disable_event\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c":unlimited\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c":count=%ld\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" if %s\0A\00", [24 x i8] zeroinitializer }, align 32
@event_enable_trigger_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"trigger_cmd_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"trigger_cmd_mutex\00", [46 x i8] zeroinitializer }, align 32
@event_triggers_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @trigger_start, ptr @trigger_stop, ptr @trigger_next, ptr @trigger_show }, [16 x i8] zeroinitializer }, align 32
@check_user_trigger.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"# Available triggers:\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@event_trigger_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trigger_traceon_cmd = internal global { %struct.event_command, [52 x i8] } { %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.20, i32 1, i32 0, ptr @event_trigger_parse, ptr @register_trigger, ptr @unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @onoff_get_trigger_ops }, [52 x i8] zeroinitializer }, align 32
@trigger_traceoff_cmd = internal global { %struct.event_command, [52 x i8] } { %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.21, i32 1, i32 1, ptr @event_trigger_parse, ptr @register_trigger, ptr @unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @onoff_get_trigger_ops }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"traceon\00", [24 x i8] zeroinitializer }, align 32
@traceon_count_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @traceon_count_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @traceon_trigger_print }, [16 x i8] zeroinitializer }, align 32
@traceon_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @traceon_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @traceon_trigger_print }, [16 x i8] zeroinitializer }, align 32
@traceoff_count_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @traceoff_count_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @traceoff_trigger_print }, [16 x i8] zeroinitializer }, align 32
@traceoff_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @traceoff_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @traceoff_trigger_print }, [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"traceoff\00", [23 x i8] zeroinitializer }, align 32
@trigger_snapshot_cmd = internal global { %struct.event_command, [52 x i8] } { %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.22, i32 2, i32 0, ptr @event_trigger_parse, ptr @register_snapshot_trigger, ptr @unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @snapshot_get_trigger_ops }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snapshot\00", [23 x i8] zeroinitializer }, align 32
@snapshot_count_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @snapshot_count_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @snapshot_trigger_print }, [16 x i8] zeroinitializer }, align 32
@snapshot_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @snapshot_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @snapshot_trigger_print }, [16 x i8] zeroinitializer }, align 32
@trigger_stacktrace_cmd = internal global { %struct.event_command, [52 x i8] } { %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.23, i32 4, i32 1, ptr @event_trigger_parse, ptr @register_trigger, ptr @unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @stacktrace_get_trigger_ops }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stacktrace\00", [21 x i8] zeroinitializer }, align 32
@stacktrace_count_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @stacktrace_count_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @stacktrace_trigger_print }, [16 x i8] zeroinitializer }, align 32
@stacktrace_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @stacktrace_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @stacktrace_trigger_print }, [16 x i8] zeroinitializer }, align 32
@trigger_enable_cmd = internal global { %struct.event_command, [52 x i8] } { %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.11, i32 8, i32 0, ptr @event_enable_trigger_parse, ptr @event_enable_register_trigger, ptr @event_enable_unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @event_enable_get_trigger_ops }, [52 x i8] zeroinitializer }, align 32
@trigger_disable_cmd = internal global { %struct.event_command, [52 x i8] } { %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.12, i32 8, i32 0, ptr @event_enable_trigger_parse, ptr @event_enable_register_trigger, ptr @event_enable_unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @event_enable_get_trigger_ops }, [52 x i8] zeroinitializer }, align 32
@event_enable_count_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @event_enable_count_trigger, ptr @event_trigger_init, ptr @event_enable_trigger_free, ptr @event_enable_trigger_print }, [16 x i8] zeroinitializer }, align 32
@event_enable_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @event_enable_trigger, ptr @event_trigger_init, ptr @event_enable_trigger_free, ptr @event_enable_trigger_print }, [16 x i8] zeroinitializer }, align 32
@event_disable_count_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @event_enable_count_trigger, ptr @event_trigger_init, ptr @event_enable_trigger_free, ptr @event_enable_trigger_print }, [16 x i8] zeroinitializer }, align 32
@event_disable_trigger_ops = internal global { %struct.event_trigger_ops, [16 x i8] } { %struct.event_trigger_ops { ptr @event_enable_trigger, ptr @event_trigger_init, ptr @event_enable_trigger_free, ptr @event_enable_trigger_print }, [16 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [23 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.86 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.87 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.88 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.89 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.90 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.91 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.92 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.93 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.94 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.95 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.96 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.97 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.98 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.99 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.100 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.101 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.102 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.103 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.104 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.105 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.106 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.107 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.108 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.109 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.110 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.111 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.112 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.113 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.114 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.115 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.116 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.117 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.118 = internal global [16 x i64] zeroinitializer
@__llvm_gcov_ctr.119 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.120 = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.121 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.122 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.123 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.124 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.125 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.126 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.127 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.128 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.129 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.130 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.131 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.132 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.133 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.134 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.135 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.136 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.137 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.138 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.139 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.140 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.141 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.142 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.143 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.144 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.145 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_events_trigger.gcda\00", [56 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [123 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -1927339947, i32 -613052475 }, %emit_function_args_ty { i32 1, i32 1867579396, i32 -613052475 }, %emit_function_args_ty { i32 2, i32 -53053960, i32 -613052475 }, %emit_function_args_ty { i32 3, i32 181361786, i32 -613052475 }, %emit_function_args_ty { i32 4, i32 -719630108, i32 -613052475 }, %emit_function_args_ty { i32 5, i32 1434715440, i32 -613052475 }, %emit_function_args_ty { i32 6, i32 792227031, i32 -613052475 }, %emit_function_args_ty { i32 7, i32 1276186278, i32 -613052475 }, %emit_function_args_ty { i32 8, i32 -150266450, i32 -613052475 }, %emit_function_args_ty { i32 9, i32 1386727250, i32 -613052475 }, %emit_function_args_ty { i32 10, i32 135075555, i32 -613052475 }, %emit_function_args_ty { i32 11, i32 -871766372, i32 -613052475 }, %emit_function_args_ty { i32 12, i32 577304209, i32 -613052475 }, %emit_function_args_ty { i32 13, i32 -1871009306, i32 -613052475 }, %emit_function_args_ty { i32 14, i32 -1708490279, i32 -613052475 }, %emit_function_args_ty { i32 15, i32 -1306002269, i32 -613052475 }, %emit_function_args_ty { i32 16, i32 -50256386, i32 -613052475 }, %emit_function_args_ty { i32 17, i32 -1082265946, i32 -613052475 }, %emit_function_args_ty { i32 18, i32 -465118225, i32 -613052475 }, %emit_function_args_ty { i32 19, i32 1776678057, i32 -613052475 }, %emit_function_args_ty { i32 20, i32 -373966809, i32 -613052475 }, %emit_function_args_ty { i32 21, i32 -1594912134, i32 -613052475 }, %emit_function_args_ty { i32 22, i32 -1520414420, i32 -613052475 }, %emit_function_args_ty { i32 23, i32 -761639080, i32 -613052475 }, %emit_function_args_ty { i32 24, i32 39958889, i32 -613052475 }, %emit_function_args_ty { i32 25, i32 1865503738, i32 -613052475 }, %emit_function_args_ty { i32 26, i32 1513033242, i32 -613052475 }, %emit_function_args_ty { i32 27, i32 -923041819, i32 -613052475 }, %emit_function_args_ty { i32 28, i32 -1863868678, i32 -613052475 }, %emit_function_args_ty { i32 29, i32 436087400, i32 -613052475 }, %emit_function_args_ty { i32 30, i32 -20435385, i32 -613052475 }, %emit_function_args_ty { i32 31, i32 2027797505, i32 -613052475 }, %emit_function_args_ty { i32 32, i32 -117061252, i32 -613052475 }, %emit_function_args_ty { i32 33, i32 423800809, i32 -613052475 }, %emit_function_args_ty { i32 34, i32 1815611871, i32 -613052475 }, %emit_function_args_ty { i32 35, i32 -784041899, i32 -613052475 }, %emit_function_args_ty { i32 36, i32 -1562710610, i32 -613052475 }, %emit_function_args_ty { i32 37, i32 2059056125, i32 -613052475 }, %emit_function_args_ty { i32 38, i32 -175035131, i32 -613052475 }, %emit_function_args_ty { i32 39, i32 -105315374, i32 -613052475 }, %emit_function_args_ty { i32 40, i32 -1068126606, i32 -613052475 }, %emit_function_args_ty { i32 41, i32 975909662, i32 -613052475 }, %emit_function_args_ty { i32 42, i32 -54325342, i32 -613052475 }, %emit_function_args_ty { i32 43, i32 -614058262, i32 -613052475 }, %emit_function_args_ty { i32 44, i32 953528900, i32 -613052475 }, %emit_function_args_ty { i32 45, i32 -2067650805, i32 -613052475 }, %emit_function_args_ty { i32 46, i32 40536462, i32 -613052475 }, %emit_function_args_ty { i32 47, i32 442796038, i32 -613052475 }, %emit_function_args_ty { i32 48, i32 -567024349, i32 -613052475 }, %emit_function_args_ty { i32 49, i32 774974388, i32 -613052475 }, %emit_function_args_ty { i32 50, i32 -968807974, i32 -613052475 }, %emit_function_args_ty { i32 51, i32 469017521, i32 -613052475 }, %emit_function_args_ty { i32 52, i32 -207085681, i32 -613052475 }, %emit_function_args_ty { i32 53, i32 -2025509694, i32 -613052475 }, %emit_function_args_ty { i32 54, i32 -989094354, i32 -613052475 }, %emit_function_args_ty { i32 55, i32 -1450632256, i32 -613052475 }, %emit_function_args_ty { i32 56, i32 -2104466837, i32 -613052475 }, %emit_function_args_ty { i32 57, i32 -1786060922, i32 -613052475 }, %emit_function_args_ty { i32 58, i32 88109190, i32 -613052475 }, %emit_function_args_ty { i32 59, i32 1177356618, i32 -613052475 }, %emit_function_args_ty { i32 60, i32 -1140125589, i32 -613052475 }, %emit_function_args_ty { i32 61, i32 -1545612647, i32 -613052475 }, %emit_function_args_ty { i32 62, i32 -1744666129, i32 -613052475 }, %emit_function_args_ty { i32 63, i32 -10115036, i32 -613052475 }, %emit_function_args_ty { i32 64, i32 1781672997, i32 -613052475 }, %emit_function_args_ty { i32 65, i32 -1381026421, i32 -613052475 }, %emit_function_args_ty { i32 66, i32 287536606, i32 -613052475 }, %emit_function_args_ty { i32 67, i32 -250017516, i32 -613052475 }, %emit_function_args_ty { i32 68, i32 -1236004416, i32 -613052475 }, %emit_function_args_ty { i32 69, i32 2106989241, i32 -613052475 }, %emit_function_args_ty { i32 70, i32 1465645766, i32 -613052475 }, %emit_function_args_ty { i32 71, i32 1039003440, i32 -613052475 }, %emit_function_args_ty { i32 72, i32 -1159899074, i32 -613052475 }, %emit_function_args_ty { i32 73, i32 -621117542, i32 -613052475 }, %emit_function_args_ty { i32 74, i32 1574664193, i32 -613052475 }, %emit_function_args_ty { i32 75, i32 1112388048, i32 -613052475 }, %emit_function_args_ty { i32 76, i32 -1342645549, i32 -613052475 }, %emit_function_args_ty { i32 77, i32 -1696498604, i32 -613052475 }, %emit_function_args_ty { i32 78, i32 47165945, i32 -613052475 }, %emit_function_args_ty { i32 79, i32 -868360281, i32 -613052475 }, %emit_function_args_ty { i32 80, i32 -1672745738, i32 -613052475 }, %emit_function_args_ty { i32 81, i32 -693354315, i32 -613052475 }, %emit_function_args_ty { i32 82, i32 1212846073, i32 -613052475 }, %emit_function_args_ty { i32 83, i32 -1627355030, i32 -613052475 }, %emit_function_args_ty { i32 84, i32 1799667896, i32 -613052475 }, %emit_function_args_ty { i32 85, i32 -1897846237, i32 -613052475 }, %emit_function_args_ty { i32 86, i32 -400554785, i32 -613052475 }, %emit_function_args_ty { i32 87, i32 -1782918348, i32 -613052475 }, %emit_function_args_ty { i32 88, i32 795548855, i32 -613052475 }, %emit_function_args_ty { i32 89, i32 727036892, i32 -613052475 }, %emit_function_args_ty { i32 90, i32 1841983822, i32 -613052475 }, %emit_function_args_ty { i32 91, i32 1624494247, i32 -613052475 }, %emit_function_args_ty { i32 92, i32 -963894156, i32 -613052475 }, %emit_function_args_ty { i32 93, i32 1034924534, i32 -613052475 }, %emit_function_args_ty { i32 94, i32 1818414285, i32 -613052475 }, %emit_function_args_ty { i32 95, i32 1441534062, i32 -613052475 }, %emit_function_args_ty { i32 96, i32 -145571542, i32 -613052475 }, %emit_function_args_ty { i32 97, i32 -908210689, i32 -613052475 }, %emit_function_args_ty { i32 98, i32 1305669155, i32 -613052475 }, %emit_function_args_ty { i32 99, i32 1206669736, i32 -613052475 }, %emit_function_args_ty { i32 100, i32 -1556614687, i32 -613052475 }, %emit_function_args_ty { i32 101, i32 359331475, i32 -613052475 }, %emit_function_args_ty { i32 102, i32 -1918287155, i32 -613052475 }, %emit_function_args_ty { i32 103, i32 -750424320, i32 -613052475 }, %emit_function_args_ty { i32 104, i32 1824156134, i32 -613052475 }, %emit_function_args_ty { i32 105, i32 1260938165, i32 -613052475 }, %emit_function_args_ty { i32 106, i32 -1244396129, i32 -613052475 }, %emit_function_args_ty { i32 107, i32 212481800, i32 -613052475 }, %emit_function_args_ty { i32 108, i32 411163723, i32 -613052475 }, %emit_function_args_ty { i32 109, i32 -495064459, i32 -613052475 }, %emit_function_args_ty { i32 110, i32 -1168879234, i32 -613052475 }, %emit_function_args_ty { i32 111, i32 -1974615810, i32 -613052475 }, %emit_function_args_ty { i32 112, i32 -865772029, i32 -613052475 }, %emit_function_args_ty { i32 113, i32 -21363291, i32 -613052475 }, %emit_function_args_ty { i32 114, i32 358268672, i32 -613052475 }, %emit_function_args_ty { i32 115, i32 1249662737, i32 -613052475 }, %emit_function_args_ty { i32 116, i32 835031753, i32 -613052475 }, %emit_function_args_ty { i32 117, i32 -1846855200, i32 -613052475 }, %emit_function_args_ty { i32 118, i32 81157262, i32 -613052475 }, %emit_function_args_ty { i32 119, i32 -786131338, i32 -613052475 }, %emit_function_args_ty { i32 120, i32 -1063162447, i32 -613052475 }, %emit_function_args_ty { i32 121, i32 830544949, i32 -613052475 }, %emit_function_args_ty { i32 122, i32 1710561027, i32 -613052475 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [123 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 14, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.57 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.58 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.59 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.60 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.61 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.62 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.63 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.64 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.65 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.66 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.67 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.68 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.69 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.70 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.71 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.72 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.73 }, %emit_arcs_args_ty { i32 23, ptr @__llvm_gcov_ctr.74 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.75 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.76 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.77 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.78 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.79 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.80 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.81 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.82 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.83 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.84 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.85 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.86 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.87 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.88 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.89 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.90 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.91 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.92 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.93 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.94 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.95 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.96 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.97 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.98 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.99 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.100 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.101 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.102 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.103 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.104 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.105 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.106 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.107 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.108 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.109 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.110 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.111 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.112 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.113 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.114 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.115 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.116 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.117 }, %emit_arcs_args_ty { i32 16, ptr @__llvm_gcov_ctr.118 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.119 }, %emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr.120 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.121 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.122 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.123 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.124 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.125 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.126 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.127 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.128 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.129 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.130 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.131 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.132 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.133 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.134 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.135 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.136 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.137 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.138 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.139 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.140 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.141 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.142 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.143 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.144 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.145 }]
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 67, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 74, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 251, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"trigger_cmd_mutex\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"trigger_commands\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 17, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"event_trigger_fops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 344, i32 30 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 800, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 873, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1119, i32 30 }
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"named_triggers\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1158, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1716, i32 16 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1718, i32 29 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1718, i32 47 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1719, i32 29 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1719, i32 48 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1724, i32 15 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1726, i32 17 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1729, i32 17 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 18, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant [23 x i8] c"event_triggers_seq_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 196, i32 36 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 180, i32 15 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 184, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c"trigger_traceon_cmd\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1463, i32 29 }
@___asan_gen_.222 = private unnamed_addr constant [21 x i8] c"trigger_traceoff_cmd\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1473, i32 29 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1464, i32 12 }
@___asan_gen_.228 = private unnamed_addr constant [26 x i8] c"traceon_count_trigger_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1426, i32 33 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c"traceon_trigger_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1419, i32 33 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"traceoff_count_trigger_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1440, i32 33 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"traceoff_trigger_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1433, i32 33 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1415, i32 29 }
@___asan_gen_.243 = private unnamed_addr constant [21 x i8] c"trigger_snapshot_cmd\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1551, i32 29 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1552, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant [27 x i8] c"snapshot_count_trigger_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1538, i32 33 }
@___asan_gen_.252 = private unnamed_addr constant [21 x i8] c"snapshot_trigger_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1531, i32 33 }
@___asan_gen_.255 = private unnamed_addr constant [23 x i8] c"trigger_stacktrace_cmd\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1647, i32 29 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1648, i32 12 }
@___asan_gen_.261 = private unnamed_addr constant [29 x i8] c"stacktrace_count_trigger_ops\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1634, i32 33 }
@___asan_gen_.264 = private unnamed_addr constant [23 x i8] c"stacktrace_trigger_ops\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1627, i32 33 }
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"trigger_enable_cmd\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2025, i32 29 }
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c"trigger_disable_cmd\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 2035, i32 29 }
@___asan_gen_.273 = private unnamed_addr constant [31 x i8] c"event_enable_count_trigger_ops\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1761, i32 33 }
@___asan_gen_.276 = private unnamed_addr constant [25 x i8] c"event_enable_trigger_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1754, i32 33 }
@___asan_gen_.279 = private unnamed_addr constant [32 x i8] c"event_disable_count_trigger_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1775, i32 33 }
@___asan_gen_.282 = private unnamed_addr constant [26 x i8] c"event_disable_trigger_ops\00", align 1
@___asan_gen_.283 = private constant [39 x i8] c"../kernel/trace/trace_events_trigger.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1768, i32 33 }
@___asan_gen_.285 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__ksymtab___trace_trigger_soft_disabled, ptr @__ksymtab_event_triggers_call, ptr @__ksymtab_event_triggers_post_call, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @trigger_cmd_mutex, ptr @trigger_commands, ptr @event_trigger_fops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @named_triggers, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @event_triggers_seq_ops, ptr @.str.18, ptr @.str.19, ptr @trigger_traceon_cmd, ptr @trigger_traceoff_cmd, ptr @.str.20, ptr @traceon_count_trigger_ops, ptr @traceon_trigger_ops, ptr @traceoff_count_trigger_ops, ptr @traceoff_trigger_ops, ptr @.str.21, ptr @trigger_snapshot_cmd, ptr @.str.22, ptr @snapshot_count_trigger_ops, ptr @snapshot_trigger_ops, ptr @trigger_stacktrace_cmd, ptr @.str.23, ptr @stacktrace_count_trigger_ops, ptr @stacktrace_trigger_ops, ptr @trigger_enable_cmd, ptr @trigger_disable_cmd, ptr @event_enable_count_trigger_ops, ptr @event_enable_trigger_ops, ptr @event_disable_count_trigger_ops, ptr @event_disable_trigger_ops], section "llvm.metadata"
@1 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_cmd_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_commands to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_trigger_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @named_triggers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_triggers_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_traceon_cmd to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_traceoff_cmd to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceon_count_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceon_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceoff_count_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @traceoff_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_snapshot_cmd to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_count_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_stacktrace_cmd to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stacktrace_count_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stacktrace_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_enable_cmd to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_disable_cmd to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enable_count_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enable_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_disable_count_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_disable_trigger_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trigger_data_free(ptr noundef %data) local_unnamed_addr #0 align 64 !dbg !117 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !120
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 8
  %cmd_ops = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 4, !dbg !121
  %1 = ptrtoint ptr %cmd_ops to i32, !dbg !121
  call void @__asan_load4_noabort(i32 %1), !dbg !121
  %2 = load ptr, ptr %cmd_ops, align 4, !dbg !121
  %set_filter = getelementptr inbounds %struct.event_command, ptr %2, i32 0, i32 8, !dbg !122
  %3 = ptrtoint ptr %set_filter to i32, !dbg !122
  call void @__asan_load4_noabort(i32 %3), !dbg !122
  %4 = load ptr, ptr %set_filter, align 4, !dbg !122
  %tobool.not = icmp eq ptr %4, null, !dbg !123
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !123

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !123
  br label %if.end, !dbg !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !124
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !124
  %5 = add i64 %gcov_ctr3, 1, !dbg !124
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !124
  %call = tail call i32 %4(ptr noundef null, ptr noundef %data, ptr noundef null) #17, !dbg !124
  br label %if.end, !dbg !124

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !125
  %6 = add i64 %gcov_ctr.i, 1, !dbg !125
  store i64 %6, ptr @__llvm_gcov_ctr.24, align 8, !dbg !125
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #17, !dbg !125
  tail call void @synchronize_rcu() #17, !dbg !129
  tail call void @kfree(ptr noundef %data) #17, !dbg !130
  ret void, !dbg !131
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @event_triggers_call(ptr noundef %file, ptr noundef %buffer, ptr noundef %rec, ptr noundef %event) #0 align 64 !dbg !132 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !133
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 6, !dbg !134
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.26, align 8
  %1 = ptrtoint ptr %triggers to i32, !dbg !135
  call void @__asan_load4_noabort(i32 %1), !dbg !135
  %2 = load volatile ptr, ptr %triggers, align 4, !dbg !135
  %cmp.i.not = icmp eq ptr %2, %triggers, !dbg !139
  br i1 %cmp.i.not, label %if.then, label %do.body, !dbg !140

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !141
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.25, align 16, !dbg !141
  %3 = add i64 %gcov_ctr, 1, !dbg !141
  store i64 %3, ptr @__llvm_gcov_ctr.25, align 16, !dbg !141
  br label %cleanup, !dbg !142

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #17, !dbg !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !143
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !143
  br i1 %tobool2.not, label %land.lhs.true, label %do.body.do.end_crit_edge, !dbg !143

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !143
  br label %do.end, !dbg !143

land.lhs.true:                                    ; preds = %do.body
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !143
  %4 = add i64 %gcov_ctr62, 1, !dbg !143
  store i64 %4, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !143
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #17, !dbg !143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !143
  %tobool4.not = icmp eq i32 %call3, 0, !dbg !143
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5, !dbg !143

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !143
  br label %do.end, !dbg !143

land.lhs.true5:                                   ; preds = %land.lhs.true
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !143
  %5 = add i64 %gcov_ctr63, 1, !dbg !143
  store i64 %5, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 2), align 16, !dbg !143
  %.b96 = load i1, ptr @event_triggers_call.__warned, align 1, !dbg !143
  br i1 %.b96, label %land.lhs.true5.do.end_crit_edge, label %if.then7, !dbg !143

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !143
  br label %do.end, !dbg !143

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !143
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !143
  %6 = add i64 %gcov_ctr64, 1, !dbg !143
  store i64 %6, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 3), align 8, !dbg !143
  store i1 true, ptr @event_triggers_call.__warned, align 1, !dbg !143
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @.str.1) #17, !dbg !143
  br label %do.end, !dbg !143

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %7 = ptrtoint ptr %triggers to i32, !dbg !143
  call void @__asan_load4_noabort(i32 %7), !dbg !143
  %.pn98 = load volatile ptr, ptr %triggers, align 4, !dbg !143
  %cmp.not100 = icmp eq ptr %.pn98, %triggers, !dbg !143
  br i1 %cmp.not100, label %do.end.for.end_crit_edge, label %for.body.lr.ph, !dbg !143

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !143
  br label %for.end, !dbg !143

for.body.lr.ph:                                   ; preds = %do.end
  %tobool18.not = icmp eq ptr %rec, null
  br label %for.body, !dbg !143

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn103 = phi ptr [ %.pn98, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %tt.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %tt.1, %for.inc.for.body_crit_edge ]
  %data.0104 = getelementptr i8, ptr %.pn103, i32 -36, !dbg !143
  %paused = getelementptr i8, ptr %.pn103, i32 -4, !dbg !144
  %8 = ptrtoint ptr %paused to i32, !dbg !144
  call void @__asan_load1_noabort(i32 %8), !dbg !144
  %9 = load i8, ptr %paused, align 4, !dbg !144, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9), !dbg !144
  %tobool15.not = icmp eq i8 %9, 0, !dbg !144
  br i1 %tobool15.not, label %if.end17, label %if.then16, !dbg !146

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !147
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 4), align 16, !dbg !147
  %10 = add i64 %gcov_ctr65, 1, !dbg !147
  store i64 %10, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 4), align 16, !dbg !147
  br label %for.inc, !dbg !147

if.end17:                                         ; preds = %for.body
  br i1 %tobool18.not, label %if.then19, label %if.end20, !dbg !148

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16, !dbg !149
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 5), align 8, !dbg !149
  %11 = add i64 %gcov_ctr66, 1, !dbg !149
  store i64 %11, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 5), align 8, !dbg !149
  %ops = getelementptr i8, ptr %.pn103, i32 -24, !dbg !150
  %12 = ptrtoint ptr %ops to i32, !dbg !150
  call void @__asan_load4_noabort(i32 %12), !dbg !150
  %13 = load ptr, ptr %ops, align 4, !dbg !150
  %14 = ptrtoint ptr %13 to i32, !dbg !151
  call void @__asan_load4_noabort(i32 %14), !dbg !151
  %15 = load ptr, ptr %13, align 4, !dbg !151
  tail call void %15(ptr noundef %data.0104, ptr noundef %buffer, ptr noundef null, ptr noundef %event) #17, !dbg !149
  br label %for.inc, !dbg !152

if.end20:                                         ; preds = %if.end17
  %filter25 = getelementptr i8, ptr %.pn103, i32 -16, !dbg !153
  %16 = ptrtoint ptr %filter25 to i32, !dbg !153
  call void @__asan_load4_noabort(i32 %16), !dbg !153
  %17 = load volatile ptr, ptr %filter25, align 4, !dbg !153
  %call27 = tail call i32 @rcu_read_lock_sched_held() #17, !dbg !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27), !dbg !153
  %tobool28.not = icmp eq i32 %call27, 0, !dbg !153
  br i1 %tobool28.not, label %land.lhs.true29, label %if.end20.do.end37_crit_edge, !dbg !153

if.end20.do.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16, !dbg !153
  br label %do.end37, !dbg !153

land.lhs.true29:                                  ; preds = %if.end20
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 6), align 16, !dbg !153
  %18 = add i64 %gcov_ctr67, 1, !dbg !153
  store i64 %18, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 6), align 16, !dbg !153
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #17, !dbg !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30), !dbg !153
  %tobool31.not = icmp eq i32 %call30, 0, !dbg !153
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32, !dbg !153

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16, !dbg !153
  br label %do.end37, !dbg !153

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 7), align 8, !dbg !153
  %19 = add i64 %gcov_ctr68, 1, !dbg !153
  store i64 %19, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 7), align 8, !dbg !153
  %.b9495 = load i1, ptr @event_triggers_call.__warned.2, align 1, !dbg !153
  br i1 %.b9495, label %land.lhs.true32.do.end37_crit_edge, label %if.then34, !dbg !153

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16, !dbg !153
  br label %do.end37, !dbg !153

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16, !dbg !153
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 8), align 16, !dbg !153
  %20 = add i64 %gcov_ctr69, 1, !dbg !153
  store i64 %20, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 8), align 16, !dbg !153
  store i1 true, ptr @event_triggers_call.__warned.2, align 1, !dbg !153
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 74, ptr noundef nonnull @.str.3) #17, !dbg !153
  br label %do.end37, !dbg !153

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %if.end20.do.end37_crit_edge
  %tobool39.not = icmp eq ptr %17, null, !dbg !154
  br i1 %tobool39.not, label %do.end37.if.end44_crit_edge, label %land.lhs.true40, !dbg !155

do.end37.if.end44_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16, !dbg !155
  br label %if.end44, !dbg !155

land.lhs.true40:                                  ; preds = %do.end37
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 9), align 8, !dbg !156
  %21 = add i64 %gcov_ctr70, 1, !dbg !156
  store i64 %21, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 9), align 8, !dbg !156
  %call41 = tail call i32 @filter_match_preds(ptr noundef nonnull %17, ptr noundef nonnull %rec) #17, !dbg !157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41), !dbg !157
  %tobool42.not = icmp eq i32 %call41, 0, !dbg !157
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true40.if.end44_crit_edge, !dbg !154

land.lhs.true40.if.end44_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16, !dbg !154
  br label %if.end44, !dbg !154

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16, !dbg !158
  %gcov_ctr71 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 10), align 16, !dbg !158
  %22 = add i64 %gcov_ctr71, 1, !dbg !158
  store i64 %22, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 10), align 16, !dbg !158
  br label %for.inc, !dbg !158

if.end44:                                         ; preds = %land.lhs.true40.if.end44_crit_edge, %do.end37.if.end44_crit_edge
  %cmd_ops = getelementptr i8, ptr %.pn103, i32 -20, !dbg !159
  %23 = ptrtoint ptr %cmd_ops to i32, !dbg !159
  call void @__asan_load4_noabort(i32 %23), !dbg !159
  %24 = load ptr, ptr %cmd_ops, align 4, !dbg !159
  %gcov_ctr.i97 = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %25 = add i64 %gcov_ctr.i97, 1
  store i64 %25, ptr @__llvm_gcov_ctr.27, align 8
  %flags.i = getelementptr inbounds %struct.event_command, ptr %24, i32 0, i32 3, !dbg !160
  %26 = ptrtoint ptr %flags.i to i32, !dbg !160
  call void @__asan_load4_noabort(i32 %26), !dbg !160
  %27 = load i32, ptr %flags.i, align 4, !dbg !160
  %and.i = and i32 %27, 1, !dbg !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !165
  %tobool.i.not = icmp eq i32 %and.i, 0, !dbg !165
  br i1 %tobool.i.not, label %if.end48, label %if.then46, !dbg !166

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16, !dbg !167
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 11), align 8, !dbg !167
  %28 = add i64 %gcov_ctr72, 1, !dbg !167
  store i64 %28, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 11), align 8, !dbg !167
  %29 = ptrtoint ptr %cmd_ops to i32, !dbg !168
  call void @__asan_load4_noabort(i32 %29), !dbg !168
  %30 = load ptr, ptr %cmd_ops, align 4, !dbg !168
  %trigger_type = getelementptr inbounds %struct.event_command, ptr %30, i32 0, i32 2, !dbg !169
  %31 = ptrtoint ptr %trigger_type to i32, !dbg !169
  call void @__asan_load4_noabort(i32 %31), !dbg !169
  %32 = load i32, ptr %trigger_type, align 4, !dbg !169
  %or = or i32 %32, %tt.0101, !dbg !170
  br label %for.inc, !dbg !171

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16, !dbg !172
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 12), align 16, !dbg !172
  %33 = add i64 %gcov_ctr73, 1, !dbg !172
  store i64 %33, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 12), align 16, !dbg !172
  %ops49 = getelementptr i8, ptr %.pn103, i32 -24, !dbg !173
  %34 = ptrtoint ptr %ops49 to i32, !dbg !173
  call void @__asan_load4_noabort(i32 %34), !dbg !173
  %35 = load ptr, ptr %ops49, align 4, !dbg !173
  %36 = ptrtoint ptr %35 to i32, !dbg !174
  call void @__asan_load4_noabort(i32 %36), !dbg !174
  %37 = load ptr, ptr %35, align 4, !dbg !174
  tail call void %37(ptr noundef %data.0104, ptr noundef %buffer, ptr noundef nonnull %rec, ptr noundef %event) #17, !dbg !172
  br label %for.inc, !dbg !175

for.inc:                                          ; preds = %if.end48, %if.then46, %if.then43, %if.then19, %if.then16
  %tt.1 = phi i32 [ %tt.0101, %if.then16 ], [ %or, %if.then46 ], [ %tt.0101, %if.end48 ], [ %tt.0101, %if.then43 ], [ %tt.0101, %if.then19 ], !dbg !176
  %38 = ptrtoint ptr %.pn103 to i32, !dbg !143
  call void @__asan_load4_noabort(i32 %38), !dbg !143
  %.pn = load volatile ptr, ptr %.pn103, align 4, !dbg !143
  %cmp.not = icmp eq ptr %.pn, %triggers, !dbg !143
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !143, !llvm.loop !177

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !143
  br label %for.body, !dbg !143

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !143
  br label %for.end, !dbg !143

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %tt.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %tt.1, %for.inc.for.end_crit_edge ], !dbg !178
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 13), align 8, !dbg !179
  %39 = add i64 %gcov_ctr74, 1, !dbg !179
  store i64 %39, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 13), align 8, !dbg !179
  br label %cleanup, !dbg !180

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %tt.0.lcssa, %for.end ], !dbg !176
  ret i32 %retval.0, !dbg !181
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filter_match_preds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %file) #0 align 64 !dbg !182 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !183
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 7, !dbg !184
  %0 = ptrtoint ptr %flags to i32, !dbg !184
  call void @__asan_load4_noabort(i32 %0), !dbg !184
  %1 = load i32, ptr %flags, align 4, !dbg !184
  %and = and i32 %1, 128, !dbg !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !185
  %tobool.not = icmp eq i32 %and, 0, !dbg !185
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !186

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !186
  br label %if.end, !dbg !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !187
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.28, align 16, !dbg !187
  %2 = add i64 %gcov_ctr, 1, !dbg !187
  store i64 %2, ptr @__llvm_gcov_ctr.28, align 16, !dbg !187
  %call = tail call i32 @event_triggers_call(ptr noundef %file, ptr noundef null, ptr noundef null, ptr noundef null), !dbg !188
  br label %if.end, !dbg !188

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %1, 64, !dbg !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1), !dbg !189
  %tobool2.not = icmp eq i32 %and1, 0, !dbg !189
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !190

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !191
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !191
  %3 = add i64 %gcov_ctr10, 1, !dbg !191
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 1), align 8, !dbg !191
  br label %cleanup, !dbg !191

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %1, 512, !dbg !192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5), !dbg !192
  %tobool6.not = icmp eq i32 %and5, 0, !dbg !192
  br i1 %tobool6.not, label %if.end9, label %if.then7, !dbg !193

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !194
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !194
  %4 = add i64 %gcov_ctr11, 1, !dbg !194
  store i64 %4, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 2), align 16, !dbg !194
  %call8 = tail call zeroext i1 @trace_event_ignore_this_pid(ptr noundef %file) #17, !dbg !195
  br label %cleanup, !dbg !196

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !197
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !197
  %5 = add i64 %gcov_ctr12, 1, !dbg !197
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.28, i32 0, i32 3), align 8, !dbg !197
  br label %cleanup, !dbg !197

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then3
  %retval.0 = phi i1 [ true, %if.then3 ], [ %call8, %if.then7 ], [ false, %if.end9 ], !dbg !198
  ret i1 %retval.0, !dbg !199
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_ignore_this_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @event_triggers_post_call(ptr noundef %file, i32 noundef %tt) #0 align 64 !dbg !200 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !201
  %call = tail call i32 @rcu_read_lock_any_held() #17, !dbg !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !202
  %tobool.not = icmp eq i32 %call, 0, !dbg !202
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge, !dbg !202

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !202
  br label %do.end, !dbg !202

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.29, align 16, !dbg !202
  %0 = add i64 %gcov_ctr, 1, !dbg !202
  store i64 %0, ptr @__llvm_gcov_ctr.29, align 16, !dbg !202
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #17, !dbg !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !202
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !202
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3, !dbg !202

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !202
  br label %do.end, !dbg !202

land.lhs.true3:                                   ; preds = %land.lhs.true
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !202
  %1 = add i64 %gcov_ctr25, 1, !dbg !202
  store i64 %1, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !202
  %.b37 = load i1, ptr @event_triggers_post_call.__warned, align 1, !dbg !202
  br i1 %.b37, label %land.lhs.true3.do.end_crit_edge, label %if.then, !dbg !202

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !202
  br label %do.end, !dbg !202

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !202
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), align 16, !dbg !202
  %2 = add i64 %gcov_ctr26, 1, !dbg !202
  store i64 %2, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 2), align 16, !dbg !202
  store i1 true, ptr @event_triggers_post_call.__warned, align 1, !dbg !202
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.1) #17, !dbg !202
  br label %do.end, !dbg !202

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %gcov_ctr27 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 3), align 8, !dbg !202
  %3 = add i64 %gcov_ctr27, 1, !dbg !202
  store i64 %3, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 3), align 8, !dbg !202
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 6, !dbg !202
  %4 = ptrtoint ptr %triggers to i32, !dbg !202
  call void @__asan_load4_noabort(i32 %4), !dbg !202
  %.pn38 = load volatile ptr, ptr %triggers, align 4, !dbg !202
  %cmp.not40 = icmp eq ptr %.pn38, %triggers, !dbg !202
  br i1 %cmp.not40, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge, !dbg !202

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body, !dbg !202

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !202
  br label %for.end, !dbg !202

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn38, %do.end.for.body_crit_edge ]
  %data.042 = getelementptr i8, ptr %.pn41, i32 -36, !dbg !202
  %paused = getelementptr i8, ptr %.pn41, i32 -4, !dbg !203
  %5 = ptrtoint ptr %paused to i32, !dbg !203
  call void @__asan_load1_noabort(i32 %5), !dbg !203
  %6 = load i8, ptr %paused, align 4, !dbg !203, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6), !dbg !203
  %tobool10.not = icmp eq i8 %6, 0, !dbg !203
  br i1 %tobool10.not, label %if.end12, label %for.body.for.inc_crit_edge, !dbg !204

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !204
  br label %for.inc, !dbg !204

if.end12:                                         ; preds = %for.body
  %cmd_ops = getelementptr i8, ptr %.pn41, i32 -20, !dbg !205
  %7 = ptrtoint ptr %cmd_ops to i32, !dbg !205
  call void @__asan_load4_noabort(i32 %7), !dbg !205
  %8 = load ptr, ptr %cmd_ops, align 4, !dbg !205
  %trigger_type = getelementptr inbounds %struct.event_command, ptr %8, i32 0, i32 2, !dbg !206
  %9 = ptrtoint ptr %trigger_type to i32, !dbg !206
  call void @__asan_load4_noabort(i32 %9), !dbg !206
  %10 = load i32, ptr %trigger_type, align 4, !dbg !206
  %and = and i32 %10, %tt, !dbg !207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !207
  %tobool13.not = icmp eq i32 %and, 0, !dbg !207
  br i1 %tobool13.not, label %if.end12.for.inc_crit_edge, label %if.then14, !dbg !208

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16, !dbg !208
  br label %for.inc, !dbg !208

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16, !dbg !209
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 5), align 8, !dbg !209
  %11 = add i64 %gcov_ctr29, 1, !dbg !209
  store i64 %11, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 5), align 8, !dbg !209
  %ops = getelementptr i8, ptr %.pn41, i32 -24, !dbg !210
  %12 = ptrtoint ptr %ops to i32, !dbg !210
  call void @__asan_load4_noabort(i32 %12), !dbg !210
  %13 = load ptr, ptr %ops, align 4, !dbg !210
  %14 = ptrtoint ptr %13 to i32, !dbg !211
  call void @__asan_load4_noabort(i32 %14), !dbg !211
  %15 = load ptr, ptr %13, align 4, !dbg !211
  tail call void %15(ptr noundef %data.042, ptr noundef null, ptr noundef null, ptr noundef null) #17, !dbg !209
  br label %for.inc, !dbg !209

for.inc:                                          ; preds = %if.then14, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 4), %for.body.for.inc_crit_edge ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 6), %if.then14 ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 6), %if.end12.for.inc_crit_edge ]
  %16 = ptrtoint ptr %.sink to i32, !dbg !212
  call void @__asan_load8_noabort(i32 %16), !dbg !212
  %gcov_ctr30 = load i64, ptr %.sink, align 16, !dbg !212
  %17 = add i64 %gcov_ctr30, 1, !dbg !212
  store i64 %17, ptr %.sink, align 16, !dbg !212
  %18 = ptrtoint ptr %.pn41 to i32, !dbg !202
  call void @__asan_load4_noabort(i32 %18), !dbg !202
  %.pn = load volatile ptr, ptr %.pn41, align 4, !dbg !202
  %cmp.not = icmp eq ptr %.pn, %triggers, !dbg !202
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !202, !llvm.loop !213

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !202
  br label %for.body, !dbg !202

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !202
  br label %for.end, !dbg !202

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void, !dbg !215
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trigger_process_regex(ptr noundef %file, ptr noundef %buff) local_unnamed_addr #0 align 64 !dbg !216 {
entry:
  %next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #17, !dbg !218
  %call = tail call ptr @skip_spaces(ptr noundef %buff) #17, !dbg !219
  %0 = ptrtoint ptr %next to i32, !dbg !220
  call void @__asan_store4_noabort(i32 %0), !dbg !220
  store ptr %call, ptr %next, align 4, !dbg !220
  %call1 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.4) #17, !dbg !221
  %1 = ptrtoint ptr %next to i32, !dbg !222
  call void @__asan_load4_noabort(i32 %1), !dbg !222
  %2 = load ptr, ptr %next, align 4, !dbg !222
  %tobool.not = icmp eq ptr %2, null, !dbg !222
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then, !dbg !222

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !222
  br label %if.end5, !dbg !222

if.then:                                          ; preds = %entry
  %call2 = call ptr @skip_spaces(ptr noundef nonnull %2) #17, !dbg !223
  %3 = ptrtoint ptr %next to i32, !dbg !224
  call void @__asan_store4_noabort(i32 %3), !dbg !224
  store ptr %call2, ptr %next, align 4, !dbg !224
  %4 = ptrtoint ptr %call2 to i32, !dbg !225
  call void @__asan_load1_noabort(i32 %4), !dbg !225
  %5 = load i8, ptr %call2, align 1, !dbg !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5), !dbg !225
  %tobool3.not = icmp eq i8 %5, 0, !dbg !225
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge, !dbg !226

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !226
  br label %if.end, !dbg !226

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !227
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.30, align 16, !dbg !227
  %6 = add i64 %gcov_ctr, 1, !dbg !227
  store i64 %6, ptr @__llvm_gcov_ctr.30, align 16, !dbg !227
  %7 = ptrtoint ptr %next to i32, !dbg !227
  call void @__asan_store4_noabort(i32 %7), !dbg !227
  store ptr null, ptr %next, align 4, !dbg !227
  br label %if.end, !dbg !228

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !229
  %8 = add i64 %gcov_ctr21, 1, !dbg !229
  store i64 %8, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !229
  br label %if.end5, !dbg !229

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %9 = ptrtoint ptr %call1 to i32, !dbg !230
  call void @__asan_load1_noabort(i32 %9), !dbg !230
  %10 = load i8, ptr %call1, align 1, !dbg !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %10), !dbg !231
  %cmp.not = icmp eq i8 %10, 33, !dbg !231
  br i1 %cmp.not, label %cond.false, label %if.end5.cond.end_crit_edge, !dbg !232

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !232
  br label %cond.end, !dbg !232

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !233
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !233
  %11 = add i64 %gcov_ctr22, 1, !dbg !233
  store i64 %11, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !233
  %add.ptr = getelementptr i8, ptr %call1, i32 1, !dbg !234
  br label %cond.end, !dbg !232

cond.end:                                         ; preds = %cond.false, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.false ], [ %call1, %if.end5.cond.end_crit_edge ], !dbg !232
  call void @mutex_lock_nested(ptr noundef nonnull @trigger_cmd_mutex, i32 noundef 0) #17, !dbg !235
  %p.036 = load ptr, ptr @trigger_commands, align 4, !dbg !236
  %cmp8.not37 = icmp eq ptr %p.036, @trigger_commands, !dbg !236
  br i1 %cmp8.not37, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge, !dbg !236

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body, !dbg !236

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !236
  br label %for.end, !dbg !236

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %p.038 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.036, %cond.end.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.event_command, ptr %p.038, i32 0, i32 1, !dbg !237
  %12 = ptrtoint ptr %name to i32, !dbg !237
  call void @__asan_load4_noabort(i32 %12), !dbg !237
  %13 = load ptr, ptr %name, align 4, !dbg !237
  %call10 = call i32 @strcmp(ptr noundef %13, ptr noundef %cond) #18, !dbg !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10), !dbg !239
  %cmp11 = icmp eq i32 %call10, 0, !dbg !239
  br i1 %cmp11, label %if.then13, label %for.inc, !dbg !238

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !240
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 3), align 8, !dbg !240
  %14 = add i64 %gcov_ctr23, 1, !dbg !240
  store i64 %14, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 3), align 8, !dbg !240
  %parse = getelementptr inbounds %struct.event_command, ptr %p.038, i32 0, i32 4, !dbg !241
  %15 = ptrtoint ptr %parse to i32, !dbg !241
  call void @__asan_load4_noabort(i32 %15), !dbg !241
  %16 = load ptr, ptr %parse, align 4, !dbg !241
  %17 = ptrtoint ptr %next to i32, !dbg !242
  call void @__asan_load4_noabort(i32 %17), !dbg !242
  %18 = load ptr, ptr %next, align 4, !dbg !242
  %call14 = call i32 %16(ptr noundef %p.038, ptr noundef %file, ptr noundef %call, ptr noundef %cond, ptr noundef %18) #17, !dbg !240
  br label %out_unlock, !dbg !243

for.inc:                                          ; preds = %for.body
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 4), align 16, !dbg !236
  %19 = add i64 %gcov_ctr24, 1, !dbg !236
  store i64 %19, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 4), align 16, !dbg !236
  %20 = ptrtoint ptr %p.038 to i32, !dbg !236
  call void @__asan_load4_noabort(i32 %20), !dbg !236
  %p.0 = load ptr, ptr %p.038, align 4, !dbg !236
  %cmp8.not = icmp eq ptr %p.0, @trigger_commands, !dbg !236
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !236, !llvm.loop !244

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !236
  br label %for.body, !dbg !236

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !236
  br label %for.end, !dbg !236

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 5), align 8, !dbg !245
  %21 = add i64 %gcov_ctr25, 1, !dbg !245
  store i64 %21, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 5), align 8, !dbg !245
  br label %out_unlock, !dbg !245

out_unlock:                                       ; preds = %for.end, %if.then13
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ -22, %for.end ], !dbg !246
  call void @mutex_unlock(ptr noundef nonnull @trigger_cmd_mutex) #17, !dbg !247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #17, !dbg !248
  ret i32 %ret.0, !dbg !249
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @tracing_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_trigger_write(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %cnt, ptr nocapture noundef %ppos) #0 align 64 !dbg !250 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !251
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.31, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt), !dbg !252
  %tobool.not.i = icmp eq i32 %cnt, 0, !dbg !252
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !255

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !256
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.85, align 16, !dbg !256
  %1 = add i64 %gcov_ctr.i, 1, !dbg !256
  store i64 %1, ptr @__llvm_gcov_ctr.85, align 16, !dbg !256
  br label %event_trigger_regex_write.exit, !dbg !256

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %cnt), !dbg !257
  %cmp.i = icmp ugt i32 %cnt, 4095, !dbg !257
  br i1 %cmp.i, label %if.then1.i, label %if.end2.i, !dbg !258

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !259
  %gcov_ctr21.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 1), align 8, !dbg !259
  %2 = add i64 %gcov_ctr21.i, 1, !dbg !259
  store i64 %2, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 1), align 8, !dbg !259
  br label %event_trigger_regex_write.exit, !dbg !259

if.end2.i:                                        ; preds = %if.end.i
  %call.i = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %cnt) #17, !dbg !260
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.86, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.86, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr), !dbg !261
  br i1 %cmp.i.i, label %if.then4.i, label %if.end6.i, !dbg !265

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !266
  %gcov_ctr22.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 2), align 16, !dbg !266
  %4 = add i64 %gcov_ctr22.i, 1, !dbg !266
  store i64 %4, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 2), align 16, !dbg !266
  %gcov_ctr.i37.i = load i64, ptr @__llvm_gcov_ctr.87, align 8
  %5 = add i64 %gcov_ctr.i37.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.87, align 8
  %6 = ptrtoint ptr %call.i to i32, !dbg !267
  br label %event_trigger_regex_write.exit, !dbg !270

if.end6.i:                                        ; preds = %if.end2.i
  %call7.i = tail call ptr @strim(ptr noundef %call.i) #17, !dbg !271
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #17, !dbg !272
  %gcov_ctr.i38.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %7 = add i64 %gcov_ctr.i38.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.88, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %8 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.89, align 8
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2, !dbg !273
  %9 = ptrtoint ptr %f_inode.i.i.i to i32, !dbg !273
  call void @__asan_load4_noabort(i32 %9), !dbg !273
  %10 = load ptr, ptr %f_inode.i.i.i, align 8, !dbg !273
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 54, !dbg !279
  %11 = ptrtoint ptr %i_private.i.i to i32, !dbg !279
  call void @__asan_load4_noabort(i32 %11), !dbg !279
  %12 = load volatile ptr, ptr %i_private.i.i, align 4, !dbg !279
  %tobool9.not.i = icmp eq ptr %12, null, !dbg !280
  br i1 %tobool9.not.i, label %if.then13.i, label %if.end14.i, !dbg !280, !prof !281

if.then13.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !282
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 3), align 8, !dbg !282
  %13 = add i64 %gcov_ctr23.i, 1, !dbg !282
  store i64 %13, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 3), align 8, !dbg !282
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !282
  tail call void @kfree(ptr noundef %call.i) #17, !dbg !283
  br label %event_trigger_regex_write.exit, !dbg !284

if.end14.i:                                       ; preds = %if.end6.i
  %call15.i = tail call i32 @trigger_process_regex(ptr noundef nonnull %12, ptr noundef %call.i) #17, !dbg !285
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !286
  tail call void @kfree(ptr noundef %call.i) #17, !dbg !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i), !dbg !288
  %cmp16.i = icmp slt i32 %call15.i, 0, !dbg !288
  br i1 %cmp16.i, label %if.then17.i, label %if.end18.i, !dbg !289

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !290
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !290
  %14 = add i64 %gcov_ctr24.i, 1, !dbg !290
  store i64 %14, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 4), align 16, !dbg !290
  br label %event_trigger_regex_write.exit, !dbg !290

if.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !291
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 5), align 8, !dbg !291
  %15 = add i64 %gcov_ctr25.i, 1, !dbg !291
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 5), align 8, !dbg !291
  %conv.i = zext i32 %cnt to i64, !dbg !291
  %16 = ptrtoint ptr %ppos to i32, !dbg !292
  call void @__asan_load8_noabort(i32 %16), !dbg !292
  %17 = load i64, ptr %ppos, align 8, !dbg !292
  %add.i = add i64 %17, %conv.i, !dbg !292
  store i64 %add.i, ptr %ppos, align 8, !dbg !292
  br label %event_trigger_regex_write.exit, !dbg !293

event_trigger_regex_write.exit:                   ; preds = %if.end18.i, %if.then17.i, %if.then13.i, %if.then4.i, %if.then1.i, %if.then.i
  %retval.0.i = phi i32 [ -22, %if.then1.i ], [ %6, %if.then4.i ], [ -19, %if.then13.i ], [ 0, %if.then.i ], [ %call15.i, %if.then17.i ], [ %cnt, %if.end18.i ], !dbg !294
  ret i32 %retval.0.i, !dbg !295
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_trigger_open(ptr nocapture noundef readnone %inode, ptr noundef %filp) #0 align 64 !dbg !296 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !297
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.32, align 8
  %call.i = tail call i32 @security_locked_down(i32 noundef 22) #17, !dbg !298
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !301
  %tobool.not.i = icmp eq i32 %call.i, 0, !dbg !301
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !dbg !301

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !302
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.90, align 16, !dbg !302
  %1 = add i64 %gcov_ctr.i, 1, !dbg !302
  store i64 %1, ptr @__llvm_gcov_ctr.90, align 16, !dbg !302
  br label %event_trigger_regex_open.exit, !dbg !303

if.end.i:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #17, !dbg !304
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.88, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %3 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.89, align 8
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2, !dbg !305
  %4 = ptrtoint ptr %f_inode.i.i.i to i32, !dbg !305
  call void @__asan_load4_noabort(i32 %4), !dbg !305
  %5 = load ptr, ptr %f_inode.i.i.i, align 8, !dbg !305
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54, !dbg !308
  %6 = ptrtoint ptr %i_private.i.i to i32, !dbg !308
  call void @__asan_load4_noabort(i32 %6), !dbg !308
  %7 = load volatile ptr, ptr %i_private.i.i, align 4, !dbg !308
  %tobool2.not.i = icmp eq ptr %7, null, !dbg !309
  br i1 %tobool2.not.i, label %if.then6.i, label %if.end7.i, !dbg !309, !prof !281

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !310
  %gcov_ctr33.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 1), align 8, !dbg !310
  %8 = add i64 %gcov_ctr33.i, 1, !dbg !310
  store i64 %8, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 1), align 8, !dbg !310
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !310
  br label %event_trigger_regex_open.exit, !dbg !311

if.end7.i:                                        ; preds = %if.end.i
  %f_mode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8, !dbg !312
  %9 = ptrtoint ptr %f_mode.i to i32, !dbg !312
  call void @__asan_load4_noabort(i32 %9), !dbg !312
  %10 = load i32, ptr %f_mode.i, align 8, !dbg !312
  %and.i = and i32 %10, 2, !dbg !313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !313
  %tobool8.not.i = icmp eq i32 %and.i, 0, !dbg !313
  br i1 %tobool8.not.i, label %if.end7.i.if.end23.i_crit_edge, label %land.lhs.true.i, !dbg !314

if.end7.i.if.end23.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !314
  br label %if.end23.i, !dbg !314

land.lhs.true.i:                                  ; preds = %if.end7.i
  %gcov_ctr34.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 2), align 16, !dbg !315
  %11 = add i64 %gcov_ctr34.i, 1, !dbg !315
  store i64 %11, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 2), align 16, !dbg !315
  %f_flags.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7, !dbg !316
  %12 = ptrtoint ptr %f_flags.i to i32, !dbg !316
  call void @__asan_load4_noabort(i32 %12), !dbg !316
  %13 = load i32, ptr %f_flags.i, align 4, !dbg !316
  %and9.i = and i32 %13, 512, !dbg !317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i), !dbg !317
  %tobool10.not.i = icmp eq i32 %and9.i, 0, !dbg !317
  br i1 %tobool10.not.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %if.then11.i, !dbg !318

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !318
  br label %if.end23.i, !dbg !318

if.then11.i:                                      ; preds = %land.lhs.true.i
  %14 = add i64 %gcov_ctr.i.i, 2
  store i64 %14, ptr @__llvm_gcov_ctr.88, align 8
  %15 = add i64 %gcov_ctr.i.i.i, 2
  store i64 %15, ptr @__llvm_gcov_ctr.89, align 8
  %16 = ptrtoint ptr %f_inode.i.i.i to i32, !dbg !319
  call void @__asan_load4_noabort(i32 %16), !dbg !319
  %17 = load ptr, ptr %f_inode.i.i.i, align 8, !dbg !319
  %i_private.i4.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 54, !dbg !322
  %18 = ptrtoint ptr %i_private.i4.i to i32, !dbg !322
  call void @__asan_load4_noabort(i32 %18), !dbg !322
  %19 = load volatile ptr, ptr %i_private.i4.i, align 4, !dbg !322
  %p.05.i = load ptr, ptr @trigger_commands, align 4, !dbg !323
  %cmp.not6.i = icmp eq ptr %p.05.i, @trigger_commands, !dbg !323
  br i1 %cmp.not6.i, label %if.then11.i.for.end.i_crit_edge, label %if.then11.i.for.body.i_crit_edge, !dbg !323

if.then11.i.for.body.i_crit_edge:                 ; preds = %if.then11.i
  br label %for.body.i, !dbg !323

if.then11.i.for.end.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !323
  br label %for.end.i, !dbg !323

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then11.i.for.body.i_crit_edge
  %p.07.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.05.i, %if.then11.i.for.body.i_crit_edge ]
  %unreg_all.i = getelementptr inbounds %struct.event_command, ptr %p.07.i, i32 0, i32 7, !dbg !324
  %20 = ptrtoint ptr %unreg_all.i to i32, !dbg !324
  call void @__asan_load4_noabort(i32 %20), !dbg !324
  %21 = load ptr, ptr %unreg_all.i, align 4, !dbg !324
  %tobool15.not.i = icmp eq ptr %21, null, !dbg !325
  br i1 %tobool15.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then16.i, !dbg !325

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !325
  br label %for.inc.i, !dbg !325

if.then16.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !326
  %gcov_ctr35.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 3), align 8, !dbg !326
  %22 = add i64 %gcov_ctr35.i, 1, !dbg !326
  store i64 %22, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 3), align 8, !dbg !326
  tail call void %21(ptr noundef %19) #17, !dbg !326
  br label %for.inc.i, !dbg !326

for.inc.i:                                        ; preds = %if.then16.i, %for.body.i.for.inc.i_crit_edge
  %gcov_ctr36.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 4), align 16, !dbg !323
  %23 = add i64 %gcov_ctr36.i, 1, !dbg !323
  store i64 %23, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 4), align 16, !dbg !323
  %24 = ptrtoint ptr %p.07.i to i32, !dbg !323
  call void @__asan_load4_noabort(i32 %24), !dbg !323
  %p.0.i = load ptr, ptr %p.07.i, align 4, !dbg !323
  %cmp.not.i = icmp eq ptr %p.0.i, @trigger_commands, !dbg !323
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !323, !llvm.loop !327

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !323
  br label %for.body.i, !dbg !323

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !323
  br label %for.end.i, !dbg !323

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then11.i.for.end.i_crit_edge
  %gcov_ctr37.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 5), align 8, !dbg !329
  %25 = add i64 %gcov_ctr37.i, 1, !dbg !329
  store i64 %25, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 5), align 8, !dbg !329
  br label %if.end23.i, !dbg !329

if.end23.i:                                       ; preds = %for.end.i, %land.lhs.true.i.if.end23.i_crit_edge, %if.end7.i.if.end23.i_crit_edge
  %26 = ptrtoint ptr %f_mode.i to i32, !dbg !330
  call void @__asan_load4_noabort(i32 %26), !dbg !330
  %27 = load i32, ptr %f_mode.i, align 8, !dbg !330
  %and25.i = and i32 %27, 1, !dbg !331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i), !dbg !331
  %tobool26.not.i = icmp eq i32 %and25.i, 0, !dbg !331
  br i1 %tobool26.not.i, label %if.end23.i.if.end32.i_crit_edge, label %if.then27.i, !dbg !332

if.end23.i.if.end32.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !332
  br label %if.end32.i, !dbg !332

if.then27.i:                                      ; preds = %if.end23.i
  %call28.i = tail call i32 @seq_open(ptr noundef %filp, ptr noundef nonnull @event_triggers_seq_ops) #17, !dbg !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i), !dbg !334
  %tobool29.not.i = icmp eq i32 %call28.i, 0, !dbg !334
  br i1 %tobool29.not.i, label %if.then30.i, label %if.then27.i.if.end31.i_crit_edge, !dbg !335

if.then27.i.if.end31.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !335
  br label %if.end31.i, !dbg !335

if.then30.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !336
  %gcov_ctr38.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 6), align 16, !dbg !336
  %28 = add i64 %gcov_ctr38.i, 1, !dbg !336
  store i64 %28, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 6), align 16, !dbg !336
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16, !dbg !337
  %29 = ptrtoint ptr %private_data.i to i32, !dbg !337
  call void @__asan_load4_noabort(i32 %29), !dbg !337
  %30 = load ptr, ptr %private_data.i, align 4, !dbg !337
  %private.i = getelementptr inbounds %struct.seq_file, ptr %30, i32 0, i32 11, !dbg !338
  %31 = ptrtoint ptr %private.i to i32, !dbg !339
  call void @__asan_store4_noabort(i32 %31), !dbg !339
  store ptr %filp, ptr %private.i, align 8, !dbg !339
  br label %if.end31.i, !dbg !340

if.end31.i:                                       ; preds = %if.then30.i, %if.then27.i.if.end31.i_crit_edge
  %gcov_ctr39.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 7), align 8, !dbg !341
  %32 = add i64 %gcov_ctr39.i, 1, !dbg !341
  store i64 %32, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 7), align 8, !dbg !341
  br label %if.end32.i, !dbg !341

if.end32.i:                                       ; preds = %if.end31.i, %if.end23.i.if.end32.i_crit_edge
  %ret.0.i = phi i32 [ %call28.i, %if.end31.i ], [ 0, %if.end23.i.if.end32.i_crit_edge ], !dbg !342
  %gcov_ctr40.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 8), align 16, !dbg !343
  %33 = add i64 %gcov_ctr40.i, 1, !dbg !343
  store i64 %33, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.90, i32 0, i32 8), align 16, !dbg !343
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !343
  br label %event_trigger_regex_open.exit, !dbg !344

event_trigger_regex_open.exit:                    ; preds = %if.end32.i, %if.then6.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -19, %if.then6.i ], [ %ret.0.i, %if.end32.i ], !dbg !342
  ret i32 %retval.0.i, !dbg !345
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_trigger_release(ptr noundef %inode, ptr noundef %file) #0 align 64 !dbg !346 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !347
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.33, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.33, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.97, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.97, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #17, !dbg !348
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8, !dbg !351
  %2 = ptrtoint ptr %f_mode.i to i32, !dbg !351
  call void @__asan_load4_noabort(i32 %2), !dbg !351
  %3 = load i32, ptr %f_mode.i, align 8, !dbg !351
  %and.i = and i32 %3, 1, !dbg !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !352
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !352
  br i1 %tobool.not.i, label %entry.event_trigger_regex_release.exit_crit_edge, label %if.then.i, !dbg !353

entry.event_trigger_regex_release.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !353
  br label %event_trigger_regex_release.exit, !dbg !353

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !354
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !354
  %4 = add i64 %gcov_ctr1.i, 1, !dbg !354
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.97, i32 0, i32 1), align 8, !dbg !354
  %call.i = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #17, !dbg !355
  br label %event_trigger_regex_release.exit, !dbg !355

event_trigger_regex_release.exit:                 ; preds = %if.then.i, %entry.event_trigger_regex_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !356
  ret i32 0, !dbg !357
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_event_command(ptr noundef %cmd) local_unnamed_addr #4 section ".init.text" align 64 !dbg !358 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !359
  tail call void @mutex_lock_nested(ptr noundef nonnull @trigger_cmd_mutex, i32 noundef 0) #17, !dbg !360
  %p.013 = load ptr, ptr @trigger_commands, align 4, !dbg !361
  %cmp.not14 = icmp eq ptr %p.013, @trigger_commands, !dbg !361
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %for.body.lr.ph, !dbg !361

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !361
  br label %for.end, !dbg !361

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.event_command, ptr %cmd, i32 0, i32 1
  br label %for.body, !dbg !361

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.015 = phi ptr [ %p.013, %for.body.lr.ph ], [ %p.0, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %name to i32, !dbg !362
  call void @__asan_load4_noabort(i32 %0), !dbg !362
  %1 = load ptr, ptr %name, align 4, !dbg !362
  %name1 = getelementptr inbounds %struct.event_command, ptr %p.015, i32 0, i32 1, !dbg !363
  %2 = ptrtoint ptr %name1 to i32, !dbg !363
  call void @__asan_load4_noabort(i32 %2), !dbg !363
  %3 = load ptr, ptr %name1, align 4, !dbg !363
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef %3) #18, !dbg !364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !365
  %cmp2 = icmp eq i32 %call, 0, !dbg !365
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !364

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !366
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.34, align 16, !dbg !366
  %4 = add i64 %gcov_ctr, 1, !dbg !366
  store i64 %4, ptr @__llvm_gcov_ctr.34, align 16, !dbg !366
  br label %out_unlock, !dbg !367

for.inc:                                          ; preds = %for.body
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8, !dbg !361
  %5 = add i64 %gcov_ctr8, 1, !dbg !361
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8, !dbg !361
  %6 = ptrtoint ptr %p.015 to i32, !dbg !361
  call void @__asan_load4_noabort(i32 %6), !dbg !361
  %p.0 = load ptr, ptr %p.015, align 4, !dbg !361
  %cmp.not = icmp eq ptr %p.0, @trigger_commands, !dbg !361
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !361, !llvm.loop !368

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !361
  br label %for.body, !dbg !361

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !361
  br label %for.end, !dbg !361

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), align 16, !dbg !370
  %7 = add i64 %gcov_ctr9, 1, !dbg !370
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), align 16, !dbg !370
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %8 = add i64 %gcov_ctr.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.35, align 8
  %9 = load ptr, ptr @trigger_commands, align 4, !dbg !371
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cmd, ptr noundef nonnull @trigger_commands, ptr noundef %9) #17, !dbg !374
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge, !dbg !377

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !377
  br label %list_add.exit, !dbg !377

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !378
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1, !dbg !378
  %10 = ptrtoint ptr %prev1.i.i to i32, !dbg !379
  call void @__asan_store4_noabort(i32 %10), !dbg !379
  store ptr %cmd, ptr %prev1.i.i, align 4, !dbg !379
  %11 = ptrtoint ptr %cmd to i32, !dbg !380
  call void @__asan_store4_noabort(i32 %11), !dbg !380
  store ptr %9, ptr %cmd, align 4, !dbg !380
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1, !dbg !381
  %12 = ptrtoint ptr %prev3.i.i to i32, !dbg !382
  call void @__asan_store4_noabort(i32 %12), !dbg !382
  store ptr @trigger_commands, ptr %prev3.i.i, align 4, !dbg !382
  store volatile ptr %cmd, ptr @trigger_commands, align 4, !dbg !383
  br label %list_add.exit, !dbg !383

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  %__llvm_gcov_ctr.98.sink18.i.i = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), %if.end.i.i ], [ @__llvm_gcov_ctr.98, %for.end.list_add.exit_crit_edge ]
  %13 = ptrtoint ptr %__llvm_gcov_ctr.98.sink18.i.i to i32, !dbg !384
  call void @__asan_load8_noabort(i32 %13), !dbg !384
  %gcov_ctr.i.i = load i64, ptr %__llvm_gcov_ctr.98.sink18.i.i, align 8, !dbg !384
  %14 = add i64 %gcov_ctr.i.i, 1, !dbg !384
  store i64 %14, ptr %__llvm_gcov_ctr.98.sink18.i.i, align 8, !dbg !384
  br label %out_unlock, !dbg !385

out_unlock:                                       ; preds = %list_add.exit, %if.then
  %ret.0 = phi i32 [ -16, %if.then ], [ 0, %list_add.exit ], !dbg !386
  tail call void @mutex_unlock(ptr noundef nonnull @trigger_cmd_mutex) #17, !dbg !387
  ret i32 %ret.0, !dbg !388
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_event_command(ptr nocapture noundef readonly %cmd) local_unnamed_addr #4 section ".init.text" align 64 !dbg !389 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !390
  tail call void @mutex_lock_nested(ptr noundef nonnull @trigger_cmd_mutex, i32 noundef 0) #17, !dbg !391
  %0 = load ptr, ptr @trigger_commands, align 4, !dbg !392
  %cmp.not22 = icmp eq ptr %0, @trigger_commands, !dbg !392
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %for.body.lr.ph, !dbg !392

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !392
  br label %for.end, !dbg !392

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.event_command, ptr %cmd, i32 0, i32 1
  br label %for.body, !dbg !392

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.023 = phi ptr [ %0, %for.body.lr.ph ], [ %n.024, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %name to i32, !dbg !393
  call void @__asan_load4_noabort(i32 %1), !dbg !393
  %2 = load ptr, ptr %name, align 4, !dbg !393
  %name5 = getelementptr inbounds %struct.event_command, ptr %p.023, i32 0, i32 1, !dbg !394
  %3 = ptrtoint ptr %name5 to i32, !dbg !394
  call void @__asan_load4_noabort(i32 %3), !dbg !394
  %4 = load ptr, ptr %name5, align 4, !dbg !394
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef %4) #18, !dbg !395
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !396
  %cmp6 = icmp eq i32 %call, 0, !dbg !396
  br i1 %cmp6, label %if.then, label %for.inc, !dbg !395

if.then:                                          ; preds = %for.body
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !397
  %5 = add i64 %gcov_ctr, 1, !dbg !397
  store i64 %5, ptr @__llvm_gcov_ctr.36, align 16, !dbg !397
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %6 = add i64 %gcov_ctr.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.37, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.023) #17, !dbg !398
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !403

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !404
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.99, align 8, !dbg !404
  %7 = add i64 %gcov_ctr.i.i, 1, !dbg !404
  store i64 %7, ptr @__llvm_gcov_ctr.99, align 8, !dbg !404
  br label %list_del_init.exit, !dbg !404

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !405
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !405
  %8 = add i64 %gcov_ctr2.i.i, 1, !dbg !405
  store i64 %8, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !405
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.023, i32 0, i32 1, !dbg !406
  %9 = ptrtoint ptr %prev.i.i to i32, !dbg !406
  call void @__asan_load4_noabort(i32 %9), !dbg !406
  %10 = load ptr, ptr %prev.i.i, align 4, !dbg !406
  %11 = ptrtoint ptr %p.023 to i32, !dbg !407
  call void @__asan_load4_noabort(i32 %11), !dbg !407
  %12 = load ptr, ptr %p.023, align 4, !dbg !407
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1, !dbg !408
  %13 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !411
  call void @__asan_store4_noabort(i32 %13), !dbg !411
  store ptr %10, ptr %prev1.i.i.i, align 4, !dbg !411
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.100, align 8, !dbg !412
  %14 = add i64 %gcov_ctr.i.i.i, 1, !dbg !412
  store i64 %14, ptr @__llvm_gcov_ctr.100, align 8, !dbg !412
  %15 = ptrtoint ptr %10 to i32, !dbg !412
  call void @__asan_store4_noabort(i32 %15), !dbg !412
  store volatile ptr %12, ptr %10, align 4, !dbg !412
  br label %list_del_init.exit, !dbg !413

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.i.i
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.53, align 8, !dbg !414
  %16 = add i64 %gcov_ctr.i3.i, 1, !dbg !414
  store i64 %16, ptr @__llvm_gcov_ctr.53, align 8, !dbg !414
  %17 = ptrtoint ptr %p.023 to i32, !dbg !414
  call void @__asan_store4_noabort(i32 %17), !dbg !414
  store volatile ptr %p.023, ptr %p.023, align 4, !dbg !414
  %prev.i4.i = getelementptr inbounds %struct.list_head, ptr %p.023, i32 0, i32 1, !dbg !417
  %18 = ptrtoint ptr %prev.i4.i to i32, !dbg !418
  call void @__asan_store4_noabort(i32 %18), !dbg !418
  store ptr %p.023, ptr %prev.i4.i, align 4, !dbg !418
  br label %out_unlock, !dbg !419

for.inc:                                          ; preds = %for.body
  %19 = ptrtoint ptr %p.023 to i32, !dbg !392
  call void @__asan_load4_noabort(i32 %19), !dbg !392
  %n.024 = load ptr, ptr %p.023, align 4, !dbg !392
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !392
  %20 = add i64 %gcov_ctr13, 1, !dbg !392
  store i64 %20, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !392
  %cmp.not = icmp eq ptr %n.024, @trigger_commands, !dbg !392
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !392, !llvm.loop !420

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !392
  br label %for.body, !dbg !392

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !392
  br label %for.end, !dbg !392

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !421
  %21 = add i64 %gcov_ctr14, 1, !dbg !421
  store i64 %21, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !421
  br label %out_unlock, !dbg !421

out_unlock:                                       ; preds = %for.end, %list_del_init.exit
  %ret.0 = phi i32 [ 0, %list_del_init.exit ], [ -19, %for.end ], !dbg !422
  tail call void @mutex_unlock(ptr noundef nonnull @trigger_cmd_mutex) #17, !dbg !423
  ret i32 %ret.0, !dbg !424
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @event_trigger_init(ptr nocapture readnone %ops, ptr nocapture noundef %data) #5 align 64 !dbg !425 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !426
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.38, align 8
  %ref = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 1, !dbg !427
  %1 = ptrtoint ptr %ref to i32, !dbg !428
  call void @__asan_load4_noabort(i32 %1), !dbg !428
  %2 = load i32, ptr %ref, align 4, !dbg !428
  %inc = add i32 %2, 1, !dbg !428
  store i32 %inc, ptr %ref, align 4, !dbg !428
  ret i32 0, !dbg !429
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trace_event_trigger_enable_disable(ptr noundef %file, i32 noundef %trigger_enable) local_unnamed_addr #0 align 64 !dbg !430 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trigger_enable), !dbg !432
  %tobool.not = icmp eq i32 %trigger_enable, 0, !dbg !432
  %tm_ref3 = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 9, !dbg !433
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !432

if.then:                                          ; preds = %entry
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.40, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.40, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.101, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.101, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tm_ref3, i32 noundef 4) #17, !dbg !434
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.103, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.103, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.102, align 8
  %3 = add i64 %gcov_ctr.i2.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.102, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !dbg !441, !srcloc !447
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %4 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.105, align 8
  tail call void @llvm.prefetch.p0(ptr %tm_ref3, i32 1, i32 3, i32 1) #17, !dbg !448
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tm_ref3, ptr %tm_ref3, i32 1, ptr elementtype(i32) %tm_ref3) #17, !dbg !448, !srcloc !452
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0, !dbg !448
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.104, align 8, !dbg !453
  %6 = add i64 %gcov_ctr.i.i3.i, 1, !dbg !453
  store i64 %6, ptr @__llvm_gcov_ctr.104, align 8, !dbg !453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !dbg !453, !srcloc !454
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i), !dbg !455
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 1, !dbg !455
  br i1 %cmp, label %if.then1, label %if.end, !dbg !456

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !457
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.39, align 16, !dbg !457
  %7 = add i64 %gcov_ctr, 1, !dbg !457
  store i64 %7, ptr @__llvm_gcov_ctr.39, align 16, !dbg !457
  br label %cleanup, !dbg !458

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !459
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 1), align 8, !dbg !459
  %8 = add i64 %gcov_ctr11, 1, !dbg !459
  store i64 %8, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 1), align 8, !dbg !459
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 7, !dbg !459
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #17, !dbg !459
  %call2 = tail call i32 @trace_event_enable_disable(ptr noundef %file, i32 noundef 1, i32 noundef 1) #17, !dbg !460
  br label %cleanup, !dbg !461

if.else:                                          ; preds = %entry
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %9 = add i64 %gcov_ctr.i21, 1
  store i64 %9, ptr @__llvm_gcov_ctr.41, align 8
  %gcov_ctr.i.i22 = load i64, ptr @__llvm_gcov_ctr.101, align 8
  %10 = add i64 %gcov_ctr.i.i22, 1
  store i64 %10, ptr @__llvm_gcov_ctr.101, align 8
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tm_ref3, i32 noundef 4) #17, !dbg !462
  %gcov_ctr.i.i.i24 = load i64, ptr @__llvm_gcov_ctr.103, align 8
  %11 = add i64 %gcov_ctr.i.i.i24, 1
  store i64 %11, ptr @__llvm_gcov_ctr.103, align 8
  %gcov_ctr.i2.i25 = load i64, ptr @__llvm_gcov_ctr.106, align 8
  %12 = add i64 %gcov_ctr.i2.i25, 1
  store i64 %12, ptr @__llvm_gcov_ctr.106, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !dbg !466, !srcloc !471
  %gcov_ctr.i.i.i.i26 = load i64, ptr @__llvm_gcov_ctr.108, align 8
  %13 = add i64 %gcov_ctr.i.i.i.i26, 1
  store i64 %13, ptr @__llvm_gcov_ctr.108, align 8
  tail call void @llvm.prefetch.p0(ptr %tm_ref3, i32 1, i32 3, i32 1) #17, !dbg !472
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tm_ref3, ptr %tm_ref3, i32 1, ptr elementtype(i32) %tm_ref3) #17, !dbg !472, !srcloc !475
  %asmresult.i.i.i.i27 = extractvalue { i32, i32 } %14, 0, !dbg !472
  %gcov_ctr.i.i3.i28 = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !476
  %15 = add i64 %gcov_ctr.i.i3.i28, 1, !dbg !476
  store i64 %15, ptr @__llvm_gcov_ctr.107, align 8, !dbg !476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !dbg !476, !srcloc !477
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i27), !dbg !478
  %cmp5 = icmp sgt i32 %asmresult.i.i.i.i27, 0, !dbg !478
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !479

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !480
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 3), align 8, !dbg !480
  %16 = add i64 %gcov_ctr13, 1, !dbg !480
  store i64 %16, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 3), align 8, !dbg !480
  br label %cleanup, !dbg !481

if.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !482
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 2), align 16, !dbg !482
  %17 = add i64 %gcov_ctr12, 1, !dbg !482
  store i64 %17, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 2), align 16, !dbg !482
  %flags8 = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 7, !dbg !482
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags8) #17, !dbg !482
  %call9 = tail call i32 @trace_event_enable_disable(ptr noundef %file, i32 noundef 0, i32 noundef 1) #17, !dbg !483
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then6 ], [ %call2, %if.end ], [ %call9, %if.end7 ], !dbg !433
  ret i32 %retval.0, !dbg !484
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_enable_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_event_triggers(ptr noundef readonly %tr) local_unnamed_addr #0 align 64 !dbg !485 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !486
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.42, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.42, align 16
  %events = getelementptr inbounds %struct.trace_array, ptr %tr, i32 0, i32 35, !dbg !487
  %1 = ptrtoint ptr %events to i32, !dbg !487
  call void @__asan_load4_noabort(i32 %1), !dbg !487
  %file.056 = load ptr, ptr %events, align 4, !dbg !487
  %cmp.not57 = icmp eq ptr %file.056, %events, !dbg !487
  br i1 %cmp.not57, label %entry.for.end32_crit_edge, label %entry.for.body_crit_edge, !dbg !487

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !487

entry.for.end32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !487
  br label %for.end32, !dbg !487

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %file.058 = phi ptr [ %file.0, %for.end.for.body_crit_edge ], [ %file.056, %entry.for.body_crit_edge ]
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %file.058, i32 0, i32 6, !dbg !488
  %2 = ptrtoint ptr %triggers to i32, !dbg !488
  call void @__asan_load4_noabort(i32 %2), !dbg !488
  %3 = load ptr, ptr %triggers, align 4, !dbg !488
  %cmp14.not51 = icmp eq ptr %3, %triggers, !dbg !488
  br i1 %cmp14.not51, label %for.body.for.end_crit_edge, label %for.body.for.body16_crit_edge, !dbg !488

for.body.for.body16_crit_edge:                    ; preds = %for.body
  br label %for.body16, !dbg !488

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !488
  br label %for.end, !dbg !488

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.body.for.body16_crit_edge
  %.pn.in52 = phi ptr [ %.pn55, %for.inc.for.body16_crit_edge ], [ %3, %for.body.for.body16_crit_edge ]
  %data.054 = getelementptr i8, ptr %.pn.in52, i32 -36, !dbg !488
  %4 = ptrtoint ptr %.pn.in52 to i32, !dbg !488
  call void @__asan_load4_noabort(i32 %4), !dbg !488
  %.pn55 = load ptr, ptr %.pn.in52, align 4, !dbg !488
  %call = tail call i32 @trace_event_trigger_enable_disable(ptr noundef %file.058, i32 noundef 0), !dbg !489
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %5 = add i64 %gcov_ctr.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.43, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in52) #17, !dbg !490
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !495

if.then.i.i:                                      ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16, !dbg !496
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.99, align 8, !dbg !496
  %6 = add i64 %gcov_ctr.i.i, 1, !dbg !496
  store i64 %6, ptr @__llvm_gcov_ctr.99, align 8, !dbg !496
  br label %list_del_rcu.exit, !dbg !496

if.end.i.i:                                       ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #16, !dbg !497
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !497
  %7 = add i64 %gcov_ctr2.i.i, 1, !dbg !497
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !497
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in52, i32 0, i32 1, !dbg !498
  %8 = ptrtoint ptr %prev.i.i to i32, !dbg !498
  call void @__asan_load4_noabort(i32 %8), !dbg !498
  %9 = load ptr, ptr %prev.i.i, align 4, !dbg !498
  %10 = ptrtoint ptr %.pn.in52 to i32, !dbg !499
  call void @__asan_load4_noabort(i32 %10), !dbg !499
  %11 = load ptr, ptr %.pn.in52, align 4, !dbg !499
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !500
  %12 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !502
  call void @__asan_store4_noabort(i32 %12), !dbg !502
  store ptr %9, ptr %prev1.i.i.i, align 4, !dbg !502
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.100, align 8, !dbg !503
  %13 = add i64 %gcov_ctr.i.i.i, 1, !dbg !503
  store i64 %13, ptr @__llvm_gcov_ctr.100, align 8, !dbg !503
  %14 = ptrtoint ptr %9 to i32, !dbg !503
  call void @__asan_store4_noabort(i32 %14), !dbg !503
  store volatile ptr %11, ptr %9, align 4, !dbg !503
  br label %list_del_rcu.exit, !dbg !504

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.i.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in52, i32 0, i32 1, !dbg !505
  %15 = ptrtoint ptr %prev.i to i32, !dbg !506
  call void @__asan_store4_noabort(i32 %15), !dbg !506
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4, !dbg !506
  %ops = getelementptr i8, ptr %.pn.in52, i32 -24, !dbg !507
  %16 = ptrtoint ptr %ops to i32, !dbg !507
  call void @__asan_load4_noabort(i32 %16), !dbg !507
  %17 = load ptr, ptr %ops, align 4, !dbg !507
  %free = getelementptr inbounds %struct.event_trigger_ops, ptr %17, i32 0, i32 2, !dbg !508
  %18 = ptrtoint ptr %free to i32, !dbg !508
  call void @__asan_load4_noabort(i32 %18), !dbg !508
  %19 = load ptr, ptr %free, align 4, !dbg !508
  %tobool.not = icmp eq ptr %19, null, !dbg !509
  br i1 %tobool.not, label %list_del_rcu.exit.for.inc_crit_edge, label %if.then, !dbg !509

list_del_rcu.exit.for.inc_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !509
  br label %for.inc, !dbg !509

if.then:                                          ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !510
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !510
  %20 = add i64 %gcov_ctr33, 1, !dbg !510
  store i64 %20, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !510
  %21 = ptrtoint ptr %ops to i32, !dbg !511
  call void @__asan_load4_noabort(i32 %21), !dbg !511
  %22 = load ptr, ptr %ops, align 4, !dbg !511
  %free19 = getelementptr inbounds %struct.event_trigger_ops, ptr %22, i32 0, i32 2, !dbg !512
  %23 = ptrtoint ptr %free19 to i32, !dbg !512
  call void @__asan_load4_noabort(i32 %23), !dbg !512
  %24 = load ptr, ptr %free19, align 4, !dbg !512
  tail call void %24(ptr noundef %22, ptr noundef %data.054) #17, !dbg !510
  br label %for.inc, !dbg !510

for.inc:                                          ; preds = %if.then, %list_del_rcu.exit.for.inc_crit_edge
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !488
  %25 = add i64 %gcov_ctr34, 1, !dbg !488
  store i64 %25, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 2), align 16, !dbg !488
  %cmp14.not = icmp eq ptr %.pn55, %triggers, !dbg !488
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body16_crit_edge, !dbg !488, !llvm.loop !513

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !488
  br label %for.body16, !dbg !488

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !488
  br label %for.end, !dbg !488

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !487
  %26 = add i64 %gcov_ctr35, 1, !dbg !487
  store i64 %26, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 3), align 8, !dbg !487
  %27 = ptrtoint ptr %file.058 to i32, !dbg !487
  call void @__asan_load4_noabort(i32 %27), !dbg !487
  %file.0 = load ptr, ptr %file.058, align 4, !dbg !487
  %cmp.not = icmp eq ptr %file.0, %events, !dbg !487
  br i1 %cmp.not, label %for.end.for.end32_crit_edge, label %for.end.for.body_crit_edge, !dbg !487, !llvm.loop !515

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !487
  br label %for.body, !dbg !487

for.end.for.end32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !487
  br label %for.end32, !dbg !487

for.end32:                                        ; preds = %for.end.for.end32_crit_edge, %entry.for.end32_crit_edge
  ret void, !dbg !517
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_cond_flag(ptr noundef %file) local_unnamed_addr #0 align 64 !dbg !518 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !519
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !520
  %0 = load i32, ptr @debug_locks, align 4, !dbg !520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0), !dbg !520
  %tobool.not = icmp eq i32 %0, 0, !dbg !520
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !dbg !520

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !520
  br label %if.end, !dbg !520

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.44, align 16, !dbg !520
  %1 = add i64 %gcov_ctr, 1, !dbg !520
  store i64 %1, ptr @__llvm_gcov_ctr.44, align 16, !dbg !520
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.45, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #17, !dbg !521
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !520
  %cmp.not = icmp eq i32 %call.i, 0, !dbg !520
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !dbg !520, !prof !281

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !520
  br label %if.end, !dbg !520

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !520
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 538, i32 noundef 9, ptr noundef null) #17, !dbg !520
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !520
  %3 = add i64 %gcov_ctr45, 1, !dbg !520
  store i64 %3, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !520
  br label %if.end, !dbg !520

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 6, !dbg !525
  %4 = ptrtoint ptr %triggers to i32, !dbg !525
  call void @__asan_load4_noabort(i32 %4), !dbg !525
  %.pn65 = load ptr, ptr %triggers, align 4, !dbg !525
  %cmp26.not66 = icmp eq ptr %.pn65, %triggers, !dbg !525
  br i1 %cmp26.not66, label %if.end.if.else_crit_edge, label %if.end.for.body_crit_edge, !dbg !525

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body, !dbg !525

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !525
  br label %if.else, !dbg !525

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn67 = phi ptr [ %.pn, %if.end35.for.body_crit_edge ], [ %.pn65, %if.end.for.body_crit_edge ]
  %filter = getelementptr i8, ptr %.pn67, i32 -16, !dbg !526
  %5 = ptrtoint ptr %filter to i32, !dbg !526
  call void @__asan_load4_noabort(i32 %5), !dbg !526
  %6 = load ptr, ptr %filter, align 4, !dbg !526
  %tobool29.not = icmp eq ptr %6, null, !dbg !527
  br i1 %tobool29.not, label %lor.lhs.false, label %for.body.if.then34_crit_edge, !dbg !528

for.body.if.then34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !528
  br label %if.then34, !dbg !528

lor.lhs.false:                                    ; preds = %for.body
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !529
  %7 = add i64 %gcov_ctr46, 1, !dbg !529
  store i64 %7, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !529
  %cmd_ops = getelementptr i8, ptr %.pn67, i32 -20, !dbg !530
  %8 = ptrtoint ptr %cmd_ops to i32, !dbg !530
  call void @__asan_load4_noabort(i32 %8), !dbg !530
  %9 = load ptr, ptr %cmd_ops, align 4, !dbg !530
  %gcov_ctr.i60 = load i64, ptr @__llvm_gcov_ctr.27, align 8
  %10 = add i64 %gcov_ctr.i60, 1
  store i64 %10, ptr @__llvm_gcov_ctr.27, align 8
  %flags.i = getelementptr inbounds %struct.event_command, ptr %9, i32 0, i32 3, !dbg !531
  %11 = ptrtoint ptr %flags.i to i32, !dbg !531
  call void @__asan_load4_noabort(i32 %11), !dbg !531
  %12 = load i32, ptr %flags.i, align 4, !dbg !531
  %and.i = and i32 %12, 1, !dbg !533
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !534
  %tobool.i.not = icmp eq i32 %and.i, 0, !dbg !534
  br i1 %tobool.i.not, label %lor.lhs.false31, label %lor.lhs.false.if.then34_crit_edge, !dbg !535

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16, !dbg !535
  br label %if.then34, !dbg !535

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !536
  %13 = add i64 %gcov_ctr47, 1, !dbg !536
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8, !dbg !536
  %14 = ptrtoint ptr %cmd_ops to i32, !dbg !537
  call void @__asan_load4_noabort(i32 %14), !dbg !537
  %15 = load ptr, ptr %cmd_ops, align 4, !dbg !537
  %gcov_ctr.i61 = load i64, ptr @__llvm_gcov_ctr.46, align 8
  %16 = add i64 %gcov_ctr.i61, 1
  store i64 %16, ptr @__llvm_gcov_ctr.46, align 8
  %flags.i62 = getelementptr inbounds %struct.event_command, ptr %15, i32 0, i32 3, !dbg !538
  %17 = ptrtoint ptr %flags.i62 to i32, !dbg !538
  call void @__asan_load4_noabort(i32 %17), !dbg !538
  %18 = load i32, ptr %flags.i62, align 4, !dbg !538
  %and.i63 = and i32 %18, 2, !dbg !541
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63), !dbg !542
  %tobool.i64.not = icmp eq i32 %and.i63, 0, !dbg !542
  br i1 %tobool.i64.not, label %if.end35, label %lor.lhs.false31.if.then34_crit_edge, !dbg !527

lor.lhs.false31.if.then34_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #16, !dbg !527
  br label %if.then34, !dbg !527

if.then34:                                        ; preds = %lor.lhs.false31.if.then34_crit_edge, %lor.lhs.false.if.then34_crit_edge, %for.body.if.then34_crit_edge
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 5), align 8, !dbg !543
  %19 = add i64 %gcov_ctr49, 1, !dbg !543
  store i64 %19, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 5), align 8, !dbg !543
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 6), align 16, !dbg !544
  %20 = add i64 %gcov_ctr50, 1, !dbg !544
  store i64 %20, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 6), align 16, !dbg !544
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 7, !dbg !544
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #17, !dbg !544
  br label %if.end44, !dbg !544

if.end35:                                         ; preds = %lor.lhs.false31
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !545
  %21 = add i64 %gcov_ctr48, 1, !dbg !545
  store i64 %21, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !545
  %22 = ptrtoint ptr %.pn67 to i32, !dbg !525
  call void @__asan_load4_noabort(i32 %22), !dbg !525
  %.pn = load ptr, ptr %.pn67, align 4, !dbg !525
  %cmp26.not = icmp eq ptr %.pn, %triggers, !dbg !525
  br i1 %cmp26.not, label %if.end35.if.else_crit_edge, label %if.end35.for.body_crit_edge, !dbg !525, !llvm.loop !546

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16, !dbg !525
  br label %for.body, !dbg !525

if.end35.if.else_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16, !dbg !525
  br label %if.else, !dbg !525

if.else:                                          ; preds = %if.end35.if.else_crit_edge, %if.end.if.else_crit_edge
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 7), align 8, !dbg !547
  %23 = add i64 %gcov_ctr51, 1, !dbg !547
  store i64 %23, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 7), align 8, !dbg !547
  %flags43 = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 7, !dbg !547
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags43) #17, !dbg !547
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then34
  ret void, !dbg !548
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @event_trigger_check_remove(ptr noundef readonly %glob) local_unnamed_addr #5 align 64 !dbg !549 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !550
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.47, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.47, align 8
  %tobool.not = icmp eq ptr %glob, null, !dbg !551
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs, !dbg !552

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !552
  br label %land.end, !dbg !552

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !553
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 1), align 8, !dbg !553
  %1 = add i64 %gcov_ctr3, 1, !dbg !553
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 1), align 8, !dbg !553
  %2 = ptrtoint ptr %glob to i32, !dbg !553
  call void @__asan_load1_noabort(i32 %2), !dbg !553
  %3 = load i8, ptr %glob, align 1, !dbg !553
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %3), !dbg !554
  %cmp = icmp eq i8 %3, 33, !dbg !554
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ], !dbg !555
  ret i1 %4, !dbg !556
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @event_trigger_empty_param(ptr noundef readnone %param) local_unnamed_addr #5 align 64 !dbg !557 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !558
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.48, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.48, align 8
  %tobool.not = icmp eq ptr %param, null, !dbg !559
  ret i1 %tobool.not, !dbg !560
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @event_trigger_separate_filter(ptr noundef %param_and_filter, ptr nocapture noundef writeonly %param, ptr nocapture noundef writeonly %filter, i1 noundef zeroext %param_required) local_unnamed_addr #0 align 64 !dbg !561 {
entry:
  %param_and_filter.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !562
  %0 = ptrtoint ptr %param_and_filter.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %param_and_filter, ptr %param_and_filter.addr, align 4
  %1 = ptrtoint ptr %filter to i32, !dbg !563
  call void @__asan_store4_noabort(i32 %1), !dbg !563
  store ptr null, ptr %filter, align 4, !dbg !563
  %2 = ptrtoint ptr %param to i32, !dbg !564
  call void @__asan_store4_noabort(i32 %2), !dbg !564
  store ptr null, ptr %param, align 4, !dbg !564
  %tobool.not = icmp eq ptr %param_and_filter, null, !dbg !565
  br i1 %tobool.not, label %if.then, label %if.end3, !dbg !566

if.then:                                          ; preds = %entry
  br i1 %param_required, label %if.then2, label %if.then.if.end_crit_edge, !dbg !567

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !567
  br label %if.end, !dbg !567

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !568
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !568
  %3 = add i64 %gcov_ctr18, 1, !dbg !568
  store i64 %3, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !568
  br label %if.end, !dbg !569

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ -22, %if.then2 ], [ 0, %if.then.if.end_crit_edge ], !dbg !570
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !571
  %4 = add i64 %gcov_ctr19, 1, !dbg !571
  store i64 %4, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 2), align 16, !dbg !571
  br label %out, !dbg !571

if.end3:                                          ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.49, align 16, !dbg !572
  %5 = add i64 %gcov_ctr, 1, !dbg !572
  store i64 %5, ptr @__llvm_gcov_ctr.49, align 16, !dbg !572
  br i1 %param_required, label %if.end3.if.end9_crit_edge, label %land.lhs.true6, !dbg !573

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !573
  br label %if.end9, !dbg !573

land.lhs.true6:                                   ; preds = %if.end3
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 3), align 8, !dbg !574
  %6 = add i64 %gcov_ctr20, 1, !dbg !574
  store i64 %6, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 3), align 8, !dbg !574
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 4), align 16, !dbg !575
  %7 = add i64 %gcov_ctr21, 1, !dbg !575
  store i64 %7, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 4), align 16, !dbg !575
  %8 = ptrtoint ptr %param_and_filter to i32, !dbg !575
  call void @__asan_load1_noabort(i32 %8), !dbg !575
  %9 = load i8, ptr %param_and_filter, align 1, !dbg !575
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %10 = add i64 %gcov_ctr.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr.50, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %9), !dbg !576
  %cmp.i = icmp ugt i8 %9, 47, !dbg !576
  br i1 %cmp.i, label %isdigit.exit, label %land.lhs.true6.if.then8_crit_edge, !dbg !580

land.lhs.true6.if.then8_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !580
  br label %if.then8, !dbg !580

isdigit.exit:                                     ; preds = %land.lhs.true6
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !581
  %11 = add i64 %gcov_ctr2.i, 1, !dbg !581
  store i64 %11, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !581
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %9), !dbg !582
  %cmp1.i = icmp ugt i8 %9, 57, !dbg !582
  br i1 %cmp1.i, label %isdigit.exit.if.then8_crit_edge, label %isdigit.exit.if.end9_crit_edge, !dbg !583

isdigit.exit.if.end9_crit_edge:                   ; preds = %isdigit.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !583
  br label %if.end9, !dbg !583

isdigit.exit.if.then8_crit_edge:                  ; preds = %isdigit.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !583
  br label %if.then8, !dbg !583

if.then8:                                         ; preds = %isdigit.exit.if.then8_crit_edge, %land.lhs.true6.if.then8_crit_edge
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 5), align 8, !dbg !584
  %12 = add i64 %gcov_ctr22, 1, !dbg !584
  store i64 %12, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 5), align 8, !dbg !584
  %13 = ptrtoint ptr %filter to i32, !dbg !585
  call void @__asan_store4_noabort(i32 %13), !dbg !585
  store ptr %param_and_filter, ptr %filter, align 4, !dbg !585
  br label %out, !dbg !586

if.end9:                                          ; preds = %isdigit.exit.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %call10 = call ptr @strsep(ptr noundef nonnull %param_and_filter.addr, ptr noundef nonnull @.str.5) #17, !dbg !587
  %14 = ptrtoint ptr %param to i32, !dbg !588
  call void @__asan_store4_noabort(i32 %14), !dbg !588
  store ptr %call10, ptr %param, align 4, !dbg !588
  %15 = ptrtoint ptr %param_and_filter.addr to i32, !dbg !589
  call void @__asan_load4_noabort(i32 %15), !dbg !589
  %16 = load ptr, ptr %param_and_filter.addr, align 4, !dbg !589
  %tobool11.not = icmp eq ptr %16, null, !dbg !589
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.then12, !dbg !589

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16, !dbg !589
  br label %out, !dbg !589

if.then12:                                        ; preds = %if.end9
  %call13 = call ptr @skip_spaces(ptr noundef nonnull %16) #17, !dbg !590
  %17 = ptrtoint ptr %filter to i32, !dbg !591
  call void @__asan_store4_noabort(i32 %17), !dbg !591
  store ptr %call13, ptr %filter, align 4, !dbg !591
  %18 = ptrtoint ptr %call13 to i32, !dbg !592
  call void @__asan_load1_noabort(i32 %18), !dbg !592
  %19 = load i8, ptr %call13, align 1, !dbg !592
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19), !dbg !592
  %tobool14.not = icmp eq i8 %19, 0, !dbg !592
  br i1 %tobool14.not, label %if.then15, label %if.then12.if.end16_crit_edge, !dbg !593

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16, !dbg !593
  br label %if.end16, !dbg !593

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16, !dbg !594
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 6), align 16, !dbg !594
  %20 = add i64 %gcov_ctr23, 1, !dbg !594
  store i64 %20, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 6), align 16, !dbg !594
  %21 = ptrtoint ptr %filter to i32, !dbg !595
  call void @__asan_store4_noabort(i32 %21), !dbg !595
  store ptr null, ptr %filter, align 4, !dbg !595
  br label %if.end16, !dbg !596

if.end16:                                         ; preds = %if.then15, %if.then12.if.end16_crit_edge
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 7), align 8, !dbg !597
  %22 = add i64 %gcov_ctr24, 1, !dbg !597
  store i64 %22, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 7), align 8, !dbg !597
  br label %out, !dbg !597

out:                                              ; preds = %if.end16, %if.end9.out_crit_edge, %if.then8, %if.end
  %ret.1 = phi i32 [ 0, %if.end16 ], [ 0, %if.end9.out_crit_edge ], [ 0, %if.then8 ], [ %ret.0, %if.end ], !dbg !570
  ret i32 %ret.1, !dbg !598
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @event_trigger_alloc(ptr noundef %cmd_ops, ptr noundef %cmd, ptr noundef %param, ptr noundef %private_data) local_unnamed_addr #0 align 64 !dbg !599 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !600
  %get_trigger_ops = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 9, !dbg !601
  %0 = ptrtoint ptr %get_trigger_ops to i32, !dbg !601
  call void @__asan_load4_noabort(i32 %0), !dbg !601
  %1 = load ptr, ptr %get_trigger_ops, align 4, !dbg !601
  %call = tail call ptr %1(ptr noundef %cmd, ptr noundef %param) #17, !dbg !602
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.52, align 8
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !603
  %3 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !603
  store i64 %3, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !603
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !611
  %4 = add i64 %gcov_ctr11.i.i, 1, !dbg !611
  store i64 %4, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !611
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.112, align 16, !dbg !612
  %5 = add i64 %gcov_ctr.i.i.i, 1, !dbg !612
  store i64 %5, ptr @__llvm_gcov_ctr.112, align 16, !dbg !612
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !615
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !615
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 60) #19, !dbg !616
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !617
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !dbg !618

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !618
  br label %cleanup, !dbg !618

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !619
  %7 = ptrtoint ptr %call7.i.i to i32, !dbg !619
  call void @__asan_store4_noabort(i32 %7), !dbg !619
  store i32 -1, ptr %call7.i.i, align 8, !dbg !619
  %ops = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 3, !dbg !620
  %8 = ptrtoint ptr %ops to i32, !dbg !621
  call void @__asan_store4_noabort(i32 %8), !dbg !621
  store ptr %call, ptr %ops, align 4, !dbg !621
  %cmd_ops2 = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 4, !dbg !622
  %9 = ptrtoint ptr %cmd_ops2 to i32, !dbg !623
  call void @__asan_store4_noabort(i32 %9), !dbg !623
  store ptr %cmd_ops, ptr %cmd_ops2, align 8, !dbg !623
  %private_data3 = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 7, !dbg !624
  %10 = ptrtoint ptr %private_data3 to i32, !dbg !625
  call void @__asan_store4_noabort(i32 %10), !dbg !625
  store ptr %private_data, ptr %private_data3, align 4, !dbg !625
  %list = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 10, !dbg !626
  %gcov_ctr.i24 = load i64, ptr @__llvm_gcov_ctr.53, align 8, !dbg !627
  %11 = ptrtoint ptr %list to i32, !dbg !627
  call void @__asan_store4_noabort(i32 %11), !dbg !627
  store volatile ptr %list, ptr %list, align 4, !dbg !627
  %prev.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 10, i32 1, !dbg !629
  %12 = ptrtoint ptr %prev.i to i32, !dbg !630
  call void @__asan_store4_noabort(i32 %12), !dbg !630
  store ptr %list, ptr %prev.i, align 8, !dbg !630
  %named_list = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 12, !dbg !631
  %13 = add i64 %gcov_ctr.i24, 2, !dbg !632
  store i64 %13, ptr @__llvm_gcov_ctr.53, align 8, !dbg !632
  %14 = ptrtoint ptr %named_list to i32, !dbg !632
  call void @__asan_store4_noabort(i32 %14), !dbg !632
  store volatile ptr %named_list, ptr %named_list, align 8, !dbg !632
  %prev.i26 = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 12, i32 1, !dbg !634
  %15 = ptrtoint ptr %prev.i26 to i32, !dbg !635
  call void @__asan_store4_noabort(i32 %15), !dbg !635
  store ptr %named_list, ptr %prev.i26, align 4, !dbg !635
  %filter = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 5, !dbg !636
  %16 = ptrtoint ptr %filter to i32, !dbg !636
  call void @__asan_store4_noabort(i32 %16), !dbg !636
  store volatile ptr null, ptr %filter, align 4, !dbg !636
  br label %cleanup, !dbg !637

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.51, i32 0, i32 1), %if.end ], [ @__llvm_gcov_ctr.51, %entry.cleanup_crit_edge ]
  %17 = ptrtoint ptr %.sink to i32, !dbg !638
  call void @__asan_load8_noabort(i32 %17), !dbg !638
  %gcov_ctr14 = load i64, ptr %.sink, align 8, !dbg !638
  %18 = add i64 %gcov_ctr14, 1, !dbg !638
  store i64 %18, ptr %.sink, align 8, !dbg !638
  ret ptr %call7.i.i, !dbg !639
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @event_trigger_parse_num(ptr noundef %param, ptr noundef %trigger_data) local_unnamed_addr #0 align 64 !dbg !640 {
entry:
  %param.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !641
  %0 = ptrtoint ptr %param.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %param, ptr %param.addr, align 4
  %tobool.not = icmp eq ptr %param, null, !dbg !642
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then, !dbg !642

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !642
  br label %cleanup, !dbg !642

if.then:                                          ; preds = %entry
  %call = call ptr @strsep(ptr noundef nonnull %param.addr, ptr noundef nonnull @.str.6) #17, !dbg !643
  %1 = ptrtoint ptr %call to i32, !dbg !644
  call void @__asan_load1_noabort(i32 %1), !dbg !644
  %char0 = load i8, ptr %call, align 1, !dbg !644
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0), !dbg !644
  %tobool2.not = icmp eq i8 %char0, 0, !dbg !644
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end, !dbg !645

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !645
  br label %cleanup, !dbg !645

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !646
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 1), align 8, !dbg !646
  %2 = add i64 %gcov_ctr7, 1, !dbg !646
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 1), align 8, !dbg !646
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.55, align 8
  %call.i = call i32 @_kstrtoul(ptr noundef %call, i32 noundef 0, ptr noundef %trigger_data) #17, !dbg !647
  br label %cleanup, !dbg !651

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi ptr [ @__llvm_gcov_ctr.54, %if.then.cleanup_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 2), %if.end ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.54, i32 0, i32 2), %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %call.i, %if.end ], [ 0, %entry.cleanup_crit_edge ], !dbg !652
  %4 = ptrtoint ptr %.sink to i32, !dbg !652
  call void @__asan_load8_noabort(i32 %4), !dbg !652
  %gcov_ctr8 = load i64, ptr %.sink, align 16, !dbg !652
  %5 = add i64 %gcov_ctr8, 1, !dbg !652
  store i64 %5, ptr %.sink, align 16, !dbg !652
  ret i32 %retval.0, !dbg !653
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @event_trigger_set_filter(ptr nocapture noundef readonly %cmd_ops, ptr noundef %file, ptr noundef %param, ptr noundef %trigger_data) local_unnamed_addr #0 align 64 !dbg !654 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !655
  %tobool.not = icmp eq ptr %param, null, !dbg !656
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !dbg !657

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !657
  br label %if.end, !dbg !657

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.56, align 16, !dbg !658
  %0 = add i64 %gcov_ctr, 1, !dbg !658
  store i64 %0, ptr @__llvm_gcov_ctr.56, align 16, !dbg !658
  %set_filter = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 8, !dbg !659
  %1 = ptrtoint ptr %set_filter to i32, !dbg !659
  call void @__asan_load4_noabort(i32 %1), !dbg !659
  %2 = load ptr, ptr %set_filter, align 4, !dbg !659
  %tobool1.not = icmp eq ptr %2, null, !dbg !658
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then, !dbg !656

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !656
  br label %if.end, !dbg !656

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !660
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 1), align 8, !dbg !660
  %3 = add i64 %gcov_ctr3, 1, !dbg !660
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 1), align 8, !dbg !660
  %call = tail call i32 %2(ptr noundef nonnull %param, ptr noundef %trigger_data, ptr noundef %file) #17, !dbg !660
  br label %return, !dbg !661

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 2), align 16, !dbg !662
  %4 = add i64 %gcov_ctr4, 1, !dbg !662
  store i64 %4, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.56, i32 0, i32 2), align 16, !dbg !662
  br label %return, !dbg !662

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ], !dbg !663
  ret i32 %retval.0, !dbg !664
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @event_trigger_reset_filter(ptr nocapture noundef readonly %cmd_ops, ptr noundef %trigger_data) local_unnamed_addr #0 align 64 !dbg !665 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !666
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.57, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.57, align 8
  %set_filter = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 8, !dbg !667
  %1 = ptrtoint ptr %set_filter to i32, !dbg !667
  call void @__asan_load4_noabort(i32 %1), !dbg !667
  %2 = load ptr, ptr %set_filter, align 4, !dbg !667
  %tobool.not = icmp eq ptr %2, null, !dbg !668
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !668

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !668
  br label %if.end, !dbg !668

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !669
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 1), align 8, !dbg !669
  %3 = add i64 %gcov_ctr2, 1, !dbg !669
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 1), align 8, !dbg !669
  %call = tail call i32 %2(ptr noundef null, ptr noundef %trigger_data, ptr noundef null) #17, !dbg !669
  br label %if.end, !dbg !669

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void, !dbg !670
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @event_trigger_register(ptr nocapture noundef readonly %cmd_ops, ptr noundef %file, ptr noundef %glob, ptr nocapture noundef readnone %cmd, ptr nocapture noundef readnone %param, ptr noundef %trigger_data, ptr noundef writeonly %n_registered) local_unnamed_addr #0 align 64 !dbg !671 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !672
  %tobool.not = icmp eq ptr %n_registered, null, !dbg !673
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !673

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !673
  br label %if.end, !dbg !673

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !674
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.58, align 16, !dbg !674
  %0 = add i64 %gcov_ctr, 1, !dbg !674
  store i64 %0, ptr @__llvm_gcov_ctr.58, align 16, !dbg !674
  %1 = ptrtoint ptr %n_registered to i32, !dbg !675
  call void @__asan_store4_noabort(i32 %1), !dbg !675
  store i32 0, ptr %n_registered, align 4, !dbg !675
  br label %if.end, !dbg !676

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 5, !dbg !677
  %2 = ptrtoint ptr %reg to i32, !dbg !677
  call void @__asan_load4_noabort(i32 %2), !dbg !677
  %3 = load ptr, ptr %reg, align 4, !dbg !677
  %call = tail call i32 %3(ptr noundef %glob, ptr noundef %trigger_data, ptr noundef %file) #17, !dbg !678
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !679
  %tobool1.not = icmp eq i32 %call, 0, !dbg !679
  br i1 %tobool1.not, label %if.then2, label %if.else, !dbg !680

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !681
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !681
  %4 = add i64 %gcov_ctr9, 1, !dbg !681
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !681
  %unreg = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 6, !dbg !682
  %5 = ptrtoint ptr %unreg to i32, !dbg !682
  call void @__asan_load4_noabort(i32 %5), !dbg !682
  %6 = load ptr, ptr %unreg, align 4, !dbg !682
  tail call void %6(ptr noundef %glob, ptr noundef %trigger_data, ptr noundef %file) #17, !dbg !681
  br label %if.end8, !dbg !683

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !684
  %cmp = icmp sgt i32 %call, 0, !dbg !684
  br i1 %cmp, label %if.then3, label %if.else.if.end7_crit_edge, !dbg !685

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !685
  br label %if.end7, !dbg !685

if.then3:                                         ; preds = %if.else
  br i1 %tobool.not, label %if.then3.if.end6_crit_edge, label %if.then5, !dbg !686

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !686
  br label %if.end6, !dbg !686

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !687
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !687
  %7 = add i64 %gcov_ctr10, 1, !dbg !687
  store i64 %7, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 2), align 16, !dbg !687
  %8 = ptrtoint ptr %n_registered to i32, !dbg !688
  call void @__asan_store4_noabort(i32 %8), !dbg !688
  store i32 %call, ptr %n_registered, align 4, !dbg !688
  br label %if.end6, !dbg !689

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 3), align 8, !dbg !690
  %9 = add i64 %gcov_ctr11, 1, !dbg !690
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 3), align 8, !dbg !690
  br label %if.end7, !dbg !691

if.end7:                                          ; preds = %if.end6, %if.else.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %if.end6 ], [ %call, %if.else.if.end7_crit_edge ], !dbg !692
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 4), align 16
  %10 = add i64 %gcov_ctr12, 1
  store i64 %10, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 4), align 16
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then2
  %ret.1 = phi i32 [ %ret.0, %if.end7 ], [ -2, %if.then2 ], !dbg !692
  ret i32 %ret.1, !dbg !693
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_trigger_filter(ptr noundef %filter_str, ptr noundef %trigger_data, ptr nocapture noundef readonly %file) #0 align 64 !dbg !694 {
entry:
  %filter_str.addr = alloca ptr, align 4
  %filter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !695
  %0 = ptrtoint ptr %filter_str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %filter_str, ptr %filter_str.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #17, !dbg !696
  %1 = ptrtoint ptr %filter to i32, !dbg !697
  call void @__asan_store4_noabort(i32 %1), !dbg !697
  store ptr null, ptr %filter, align 4, !dbg !697
  %tobool.not = icmp eq ptr %filter_str, null, !dbg !698
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !699

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !700
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 1), align 8, !dbg !700
  %2 = add i64 %gcov_ctr72, 1, !dbg !700
  store i64 %2, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 1), align 8, !dbg !700
  br label %assign, !dbg !700

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.59, align 16, !dbg !701
  %3 = add i64 %gcov_ctr, 1, !dbg !701
  store i64 %3, ptr @__llvm_gcov_ctr.59, align 16, !dbg !701
  %call = call ptr @strsep(ptr noundef nonnull %filter_str.addr, ptr noundef nonnull @.str.5) #17, !dbg !701
  %4 = ptrtoint ptr %call to i32, !dbg !702
  call void @__asan_load1_noabort(i32 %4), !dbg !702
  %char0 = load i8, ptr %call, align 1, !dbg !702
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0), !dbg !702
  %tobool2.not = icmp eq i8 %char0, 0, !dbg !702
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %lor.lhs.false, !dbg !703

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !703
  br label %out, !dbg !703

lor.lhs.false:                                    ; preds = %if.end
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 2), align 16, !dbg !704
  %5 = add i64 %gcov_ctr73, 1, !dbg !704
  store i64 %5, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 2), align 16, !dbg !704
  %call3 = call i32 @strcmp(ptr noundef %call, ptr noundef nonnull dereferenceable(3) @.str.7) #18, !dbg !705
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3), !dbg !706
  %cmp.not = icmp eq i32 %call3, 0, !dbg !706
  br i1 %cmp.not, label %if.end5, label %lor.lhs.false.out_crit_edge, !dbg !707

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16, !dbg !707
  br label %out, !dbg !707

if.end5:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %filter_str.addr to i32, !dbg !708
  call void @__asan_load4_noabort(i32 %6), !dbg !708
  %7 = load ptr, ptr %filter_str.addr, align 4, !dbg !708
  %tobool6.not = icmp eq ptr %7, null, !dbg !708
  br i1 %tobool6.not, label %if.then7, label %if.end8, !dbg !709

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !710
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 3), align 8, !dbg !710
  %8 = add i64 %gcov_ctr74, 1, !dbg !710
  store i64 %8, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 3), align 8, !dbg !710
  br label %out, !dbg !710

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !711
  %gcov_ctr75 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 4), align 16, !dbg !711
  %9 = add i64 %gcov_ctr75, 1, !dbg !711
  store i64 %9, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 4), align 16, !dbg !711
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 4, !dbg !712
  %10 = ptrtoint ptr %tr to i32, !dbg !712
  call void @__asan_load4_noabort(i32 %10), !dbg !712
  %11 = load ptr, ptr %tr, align 4, !dbg !712
  %event_call = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 1, !dbg !713
  %12 = ptrtoint ptr %event_call to i32, !dbg !713
  call void @__asan_load4_noabort(i32 %12), !dbg !713
  %13 = load ptr, ptr %event_call, align 4, !dbg !713
  %call9 = call i32 @create_event_filter(ptr noundef %11, ptr noundef %13, ptr noundef nonnull %7, i1 noundef zeroext false, ptr noundef nonnull %filter) #17, !dbg !714
  br label %assign, !dbg !715

assign:                                           ; preds = %if.end8, %if.then
  %ret.0 = phi i32 [ %call9, %if.end8 ], [ -22, %if.then ], !dbg !716
  %filter11 = getelementptr inbounds %struct.event_trigger_data, ptr %trigger_data, i32 0, i32 5, !dbg !717
  %14 = ptrtoint ptr %filter11 to i32, !dbg !717
  call void @__asan_load4_noabort(i32 %14), !dbg !717
  %15 = load volatile ptr, ptr %filter11, align 4, !dbg !717
  %16 = ptrtoint ptr %filter to i32, !dbg !718
  call void @__asan_load4_noabort(i32 %16), !dbg !718
  %17 = load ptr, ptr %filter, align 4, !dbg !718
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !dbg !718, !srcloc !719
  %18 = ptrtoint ptr %filter11 to i32, !dbg !718
  call void @__asan_store4_noabort(i32 %18), !dbg !718
  store volatile ptr %17, ptr %filter11, align 4, !dbg !718
  %tobool51.not = icmp eq ptr %15, null, !dbg !720
  br i1 %tobool51.not, label %assign.if.end53_crit_edge, label %if.then52, !dbg !720

assign.if.end53_crit_edge:                        ; preds = %assign
  call void @__sanitizer_cov_trace_pc() #16, !dbg !720
  br label %if.end53, !dbg !720

if.then52:                                        ; preds = %assign
  call void @__sanitizer_cov_trace_pc() #16, !dbg !721
  %gcov_ctr78 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 7), align 8, !dbg !721
  %19 = add i64 %gcov_ctr78, 1, !dbg !721
  store i64 %19, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 7), align 8, !dbg !721
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !722
  %20 = add i64 %gcov_ctr.i, 1, !dbg !722
  store i64 %20, ptr @__llvm_gcov_ctr.24, align 8, !dbg !722
  call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #17, !dbg !722
  call void @synchronize_rcu() #17, !dbg !724
  call void @free_event_filter(ptr noundef nonnull %15) #17, !dbg !725
  br label %if.end53, !dbg !726

if.end53:                                         ; preds = %if.then52, %assign.if.end53_crit_edge
  %filter_str54 = getelementptr inbounds %struct.event_trigger_data, ptr %trigger_data, i32 0, i32 6, !dbg !727
  %21 = ptrtoint ptr %filter_str54 to i32, !dbg !727
  call void @__asan_load4_noabort(i32 %21), !dbg !727
  %22 = load ptr, ptr %filter_str54, align 4, !dbg !727
  call void @kfree(ptr noundef %22) #17, !dbg !728
  %23 = ptrtoint ptr %filter_str54 to i32, !dbg !729
  call void @__asan_store4_noabort(i32 %23), !dbg !729
  store ptr null, ptr %filter_str54, align 4, !dbg !729
  %24 = ptrtoint ptr %filter_str.addr to i32, !dbg !730
  call void @__asan_load4_noabort(i32 %24), !dbg !730
  %25 = load ptr, ptr %filter_str.addr, align 4, !dbg !730
  %tobool56.not = icmp eq ptr %25, null, !dbg !730
  br i1 %tobool56.not, label %if.end53.out_crit_edge, label %if.then57, !dbg !730

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16, !dbg !730
  br label %out, !dbg !730

if.then57:                                        ; preds = %if.end53
  %gcov_ctr79 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 8), align 16, !dbg !731
  %26 = add i64 %gcov_ctr79, 1, !dbg !731
  store i64 %26, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 8), align 16, !dbg !731
  %call58 = call noalias ptr @kstrdup(ptr noundef nonnull %25, i32 noundef 3264) #17, !dbg !732
  %27 = ptrtoint ptr %filter_str54 to i32, !dbg !733
  call void @__asan_store4_noabort(i32 %27), !dbg !733
  store ptr %call58, ptr %filter_str54, align 4, !dbg !733
  %tobool61.not = icmp eq ptr %call58, null, !dbg !734
  br i1 %tobool61.not, label %if.then62, label %if.then57.out_crit_edge, !dbg !735

if.then57.out_crit_edge:                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16, !dbg !735
  br label %out, !dbg !735

if.then62:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #16, !dbg !736
  %gcov_ctr80 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 9), align 8, !dbg !736
  %28 = add i64 %gcov_ctr80, 1, !dbg !736
  store i64 %28, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.59, i32 0, i32 9), align 8, !dbg !736
  %29 = ptrtoint ptr %filter11 to i32, !dbg !736
  call void @__asan_load4_noabort(i32 %29), !dbg !736
  %30 = load volatile ptr, ptr %filter11, align 4, !dbg !736
  call void @free_event_filter(ptr noundef %30) #17, !dbg !737
  %31 = ptrtoint ptr %filter11 to i32, !dbg !738
  call void @__asan_store4_noabort(i32 %31), !dbg !738
  store ptr null, ptr %filter11, align 4, !dbg !738
  br label %out, !dbg !739

out:                                              ; preds = %if.then62, %if.then57.out_crit_edge, %if.end53.out_crit_edge, %if.then7, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %ret.1 = phi i32 [ -22, %lor.lhs.false.out_crit_edge ], [ %ret.0, %if.then57.out_crit_edge ], [ -12, %if.then62 ], [ %ret.0, %if.end53.out_crit_edge ], [ -22, %if.then7 ], [ -22, %if.end.out_crit_edge ], !dbg !716
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #17, !dbg !740
  ret i32 %ret.1, !dbg !741
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_event_filter(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_event_filter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_named_trigger(ptr noundef readonly %name) local_unnamed_addr #6 align 64 !dbg !742 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !743
  %tobool.not = icmp eq ptr %name, null, !dbg !744
  br i1 %tobool.not, label %if.then, label %for.cond.preheader, !dbg !745

for.cond.preheader:                               ; preds = %entry
  %.pn22 = load ptr, ptr @named_triggers, align 4, !dbg !746
  %cmp.not23 = icmp eq ptr %.pn22, @named_triggers, !dbg !746
  br i1 %cmp.not23, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge, !dbg !746

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body, !dbg !746

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16, !dbg !746
  br label %for.end, !dbg !746

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !747
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.60, align 16, !dbg !747
  %0 = add i64 %gcov_ctr, 1, !dbg !747
  store i64 %0, ptr @__llvm_gcov_ctr.60, align 16, !dbg !747
  br label %cleanup, !dbg !747

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn22, %for.cond.preheader.for.body_crit_edge ]
  %named_data = getelementptr i8, ptr %.pn24, i32 8, !dbg !748
  %1 = ptrtoint ptr %named_data to i32, !dbg !748
  call void @__asan_load4_noabort(i32 %1), !dbg !748
  %2 = load ptr, ptr %named_data, align 4, !dbg !748
  %tobool1.not = icmp eq ptr %2, null, !dbg !749
  br i1 %tobool1.not, label %if.end3, label %for.body.for.inc_crit_edge, !dbg !749

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !749
  br label %for.inc, !dbg !749

if.end3:                                          ; preds = %for.body
  %name4 = getelementptr i8, ptr %.pn24, i32 -4, !dbg !750
  %3 = ptrtoint ptr %name4 to i32, !dbg !750
  call void @__asan_load4_noabort(i32 %3), !dbg !750
  %4 = load ptr, ptr %name4, align 4, !dbg !750
  %call = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull %name) #18, !dbg !751
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !752
  %cmp5 = icmp eq i32 %call, 0, !dbg !752
  br i1 %cmp5, label %if.then6, label %if.end3.for.inc_crit_edge, !dbg !751

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !751
  br label %for.inc, !dbg !751

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !746
  %data.0.le = getelementptr i8, ptr %.pn24, i32 -48, !dbg !746
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.60, i32 0, i32 3), align 8, !dbg !753
  %5 = add i64 %gcov_ctr14, 1, !dbg !753
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.60, i32 0, i32 3), align 8, !dbg !753
  br label %cleanup, !dbg !754

for.inc:                                          ; preds = %if.end3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.60, i32 0, i32 2), %for.body.for.inc_crit_edge ], [ getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.60, i32 0, i32 4), %if.end3.for.inc_crit_edge ]
  %6 = ptrtoint ptr %.sink to i32, !dbg !755
  call void @__asan_load8_noabort(i32 %6), !dbg !755
  %gcov_ctr15 = load i64, ptr %.sink, align 16, !dbg !755
  %7 = add i64 %gcov_ctr15, 1, !dbg !755
  store i64 %7, ptr %.sink, align 16, !dbg !755
  %8 = ptrtoint ptr %.pn24 to i32, !dbg !746
  call void @__asan_load4_noabort(i32 %8), !dbg !746
  %.pn = load ptr, ptr %.pn24, align 4, !dbg !746
  %cmp.not = icmp eq ptr %.pn, @named_triggers, !dbg !746
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !746, !llvm.loop !756

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !746
  br label %for.body, !dbg !746

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !746
  br label %for.end, !dbg !746

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.60, i32 0, i32 1), align 8, !dbg !758
  %9 = add i64 %gcov_ctr12, 1, !dbg !758
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.60, i32 0, i32 1), align 8, !dbg !758
  br label %cleanup, !dbg !758

cleanup:                                          ; preds = %for.end, %if.then6, %if.then
  %retval.0 = phi ptr [ %data.0.le, %if.then6 ], [ null, %for.end ], [ null, %if.then ], !dbg !755
  ret ptr %retval.0, !dbg !759
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_named_trigger(ptr noundef readnone %test) local_unnamed_addr #7 align 64 !dbg !760 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !761
  %.pn12 = load ptr, ptr @named_triggers, align 4, !dbg !762
  %cmp.not13 = icmp eq ptr %.pn12, @named_triggers, !dbg !762
  br i1 %cmp.not13, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge, !dbg !762

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !762

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !762
  br label %cleanup, !dbg !762

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn12, %entry.for.body_crit_edge ]
  %data.0 = getelementptr i8, ptr %.pn14, i32 -48, !dbg !762
  %cmp1 = icmp eq ptr %data.0, %test, !dbg !763
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.inc, !dbg !764

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !764
  br label %cleanup, !dbg !764

for.inc:                                          ; preds = %for.body
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 1), align 8, !dbg !762
  %0 = add i64 %gcov_ctr6, 1, !dbg !762
  store i64 %0, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 1), align 8, !dbg !762
  %1 = ptrtoint ptr %.pn14 to i32, !dbg !762
  call void @__asan_load4_noabort(i32 %1), !dbg !762
  %.pn = load ptr, ptr %.pn14, align 4, !dbg !762
  %cmp.not = icmp eq ptr %.pn, @named_triggers, !dbg !762
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge, !dbg !762, !llvm.loop !765

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !762
  br label %for.body, !dbg !762

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !762
  br label %cleanup, !dbg !762

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 2), %entry.cleanup_crit_edge ], [ @__llvm_gcov_ctr.61, %for.body.cleanup_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 2), %for.inc.cleanup_crit_edge ]
  %cmp.not11 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp1, %for.body.cleanup_crit_edge ], [ %cmp1, %for.inc.cleanup_crit_edge ]
  %2 = ptrtoint ptr %.sink to i32, !dbg !767
  call void @__asan_load8_noabort(i32 %2), !dbg !767
  %gcov_ctr7 = load i64, ptr %.sink, align 16, !dbg !767
  %3 = add i64 %gcov_ctr7, 1, !dbg !767
  store i64 %3, ptr %.sink, align 16, !dbg !767
  ret i1 %cmp.not11, !dbg !768
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @save_named_trigger(ptr noundef %name, ptr noundef %data) local_unnamed_addr #0 align 64 !dbg !769 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !770
  %call = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #17, !dbg !771
  %name1 = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 11, !dbg !772
  %0 = ptrtoint ptr %name1 to i32, !dbg !773
  call void @__asan_store4_noabort(i32 %0), !dbg !773
  store ptr %call, ptr %name1, align 4, !dbg !773
  %tobool.not = icmp eq ptr %call, null, !dbg !774
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !dbg !775

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !775
  br label %return, !dbg !775

if.end:                                           ; preds = %entry
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.62, i32 0, i32 1), align 8, !dbg !776
  %1 = add i64 %gcov_ctr3, 1, !dbg !776
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.62, i32 0, i32 1), align 8, !dbg !776
  %named_list = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 12, !dbg !777
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.35, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.35, align 8
  %3 = load ptr, ptr @named_triggers, align 4, !dbg !778
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %named_list, ptr noundef nonnull @named_triggers, ptr noundef %3) #17, !dbg !780
  br i1 %call.i.i, label %if.end.i.i, label %if.end.return_crit_edge, !dbg !782

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !782
  br label %return, !dbg !782

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !783
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !783
  %4 = ptrtoint ptr %prev1.i.i to i32, !dbg !784
  call void @__asan_store4_noabort(i32 %4), !dbg !784
  store ptr %named_list, ptr %prev1.i.i, align 4, !dbg !784
  %5 = ptrtoint ptr %named_list to i32, !dbg !785
  call void @__asan_store4_noabort(i32 %5), !dbg !785
  store ptr %3, ptr %named_list, align 4, !dbg !785
  %prev3.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 12, i32 1, !dbg !786
  %6 = ptrtoint ptr %prev3.i.i to i32, !dbg !787
  call void @__asan_store4_noabort(i32 %6), !dbg !787
  store ptr @named_triggers, ptr %prev3.i.i, align 4, !dbg !787
  store volatile ptr %named_list, ptr @named_triggers, align 4, !dbg !788
  br label %return, !dbg !788

return:                                           ; preds = %if.end.i.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %__llvm_gcov_ctr.98.sink18.i.i.sink6 = phi ptr [ @__llvm_gcov_ctr.62, %entry.return_crit_edge ], [ getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.98, i32 0, i32 1), %if.end.i.i ], [ @__llvm_gcov_ctr.98, %if.end.return_crit_edge ]
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.end.return_crit_edge ], !dbg !789
  %7 = ptrtoint ptr %__llvm_gcov_ctr.98.sink18.i.i.sink6 to i32, !dbg !789
  call void @__asan_load8_noabort(i32 %7), !dbg !789
  %gcov_ctr.i.i = load i64, ptr %__llvm_gcov_ctr.98.sink18.i.i.sink6, align 8, !dbg !789
  %8 = add i64 %gcov_ctr.i.i, 1, !dbg !789
  store i64 %8, ptr %__llvm_gcov_ctr.98.sink18.i.i.sink6, align 8, !dbg !789
  ret i32 %retval.0, !dbg !790
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @del_named_trigger(ptr noundef %data) local_unnamed_addr #0 align 64 !dbg !791 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !792
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.63, align 8
  %name = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 11, !dbg !793
  %1 = ptrtoint ptr %name to i32, !dbg !793
  call void @__asan_load4_noabort(i32 %1), !dbg !793
  %2 = load ptr, ptr %name, align 4, !dbg !793
  tail call void @kfree(ptr noundef %2) #17, !dbg !794
  %3 = ptrtoint ptr %name to i32, !dbg !795
  call void @__asan_store4_noabort(i32 %3), !dbg !795
  store ptr null, ptr %name, align 4, !dbg !795
  %named_list = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 12, !dbg !796
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.64, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.64, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %named_list) #17, !dbg !797
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !801

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !802
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.99, align 8, !dbg !802
  %5 = add i64 %gcov_ctr.i.i, 1, !dbg !802
  store i64 %5, ptr @__llvm_gcov_ctr.99, align 8, !dbg !802
  br label %list_del.exit, !dbg !802

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !803
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !803
  %6 = add i64 %gcov_ctr2.i.i, 1, !dbg !803
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !803
  %prev.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 12, i32 1, !dbg !804
  %7 = ptrtoint ptr %prev.i.i to i32, !dbg !804
  call void @__asan_load4_noabort(i32 %7), !dbg !804
  %8 = load ptr, ptr %prev.i.i, align 4, !dbg !804
  %9 = ptrtoint ptr %named_list to i32, !dbg !805
  call void @__asan_load4_noabort(i32 %9), !dbg !805
  %10 = load ptr, ptr %named_list, align 4, !dbg !805
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1, !dbg !806
  %11 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !808
  call void @__asan_store4_noabort(i32 %11), !dbg !808
  store ptr %8, ptr %prev1.i.i.i, align 4, !dbg !808
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.100, align 8, !dbg !809
  %12 = add i64 %gcov_ctr.i.i.i, 1, !dbg !809
  store i64 %12, ptr @__llvm_gcov_ctr.100, align 8, !dbg !809
  %13 = ptrtoint ptr %8 to i32, !dbg !809
  call void @__asan_store4_noabort(i32 %13), !dbg !809
  store volatile ptr %10, ptr %8, align 4, !dbg !809
  br label %list_del.exit, !dbg !810

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %14 = ptrtoint ptr %named_list to i32, !dbg !811
  call void @__asan_store4_noabort(i32 %14), !dbg !811
  store ptr inttoptr (i32 256 to ptr), ptr %named_list, align 4, !dbg !811
  %prev.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 12, i32 1, !dbg !812
  %15 = ptrtoint ptr %prev.i to i32, !dbg !813
  call void @__asan_store4_noabort(i32 %15), !dbg !813
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4, !dbg !813
  ret void, !dbg !814
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pause_named_trigger(ptr nocapture noundef readonly %data) local_unnamed_addr #6 align 64 !dbg !815 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !816
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.65, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.65, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.66, align 16
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.66, align 16
  %.pn26.i = load ptr, ptr @named_triggers, align 4, !dbg !817
  %cmp.not27.i = icmp eq ptr %.pn26.i, @named_triggers, !dbg !817
  br i1 %cmp.not27.i, label %entry.__pause_named_trigger.exit_crit_edge, label %for.body.lr.ph.i, !dbg !817

entry.__pause_named_trigger.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !817
  br label %__pause_named_trigger.exit, !dbg !817

for.body.lr.ph.i:                                 ; preds = %entry
  %name1.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 11
  br label %for.body.i, !dbg !817

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn28.i = phi ptr [ %.pn26.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %name.i = getelementptr i8, ptr %.pn28.i, i32 -4, !dbg !820
  %2 = ptrtoint ptr %name.i to i32, !dbg !820
  call void @__asan_load4_noabort(i32 %2), !dbg !820
  %3 = load ptr, ptr %name.i, align 4, !dbg !820
  %4 = ptrtoint ptr %name1.i to i32, !dbg !821
  call void @__asan_load4_noabort(i32 %4), !dbg !821
  %5 = load ptr, ptr %name1.i, align 4, !dbg !821
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef %5) #20, !dbg !822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !823
  %cmp2.i = icmp eq i32 %call.i, 0, !dbg !823
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge, !dbg !822

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !822
  br label %for.inc.i, !dbg !822

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !824
  %gcov_ctr16.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 1), align 8, !dbg !824
  %6 = add i64 %gcov_ctr16.i, 1, !dbg !824
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 1), align 8, !dbg !824
  %paused.i = getelementptr i8, ptr %.pn28.i, i32 -16, !dbg !825
  %7 = ptrtoint ptr %paused.i to i32, !dbg !825
  call void @__asan_load1_noabort(i32 %7), !dbg !825
  %8 = load i8, ptr %paused.i, align 4, !dbg !825, !range !145
  %paused_tmp.i = getelementptr i8, ptr %.pn28.i, i32 -15, !dbg !826
  %9 = ptrtoint ptr %paused_tmp.i to i32, !dbg !827
  call void @__asan_store1_noabort(i32 %9), !dbg !827
  store i8 %8, ptr %paused_tmp.i, align 1, !dbg !827
  store i8 1, ptr %paused.i, align 4, !dbg !828
  br label %for.inc.i, !dbg !829

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %gcov_ctr18.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 3), align 8, !dbg !817
  %10 = add i64 %gcov_ctr18.i, 1, !dbg !817
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 3), align 8, !dbg !817
  %11 = ptrtoint ptr %.pn28.i to i32, !dbg !817
  call void @__asan_load4_noabort(i32 %11), !dbg !817
  %.pn.i = load ptr, ptr %.pn28.i, align 4, !dbg !817
  %cmp.not.i = icmp eq ptr %.pn.i, @named_triggers, !dbg !817
  br i1 %cmp.not.i, label %for.inc.i.__pause_named_trigger.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !817, !llvm.loop !830

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !817
  br label %for.body.i, !dbg !817

for.inc.i.__pause_named_trigger.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !817
  br label %__pause_named_trigger.exit, !dbg !817

__pause_named_trigger.exit:                       ; preds = %for.inc.i.__pause_named_trigger.exit_crit_edge, %entry.__pause_named_trigger.exit_crit_edge
  ret void, !dbg !832
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unpause_named_trigger(ptr nocapture noundef readonly %data) local_unnamed_addr #6 align 64 !dbg !833 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !834
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.67, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.67, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.66, align 16
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.66, align 16
  %.pn26.i = load ptr, ptr @named_triggers, align 4, !dbg !835
  %cmp.not27.i = icmp eq ptr %.pn26.i, @named_triggers, !dbg !835
  br i1 %cmp.not27.i, label %entry.__pause_named_trigger.exit_crit_edge, label %for.body.lr.ph.i, !dbg !835

entry.__pause_named_trigger.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !835
  br label %__pause_named_trigger.exit, !dbg !835

for.body.lr.ph.i:                                 ; preds = %entry
  %name1.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 11
  br label %for.body.i, !dbg !835

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn28.i = phi ptr [ %.pn26.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %name.i = getelementptr i8, ptr %.pn28.i, i32 -4, !dbg !837
  %2 = ptrtoint ptr %name.i to i32, !dbg !837
  call void @__asan_load4_noabort(i32 %2), !dbg !837
  %3 = load ptr, ptr %name.i, align 4, !dbg !837
  %4 = ptrtoint ptr %name1.i to i32, !dbg !838
  call void @__asan_load4_noabort(i32 %4), !dbg !838
  %5 = load ptr, ptr %name1.i, align 4, !dbg !838
  %call.i = tail call i32 @strcmp(ptr noundef %3, ptr noundef %5) #20, !dbg !839
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !840
  %cmp2.i = icmp eq i32 %call.i, 0, !dbg !840
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge, !dbg !839

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !839
  br label %for.inc.i, !dbg !839

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !841
  %gcov_ctr17.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 2), align 16, !dbg !841
  %6 = add i64 %gcov_ctr17.i, 1, !dbg !841
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 2), align 16, !dbg !841
  %paused_tmp7.i = getelementptr i8, ptr %.pn28.i, i32 -15, !dbg !842
  %7 = ptrtoint ptr %paused_tmp7.i to i32, !dbg !842
  call void @__asan_load1_noabort(i32 %7), !dbg !842
  %8 = load i8, ptr %paused_tmp7.i, align 1, !dbg !842, !range !145
  %paused9.i = getelementptr i8, ptr %.pn28.i, i32 -16, !dbg !843
  %9 = ptrtoint ptr %paused9.i to i32, !dbg !844
  call void @__asan_store1_noabort(i32 %9), !dbg !844
  store i8 %8, ptr %paused9.i, align 4, !dbg !844
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %gcov_ctr18.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 3), align 8, !dbg !835
  %10 = add i64 %gcov_ctr18.i, 1, !dbg !835
  store i64 %10, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.66, i32 0, i32 3), align 8, !dbg !835
  %11 = ptrtoint ptr %.pn28.i to i32, !dbg !835
  call void @__asan_load4_noabort(i32 %11), !dbg !835
  %.pn.i = load ptr, ptr %.pn28.i, align 4, !dbg !835
  %cmp.not.i = icmp eq ptr %.pn.i, @named_triggers, !dbg !835
  br i1 %cmp.not.i, label %for.inc.i.__pause_named_trigger.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge, !dbg !835, !llvm.loop !845

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !835
  br label %for.body.i, !dbg !835

for.inc.i.__pause_named_trigger.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !835
  br label %__pause_named_trigger.exit, !dbg !835

__pause_named_trigger.exit:                       ; preds = %for.inc.i.__pause_named_trigger.exit_crit_edge, %entry.__pause_named_trigger.exit_crit_edge
  ret void, !dbg !847
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @set_named_trigger_data(ptr nocapture noundef writeonly %data, ptr noundef %named_data) local_unnamed_addr #5 align 64 !dbg !848 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !849
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.68, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.68, align 8
  %named_data1 = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 13, !dbg !850
  %1 = ptrtoint ptr %named_data1 to i32, !dbg !851
  call void @__asan_store4_noabort(i32 %1), !dbg !851
  store ptr %named_data, ptr %named_data1, align 4, !dbg !851
  ret void, !dbg !852
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @get_named_trigger_data(ptr nocapture noundef readonly %data) local_unnamed_addr #5 align 64 !dbg !853 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !854
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.69, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.69, align 8
  %named_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 13, !dbg !855
  %1 = ptrtoint ptr %named_data to i32, !dbg !855
  call void @__asan_load4_noabort(i32 %1), !dbg !855
  %2 = load ptr, ptr %named_data, align 4, !dbg !855
  ret ptr %2, !dbg !856
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @event_enable_trigger_print(ptr noundef %m, ptr nocapture readnone %ops, ptr nocapture noundef readonly %data) #0 align 64 !dbg !857 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !858
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !859
  %0 = ptrtoint ptr %private_data to i32, !dbg !859
  call void @__asan_load4_noabort(i32 %0), !dbg !859
  %1 = load ptr, ptr %private_data, align 4, !dbg !859
  %hist = getelementptr inbounds %struct.enable_trigger_data, ptr %1, i32 0, i32 2, !dbg !860
  %2 = ptrtoint ptr %hist to i32, !dbg !860
  call void @__asan_load1_noabort(i32 %2), !dbg !860
  %3 = load i8, ptr %hist, align 1, !dbg !860, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3), !dbg !860
  %tobool.not = icmp eq i8 %3, 0, !dbg !860
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !861

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !862
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.70, align 16, !dbg !862
  %4 = add i64 %gcov_ctr, 1, !dbg !862
  store i64 %4, ptr @__llvm_gcov_ctr.70, align 16, !dbg !862
  %enable = getelementptr inbounds %struct.enable_trigger_data, ptr %1, i32 0, i32 1, !dbg !863
  %5 = ptrtoint ptr %enable to i32, !dbg !863
  call void @__asan_load1_noabort(i32 %5), !dbg !863
  %6 = load i8, ptr %enable, align 4, !dbg !863, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6), !dbg !863
  %tobool1.not = icmp eq i8 %6, 0, !dbg !863
  %cond = select i1 %tobool1.not, ptr @.str.10, ptr @.str.9, !dbg !862
  br label %cond.end, !dbg !861

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !864
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 1), align 8, !dbg !864
  %7 = add i64 %gcov_ctr14, 1, !dbg !864
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 1), align 8, !dbg !864
  %enable2 = getelementptr inbounds %struct.enable_trigger_data, ptr %1, i32 0, i32 1, !dbg !865
  %8 = ptrtoint ptr %enable2 to i32, !dbg !865
  call void @__asan_load1_noabort(i32 %8), !dbg !865
  %9 = load i8, ptr %enable2, align 4, !dbg !865, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9), !dbg !865
  %tobool3.not = icmp eq i8 %9, 0, !dbg !865
  %cond4 = select i1 %tobool3.not, ptr @.str.12, ptr @.str.11, !dbg !864
  br label %cond.end, !dbg !861

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi ptr [ %cond, %cond.true ], [ %cond4, %cond.false ], !dbg !861
  %10 = ptrtoint ptr %1 to i32, !dbg !866
  call void @__asan_load4_noabort(i32 %10), !dbg !866
  %11 = load ptr, ptr %1, align 4, !dbg !866
  %event_call = getelementptr inbounds %struct.trace_event_file, ptr %11, i32 0, i32 1, !dbg !867
  %12 = ptrtoint ptr %event_call to i32, !dbg !867
  call void @__asan_load4_noabort(i32 %12), !dbg !867
  %13 = load ptr, ptr %event_call, align 4, !dbg !867
  %class = getelementptr inbounds %struct.trace_event_call, ptr %13, i32 0, i32 1, !dbg !868
  %14 = ptrtoint ptr %class to i32, !dbg !868
  call void @__asan_load4_noabort(i32 %14), !dbg !868
  %15 = load ptr, ptr %class, align 4, !dbg !868
  %16 = ptrtoint ptr %15 to i32, !dbg !869
  call void @__asan_load4_noabort(i32 %16), !dbg !869
  %17 = load ptr, ptr %15, align 4, !dbg !869
  %flags.i = getelementptr inbounds %struct.trace_event_call, ptr %13, i32 0, i32 8, !dbg !870
  %18 = ptrtoint ptr %flags.i to i32, !dbg !870
  call void @__asan_load4_noabort(i32 %18), !dbg !870
  %19 = load i32, ptr %flags.i, align 4, !dbg !870
  %and.i = and i32 %19, 16, !dbg !874
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !874
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !874
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !875

if.then.i:                                        ; preds = %cond.end
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %13, i32 0, i32 2, !dbg !876
  %21 = ptrtoint ptr %20 to i32, !dbg !876
  call void @__asan_load4_noabort(i32 %21), !dbg !876
  %22 = load ptr, ptr %20, align 4, !dbg !876
  %tobool1.not.i = icmp eq ptr %22, null, !dbg !877
  br i1 %tobool1.not.i, label %cond.false.i, label %cond.true.i, !dbg !877

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !878
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 1), align 8, !dbg !878
  %23 = add i64 %gcov_ctr2.i, 1, !dbg !878
  store i64 %23, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 1), align 8, !dbg !878
  %24 = ptrtoint ptr %20 to i32, !dbg !879
  call void @__asan_load4_noabort(i32 %24), !dbg !879
  %25 = load ptr, ptr %20, align 4, !dbg !879
  %26 = ptrtoint ptr %25 to i32, !dbg !880
  call void @__asan_load4_noabort(i32 %26), !dbg !880
  %27 = load ptr, ptr %25, align 4, !dbg !880
  br label %trace_event_name.exit, !dbg !877

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !877
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.71, align 16, !dbg !877
  %28 = add i64 %gcov_ctr.i, 1, !dbg !877
  store i64 %28, ptr @__llvm_gcov_ctr.71, align 16, !dbg !877
  br label %trace_event_name.exit, !dbg !877

if.else.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !881
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 2), align 16, !dbg !881
  %29 = add i64 %gcov_ctr3.i, 1, !dbg !881
  store i64 %29, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.71, i32 0, i32 2), align 16, !dbg !881
  %30 = getelementptr inbounds %struct.trace_event_call, ptr %13, i32 0, i32 2, !dbg !882
  %31 = ptrtoint ptr %30 to i32, !dbg !882
  call void @__asan_load4_noabort(i32 %31), !dbg !882
  %32 = load ptr, ptr %30, align 4, !dbg !882
  br label %trace_event_name.exit, !dbg !883

trace_event_name.exit:                            ; preds = %if.else.i, %cond.false.i, %cond.true.i
  %retval.0.i = phi ptr [ %32, %if.else.i ], [ %27, %cond.true.i ], [ null, %cond.false.i ], !dbg !884
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond5, ptr noundef %17, ptr noundef %retval.0.i) #17, !dbg !885
  %33 = ptrtoint ptr %data to i32, !dbg !886
  call void @__asan_load4_noabort(i32 %33), !dbg !886
  %34 = load i32, ptr %data, align 4, !dbg !886
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34), !dbg !887
  %cmp = icmp eq i32 %34, -1, !dbg !887
  br i1 %cmp, label %if.then, label %if.else, !dbg !888

if.then:                                          ; preds = %trace_event_name.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !889
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !889
  %35 = add i64 %gcov_ctr15, 1, !dbg !889
  store i64 %35, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !889
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #17, !dbg !890
  br label %if.end, !dbg !890

if.else:                                          ; preds = %trace_event_name.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !891
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %34) #17, !dbg !891
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %filter_str = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 6, !dbg !892
  %36 = ptrtoint ptr %filter_str to i32, !dbg !892
  call void @__asan_load4_noabort(i32 %36), !dbg !892
  %37 = load ptr, ptr %filter_str, align 4, !dbg !892
  %tobool9.not = icmp eq ptr %37, null, !dbg !893
  br i1 %tobool9.not, label %if.else12, label %if.then10, !dbg !893

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !894
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, ptr noundef nonnull %37) #17, !dbg !894
  br label %if.end13, !dbg !894

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !895
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 3), align 8, !dbg !895
  %38 = add i64 %gcov_ctr16, 1, !dbg !895
  store i64 %38, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 3), align 8, !dbg !895
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #17, !dbg !896
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then10
  ret i32 0, !dbg !897
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @event_enable_trigger_free(ptr nocapture readnone %ops, ptr noundef %data) #0 align 64 !dbg !898 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !899
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !900
  %0 = ptrtoint ptr %private_data to i32, !dbg !900
  call void @__asan_load4_noabort(i32 %0), !dbg !900
  %1 = load ptr, ptr %private_data, align 4, !dbg !900
  %ref = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 1, !dbg !901
  %2 = ptrtoint ptr %ref to i32, !dbg !901
  call void @__asan_load4_noabort(i32 %2), !dbg !901
  %3 = load i32, ptr %ref, align 4, !dbg !901
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3), !dbg !901
  %cmp = icmp slt i32 %3, 1, !dbg !901
  br i1 %cmp, label %land.rhs, label %if.end37, !dbg !901

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.72, align 16, !dbg !901
  %4 = add i64 %gcov_ctr, 1, !dbg !901
  store i64 %4, ptr @__llvm_gcov_ctr.72, align 16, !dbg !901
  %.b58 = load i1, ptr @event_enable_trigger_free.__already_done, align 1, !dbg !901
  br i1 %.b58, label %land.rhs.cleanup_crit_edge, label %if.then, !dbg !901, !prof !902

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !901
  br label %cleanup, !dbg !901

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !901
  store i1 true, ptr @event_enable_trigger_free.__already_done, align 1, !dbg !901
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !901
  %5 = add i64 %gcov_ctr44, 1, !dbg !901
  store i64 %5, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !901
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1741, i32 noundef 9, ptr noundef null) #17, !dbg !901
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 2), align 16, !dbg !901
  %6 = add i64 %gcov_ctr45, 1, !dbg !901
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 2), align 16, !dbg !901
  br label %cleanup, !dbg !901

if.end37:                                         ; preds = %entry
  %dec = add nsw i32 %3, -1, !dbg !903
  %7 = ptrtoint ptr %ref to i32, !dbg !903
  call void @__asan_store4_noabort(i32 %7), !dbg !903
  store i32 %dec, ptr %ref, align 4, !dbg !903
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec), !dbg !904
  %tobool40.not = icmp eq i32 %dec, 0, !dbg !904
  br i1 %tobool40.not, label %if.then41, label %if.end37.cleanup_crit_edge, !dbg !905

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16, !dbg !905
  br label %cleanup, !dbg !905

if.then41:                                        ; preds = %if.end37
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 4), align 16, !dbg !906
  %8 = add i64 %gcov_ctr47, 1, !dbg !906
  store i64 %8, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 4), align 16, !dbg !906
  %9 = ptrtoint ptr %1 to i32, !dbg !907
  call void @__asan_load4_noabort(i32 %9), !dbg !907
  %10 = load ptr, ptr %1, align 4, !dbg !907
  %call = tail call i32 @trace_event_enable_disable(ptr noundef %10, i32 noundef 0, i32 noundef 1) #17, !dbg !908
  %11 = ptrtoint ptr %1 to i32, !dbg !909
  call void @__asan_load4_noabort(i32 %11), !dbg !909
  %12 = load ptr, ptr %1, align 4, !dbg !909
  %event_call = getelementptr inbounds %struct.trace_event_file, ptr %12, i32 0, i32 1, !dbg !910
  %13 = ptrtoint ptr %event_call to i32, !dbg !910
  call void @__asan_load4_noabort(i32 %13), !dbg !910
  %14 = load ptr, ptr %event_call, align 4, !dbg !910
  %flags.i = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 8, !dbg !911
  %15 = ptrtoint ptr %flags.i to i32, !dbg !911
  call void @__asan_load4_noabort(i32 %15), !dbg !911
  %16 = load i32, ptr %flags.i, align 4, !dbg !911
  %and.i = and i32 %16, 32, !dbg !914
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !914
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !914
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !915

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16, !dbg !916
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.73, align 8, !dbg !916
  %17 = add i64 %gcov_ctr.i, 1, !dbg !916
  store i64 %17, ptr @__llvm_gcov_ctr.73, align 8, !dbg !916
  tail call void @trace_event_dyn_put_ref(ptr noundef %14) #17, !dbg !917
  br label %trace_event_put_ref.exit, !dbg !917

if.else.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16, !dbg !918
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.73, i32 0, i32 1), align 8, !dbg !918
  %18 = add i64 %gcov_ctr1.i, 1, !dbg !918
  store i64 %18, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.73, i32 0, i32 1), align 8, !dbg !918
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 6, !dbg !919
  %20 = ptrtoint ptr %19 to i32, !dbg !919
  call void @__asan_load4_noabort(i32 %20), !dbg !919
  %21 = load ptr, ptr %19, align 4, !dbg !919
  tail call void @module_put(ptr noundef %21) #17, !dbg !920
  br label %trace_event_put_ref.exit

trace_event_put_ref.exit:                         ; preds = %if.else.i, %if.then.i
  %gcov_ctr.i60 = load i64, ptr @__llvm_gcov_ctr, align 8
  %22 = add i64 %gcov_ctr.i60, 1
  store i64 %22, ptr @__llvm_gcov_ctr, align 8
  %cmd_ops.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 4, !dbg !921
  %23 = ptrtoint ptr %cmd_ops.i to i32, !dbg !921
  call void @__asan_load4_noabort(i32 %23), !dbg !921
  %24 = load ptr, ptr %cmd_ops.i, align 4, !dbg !921
  %set_filter.i = getelementptr inbounds %struct.event_command, ptr %24, i32 0, i32 8, !dbg !923
  %25 = ptrtoint ptr %set_filter.i to i32, !dbg !923
  call void @__asan_load4_noabort(i32 %25), !dbg !923
  %26 = load ptr, ptr %set_filter.i, align 4, !dbg !923
  %tobool.not.i61 = icmp eq ptr %26, null, !dbg !924
  br i1 %tobool.not.i61, label %trace_event_put_ref.exit.trigger_data_free.exit_crit_edge, label %if.then.i62, !dbg !924

trace_event_put_ref.exit.trigger_data_free.exit_crit_edge: ; preds = %trace_event_put_ref.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !924
  br label %trigger_data_free.exit, !dbg !924

if.then.i62:                                      ; preds = %trace_event_put_ref.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !925
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !925
  %27 = add i64 %gcov_ctr3.i, 1, !dbg !925
  store i64 %27, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !925
  %call.i = tail call i32 %26(ptr noundef null, ptr noundef %data, ptr noundef null) #17, !dbg !925
  br label %trigger_data_free.exit, !dbg !925

trigger_data_free.exit:                           ; preds = %if.then.i62, %trace_event_put_ref.exit.trigger_data_free.exit_crit_edge
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !926
  %28 = add i64 %gcov_ctr.i.i, 1, !dbg !926
  store i64 %28, ptr @__llvm_gcov_ctr.24, align 8, !dbg !926
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #17, !dbg !926
  tail call void @synchronize_rcu() #17, !dbg !928
  tail call void @kfree(ptr noundef %data) #17, !dbg !929
  tail call void @kfree(ptr noundef %1) #17, !dbg !930
  br label %cleanup, !dbg !931

cleanup:                                          ; preds = %trigger_data_free.exit, %if.end37.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 3), %land.rhs.cleanup_crit_edge ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 3), %if.then ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 5), %trigger_data_free.exit ], [ getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 5), %if.end37.cleanup_crit_edge ]
  %29 = ptrtoint ptr %.sink to i32
  call void @__asan_load8_noabort(i32 %29)
  %gcov_ctr48 = load i64, ptr %.sink, align 8
  %30 = add i64 %gcov_ctr48, 1
  store i64 %30, ptr %.sink, align 8
  ret void, !dbg !932
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_event_put_ref(ptr noundef %call) unnamed_addr #8 align 64 !dbg !912 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !933
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 8, !dbg !934
  %0 = ptrtoint ptr %flags to i32, !dbg !934
  call void @__asan_load4_noabort(i32 %0), !dbg !934
  %1 = load i32, ptr %flags, align 4, !dbg !934
  %and = and i32 %1, 32, !dbg !935
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !935
  %tobool.not = icmp eq i32 %and, 0, !dbg !935
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !936

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !937
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.73, align 8, !dbg !937
  %2 = add i64 %gcov_ctr, 1, !dbg !937
  store i64 %2, ptr @__llvm_gcov_ctr.73, align 8, !dbg !937
  tail call void @trace_event_dyn_put_ref(ptr noundef %call) #17, !dbg !938
  br label %if.end, !dbg !938

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !939
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.73, i32 0, i32 1), align 8, !dbg !939
  %3 = add i64 %gcov_ctr1, 1, !dbg !939
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.73, i32 0, i32 1), align 8, !dbg !939
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 6, !dbg !940
  %5 = ptrtoint ptr %4 to i32, !dbg !940
  call void @__asan_load4_noabort(i32 %5), !dbg !940
  %6 = load ptr, ptr %4, align 4, !dbg !940
  tail call void @module_put(ptr noundef %6) #17, !dbg !941
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !942
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @event_enable_trigger_parse(ptr noundef %cmd_ops, ptr noundef %file, ptr noundef %glob, ptr noundef %cmd, ptr noundef %param) #0 align 64 !dbg !943 {
entry:
  %param.addr = alloca ptr, align 4
  %trigger = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !944
  %0 = ptrtoint ptr %param.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %param, ptr %param.addr, align 4
  %tr1 = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 4, !dbg !945
  %1 = ptrtoint ptr %tr1 to i32, !dbg !945
  call void @__asan_load4_noabort(i32 %1), !dbg !945
  %2 = load ptr, ptr %tr1, align 4, !dbg !945
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trigger) #17, !dbg !946
  %3 = ptrtoint ptr %trigger to i32, !dbg !947
  call void @__asan_store4_noabort(i32 %3), !dbg !947
  store ptr inttoptr (i32 -1 to ptr), ptr %trigger, align 4, !dbg !947, !annotation !948
  %tobool.not = icmp eq ptr %param, null, !dbg !949
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !950

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !951
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.74, align 16, !dbg !951
  %4 = add i64 %gcov_ctr, 1, !dbg !951
  store i64 %4, ptr @__llvm_gcov_ctr.74, align 16, !dbg !951
  br label %cleanup, !dbg !951

if.end:                                           ; preds = %entry
  %call = call ptr @strsep(ptr noundef nonnull %param.addr, ptr noundef nonnull @.str.5) #17, !dbg !952
  %5 = ptrtoint ptr %trigger to i32, !dbg !953
  call void @__asan_store4_noabort(i32 %5), !dbg !953
  store ptr %call, ptr %trigger, align 4, !dbg !953
  %tobool2.not = icmp eq ptr %call, null, !dbg !954
  br i1 %tobool2.not, label %if.then3, label %if.end4, !dbg !955

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !956
  %gcov_ctr124 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 1), align 8, !dbg !956
  %6 = add i64 %gcov_ctr124, 1, !dbg !956
  store i64 %6, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 1), align 8, !dbg !956
  br label %cleanup, !dbg !956

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %param.addr to i32, !dbg !957
  call void @__asan_load4_noabort(i32 %7), !dbg !957
  %8 = load ptr, ptr %param.addr, align 4, !dbg !957
  %tobool5.not = icmp eq ptr %8, null, !dbg !957
  br i1 %tobool5.not, label %if.end4.if.end11_crit_edge, label %if.then6, !dbg !957

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !957
  br label %if.end11, !dbg !957

if.then6:                                         ; preds = %if.end4
  %call7 = call ptr @skip_spaces(ptr noundef nonnull %8) #17, !dbg !958
  %9 = ptrtoint ptr %param.addr to i32, !dbg !959
  call void @__asan_store4_noabort(i32 %9), !dbg !959
  store ptr %call7, ptr %param.addr, align 4, !dbg !959
  %10 = ptrtoint ptr %call7 to i32, !dbg !960
  call void @__asan_load1_noabort(i32 %10), !dbg !960
  %11 = load i8, ptr %call7, align 1, !dbg !960
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11), !dbg !960
  %tobool8.not = icmp eq i8 %11, 0, !dbg !960
  br i1 %tobool8.not, label %if.then9, label %if.then6.if.end10_crit_edge, !dbg !961

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !961
  br label %if.end10, !dbg !961

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !962
  %gcov_ctr125 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 2), align 16, !dbg !962
  %12 = add i64 %gcov_ctr125, 1, !dbg !962
  store i64 %12, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 2), align 16, !dbg !962
  %13 = ptrtoint ptr %param.addr to i32, !dbg !962
  call void @__asan_store4_noabort(i32 %13), !dbg !962
  store ptr null, ptr %param.addr, align 4, !dbg !962
  br label %if.end10, !dbg !963

if.end10:                                         ; preds = %if.then9, %if.then6.if.end10_crit_edge
  %gcov_ctr126 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 3), align 8, !dbg !964
  %14 = add i64 %gcov_ctr126, 1, !dbg !964
  store i64 %14, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 3), align 8, !dbg !964
  br label %if.end11, !dbg !964

if.end11:                                         ; preds = %if.end10, %if.end4.if.end11_crit_edge
  %call12 = call ptr @strsep(ptr noundef nonnull %trigger, ptr noundef nonnull @.str.6) #17, !dbg !965
  %15 = ptrtoint ptr %trigger to i32, !dbg !966
  call void @__asan_load4_noabort(i32 %15), !dbg !966
  %16 = load ptr, ptr %trigger, align 4, !dbg !966
  %tobool13.not = icmp eq ptr %16, null, !dbg !966
  br i1 %tobool13.not, label %if.then14, label %if.end15, !dbg !967

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16, !dbg !968
  %gcov_ctr127 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 4), align 16, !dbg !968
  %17 = add i64 %gcov_ctr127, 1, !dbg !968
  store i64 %17, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 4), align 16, !dbg !968
  br label %cleanup, !dbg !968

if.end15:                                         ; preds = %if.end11
  %call16 = call ptr @strsep(ptr noundef nonnull %trigger, ptr noundef nonnull @.str.6) #17, !dbg !969
  %call17 = call ptr @find_event_file(ptr noundef %2, ptr noundef %call12, ptr noundef %call16) #17, !dbg !970
  %tobool18.not = icmp eq ptr %call17, null, !dbg !971
  br i1 %tobool18.not, label %if.then19, label %if.end20, !dbg !972

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16, !dbg !973
  %gcov_ctr128 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 5), align 8, !dbg !973
  %18 = add i64 %gcov_ctr128, 1, !dbg !973
  store i64 %18, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 5), align 8, !dbg !973
  br label %cleanup, !dbg !973

if.end20:                                         ; preds = %if.end15
  %call21 = call i32 @strcmp(ptr noundef %cmd, ptr noundef nonnull dereferenceable(12) @.str.9) #18, !dbg !974
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21), !dbg !975
  %cmp = icmp eq i32 %call21, 0, !dbg !975
  br i1 %cmp, label %if.end20.lor.end_crit_edge, label %lor.rhs, !dbg !976

if.end20.lor.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16, !dbg !976
  br label %lor.end, !dbg !976

lor.rhs:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16, !dbg !977
  %gcov_ctr129 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 6), align 16, !dbg !977
  %19 = add i64 %gcov_ctr129, 1, !dbg !977
  store i64 %19, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 6), align 16, !dbg !977
  %call22 = call i32 @strcmp(ptr noundef %cmd, ptr noundef nonnull dereferenceable(13) @.str.10) #18, !dbg !978
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22), !dbg !979
  %cmp23 = icmp eq i32 %call22, 0, !dbg !979
  br label %lor.end, !dbg !976

lor.end:                                          ; preds = %lor.rhs, %if.end20.lor.end_crit_edge
  %20 = phi i1 [ true, %if.end20.lor.end_crit_edge ], [ %cmp23, %lor.rhs ]
  %frombool = zext i1 %20 to i8, !dbg !980
  %call24 = call i32 @strcmp(ptr noundef %cmd, ptr noundef nonnull dereferenceable(13) @.str.11) #18, !dbg !981
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24), !dbg !982
  %cmp25 = icmp eq i32 %call24, 0, !dbg !982
  br i1 %cmp25, label %lor.end.lor.end29_crit_edge, label %lor.rhs26, !dbg !983

lor.end.lor.end29_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !983
  br label %lor.end29, !dbg !983

lor.rhs26:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !984
  %gcov_ctr130 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 7), align 8, !dbg !984
  %21 = add i64 %gcov_ctr130, 1, !dbg !984
  store i64 %21, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 7), align 8, !dbg !984
  %call27 = call i32 @strcmp(ptr noundef %cmd, ptr noundef nonnull dereferenceable(12) @.str.9) #18, !dbg !985
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27), !dbg !986
  %cmp28 = icmp eq i32 %call27, 0, !dbg !986
  br label %lor.end29, !dbg !983

lor.end29:                                        ; preds = %lor.rhs26, %lor.end.lor.end29_crit_edge
  %22 = phi i1 [ true, %lor.end.lor.end29_crit_edge ], [ %cmp28, %lor.rhs26 ]
  %frombool30 = zext i1 %22 to i8, !dbg !987
  %get_trigger_ops = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 9, !dbg !988
  %23 = ptrtoint ptr %get_trigger_ops to i32, !dbg !988
  call void @__asan_load4_noabort(i32 %23), !dbg !988
  %24 = load ptr, ptr %get_trigger_ops, align 4, !dbg !988
  %25 = ptrtoint ptr %trigger to i32, !dbg !989
  call void @__asan_load4_noabort(i32 %25), !dbg !989
  %26 = load ptr, ptr %trigger, align 4, !dbg !989
  %call31 = call ptr %24(ptr noundef %cmd, ptr noundef %26) #17, !dbg !990
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.52, align 8
  %27 = add i64 %gcov_ctr.i, 1
  store i64 %27, ptr @__llvm_gcov_ctr.52, align 8
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !991
  %28 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !991
  store i64 %28, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !991
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !995
  %29 = add i64 %gcov_ctr11.i.i, 1, !dbg !995
  store i64 %29, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !995
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.112, align 16, !dbg !996
  %30 = add i64 %gcov_ctr.i.i.i, 1, !dbg !996
  store i64 %30, ptr @__llvm_gcov_ctr.112, align 16, !dbg !996
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !998
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !998
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 60) #19, !dbg !999
  %tobool33.not = icmp eq ptr %call7.i.i, null, !dbg !1000
  br i1 %tobool33.not, label %if.then34, label %if.end35, !dbg !1001

if.then34:                                        ; preds = %lor.end29
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1002
  %gcov_ctr131 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 8), align 16, !dbg !1002
  %32 = add i64 %gcov_ctr131, 1, !dbg !1002
  store i64 %32, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 8), align 16, !dbg !1002
  br label %cleanup, !dbg !1002

if.end35:                                         ; preds = %lor.end29
  %gcov_ctr.i201 = load i64, ptr @__llvm_gcov_ctr.52, align 8
  %33 = add i64 %gcov_ctr.i201, 1
  store i64 %33, ptr @__llvm_gcov_ctr.52, align 8
  %gcov_ctr79.i.i.i202 = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !1003
  %34 = add i64 %gcov_ctr79.i.i.i202, 1, !dbg !1003
  store i64 %34, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !1003
  %gcov_ctr11.i.i203 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !1007
  %35 = add i64 %gcov_ctr11.i.i203, 1, !dbg !1007
  store i64 %35, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !1007
  %gcov_ctr.i.i.i204 = load i64, ptr @__llvm_gcov_ctr.112, align 16, !dbg !1008
  %36 = add i64 %gcov_ctr.i.i.i204, 1, !dbg !1008
  store i64 %36, ptr @__llvm_gcov_ctr.112, align 16, !dbg !1008
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !1010
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !1010
  %call7.i.i205 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 8) #19, !dbg !1011
  %tobool37.not = icmp eq ptr %call7.i.i205, null, !dbg !1012
  br i1 %tobool37.not, label %if.then38, label %if.end39, !dbg !1013

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1014
  %gcov_ctr132 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 9), align 8, !dbg !1014
  %38 = add i64 %gcov_ctr132, 1, !dbg !1014
  store i64 %38, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 9), align 8, !dbg !1014
  call void @kfree(ptr noundef nonnull %call7.i.i) #17, !dbg !1015
  br label %cleanup, !dbg !1016

if.end39:                                         ; preds = %if.end35
  %39 = ptrtoint ptr %call7.i.i to i32, !dbg !1017
  call void @__asan_store4_noabort(i32 %39), !dbg !1017
  store i32 -1, ptr %call7.i.i, align 8, !dbg !1017
  %ops = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 3, !dbg !1018
  %40 = ptrtoint ptr %ops to i32, !dbg !1019
  call void @__asan_store4_noabort(i32 %40), !dbg !1019
  store ptr %call31, ptr %ops, align 4, !dbg !1019
  %cmd_ops40 = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 4, !dbg !1020
  %41 = ptrtoint ptr %cmd_ops40 to i32, !dbg !1021
  call void @__asan_store4_noabort(i32 %41), !dbg !1021
  store ptr %cmd_ops, ptr %cmd_ops40, align 8, !dbg !1021
  %list = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 10, !dbg !1022
  %gcov_ctr.i206 = load i64, ptr @__llvm_gcov_ctr.53, align 8, !dbg !1023
  %42 = add i64 %gcov_ctr.i206, 1, !dbg !1023
  store i64 %42, ptr @__llvm_gcov_ctr.53, align 8, !dbg !1023
  %43 = ptrtoint ptr %list to i32, !dbg !1023
  call void @__asan_store4_noabort(i32 %43), !dbg !1023
  store volatile ptr %list, ptr %list, align 4, !dbg !1023
  %prev.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 10, i32 1, !dbg !1025
  %44 = ptrtoint ptr %prev.i to i32, !dbg !1026
  call void @__asan_store4_noabort(i32 %44), !dbg !1026
  store ptr %list, ptr %prev.i, align 8, !dbg !1026
  %filter = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 5, !dbg !1027
  %45 = ptrtoint ptr %filter to i32, !dbg !1027
  call void @__asan_store4_noabort(i32 %45), !dbg !1027
  store volatile ptr null, ptr %filter, align 4, !dbg !1027
  %hist51 = getelementptr inbounds %struct.enable_trigger_data, ptr %call7.i.i205, i32 0, i32 2, !dbg !1028
  %46 = ptrtoint ptr %hist51 to i32, !dbg !1029
  call void @__asan_store1_noabort(i32 %46), !dbg !1029
  store i8 %frombool, ptr %hist51, align 1, !dbg !1029
  %enable54 = getelementptr inbounds %struct.enable_trigger_data, ptr %call7.i.i205, i32 0, i32 1, !dbg !1030
  %47 = ptrtoint ptr %enable54 to i32, !dbg !1031
  call void @__asan_store1_noabort(i32 %47), !dbg !1031
  store i8 %frombool30, ptr %enable54, align 4, !dbg !1031
  %48 = ptrtoint ptr %call7.i.i205 to i32, !dbg !1032
  call void @__asan_store4_noabort(i32 %48), !dbg !1032
  store ptr %call17, ptr %call7.i.i205, align 8, !dbg !1032
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 7, !dbg !1033
  %49 = ptrtoint ptr %private_data to i32, !dbg !1034
  call void @__asan_store4_noabort(i32 %49), !dbg !1034
  store ptr %call7.i.i205, ptr %private_data, align 4, !dbg !1034
  %50 = ptrtoint ptr %glob to i32, !dbg !1035
  call void @__asan_load1_noabort(i32 %50), !dbg !1035
  %51 = load i8, ptr %glob, align 1, !dbg !1035
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %51), !dbg !1036
  %cmp57 = icmp eq i8 %51, 33, !dbg !1036
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !1035

if.then59:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1037
  %gcov_ctr133 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 10), align 16, !dbg !1037
  %52 = add i64 %gcov_ctr133, 1, !dbg !1037
  store i64 %52, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 10), align 16, !dbg !1037
  %unreg = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 6, !dbg !1038
  %53 = ptrtoint ptr %unreg to i32, !dbg !1038
  call void @__asan_load4_noabort(i32 %53), !dbg !1038
  %54 = load ptr, ptr %unreg, align 4, !dbg !1038
  %add.ptr = getelementptr i8, ptr %glob, i32 1, !dbg !1039
  call void %54(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, ptr noundef %file) #17, !dbg !1037
  call void @kfree(ptr noundef nonnull %call7.i.i) #17, !dbg !1040
  call void @kfree(ptr noundef nonnull %call7.i.i205) #17, !dbg !1041
  br label %cleanup, !dbg !1042

if.end60:                                         ; preds = %if.end39
  %gcov_ctr.i207 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %55 = add i64 %gcov_ctr.i207, 1
  store i64 %55, ptr @__llvm_gcov_ctr.38, align 8
  %ref.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 1, !dbg !1043
  %56 = ptrtoint ptr %ref.i to i32, !dbg !1045
  call void @__asan_load4_noabort(i32 %56), !dbg !1045
  %57 = load i32, ptr %ref.i, align 4, !dbg !1045
  %inc.i = add i32 %57, 1, !dbg !1045
  store i32 %inc.i, ptr %ref.i, align 4, !dbg !1045
  %58 = ptrtoint ptr %trigger to i32, !dbg !1046
  call void @__asan_load4_noabort(i32 %58), !dbg !1046
  %59 = load ptr, ptr %trigger, align 4, !dbg !1046
  %tobool62.not = icmp eq ptr %59, null, !dbg !1046
  br i1 %tobool62.not, label %if.end60.if.end74_crit_edge, label %if.then63, !dbg !1046

if.end60.if.end74_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1046
  br label %if.end74, !dbg !1046

if.then63:                                        ; preds = %if.end60
  %call64 = call ptr @strsep(ptr noundef nonnull %trigger, ptr noundef nonnull @.str.6) #17, !dbg !1047
  %60 = ptrtoint ptr %call64 to i32, !dbg !1048
  call void @__asan_load1_noabort(i32 %60), !dbg !1048
  %char0 = load i8, ptr %call64, align 1, !dbg !1048
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0), !dbg !1048
  %tobool66.not = icmp eq i8 %char0, 0, !dbg !1048
  br i1 %tobool66.not, label %if.then67, label %if.end68, !dbg !1049

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1050
  %gcov_ctr134 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 11), align 8, !dbg !1050
  %61 = add i64 %gcov_ctr134, 1, !dbg !1050
  store i64 %61, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 11), align 8, !dbg !1050
  br label %out_free, !dbg !1050

if.end68:                                         ; preds = %if.then63
  %gcov_ctr.i208 = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %62 = add i64 %gcov_ctr.i208, 1
  store i64 %62, ptr @__llvm_gcov_ctr.55, align 8
  %call.i = call i32 @_kstrtoul(ptr noundef %call64, i32 noundef 0, ptr noundef nonnull %call7.i.i) #17, !dbg !1051
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1053
  %tobool71.not = icmp eq i32 %call.i, 0, !dbg !1053
  br i1 %tobool71.not, label %if.end73, label %if.then72, !dbg !1053

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1054
  %gcov_ctr135 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 12), align 16, !dbg !1054
  %63 = add i64 %gcov_ctr135, 1, !dbg !1054
  store i64 %63, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 12), align 16, !dbg !1054
  br label %out_free, !dbg !1054

if.end73:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1055
  %gcov_ctr136 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 13), align 8, !dbg !1055
  %64 = add i64 %gcov_ctr136, 1, !dbg !1055
  store i64 %64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 13), align 8, !dbg !1055
  br label %if.end74, !dbg !1055

if.end74:                                         ; preds = %if.end73, %if.end60.if.end74_crit_edge
  %65 = ptrtoint ptr %param.addr to i32, !dbg !1056
  call void @__asan_load4_noabort(i32 %65), !dbg !1056
  %66 = load ptr, ptr %param.addr, align 4, !dbg !1056
  %tobool75.not = icmp eq ptr %66, null, !dbg !1056
  br i1 %tobool75.not, label %if.end74.out_reg_crit_edge, label %if.end77, !dbg !1057

if.end74.out_reg_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1057
  br label %out_reg, !dbg !1057

if.end77:                                         ; preds = %if.end74
  %set_filter = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 8, !dbg !1058
  %67 = ptrtoint ptr %set_filter to i32, !dbg !1058
  call void @__asan_load4_noabort(i32 %67), !dbg !1058
  %68 = load ptr, ptr %set_filter, align 4, !dbg !1058
  %tobool78.not = icmp eq ptr %68, null, !dbg !1059
  br i1 %tobool78.not, label %if.end77.out_reg.sink.split_crit_edge, label %if.end80, !dbg !1060

if.end77.out_reg.sink.split_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1060
  br label %out_reg.sink.split, !dbg !1060

if.end80:                                         ; preds = %if.end77
  %call82 = call i32 %68(ptr noundef nonnull %66, ptr noundef nonnull %call7.i.i, ptr noundef %file) #17, !dbg !1061
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82), !dbg !1062
  %cmp83 = icmp slt i32 %call82, 0, !dbg !1062
  br i1 %cmp83, label %if.then85, label %if.end80.out_reg.sink.split_crit_edge, !dbg !1063

if.end80.out_reg.sink.split_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1063
  br label %out_reg.sink.split, !dbg !1063

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1064
  %gcov_ctr138 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 15), align 8, !dbg !1064
  %69 = add i64 %gcov_ctr138, 1, !dbg !1064
  store i64 %69, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 15), align 8, !dbg !1064
  br label %out_free, !dbg !1064

out_reg.sink.split:                               ; preds = %if.end80.out_reg.sink.split_crit_edge, %if.end77.out_reg.sink.split_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 14), %if.end77.out_reg.sink.split_crit_edge ], [ getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 16), %if.end80.out_reg.sink.split_crit_edge ]
  %70 = ptrtoint ptr %.sink to i32, !dbg !1065
  call void @__asan_load8_noabort(i32 %70), !dbg !1065
  %gcov_ctr139 = load i64, ptr %.sink, align 16, !dbg !1065
  %71 = add i64 %gcov_ctr139, 1, !dbg !1065
  store i64 %71, ptr %.sink, align 16, !dbg !1065
  br label %out_reg, !dbg !1066

out_reg:                                          ; preds = %out_reg.sink.split, %if.end74.out_reg_crit_edge
  %event_call = getelementptr inbounds %struct.trace_event_file, ptr %call17, i32 0, i32 1, !dbg !1066
  %72 = ptrtoint ptr %event_call to i32, !dbg !1066
  call void @__asan_load4_noabort(i32 %72), !dbg !1066
  %73 = load ptr, ptr %event_call, align 4, !dbg !1066
  %call87 = call fastcc zeroext i1 @trace_event_try_get_ref(ptr noundef %73), !dbg !1067
  br i1 %call87, label %if.end91, label %if.then90, !dbg !1068

if.then90:                                        ; preds = %out_reg
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1069
  %gcov_ctr140 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 17), align 8, !dbg !1069
  %74 = add i64 %gcov_ctr140, 1, !dbg !1069
  store i64 %74, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 17), align 8, !dbg !1069
  br label %out_free, !dbg !1070

if.end91:                                         ; preds = %out_reg
  %call92 = call i32 @trace_event_enable_disable(ptr noundef nonnull %call17, i32 noundef 1, i32 noundef 1) #17, !dbg !1071
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92), !dbg !1072
  %cmp93 = icmp slt i32 %call92, 0, !dbg !1072
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !1073

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1074
  %gcov_ctr141 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 18), align 16, !dbg !1074
  %75 = add i64 %gcov_ctr141, 1, !dbg !1074
  store i64 %75, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 18), align 16, !dbg !1074
  br label %out_put, !dbg !1074

if.end96:                                         ; preds = %if.end91
  %reg = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 5, !dbg !1075
  %76 = ptrtoint ptr %reg to i32, !dbg !1075
  call void @__asan_load4_noabort(i32 %76), !dbg !1075
  %77 = load ptr, ptr %reg, align 4, !dbg !1075
  %call97 = call i32 %77(ptr noundef %glob, ptr noundef nonnull %call7.i.i, ptr noundef %file) #17, !dbg !1076
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97), !dbg !1077
  %tobool98.not = icmp eq i32 %call97, 0, !dbg !1077
  br i1 %tobool98.not, label %if.then99, label %if.else, !dbg !1078

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1079
  %gcov_ctr142 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 19), align 8, !dbg !1079
  %78 = add i64 %gcov_ctr142, 1, !dbg !1079
  store i64 %78, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 19), align 8, !dbg !1079
  br label %out_disable, !dbg !1080

if.else:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97), !dbg !1081
  %cmp100 = icmp slt i32 %call97, 0, !dbg !1081
  br i1 %cmp100, label %if.then102, label %if.end104, !dbg !1082

if.then102:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1083
  %gcov_ctr143 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 20), align 16, !dbg !1083
  %79 = add i64 %gcov_ctr143, 1, !dbg !1083
  store i64 %79, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 20), align 16, !dbg !1083
  br label %out_disable, !dbg !1083

if.end104:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1084
  %gcov_ctr144 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 21), align 8, !dbg !1084
  %80 = add i64 %gcov_ctr144, 1, !dbg !1084
  store i64 %80, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 21), align 8, !dbg !1084
  call void @event_trigger_free(ptr noundef %call31, ptr noundef nonnull %call7.i.i), !dbg !1085
  br label %cleanup, !dbg !1085

out_disable:                                      ; preds = %if.then102, %if.then99
  %ret.1 = phi i32 [ %call97, %if.then102 ], [ -2, %if.then99 ], !dbg !1065
  %call105 = call i32 @trace_event_enable_disable(ptr noundef nonnull %call17, i32 noundef 0, i32 noundef 1) #17, !dbg !1086
  br label %out_put, !dbg !1086

out_put:                                          ; preds = %out_disable, %if.then95
  %ret.2 = phi i32 [ %call92, %if.then95 ], [ %ret.1, %out_disable ], !dbg !1065
  %81 = ptrtoint ptr %event_call to i32, !dbg !1087
  call void @__asan_load4_noabort(i32 %81), !dbg !1087
  %82 = load ptr, ptr %event_call, align 4, !dbg !1087
  call fastcc void @trace_event_put_ref(ptr noundef %82), !dbg !1088
  br label %out_free, !dbg !1088

out_free:                                         ; preds = %out_put, %if.then90, %if.then85, %if.then72, %if.then67
  %ret.3 = phi i32 [ %call.i, %if.then72 ], [ %call82, %if.then85 ], [ %ret.2, %out_put ], [ -16, %if.then90 ], [ -22, %if.then67 ], !dbg !1065
  %set_filter107 = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 8, !dbg !1089
  %83 = ptrtoint ptr %set_filter107 to i32, !dbg !1089
  call void @__asan_load4_noabort(i32 %83), !dbg !1089
  %84 = load ptr, ptr %set_filter107, align 4, !dbg !1089
  %tobool108.not = icmp eq ptr %84, null, !dbg !1090
  br i1 %tobool108.not, label %out_free.if.end112_crit_edge, label %if.then109, !dbg !1090

out_free.if.end112_crit_edge:                     ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1090
  br label %if.end112, !dbg !1090

if.then109:                                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1091
  %gcov_ctr145 = load i64, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 22), align 16, !dbg !1091
  %85 = add i64 %gcov_ctr145, 1, !dbg !1091
  store i64 %85, ptr getelementptr inbounds ([23 x i64], ptr @__llvm_gcov_ctr.74, i32 0, i32 22), align 16, !dbg !1091
  %86 = ptrtoint ptr %set_filter107 to i32, !dbg !1092
  call void @__asan_load4_noabort(i32 %86), !dbg !1092
  %87 = load ptr, ptr %set_filter107, align 4, !dbg !1092
  %call111 = call i32 %87(ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef null) #17, !dbg !1091
  br label %if.end112, !dbg !1091

if.end112:                                        ; preds = %if.then109, %out_free.if.end112_crit_edge
  call void @event_trigger_free(ptr noundef %call31, ptr noundef nonnull %call7.i.i), !dbg !1093
  call void @kfree(ptr noundef nonnull %call7.i.i205) #17, !dbg !1094
  br label %cleanup, !dbg !1095

cleanup:                                          ; preds = %if.end112, %if.end104, %if.then59, %if.then38, %if.then34, %if.then19, %if.then14, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then14 ], [ -22, %if.then3 ], [ -22, %if.then ], [ 0, %if.then59 ], [ %ret.3, %if.end112 ], [ 0, %if.end104 ], [ -12, %if.then38 ], [ -12, %if.then34 ], [ -22, %if.then19 ], !dbg !1065
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trigger) #17, !dbg !1096
  ret i32 %retval.0, !dbg !1096
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_event_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @trace_event_try_get_ref(ptr noundef %call) unnamed_addr #8 align 64 !dbg !1097 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1098
  %flags = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 8, !dbg !1099
  %0 = ptrtoint ptr %flags to i32, !dbg !1099
  call void @__asan_load4_noabort(i32 %0), !dbg !1099
  %1 = load i32, ptr %flags, align 4, !dbg !1099
  %and = and i32 %1, 32, !dbg !1100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and), !dbg !1100
  %tobool.not = icmp eq i32 %and, 0, !dbg !1100
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1102
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.75, align 8, !dbg !1102
  %2 = add i64 %gcov_ctr, 1, !dbg !1102
  store i64 %2, ptr @__llvm_gcov_ctr.75, align 8, !dbg !1102
  %call1 = tail call zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %call) #17, !dbg !1103
  br label %return, !dbg !1104

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1105
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 1), align 8, !dbg !1105
  %3 = add i64 %gcov_ctr3, 1, !dbg !1105
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.75, i32 0, i32 1), align 8, !dbg !1105
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %call, i32 0, i32 6, !dbg !1106
  %5 = ptrtoint ptr %4 to i32, !dbg !1106
  call void @__asan_load4_noabort(i32 %5), !dbg !1106
  %6 = load ptr, ptr %4, align 4, !dbg !1106
  %call2 = tail call zeroext i1 @try_module_get(ptr noundef %6) #17, !dbg !1107
  br label %return, !dbg !1108

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i1 [ %call1, %if.then ], [ %call2, %if.else ], !dbg !1109
  ret i1 %retval.0, !dbg !1110
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_trigger_free(ptr nocapture noundef readnone %ops, ptr noundef %data) #0 align 64 !dbg !1111 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1112
  %ref = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 1, !dbg !1113
  %0 = ptrtoint ptr %ref to i32, !dbg !1113
  call void @__asan_load4_noabort(i32 %0), !dbg !1113
  %1 = load i32, ptr %ref, align 4, !dbg !1113
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1), !dbg !1113
  %cmp = icmp slt i32 %1, 1, !dbg !1113
  br i1 %cmp, label %land.rhs, label %if.end37, !dbg !1113

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.76, align 16, !dbg !1113
  %2 = add i64 %gcov_ctr, 1, !dbg !1113
  store i64 %2, ptr @__llvm_gcov_ctr.76, align 16, !dbg !1113
  %.b53 = load i1, ptr @event_trigger_free.__already_done, align 1, !dbg !1113
  br i1 %.b53, label %land.rhs.if.then36_crit_edge, label %if.then, !dbg !1113, !prof !902

land.rhs.if.then36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1113
  br label %if.then36, !dbg !1113

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1113
  store i1 true, ptr @event_trigger_free.__already_done, align 1, !dbg !1113
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !1113
  %3 = add i64 %gcov_ctr43, 1, !dbg !1113
  store i64 %3, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !1113
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 466, i32 noundef 9, ptr noundef null) #17, !dbg !1113
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 2), align 16, !dbg !1113
  %4 = add i64 %gcov_ctr44, 1, !dbg !1113
  store i64 %4, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 2), align 16, !dbg !1113
  br label %if.then36, !dbg !1113

if.then36:                                        ; preds = %if.then, %land.rhs.if.then36_crit_edge
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 4), align 16, !dbg !1114
  %5 = add i64 %gcov_ctr46, 1, !dbg !1114
  store i64 %5, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 4), align 16, !dbg !1114
  br label %if.end42, !dbg !1114

if.end37:                                         ; preds = %entry
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 3), align 8, !dbg !1115
  %6 = add i64 %gcov_ctr45, 1, !dbg !1115
  store i64 %6, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 3), align 8, !dbg !1115
  %7 = ptrtoint ptr %ref to i32, !dbg !1116
  call void @__asan_load4_noabort(i32 %7), !dbg !1116
  %8 = load i32, ptr %ref, align 4, !dbg !1116
  %dec = add i32 %8, -1, !dbg !1116
  store i32 %dec, ptr %ref, align 4, !dbg !1116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec), !dbg !1117
  %tobool40.not = icmp eq i32 %dec, 0, !dbg !1117
  br i1 %tobool40.not, label %if.then41, label %if.end37.if.end42_crit_edge, !dbg !1118

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1118
  br label %if.end42, !dbg !1118

if.then41:                                        ; preds = %if.end37
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 5), align 8, !dbg !1119
  %9 = add i64 %gcov_ctr47, 1, !dbg !1119
  store i64 %9, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 5), align 8, !dbg !1119
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr, align 8
  %10 = add i64 %gcov_ctr.i, 1
  store i64 %10, ptr @__llvm_gcov_ctr, align 8
  %cmd_ops.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 4, !dbg !1120
  %11 = ptrtoint ptr %cmd_ops.i to i32, !dbg !1120
  call void @__asan_load4_noabort(i32 %11), !dbg !1120
  %12 = load ptr, ptr %cmd_ops.i, align 4, !dbg !1120
  %set_filter.i = getelementptr inbounds %struct.event_command, ptr %12, i32 0, i32 8, !dbg !1122
  %13 = ptrtoint ptr %set_filter.i to i32, !dbg !1122
  call void @__asan_load4_noabort(i32 %13), !dbg !1122
  %14 = load ptr, ptr %set_filter.i, align 4, !dbg !1122
  %tobool.not.i = icmp eq ptr %14, null, !dbg !1123
  br i1 %tobool.not.i, label %if.then41.trigger_data_free.exit_crit_edge, label %if.then.i, !dbg !1123

if.then41.trigger_data_free.exit_crit_edge:       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1123
  br label %trigger_data_free.exit, !dbg !1123

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1124
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !1124
  %15 = add i64 %gcov_ctr3.i, 1, !dbg !1124
  store i64 %15, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !1124
  %call.i = tail call i32 %14(ptr noundef null, ptr noundef %data, ptr noundef null) #17, !dbg !1124
  br label %trigger_data_free.exit, !dbg !1124

trigger_data_free.exit:                           ; preds = %if.then.i, %if.then41.trigger_data_free.exit_crit_edge
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.24, align 8, !dbg !1125
  %16 = add i64 %gcov_ctr.i.i, 1, !dbg !1125
  store i64 %16, ptr @__llvm_gcov_ctr.24, align 8, !dbg !1125
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #17, !dbg !1125
  tail call void @synchronize_rcu() #17, !dbg !1127
  tail call void @kfree(ptr noundef %data) #17, !dbg !1128
  br label %if.end42, !dbg !1129

if.end42:                                         ; preds = %trigger_data_free.exit, %if.end37.if.end42_crit_edge, %if.then36
  ret void, !dbg !1130
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @event_enable_register_trigger(ptr nocapture readnone %glob, ptr noundef %data, ptr noundef %file) #0 align 64 !dbg !1131 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1132
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1133
  %0 = ptrtoint ptr %private_data to i32, !dbg !1133
  call void @__asan_load4_noabort(i32 %0), !dbg !1133
  %1 = load ptr, ptr %private_data, align 4, !dbg !1133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !1134
  %2 = load i32, ptr @debug_locks, align 4, !dbg !1134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2), !dbg !1134
  %tobool.not = icmp eq i32 %2, 0, !dbg !1134
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !dbg !1134

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1134
  br label %if.end, !dbg !1134

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.77, align 16, !dbg !1134
  %3 = add i64 %gcov_ctr, 1, !dbg !1134
  store i64 %3, ptr @__llvm_gcov_ctr.77, align 16, !dbg !1134
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.45, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #17, !dbg !1135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1134
  %cmp.not = icmp eq i32 %call.i, 0, !dbg !1134
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !dbg !1134, !prof !281

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1134
  br label %if.end, !dbg !1134

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1134
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1942, i32 noundef 9, ptr noundef null) #17, !dbg !1134
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !1134
  %5 = add i64 %gcov_ctr62, 1, !dbg !1134
  store i64 %5, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 1), align 8, !dbg !1134
  br label %if.end, !dbg !1134

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 6, !dbg !1137
  %6 = ptrtoint ptr %triggers to i32, !dbg !1137
  call void @__asan_load4_noabort(i32 %6), !dbg !1137
  %.pn98 = load ptr, ptr %triggers, align 4, !dbg !1137
  %cmp26.not99 = icmp eq ptr %.pn98, %triggers, !dbg !1137
  br i1 %cmp26.not99, label %if.end.for.end_crit_edge, label %for.body.lr.ph, !dbg !1137

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1137
  br label %for.end, !dbg !1137

for.body.lr.ph:                                   ; preds = %if.end
  %cmd_ops31 = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 4
  br label %for.body, !dbg !1137

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn100 = phi ptr [ %.pn98, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %private_data29 = getelementptr i8, ptr %.pn100, i32 -8, !dbg !1138
  %7 = ptrtoint ptr %private_data29 to i32, !dbg !1138
  call void @__asan_load4_noabort(i32 %7), !dbg !1138
  %8 = load ptr, ptr %private_data29, align 4, !dbg !1138
  %tobool30.not = icmp eq ptr %8, null, !dbg !1139
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %land.lhs.true, !dbg !1140

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1140
  br label %for.inc, !dbg !1140

land.lhs.true:                                    ; preds = %for.body
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 2), align 16, !dbg !1141
  %9 = add i64 %gcov_ctr63, 1, !dbg !1141
  store i64 %9, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 2), align 16, !dbg !1141
  %cmd_ops = getelementptr i8, ptr %.pn100, i32 -20, !dbg !1142
  %10 = ptrtoint ptr %cmd_ops to i32, !dbg !1142
  call void @__asan_load4_noabort(i32 %10), !dbg !1142
  %11 = load ptr, ptr %cmd_ops, align 4, !dbg !1142
  %trigger_type = getelementptr inbounds %struct.event_command, ptr %11, i32 0, i32 2, !dbg !1143
  %12 = ptrtoint ptr %trigger_type to i32, !dbg !1143
  call void @__asan_load4_noabort(i32 %12), !dbg !1143
  %13 = load i32, ptr %trigger_type, align 4, !dbg !1143
  %14 = ptrtoint ptr %cmd_ops31 to i32, !dbg !1144
  call void @__asan_load4_noabort(i32 %14), !dbg !1144
  %15 = load ptr, ptr %cmd_ops31, align 4, !dbg !1144
  %trigger_type32 = getelementptr inbounds %struct.event_command, ptr %15, i32 0, i32 2, !dbg !1145
  %16 = ptrtoint ptr %trigger_type32 to i32, !dbg !1145
  call void @__asan_load4_noabort(i32 %16), !dbg !1145
  %17 = load i32, ptr %trigger_type32, align 4, !dbg !1145
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17), !dbg !1146
  %cmp33 = icmp eq i32 %13, %17, !dbg !1146
  br i1 %cmp33, label %land.lhs.true34, label %land.lhs.true.for.inc_crit_edge, !dbg !1147

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1147
  br label %for.inc, !dbg !1147

land.lhs.true34:                                  ; preds = %land.lhs.true
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 3), align 8, !dbg !1148
  %18 = add i64 %gcov_ctr64, 1, !dbg !1148
  store i64 %18, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 3), align 8, !dbg !1148
  %19 = ptrtoint ptr %8 to i32, !dbg !1149
  call void @__asan_load4_noabort(i32 %19), !dbg !1149
  %20 = load ptr, ptr %8, align 4, !dbg !1149
  %21 = ptrtoint ptr %1 to i32, !dbg !1150
  call void @__asan_load4_noabort(i32 %21), !dbg !1150
  %22 = load ptr, ptr %1, align 4, !dbg !1150
  %cmp37 = icmp eq ptr %20, %22, !dbg !1151
  br i1 %cmp37, label %if.then38, label %land.lhs.true34.for.inc_crit_edge, !dbg !1139

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1139
  br label %for.inc, !dbg !1139

if.then38:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1152
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 4), align 16, !dbg !1152
  %23 = add i64 %gcov_ctr65, 1, !dbg !1152
  store i64 %23, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 4), align 16, !dbg !1152
  br label %out, !dbg !1153

for.inc:                                          ; preds = %land.lhs.true34.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 5), align 8, !dbg !1137
  %24 = add i64 %gcov_ctr66, 1, !dbg !1137
  store i64 %24, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 5), align 8, !dbg !1137
  %25 = ptrtoint ptr %.pn100 to i32, !dbg !1137
  call void @__asan_load4_noabort(i32 %25), !dbg !1137
  %.pn = load ptr, ptr %.pn100, align 4, !dbg !1137
  %cmp26.not = icmp eq ptr %.pn, %triggers, !dbg !1137
  br i1 %cmp26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge, !dbg !1137, !llvm.loop !1154

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1137
  br label %for.body, !dbg !1137

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1137
  br label %for.end, !dbg !1137

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %ops = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 3, !dbg !1156
  %26 = ptrtoint ptr %ops to i32, !dbg !1156
  call void @__asan_load4_noabort(i32 %26), !dbg !1156
  %27 = load ptr, ptr %ops, align 4, !dbg !1156
  %init = getelementptr inbounds %struct.event_trigger_ops, ptr %27, i32 0, i32 1, !dbg !1157
  %28 = ptrtoint ptr %init to i32, !dbg !1157
  call void @__asan_load4_noabort(i32 %28), !dbg !1157
  %29 = load ptr, ptr %init, align 4, !dbg !1157
  %tobool45.not = icmp eq ptr %29, null, !dbg !1158
  br i1 %tobool45.not, label %for.end.if.end54_crit_edge, label %if.then46, !dbg !1158

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1158
  br label %if.end54, !dbg !1158

if.then46:                                        ; preds = %for.end
  %call50 = tail call i32 %29(ptr noundef %27, ptr noundef %data) #17, !dbg !1159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50), !dbg !1160
  %cmp51 = icmp slt i32 %call50, 0, !dbg !1160
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1161

if.then52:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1162
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 6), align 16, !dbg !1162
  %30 = add i64 %gcov_ctr67, 1, !dbg !1162
  store i64 %30, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 6), align 16, !dbg !1162
  br label %out, !dbg !1162

if.end53:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1163
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 7), align 8, !dbg !1163
  %31 = add i64 %gcov_ctr68, 1, !dbg !1163
  store i64 %31, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 7), align 8, !dbg !1163
  br label %if.end54, !dbg !1163

if.end54:                                         ; preds = %if.end53, %for.end.if.end54_crit_edge
  %ret.0 = phi i32 [ %call50, %if.end53 ], [ 0, %for.end.if.end54_crit_edge ], !dbg !1164
  %list55 = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 10, !dbg !1165
  %gcov_ctr.i92 = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %32 = add i64 %gcov_ctr.i92, 1
  store i64 %32, ptr @__llvm_gcov_ctr.78, align 8
  %33 = ptrtoint ptr %triggers to i32, !dbg !1166
  call void @__asan_load4_noabort(i32 %33), !dbg !1166
  %34 = load ptr, ptr %triggers, align 4, !dbg !1166
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list55, ptr noundef %triggers, ptr noundef %34) #17, !dbg !1169
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1172

if.then.i.i:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1173
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.116, align 16, !dbg !1173
  %35 = add i64 %gcov_ctr.i.i, 1, !dbg !1173
  store i64 %35, ptr @__llvm_gcov_ctr.116, align 16, !dbg !1173
  br label %list_add_rcu.exit, !dbg !1173

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1174
  %36 = ptrtoint ptr %list55 to i32, !dbg !1174
  call void @__asan_store4_noabort(i32 %36), !dbg !1174
  store ptr %34, ptr %list55, align 4, !dbg !1174
  %prev2.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 10, i32 1, !dbg !1175
  %37 = ptrtoint ptr %prev2.i.i to i32, !dbg !1176
  call void @__asan_store4_noabort(i32 %37), !dbg !1176
  store ptr %triggers, ptr %prev2.i.i, align 4, !dbg !1176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !dbg !1177, !srcloc !1178
  %38 = ptrtoint ptr %triggers to i32, !dbg !1177
  call void @__asan_store4_noabort(i32 %38), !dbg !1177
  store volatile ptr %list55, ptr %triggers, align 4, !dbg !1177
  %gcov_ctr40.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 3), align 8
  %39 = add i64 %gcov_ctr40.i.i, 1
  store i64 %39, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 3), align 8
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1, !dbg !1179
  %40 = ptrtoint ptr %prev37.i.i to i32, !dbg !1180
  call void @__asan_store4_noabort(i32 %40), !dbg !1180
  store ptr %list55, ptr %prev37.i.i, align 4, !dbg !1180
  br label %list_add_rcu.exit, !dbg !1181

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.then.i.i
  %inc = add nuw i32 %ret.0, 1, !dbg !1182
  tail call void @update_cond_flag(ptr noundef %file), !dbg !1183
  %call57 = tail call i32 @trace_event_trigger_enable_disable(ptr noundef %file, i32 noundef 1), !dbg !1184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57), !dbg !1185
  %cmp58 = icmp slt i32 %call57, 0, !dbg !1185
  br i1 %cmp58, label %if.then59, label %list_add_rcu.exit.if.end61_crit_edge, !dbg !1184

list_add_rcu.exit.if.end61_crit_edge:             ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1184
  br label %if.end61, !dbg !1184

if.then59:                                        ; preds = %list_add_rcu.exit
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 8), align 16, !dbg !1186
  %41 = add i64 %gcov_ctr69, 1, !dbg !1186
  store i64 %41, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 8), align 16, !dbg !1186
  %gcov_ctr.i93 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %42 = add i64 %gcov_ctr.i93, 1
  store i64 %42, ptr @__llvm_gcov_ctr.43, align 8
  %call.i.i94 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list55) #17, !dbg !1187
  br i1 %call.i.i94, label %if.end.i.i97, label %if.then.i.i96, !dbg !1190

if.then.i.i96:                                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1191
  %gcov_ctr.i.i95 = load i64, ptr @__llvm_gcov_ctr.99, align 8, !dbg !1191
  %43 = add i64 %gcov_ctr.i.i95, 1, !dbg !1191
  store i64 %43, ptr @__llvm_gcov_ctr.99, align 8, !dbg !1191
  br label %list_del_rcu.exit, !dbg !1191

if.end.i.i97:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1192
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !1192
  %44 = add i64 %gcov_ctr2.i.i, 1, !dbg !1192
  store i64 %44, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !1192
  %prev.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 10, i32 1, !dbg !1193
  %45 = ptrtoint ptr %prev.i.i to i32, !dbg !1193
  call void @__asan_load4_noabort(i32 %45), !dbg !1193
  %46 = load ptr, ptr %prev.i.i, align 4, !dbg !1193
  %47 = ptrtoint ptr %list55 to i32, !dbg !1194
  call void @__asan_load4_noabort(i32 %47), !dbg !1194
  %48 = load ptr, ptr %list55, align 4, !dbg !1194
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1, !dbg !1195
  %49 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !1197
  call void @__asan_store4_noabort(i32 %49), !dbg !1197
  store ptr %46, ptr %prev1.i.i.i, align 4, !dbg !1197
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1198
  %50 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1198
  store i64 %50, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1198
  %51 = ptrtoint ptr %46 to i32, !dbg !1198
  call void @__asan_store4_noabort(i32 %51), !dbg !1198
  store volatile ptr %48, ptr %46, align 4, !dbg !1198
  br label %list_del_rcu.exit, !dbg !1199

list_del_rcu.exit:                                ; preds = %if.end.i.i97, %if.then.i.i96
  %prev.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 10, i32 1, !dbg !1200
  %52 = ptrtoint ptr %prev.i to i32, !dbg !1201
  call void @__asan_store4_noabort(i32 %52), !dbg !1201
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4, !dbg !1201
  tail call void @update_cond_flag(ptr noundef %file), !dbg !1202
  br label %if.end61, !dbg !1203

if.end61:                                         ; preds = %list_del_rcu.exit, %list_add_rcu.exit.if.end61_crit_edge
  %ret.1 = phi i32 [ %ret.0, %list_del_rcu.exit ], [ %inc, %list_add_rcu.exit.if.end61_crit_edge ], !dbg !1164
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 9), align 8, !dbg !1204
  %53 = add i64 %gcov_ctr70, 1, !dbg !1204
  store i64 %53, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.77, i32 0, i32 9), align 8, !dbg !1204
  br label %out, !dbg !1204

out:                                              ; preds = %if.end61, %if.then52, %if.then38
  %ret.2 = phi i32 [ -17, %if.then38 ], [ %call50, %if.then52 ], [ %ret.1, %if.end61 ], !dbg !1164
  ret i32 %ret.2, !dbg !1205
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @event_enable_unregister_trigger(ptr nocapture readnone %glob, ptr nocapture noundef readonly %test, ptr noundef %file) #0 align 64 !dbg !1206 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1207
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %test, i32 0, i32 7, !dbg !1208
  %0 = ptrtoint ptr %private_data to i32, !dbg !1208
  call void @__asan_load4_noabort(i32 %0), !dbg !1208
  %1 = load ptr, ptr %private_data, align 4, !dbg !1208
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !1209
  %2 = load i32, ptr @debug_locks, align 4, !dbg !1209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2), !dbg !1209
  %tobool.not = icmp eq i32 %2, 0, !dbg !1209
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !dbg !1209

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1209
  br label %if.end, !dbg !1209

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.79, align 16, !dbg !1209
  %3 = add i64 %gcov_ctr, 1, !dbg !1209
  store i64 %3, ptr @__llvm_gcov_ctr.79, align 16, !dbg !1209
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.45, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #17, !dbg !1210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1209
  %cmp.not = icmp eq i32 %call.i, 0, !dbg !1209
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !dbg !1209, !prof !281

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1209
  br label %if.end, !dbg !1209

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1209
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1983, i32 noundef 9, ptr noundef null) #17, !dbg !1209
  %gcov_ctr55 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 1), align 8, !dbg !1209
  %5 = add i64 %gcov_ctr55, 1, !dbg !1209
  store i64 %5, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 1), align 8, !dbg !1209
  br label %if.end, !dbg !1209

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 2), align 16, !dbg !1212
  %6 = add i64 %gcov_ctr56, 1, !dbg !1212
  store i64 %6, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 2), align 16, !dbg !1212
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 6, !dbg !1212
  %7 = ptrtoint ptr %triggers to i32, !dbg !1212
  call void @__asan_load4_noabort(i32 %7), !dbg !1212
  %.pn81 = load ptr, ptr %triggers, align 4, !dbg !1212
  %cmp26.not82 = icmp eq ptr %.pn81, %triggers, !dbg !1212
  br i1 %cmp26.not82, label %if.end.if.end54_crit_edge, label %for.body.lr.ph, !dbg !1212

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1212
  br label %if.end54, !dbg !1212

for.body.lr.ph:                                   ; preds = %if.end
  %cmd_ops31 = getelementptr inbounds %struct.event_trigger_data, ptr %test, i32 0, i32 4
  br label %for.body, !dbg !1212

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn83 = phi ptr [ %.pn81, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %private_data29 = getelementptr i8, ptr %.pn83, i32 -8, !dbg !1213
  %8 = ptrtoint ptr %private_data29 to i32, !dbg !1213
  call void @__asan_load4_noabort(i32 %8), !dbg !1213
  %9 = load ptr, ptr %private_data29, align 4, !dbg !1213
  %tobool30.not = icmp eq ptr %9, null, !dbg !1214
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %land.lhs.true, !dbg !1215

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1215
  br label %for.inc, !dbg !1215

land.lhs.true:                                    ; preds = %for.body
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 3), align 8, !dbg !1216
  %10 = add i64 %gcov_ctr57, 1, !dbg !1216
  store i64 %10, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 3), align 8, !dbg !1216
  %cmd_ops = getelementptr i8, ptr %.pn83, i32 -20, !dbg !1217
  %11 = ptrtoint ptr %cmd_ops to i32, !dbg !1217
  call void @__asan_load4_noabort(i32 %11), !dbg !1217
  %12 = load ptr, ptr %cmd_ops, align 4, !dbg !1217
  %trigger_type = getelementptr inbounds %struct.event_command, ptr %12, i32 0, i32 2, !dbg !1218
  %13 = ptrtoint ptr %trigger_type to i32, !dbg !1218
  call void @__asan_load4_noabort(i32 %13), !dbg !1218
  %14 = load i32, ptr %trigger_type, align 4, !dbg !1218
  %15 = ptrtoint ptr %cmd_ops31 to i32, !dbg !1219
  call void @__asan_load4_noabort(i32 %15), !dbg !1219
  %16 = load ptr, ptr %cmd_ops31, align 4, !dbg !1219
  %trigger_type32 = getelementptr inbounds %struct.event_command, ptr %16, i32 0, i32 2, !dbg !1220
  %17 = ptrtoint ptr %trigger_type32 to i32, !dbg !1220
  call void @__asan_load4_noabort(i32 %17), !dbg !1220
  %18 = load i32, ptr %trigger_type32, align 4, !dbg !1220
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18), !dbg !1221
  %cmp33 = icmp eq i32 %14, %18, !dbg !1221
  br i1 %cmp33, label %land.lhs.true34, label %land.lhs.true.for.inc_crit_edge, !dbg !1222

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1222
  br label %for.inc, !dbg !1222

land.lhs.true34:                                  ; preds = %land.lhs.true
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 4), align 16, !dbg !1223
  %19 = add i64 %gcov_ctr58, 1, !dbg !1223
  store i64 %19, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 4), align 16, !dbg !1223
  %20 = ptrtoint ptr %9 to i32, !dbg !1224
  call void @__asan_load4_noabort(i32 %20), !dbg !1224
  %21 = load ptr, ptr %9, align 4, !dbg !1224
  %22 = ptrtoint ptr %1 to i32, !dbg !1225
  call void @__asan_load4_noabort(i32 %22), !dbg !1225
  %23 = load ptr, ptr %1, align 4, !dbg !1225
  %cmp37 = icmp eq ptr %21, %23, !dbg !1226
  br i1 %cmp37, label %if.then38, label %land.lhs.true34.for.inc_crit_edge, !dbg !1214

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1214
  br label %for.inc, !dbg !1214

if.then38:                                        ; preds = %land.lhs.true34
  %data.0.le = getelementptr i8, ptr %.pn83, i32 -36, !dbg !1212
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 5), align 8, !dbg !1227
  %24 = add i64 %gcov_ctr59, 1, !dbg !1227
  store i64 %24, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 5), align 8, !dbg !1227
  %gcov_ctr.i77 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %25 = add i64 %gcov_ctr.i77, 1
  store i64 %25, ptr @__llvm_gcov_ctr.43, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn83) #17, !dbg !1228
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1231

if.then.i.i:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1232
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.99, align 8, !dbg !1232
  %26 = add i64 %gcov_ctr.i.i, 1, !dbg !1232
  store i64 %26, ptr @__llvm_gcov_ctr.99, align 8, !dbg !1232
  br label %list_del_rcu.exit, !dbg !1232

if.end.i.i:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1233
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !1233
  %27 = add i64 %gcov_ctr2.i.i, 1, !dbg !1233
  store i64 %27, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !1233
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn83, i32 0, i32 1, !dbg !1234
  %28 = ptrtoint ptr %prev.i.i to i32, !dbg !1234
  call void @__asan_load4_noabort(i32 %28), !dbg !1234
  %29 = load ptr, ptr %prev.i.i, align 4, !dbg !1234
  %30 = ptrtoint ptr %.pn83 to i32, !dbg !1235
  call void @__asan_load4_noabort(i32 %30), !dbg !1235
  %31 = load ptr, ptr %.pn83, align 4, !dbg !1235
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1, !dbg !1236
  %32 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !1238
  call void @__asan_store4_noabort(i32 %32), !dbg !1238
  store ptr %29, ptr %prev1.i.i.i, align 4, !dbg !1238
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1239
  %33 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1239
  store i64 %33, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1239
  %34 = ptrtoint ptr %29 to i32, !dbg !1239
  call void @__asan_store4_noabort(i32 %34), !dbg !1239
  store volatile ptr %31, ptr %29, align 4, !dbg !1239
  br label %list_del_rcu.exit, !dbg !1240

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.i.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn83, i32 0, i32 1, !dbg !1241
  %35 = ptrtoint ptr %prev.i to i32, !dbg !1242
  call void @__asan_store4_noabort(i32 %35), !dbg !1242
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4, !dbg !1242
  %call40 = tail call i32 @trace_event_trigger_enable_disable(ptr noundef %file, i32 noundef 0), !dbg !1243
  tail call void @update_cond_flag(ptr noundef %file), !dbg !1244
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 7), align 8, !dbg !1245
  %36 = add i64 %gcov_ctr61, 1, !dbg !1245
  store i64 %36, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 7), align 8, !dbg !1245
  %ops = getelementptr i8, ptr %.pn83, i32 -24, !dbg !1246
  %37 = ptrtoint ptr %ops to i32, !dbg !1246
  call void @__asan_load4_noabort(i32 %37), !dbg !1246
  %38 = load ptr, ptr %ops, align 4, !dbg !1246
  %free = getelementptr inbounds %struct.event_trigger_ops, ptr %38, i32 0, i32 2, !dbg !1247
  %39 = ptrtoint ptr %free to i32, !dbg !1247
  call void @__asan_load4_noabort(i32 %39), !dbg !1247
  %40 = load ptr, ptr %free, align 4, !dbg !1247
  %tobool49.not = icmp eq ptr %40, null, !dbg !1245
  br i1 %tobool49.not, label %list_del_rcu.exit.if.end54_crit_edge, label %if.then50, !dbg !1248

list_del_rcu.exit.if.end54_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1248
  br label %if.end54, !dbg !1248

for.inc:                                          ; preds = %land.lhs.true34.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 6), align 16, !dbg !1212
  %41 = add i64 %gcov_ctr60, 1, !dbg !1212
  store i64 %41, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 6), align 16, !dbg !1212
  %42 = ptrtoint ptr %.pn83 to i32, !dbg !1212
  call void @__asan_load4_noabort(i32 %42), !dbg !1212
  %.pn = load ptr, ptr %.pn83, align 4, !dbg !1212
  %cmp26.not = icmp eq ptr %.pn, %triggers, !dbg !1212
  br i1 %cmp26.not, label %for.inc.if.end54_crit_edge, label %for.inc.for.body_crit_edge, !dbg !1212, !llvm.loop !1249

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1212
  br label %for.body, !dbg !1212

for.inc.if.end54_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1212
  br label %if.end54, !dbg !1212

if.then50:                                        ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1251
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 8), align 16, !dbg !1251
  %43 = add i64 %gcov_ctr62, 1, !dbg !1251
  store i64 %43, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.79, i32 0, i32 8), align 16, !dbg !1251
  %44 = ptrtoint ptr %ops to i32, !dbg !1252
  call void @__asan_load4_noabort(i32 %44), !dbg !1252
  %45 = load ptr, ptr %ops, align 4, !dbg !1252
  %free52 = getelementptr inbounds %struct.event_trigger_ops, ptr %45, i32 0, i32 2, !dbg !1253
  %46 = ptrtoint ptr %free52 to i32, !dbg !1253
  call void @__asan_load4_noabort(i32 %46), !dbg !1253
  %47 = load ptr, ptr %free52, align 4, !dbg !1253
  tail call void %47(ptr noundef %45, ptr noundef %data.0.le) #17, !dbg !1251
  br label %if.end54, !dbg !1251

if.end54:                                         ; preds = %if.then50, %for.inc.if.end54_crit_edge, %list_del_rcu.exit.if.end54_crit_edge, %if.end.if.end54_crit_edge
  ret void, !dbg !1254
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_trigger_cmds() local_unnamed_addr #4 section ".init.text" align 64 !dbg !1255 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1256
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.80, align 8, !dbg !1257
  %0 = add i64 %gcov_ctr, 1, !dbg !1257
  store i64 %0, ptr @__llvm_gcov_ctr.80, align 8, !dbg !1257
  tail call fastcc void @register_trigger_traceon_traceoff_cmds() #21, !dbg !1257
  tail call fastcc void @register_trigger_snapshot_cmd() #21, !dbg !1258
  tail call fastcc void @register_trigger_stacktrace_cmd() #21, !dbg !1259
  tail call fastcc void @register_trigger_enable_disable_cmds() #21, !dbg !1260
  %call4 = tail call i32 @register_trigger_hist_enable_disable_cmds() #17, !dbg !1261
  %call5 = tail call i32 @register_trigger_hist_cmd() #17, !dbg !1262
  ret i32 0, !dbg !1263
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @register_trigger_traceon_traceoff_cmds() unnamed_addr #4 section ".init.text" align 64 !dbg !1264 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1265
  %call = tail call i32 @register_event_command(ptr noundef nonnull @trigger_traceon_cmd) #21, !dbg !1266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1267
  %cmp = icmp slt i32 %call, 0, !dbg !1267
  br i1 %cmp, label %do.end, label %if.end21, !dbg !1267, !prof !281

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1267
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2070, i32 noundef 9, ptr noundef null) #17, !dbg !1267
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.81, align 16, !dbg !1267
  %0 = add i64 %gcov_ctr, 1, !dbg !1267
  store i64 %0, ptr @__llvm_gcov_ctr.81, align 16, !dbg !1267
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 2), align 16, !dbg !1268
  %1 = add i64 %gcov_ctr58, 1, !dbg !1268
  store i64 %1, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 2), align 16, !dbg !1268
  br label %cleanup, !dbg !1269

if.end21:                                         ; preds = %entry
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 1), align 8, !dbg !1270
  %2 = add i64 %gcov_ctr57, 1, !dbg !1270
  store i64 %2, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 1), align 8, !dbg !1270
  %call22 = tail call i32 @register_event_command(ptr noundef nonnull @trigger_traceoff_cmd) #21, !dbg !1270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22), !dbg !1271
  %cmp24 = icmp slt i32 %call22, 0, !dbg !1271
  br i1 %cmp24, label %do.end40, label %if.end21.cleanup_crit_edge, !dbg !1271, !prof !281

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1271
  br label %cleanup, !dbg !1271

do.end40:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1271
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2073, i32 noundef 9, ptr noundef null) #17, !dbg !1271
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 3), align 8, !dbg !1271
  %3 = add i64 %gcov_ctr59, 1, !dbg !1271
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 3), align 8, !dbg !1271
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 4), align 16, !dbg !1272
  %4 = add i64 %gcov_ctr60, 1, !dbg !1272
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.81, i32 0, i32 4), align 16, !dbg !1272
  tail call fastcc void @unregister_trigger_traceon_traceoff_cmds() #21, !dbg !1272
  br label %cleanup, !dbg !1272

cleanup:                                          ; preds = %do.end40, %if.end21.cleanup_crit_edge, %do.end
  ret void, !dbg !1273
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @register_trigger_snapshot_cmd() unnamed_addr #4 section ".init.text" align 64 !dbg !1274 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1275
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.82, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.82, align 8
  %call = tail call i32 @register_event_command(ptr noundef nonnull @trigger_snapshot_cmd) #21, !dbg !1276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1277
  %cmp = icmp slt i32 %call, 0, !dbg !1277
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !1277, !prof !281

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1277
  br label %if.end, !dbg !1277

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1277
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !1277
  %1 = add i64 %gcov_ctr19, 1, !dbg !1277
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !1277
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1566, i32 noundef 9, ptr noundef null) #17, !dbg !1277
  br label %if.end, !dbg !1277

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void, !dbg !1278
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @register_trigger_stacktrace_cmd() unnamed_addr #4 section ".init.text" align 64 !dbg !1279 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1280
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.83, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.83, align 8
  %call = tail call i32 @register_event_command(ptr noundef nonnull @trigger_stacktrace_cmd) #21, !dbg !1281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1282
  %cmp = icmp slt i32 %call, 0, !dbg !1282
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !1282, !prof !281

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1282
  br label %if.end, !dbg !1282

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1282
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 1), align 8, !dbg !1282
  %1 = add i64 %gcov_ctr19, 1, !dbg !1282
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.83, i32 0, i32 1), align 8, !dbg !1282
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1663, i32 noundef 9, ptr noundef null) #17, !dbg !1282
  br label %if.end, !dbg !1282

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void, !dbg !1283
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @register_trigger_enable_disable_cmds() unnamed_addr #4 section ".init.text" align 64 !dbg !1284 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1285
  %call = tail call i32 @register_event_command(ptr noundef nonnull @trigger_enable_cmd) #21, !dbg !1286
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1287
  %cmp = icmp slt i32 %call, 0, !dbg !1287
  br i1 %cmp, label %do.end, label %if.end21, !dbg !1287, !prof !281

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1287
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2056, i32 noundef 9, ptr noundef null) #17, !dbg !1287
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.84, align 16, !dbg !1287
  %0 = add i64 %gcov_ctr, 1, !dbg !1287
  store i64 %0, ptr @__llvm_gcov_ctr.84, align 16, !dbg !1287
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 2), align 16, !dbg !1288
  %1 = add i64 %gcov_ctr58, 1, !dbg !1288
  store i64 %1, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 2), align 16, !dbg !1288
  br label %cleanup, !dbg !1289

if.end21:                                         ; preds = %entry
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 1), align 8, !dbg !1290
  %2 = add i64 %gcov_ctr57, 1, !dbg !1290
  store i64 %2, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 1), align 8, !dbg !1290
  %call22 = tail call i32 @register_event_command(ptr noundef nonnull @trigger_disable_cmd) #21, !dbg !1290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22), !dbg !1291
  %cmp24 = icmp slt i32 %call22, 0, !dbg !1291
  br i1 %cmp24, label %do.end40, label %if.end21.cleanup_crit_edge, !dbg !1291, !prof !281

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1291
  br label %cleanup, !dbg !1291

do.end40:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1291
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2059, i32 noundef 9, ptr noundef null) #17, !dbg !1291
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 3), align 8, !dbg !1291
  %3 = add i64 %gcov_ctr59, 1, !dbg !1291
  store i64 %3, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 3), align 8, !dbg !1291
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 4), align 16, !dbg !1292
  %4 = add i64 %gcov_ctr60, 1, !dbg !1292
  store i64 %4, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 4), align 16, !dbg !1292
  tail call fastcc void @unregister_trigger_enable_disable_cmds() #21, !dbg !1292
  br label %cleanup, !dbg !1292

cleanup:                                          ; preds = %do.end40, %if.end21.cleanup_crit_edge, %do.end
  ret void, !dbg !1293
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_trigger_hist_enable_disable_cmds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_trigger_hist_cmd() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @trigger_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 !dbg !1294 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1295
  tail call void @mutex_lock_nested(ptr noundef nonnull @event_mutex, i32 noundef 0) #17, !dbg !1296
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11, !dbg !1297
  %0 = ptrtoint ptr %private to i32, !dbg !1297
  call void @__asan_load4_noabort(i32 %0), !dbg !1297
  %1 = load ptr, ptr %private, align 8, !dbg !1297
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.88, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.89, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2, !dbg !1298
  %4 = ptrtoint ptr %f_inode.i.i to i32, !dbg !1298
  call void @__asan_load4_noabort(i32 %4), !dbg !1298
  %5 = load ptr, ptr %f_inode.i.i, align 8, !dbg !1298
  %i_private.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54, !dbg !1301
  %6 = ptrtoint ptr %i_private.i to i32, !dbg !1301
  call void @__asan_load4_noabort(i32 %6), !dbg !1301
  %7 = load volatile ptr, ptr %i_private.i, align 4, !dbg !1301
  %tobool.not = icmp eq ptr %7, null, !dbg !1302
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1302, !prof !281

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1303
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.91, align 16, !dbg !1303
  %8 = add i64 %gcov_ctr, 1, !dbg !1303
  store i64 %8, ptr @__llvm_gcov_ctr.91, align 16, !dbg !1303
  %gcov_ctr.i19 = load i64, ptr @__llvm_gcov_ctr.95, align 8
  %9 = add i64 %gcov_ctr.i19, 1
  store i64 %9, ptr @__llvm_gcov_ctr.95, align 8
  br label %cleanup, !dbg !1304

if.end:                                           ; preds = %entry
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %7, i32 0, i32 6, !dbg !1305
  %gcov_ctr.i20 = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %10 = add i64 %gcov_ctr.i20, 1
  store i64 %10, ptr @__llvm_gcov_ctr.26, align 8
  %11 = ptrtoint ptr %triggers to i32, !dbg !1306
  call void @__asan_load4_noabort(i32 %11), !dbg !1306
  %12 = load volatile ptr, ptr %triggers, align 4, !dbg !1306
  %cmp.i.not = icmp eq ptr %12, %triggers, !dbg !1308
  br i1 %cmp.i.not, label %if.end.if.then8_crit_edge, label %lor.lhs.false, !dbg !1309

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1309
  br label %if.then8, !dbg !1309

lor.lhs.false:                                    ; preds = %if.end
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 1), align 8, !dbg !1310
  %13 = add i64 %gcov_ctr12, 1, !dbg !1310
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 1), align 8, !dbg !1310
  %call.i = tail call i32 @rcu_read_lock_any_held() #17, !dbg !1311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1311
  %tobool.not.i = icmp eq i32 %call.i, 0, !dbg !1311
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.do.end.i_crit_edge, !dbg !1311

lor.lhs.false.do.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1311
  br label %do.end.i, !dbg !1311

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.96, align 16, !dbg !1311
  %14 = add i64 %gcov_ctr.i21, 1, !dbg !1311
  store i64 %14, ptr @__llvm_gcov_ctr.96, align 16, !dbg !1311
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17, !dbg !1311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i), !dbg !1311
  %tobool2.not.i = icmp eq i32 %call1.i, 0, !dbg !1311
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i, !dbg !1311

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1311
  br label %do.end.i, !dbg !1311

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %gcov_ctr22.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 1), align 8, !dbg !1311
  %15 = add i64 %gcov_ctr22.i, 1, !dbg !1311
  store i64 %15, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 1), align 8, !dbg !1311
  %.b30.i = load i1, ptr @check_user_trigger.__warned, align 1, !dbg !1311
  br i1 %.b30.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i, !dbg !1311

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1311
  br label %do.end.i, !dbg !1311

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1311
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 2), align 16, !dbg !1311
  %16 = add i64 %gcov_ctr23.i, 1, !dbg !1311
  store i64 %16, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 2), align 16, !dbg !1311
  store i1 true, ptr @check_user_trigger.__warned, align 1, !dbg !1311
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 145, ptr noundef nonnull @.str.1) #17, !dbg !1311
  br label %do.end.i, !dbg !1311

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lor.lhs.false.do.end.i_crit_edge
  %17 = ptrtoint ptr %triggers to i32, !dbg !1311
  call void @__asan_load4_noabort(i32 %17), !dbg !1311
  %.pn33.i = load volatile ptr, ptr %triggers, align 4, !dbg !1311
  %cmp.not34.i = icmp eq ptr %.pn33.i, %triggers, !dbg !1311
  br i1 %cmp.not34.i, label %do.end.i.check_user_trigger.exit_crit_edge, label %do.end.i.for.body.i_crit_edge, !dbg !1311

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i, !dbg !1311

do.end.i.check_user_trigger.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1311
  br label %check_user_trigger.exit, !dbg !1311

for.body.i:                                       ; preds = %if.then11.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn35.i = phi ptr [ %.pn.i, %if.then11.i.for.body.i_crit_edge ], [ %.pn33.i, %do.end.i.for.body.i_crit_edge ]
  %flags.i = getelementptr i8, ptr %.pn35.i, i32 -28, !dbg !1314
  %18 = ptrtoint ptr %flags.i to i32, !dbg !1314
  call void @__asan_load4_noabort(i32 %18), !dbg !1314
  %19 = load i32, ptr %flags.i, align 4, !dbg !1314
  %and.i = and i32 %19, 1, !dbg !1315
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i), !dbg !1315
  %tobool10.not.i = icmp eq i32 %and.i, 0, !dbg !1315
  br i1 %tobool10.not.i, label %if.end9, label %if.then11.i, !dbg !1316

if.then11.i:                                      ; preds = %for.body.i
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 3), align 8, !dbg !1317
  %20 = add i64 %gcov_ctr24.i, 1, !dbg !1317
  store i64 %20, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 3), align 8, !dbg !1317
  %21 = ptrtoint ptr %.pn35.i to i32, !dbg !1311
  call void @__asan_load4_noabort(i32 %21), !dbg !1311
  %.pn.i = load volatile ptr, ptr %.pn35.i, align 4, !dbg !1311
  %cmp.not.i = icmp eq ptr %.pn.i, %triggers, !dbg !1311
  br i1 %cmp.not.i, label %if.then11.i.check_user_trigger.exit_crit_edge, label %if.then11.i.for.body.i_crit_edge, !dbg !1311, !llvm.loop !1318

if.then11.i.for.body.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1311
  br label %for.body.i, !dbg !1311

if.then11.i.check_user_trigger.exit_crit_edge:    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1311
  br label %check_user_trigger.exit, !dbg !1311

check_user_trigger.exit:                          ; preds = %if.then11.i.check_user_trigger.exit_crit_edge, %do.end.i.check_user_trigger.exit_crit_edge
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 5), align 8, !dbg !1320
  %22 = add i64 %gcov_ctr26.i, 1, !dbg !1320
  store i64 %22, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 5), align 8, !dbg !1320
  br label %if.then8, !dbg !1321

if.then8:                                         ; preds = %check_user_trigger.exit, %if.end.if.then8_crit_edge
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 2), align 16, !dbg !1322
  %23 = add i64 %gcov_ctr13, 1, !dbg !1322
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 2), align 16, !dbg !1322
  %24 = ptrtoint ptr %pos to i32, !dbg !1323
  call void @__asan_load8_noabort(i32 %24), !dbg !1323
  %25 = load i64, ptr %pos, align 8, !dbg !1323
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25), !dbg !1324
  %cmp = icmp eq i64 %25, 0, !dbg !1324
  %cond = select i1 %cmp, ptr inttoptr (i32 1 to ptr), ptr null, !dbg !1323
  br label %cleanup, !dbg !1325

if.end9:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1326
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 4), align 16, !dbg !1326
  %26 = add i64 %gcov_ctr25.i, 1, !dbg !1326
  store i64 %26, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.96, i32 0, i32 4), align 16, !dbg !1326
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 3), align 8, !dbg !1327
  %27 = add i64 %gcov_ctr14, 1, !dbg !1327
  store i64 %27, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.91, i32 0, i32 3), align 8, !dbg !1327
  %28 = ptrtoint ptr %pos to i32, !dbg !1328
  call void @__asan_load8_noabort(i32 %28), !dbg !1328
  %29 = load i64, ptr %pos, align 8, !dbg !1328
  %call11 = tail call ptr @seq_list_start(ptr noundef %triggers, i64 noundef %29) #17, !dbg !1329
  br label %cleanup, !dbg !1330

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %if.then ], [ %cond, %if.then8 ], [ %call11, %if.end9 ], !dbg !1331
  ret ptr %retval.0, !dbg !1332
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trigger_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %t) #0 align 64 !dbg !1333 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1334
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.92, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.92, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #17, !dbg !1335
  ret void, !dbg !1336
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @trigger_next(ptr nocapture noundef readonly %m, ptr noundef %t, ptr noundef %pos) #0 align 64 !dbg !1337 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1338
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11, !dbg !1339
  %0 = ptrtoint ptr %private to i32, !dbg !1339
  call void @__asan_load4_noabort(i32 %0), !dbg !1339
  %1 = load ptr, ptr %private, align 8, !dbg !1339
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.88, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.88, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.89, align 8
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.89, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2, !dbg !1340
  %4 = ptrtoint ptr %f_inode.i.i to i32, !dbg !1340
  call void @__asan_load4_noabort(i32 %4), !dbg !1340
  %5 = load ptr, ptr %f_inode.i.i, align 8, !dbg !1340
  %i_private.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54, !dbg !1343
  %6 = ptrtoint ptr %i_private.i to i32, !dbg !1343
  call void @__asan_load4_noabort(i32 %6), !dbg !1343
  %7 = load volatile ptr, ptr %i_private.i, align 4, !dbg !1343
  %cmp = icmp eq ptr %t, inttoptr (i32 1 to ptr), !dbg !1344
  br i1 %cmp, label %if.then, label %if.end, !dbg !1345

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1346
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.93, align 8, !dbg !1346
  %8 = add i64 %gcov_ctr, 1, !dbg !1346
  store i64 %8, ptr @__llvm_gcov_ctr.93, align 8, !dbg !1346
  %9 = ptrtoint ptr %pos to i32, !dbg !1347
  call void @__asan_load8_noabort(i32 %9), !dbg !1347
  %10 = load i64, ptr %pos, align 8, !dbg !1347
  %inc = add i64 %10, 1, !dbg !1347
  store i64 %inc, ptr %pos, align 8, !dbg !1347
  br label %cleanup, !dbg !1348

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1349
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !1349
  %11 = add i64 %gcov_ctr2, 1, !dbg !1349
  store i64 %11, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.93, i32 0, i32 1), align 8, !dbg !1349
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %7, i32 0, i32 6, !dbg !1350
  %call1 = tail call ptr @seq_list_next(ptr noundef %t, ptr noundef %triggers, ptr noundef %pos) #17, !dbg !1351
  br label %cleanup, !dbg !1352

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call1, %if.end ], !dbg !1353
  ret ptr %retval.0, !dbg !1354
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_show(ptr noundef %m, ptr noundef %v) #0 align 64 !dbg !1355 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1356
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr), !dbg !1357
  br i1 %cmp, label %if.then, label %if.end, !dbg !1358

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.94, align 16, !dbg !1359
  %0 = add i64 %gcov_ctr, 1, !dbg !1359
  store i64 %0, ptr @__llvm_gcov_ctr.94, align 16, !dbg !1359
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.18) #17, !dbg !1360
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 35) #17, !dbg !1361
  tail call void @mutex_lock_nested(ptr noundef nonnull @trigger_cmd_mutex, i32 noundef 0) #17, !dbg !1362
  %p.022 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @trigger_commands, i32 0, i32 1), align 4, !dbg !1363
  %cmp1.not23 = icmp eq ptr %p.022, @trigger_commands, !dbg !1363
  br i1 %cmp1.not23, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge, !dbg !1363

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body, !dbg !1363

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1363
  br label %for.end, !dbg !1363

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %p.024 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.022, %if.then.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.event_command, ptr %p.024, i32 0, i32 1, !dbg !1364
  %1 = ptrtoint ptr %name to i32, !dbg !1364
  call void @__asan_load4_noabort(i32 %1), !dbg !1364
  %2 = load ptr, ptr %name, align 4, !dbg !1364
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef %2) #17, !dbg !1365
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 2), align 16, !dbg !1363
  %3 = add i64 %gcov_ctr12, 1, !dbg !1363
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 2), align 16, !dbg !1363
  %prev = getelementptr inbounds %struct.list_head, ptr %p.024, i32 0, i32 1, !dbg !1363
  %4 = ptrtoint ptr %prev to i32, !dbg !1363
  call void @__asan_load4_noabort(i32 %4), !dbg !1363
  %p.0 = load ptr, ptr %prev, align 4, !dbg !1363
  %cmp1.not = icmp eq ptr %p.0, @trigger_commands, !dbg !1363
  br i1 %cmp1.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge, !dbg !1363, !llvm.loop !1366

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1363
  br label %for.body, !dbg !1363

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1363
  br label %for.end, !dbg !1363

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #17, !dbg !1368
  tail call void @mutex_unlock(ptr noundef nonnull @trigger_cmd_mutex) #17, !dbg !1369
  br label %cleanup, !dbg !1370

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1371
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 1), align 8, !dbg !1371
  %5 = add i64 %gcov_ctr11, 1, !dbg !1371
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.94, i32 0, i32 1), align 8, !dbg !1371
  %add.ptr8 = getelementptr i8, ptr %v, i32 -36, !dbg !1371
  %ops = getelementptr i8, ptr %v, i32 -24, !dbg !1372
  %6 = ptrtoint ptr %ops to i32, !dbg !1372
  call void @__asan_load4_noabort(i32 %6), !dbg !1372
  %7 = load ptr, ptr %ops, align 4, !dbg !1372
  %print = getelementptr inbounds %struct.event_trigger_ops, ptr %7, i32 0, i32 3, !dbg !1373
  %8 = ptrtoint ptr %print to i32, !dbg !1373
  call void @__asan_load4_noabort(i32 %8), !dbg !1373
  %9 = load ptr, ptr %print, align 4, !dbg !1373
  %call = tail call i32 %9(ptr noundef %m, ptr noundef %7, ptr noundef %add.ptr8) #17, !dbg !1374
  br label %cleanup, !dbg !1375

cleanup:                                          ; preds = %if.end, %for.end
  ret i32 0, !dbg !1376
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_dyn_put_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unregister_trigger_traceon_traceoff_cmds() unnamed_addr #4 section ".init.text" align 64 !dbg !1377 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1378
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.117, align 8, !dbg !1379
  %0 = add i64 %gcov_ctr, 1, !dbg !1379
  store i64 %0, ptr @__llvm_gcov_ctr.117, align 8, !dbg !1379
  %call = tail call i32 @unregister_event_command(ptr noundef nonnull @trigger_traceon_cmd) #21, !dbg !1379
  %call1 = tail call i32 @unregister_event_command(ptr noundef nonnull @trigger_traceoff_cmd) #21, !dbg !1380
  ret void, !dbg !1381
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_trigger_parse(ptr noundef %cmd_ops, ptr noundef %file, ptr noundef %glob, ptr noundef %cmd, ptr noundef %param) #0 align 64 !dbg !1382 {
entry:
  %param.addr = alloca ptr, align 4
  %trigger = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1383
  %0 = ptrtoint ptr %param.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %param, ptr %param.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trigger) #17, !dbg !1384
  %1 = ptrtoint ptr %trigger to i32, !dbg !1385
  call void @__asan_store4_noabort(i32 %1), !dbg !1385
  store ptr null, ptr %trigger, align 4, !dbg !1385
  %tobool.not = icmp eq ptr %param, null, !dbg !1386
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true, !dbg !1387

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1387
  br label %if.end9, !dbg !1387

land.lhs.true:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.118, align 16, !dbg !1388
  %2 = add i64 %gcov_ctr, 1, !dbg !1388
  store i64 %2, ptr @__llvm_gcov_ctr.118, align 16, !dbg !1388
  %3 = ptrtoint ptr %param to i32, !dbg !1388
  call void @__asan_load1_noabort(i32 %3), !dbg !1388
  %4 = load i8, ptr %param, align 1, !dbg !1388
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %5 = add i64 %gcov_ctr.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.50, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %4), !dbg !1389
  %cmp.i = icmp ugt i8 %4, 47, !dbg !1389
  br i1 %cmp.i, label %isdigit.exit, label %land.lhs.true.if.end9_crit_edge, !dbg !1391

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1391
  br label %if.end9, !dbg !1391

isdigit.exit:                                     ; preds = %land.lhs.true
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !1392
  %6 = add i64 %gcov_ctr2.i, 1, !dbg !1392
  store i64 %6, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !1392
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %4), !dbg !1393
  %cmp1.i = icmp ugt i8 %4, 57, !dbg !1393
  br i1 %cmp1.i, label %isdigit.exit.if.end9_crit_edge, label %if.then, !dbg !1386

isdigit.exit.if.end9_crit_edge:                   ; preds = %isdigit.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1386
  br label %if.end9, !dbg !1386

if.then:                                          ; preds = %isdigit.exit
  %call2 = call ptr @strsep(ptr noundef nonnull %param.addr, ptr noundef nonnull @.str.5) #17, !dbg !1394
  %7 = ptrtoint ptr %trigger to i32, !dbg !1395
  call void @__asan_store4_noabort(i32 %7), !dbg !1395
  store ptr %call2, ptr %trigger, align 4, !dbg !1395
  %8 = ptrtoint ptr %param.addr to i32, !dbg !1396
  call void @__asan_load4_noabort(i32 %8), !dbg !1396
  %9 = load ptr, ptr %param.addr, align 4, !dbg !1396
  %tobool3.not = icmp eq ptr %9, null, !dbg !1396
  br i1 %tobool3.not, label %if.then.if.end8_crit_edge, label %if.then4, !dbg !1396

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1396
  br label %if.end8, !dbg !1396

if.then4:                                         ; preds = %if.then
  %call5 = call ptr @skip_spaces(ptr noundef nonnull %9) #17, !dbg !1397
  %10 = ptrtoint ptr %param.addr to i32, !dbg !1398
  call void @__asan_store4_noabort(i32 %10), !dbg !1398
  store ptr %call5, ptr %param.addr, align 4, !dbg !1398
  %11 = ptrtoint ptr %call5 to i32, !dbg !1399
  call void @__asan_load1_noabort(i32 %11), !dbg !1399
  %12 = load i8, ptr %call5, align 1, !dbg !1399
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12), !dbg !1399
  %tobool6.not = icmp eq i8 %12, 0, !dbg !1399
  br i1 %tobool6.not, label %if.then7, label %if.then4.if.end_crit_edge, !dbg !1400

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1400
  br label %if.end, !dbg !1400

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1401
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 1), align 8, !dbg !1401
  %13 = add i64 %gcov_ctr62, 1, !dbg !1401
  store i64 %13, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 1), align 8, !dbg !1401
  %14 = ptrtoint ptr %param.addr to i32, !dbg !1401
  call void @__asan_store4_noabort(i32 %14), !dbg !1401
  store ptr null, ptr %param.addr, align 4, !dbg !1401
  br label %if.end, !dbg !1402

if.end:                                           ; preds = %if.then7, %if.then4.if.end_crit_edge
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 2), align 16, !dbg !1403
  %15 = add i64 %gcov_ctr63, 1, !dbg !1403
  store i64 %15, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 2), align 16, !dbg !1403
  br label %if.end8, !dbg !1403

if.end8:                                          ; preds = %if.end, %if.then.if.end8_crit_edge
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 3), align 8, !dbg !1404
  %16 = add i64 %gcov_ctr64, 1, !dbg !1404
  store i64 %16, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 3), align 8, !dbg !1404
  br label %if.end9, !dbg !1404

if.end9:                                          ; preds = %if.end8, %isdigit.exit.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %get_trigger_ops = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 9, !dbg !1405
  %17 = ptrtoint ptr %get_trigger_ops to i32, !dbg !1405
  call void @__asan_load4_noabort(i32 %17), !dbg !1405
  %18 = load ptr, ptr %get_trigger_ops, align 4, !dbg !1405
  %19 = ptrtoint ptr %trigger to i32, !dbg !1406
  call void @__asan_load4_noabort(i32 %19), !dbg !1406
  %20 = load ptr, ptr %trigger, align 4, !dbg !1406
  %call10 = call ptr %18(ptr noundef %cmd, ptr noundef %20) #17, !dbg !1407
  %gcov_ctr.i117 = load i64, ptr @__llvm_gcov_ctr.52, align 8
  %21 = add i64 %gcov_ctr.i117, 1
  store i64 %21, ptr @__llvm_gcov_ctr.52, align 8
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !1408
  %22 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !1408
  store i64 %22, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !1408
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !1412
  %23 = add i64 %gcov_ctr11.i.i, 1, !dbg !1412
  store i64 %23, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.109, i32 0, i32 2), align 16, !dbg !1412
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.112, align 16, !dbg !1413
  %24 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1413
  store i64 %24, ptr @__llvm_gcov_ctr.112, align 16, !dbg !1413
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !1415
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !1415
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 60) #19, !dbg !1416
  %tobool12.not = icmp eq ptr %call7.i.i, null, !dbg !1417
  br i1 %tobool12.not, label %if.then13, label %if.end14, !dbg !1418

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1419
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 4), align 16, !dbg !1419
  %26 = add i64 %gcov_ctr65, 1, !dbg !1419
  store i64 %26, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 4), align 16, !dbg !1419
  br label %out, !dbg !1419

if.end14:                                         ; preds = %if.end9
  %27 = ptrtoint ptr %call7.i.i to i32, !dbg !1420
  call void @__asan_store4_noabort(i32 %27), !dbg !1420
  store i32 -1, ptr %call7.i.i, align 8, !dbg !1420
  %ops = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 3, !dbg !1421
  %28 = ptrtoint ptr %ops to i32, !dbg !1422
  call void @__asan_store4_noabort(i32 %28), !dbg !1422
  store ptr %call10, ptr %ops, align 4, !dbg !1422
  %cmd_ops15 = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 4, !dbg !1423
  %29 = ptrtoint ptr %cmd_ops15 to i32, !dbg !1424
  call void @__asan_store4_noabort(i32 %29), !dbg !1424
  store ptr %cmd_ops, ptr %cmd_ops15, align 8, !dbg !1424
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 7, !dbg !1425
  %30 = ptrtoint ptr %private_data to i32, !dbg !1426
  call void @__asan_store4_noabort(i32 %30), !dbg !1426
  store ptr %file, ptr %private_data, align 4, !dbg !1426
  %list = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 10, !dbg !1427
  %gcov_ctr.i118 = load i64, ptr @__llvm_gcov_ctr.53, align 8, !dbg !1428
  %31 = ptrtoint ptr %list to i32, !dbg !1428
  call void @__asan_store4_noabort(i32 %31), !dbg !1428
  store volatile ptr %list, ptr %list, align 4, !dbg !1428
  %prev.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 10, i32 1, !dbg !1430
  %32 = ptrtoint ptr %prev.i to i32, !dbg !1431
  call void @__asan_store4_noabort(i32 %32), !dbg !1431
  store ptr %list, ptr %prev.i, align 8, !dbg !1431
  %named_list = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 12, !dbg !1432
  %33 = add i64 %gcov_ctr.i118, 2, !dbg !1433
  store i64 %33, ptr @__llvm_gcov_ctr.53, align 8, !dbg !1433
  %34 = ptrtoint ptr %named_list to i32, !dbg !1433
  call void @__asan_store4_noabort(i32 %34), !dbg !1433
  store volatile ptr %named_list, ptr %named_list, align 8, !dbg !1433
  %prev.i120 = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 12, i32 1, !dbg !1435
  %35 = ptrtoint ptr %prev.i120 to i32, !dbg !1436
  call void @__asan_store4_noabort(i32 %35), !dbg !1436
  store ptr %named_list, ptr %prev.i120, align 4, !dbg !1436
  %36 = ptrtoint ptr %glob to i32, !dbg !1437
  call void @__asan_load1_noabort(i32 %36), !dbg !1437
  %37 = load i8, ptr %glob, align 1, !dbg !1437
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %37), !dbg !1438
  %cmp = icmp eq i8 %37, 33, !dbg !1438
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !1437

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1439
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 5), align 8, !dbg !1439
  %38 = add i64 %gcov_ctr66, 1, !dbg !1439
  store i64 %38, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 5), align 8, !dbg !1439
  %unreg = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 6, !dbg !1440
  %39 = ptrtoint ptr %unreg to i32, !dbg !1440
  call void @__asan_load4_noabort(i32 %39), !dbg !1440
  %40 = load ptr, ptr %unreg, align 4, !dbg !1440
  %add.ptr = getelementptr i8, ptr %glob, i32 1, !dbg !1441
  call void %40(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, ptr noundef %file) #17, !dbg !1439
  call void @kfree(ptr noundef nonnull %call7.i.i) #17, !dbg !1442
  br label %out, !dbg !1443

if.end20:                                         ; preds = %if.end14
  %41 = ptrtoint ptr %trigger to i32, !dbg !1444
  call void @__asan_load4_noabort(i32 %41), !dbg !1444
  %42 = load ptr, ptr %trigger, align 4, !dbg !1444
  %tobool21.not = icmp eq ptr %42, null, !dbg !1444
  br i1 %tobool21.not, label %if.end20.if.end33_crit_edge, label %if.then22, !dbg !1444

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1444
  br label %if.end33, !dbg !1444

if.then22:                                        ; preds = %if.end20
  %call23 = call ptr @strsep(ptr noundef nonnull %trigger, ptr noundef nonnull @.str.6) #17, !dbg !1445
  %43 = ptrtoint ptr %call23 to i32, !dbg !1446
  call void @__asan_load1_noabort(i32 %43), !dbg !1446
  %char0 = load i8, ptr %call23, align 1, !dbg !1446
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0), !dbg !1446
  %tobool25.not = icmp eq i8 %char0, 0, !dbg !1446
  br i1 %tobool25.not, label %if.then26, label %if.end27, !dbg !1447

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1448
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 6), align 16, !dbg !1448
  %44 = add i64 %gcov_ctr67, 1, !dbg !1448
  store i64 %44, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 6), align 16, !dbg !1448
  br label %out_free, !dbg !1448

if.end27:                                         ; preds = %if.then22
  %gcov_ctr.i121 = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %45 = add i64 %gcov_ctr.i121, 1
  store i64 %45, ptr @__llvm_gcov_ctr.55, align 8
  %call.i = call i32 @_kstrtoul(ptr noundef %call23, i32 noundef 0, ptr noundef nonnull %call7.i.i) #17, !dbg !1449
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1451
  %tobool30.not = icmp eq i32 %call.i, 0, !dbg !1451
  br i1 %tobool30.not, label %if.end32, label %if.then31, !dbg !1451

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1452
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 7), align 8, !dbg !1452
  %46 = add i64 %gcov_ctr68, 1, !dbg !1452
  store i64 %46, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 7), align 8, !dbg !1452
  br label %out_free, !dbg !1452

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1453
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 8), align 16, !dbg !1453
  %47 = add i64 %gcov_ctr69, 1, !dbg !1453
  store i64 %47, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 8), align 16, !dbg !1453
  br label %if.end33, !dbg !1453

if.end33:                                         ; preds = %if.end32, %if.end20.if.end33_crit_edge
  %48 = ptrtoint ptr %param.addr to i32, !dbg !1454
  call void @__asan_load4_noabort(i32 %48), !dbg !1454
  %49 = load ptr, ptr %param.addr, align 4, !dbg !1454
  %tobool34.not = icmp eq ptr %49, null, !dbg !1454
  br i1 %tobool34.not, label %if.then35, label %if.end36, !dbg !1455

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1456
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 9), align 8, !dbg !1456
  %50 = add i64 %gcov_ctr70, 1, !dbg !1456
  store i64 %50, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 9), align 8, !dbg !1456
  br label %out_reg, !dbg !1456

if.end36:                                         ; preds = %if.end33
  %set_filter = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 8, !dbg !1457
  %51 = ptrtoint ptr %set_filter to i32, !dbg !1457
  call void @__asan_load4_noabort(i32 %51), !dbg !1457
  %52 = load ptr, ptr %set_filter, align 4, !dbg !1457
  %tobool37.not = icmp eq ptr %52, null, !dbg !1458
  br i1 %tobool37.not, label %if.then38, label %if.end39, !dbg !1459

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1460
  %gcov_ctr71 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 10), align 16, !dbg !1460
  %53 = add i64 %gcov_ctr71, 1, !dbg !1460
  store i64 %53, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 10), align 16, !dbg !1460
  br label %out_reg, !dbg !1460

if.end39:                                         ; preds = %if.end36
  %call41 = call i32 %52(ptr noundef nonnull %49, ptr noundef nonnull %call7.i.i, ptr noundef %file) #17, !dbg !1461
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41), !dbg !1462
  %cmp42 = icmp slt i32 %call41, 0, !dbg !1462
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1463

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1464
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 11), align 8, !dbg !1464
  %54 = add i64 %gcov_ctr72, 1, !dbg !1464
  store i64 %54, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 11), align 8, !dbg !1464
  br label %out_free, !dbg !1464

if.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1465
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 12), align 16, !dbg !1465
  %55 = add i64 %gcov_ctr73, 1, !dbg !1465
  store i64 %55, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 12), align 16, !dbg !1465
  br label %out_reg, !dbg !1465

out_reg:                                          ; preds = %if.end45, %if.then38, %if.then35
  %gcov_ctr.i122 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %56 = add i64 %gcov_ctr.i122, 1
  store i64 %56, ptr @__llvm_gcov_ctr.38, align 8
  %ref.i = getelementptr inbounds %struct.event_trigger_data, ptr %call7.i.i, i32 0, i32 1, !dbg !1466
  %57 = ptrtoint ptr %ref.i to i32, !dbg !1468
  call void @__asan_load4_noabort(i32 %57), !dbg !1468
  %58 = load i32, ptr %ref.i, align 4, !dbg !1468
  %inc.i = add i32 %58, 1, !dbg !1468
  store i32 %inc.i, ptr %ref.i, align 4, !dbg !1468
  %reg = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 5, !dbg !1469
  %59 = ptrtoint ptr %reg to i32, !dbg !1469
  call void @__asan_load4_noabort(i32 %59), !dbg !1469
  %60 = load ptr, ptr %reg, align 4, !dbg !1469
  %call47 = call i32 %60(ptr noundef %glob, ptr noundef nonnull %call7.i.i, ptr noundef %file) #17, !dbg !1470
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47), !dbg !1471
  %tobool48.not = icmp eq i32 %call47, 0, !dbg !1471
  br i1 %tobool48.not, label %if.then49, label %if.else, !dbg !1472

if.then49:                                        ; preds = %out_reg
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1473
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 13), align 8, !dbg !1473
  %61 = add i64 %gcov_ctr74, 1, !dbg !1473
  store i64 %61, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 13), align 8, !dbg !1473
  %unreg50 = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 6, !dbg !1474
  %62 = ptrtoint ptr %unreg50 to i32, !dbg !1474
  call void @__asan_load4_noabort(i32 %62), !dbg !1474
  %63 = load ptr, ptr %unreg50, align 4, !dbg !1474
  call void %63(ptr noundef %glob, ptr noundef nonnull %call7.i.i, ptr noundef %file) #17, !dbg !1473
  br label %if.end55, !dbg !1475

if.else:                                          ; preds = %out_reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47), !dbg !1476
  %cmp51 = icmp sgt i32 %call47, 0, !dbg !1476
  br i1 %cmp51, label %if.then53, label %if.else.if.end55_crit_edge, !dbg !1477

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1477
  br label %if.end55, !dbg !1477

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1478
  %gcov_ctr75 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 14), align 16, !dbg !1478
  %64 = add i64 %gcov_ctr75, 1, !dbg !1478
  store i64 %64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 14), align 16, !dbg !1478
  br label %if.end55, !dbg !1479

if.end55:                                         ; preds = %if.then53, %if.else.if.end55_crit_edge, %if.then49
  %ret.0 = phi i32 [ 0, %if.then53 ], [ %call47, %if.else.if.end55_crit_edge ], [ -2, %if.then49 ], !dbg !1480
  call void @event_trigger_free(ptr noundef %call10, ptr noundef nonnull %call7.i.i), !dbg !1481
  br label %out, !dbg !1481

out:                                              ; preds = %if.end61, %if.end55, %if.then19, %if.then13
  %ret.1 = phi i32 [ 0, %if.then19 ], [ %ret.2, %if.end61 ], [ %ret.0, %if.end55 ], [ -12, %if.then13 ], !dbg !1480
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trigger) #17, !dbg !1482
  ret i32 %ret.1, !dbg !1483

out_free:                                         ; preds = %if.then44, %if.then31, %if.then26
  %ret.2 = phi i32 [ %call.i, %if.then31 ], [ %call41, %if.then44 ], [ -22, %if.then26 ], !dbg !1480
  %set_filter56 = getelementptr inbounds %struct.event_command, ptr %cmd_ops, i32 0, i32 8, !dbg !1484
  %65 = ptrtoint ptr %set_filter56 to i32, !dbg !1484
  call void @__asan_load4_noabort(i32 %65), !dbg !1484
  %66 = load ptr, ptr %set_filter56, align 4, !dbg !1484
  %tobool57.not = icmp eq ptr %66, null, !dbg !1485
  br i1 %tobool57.not, label %out_free.if.end61_crit_edge, label %if.then58, !dbg !1485

out_free.if.end61_crit_edge:                      ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1485
  br label %if.end61, !dbg !1485

if.then58:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1486
  %gcov_ctr76 = load i64, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 15), align 8, !dbg !1486
  %67 = add i64 %gcov_ctr76, 1, !dbg !1486
  store i64 %67, ptr getelementptr inbounds ([16 x i64], ptr @__llvm_gcov_ctr.118, i32 0, i32 15), align 8, !dbg !1486
  %68 = ptrtoint ptr %set_filter56 to i32, !dbg !1487
  call void @__asan_load4_noabort(i32 %68), !dbg !1487
  %69 = load ptr, ptr %set_filter56, align 4, !dbg !1487
  %call60 = call i32 %69(ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef null) #17, !dbg !1486
  br label %if.end61, !dbg !1486

if.end61:                                         ; preds = %if.then58, %out_free.if.end61_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #17, !dbg !1488
  br label %out, !dbg !1489
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @register_trigger(ptr nocapture noundef readnone %glob, ptr noundef %data, ptr noundef %file) #0 align 64 !dbg !1490 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1491
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !1492
  %0 = load i32, ptr @debug_locks, align 4, !dbg !1492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0), !dbg !1492
  %tobool.not = icmp eq i32 %0, 0, !dbg !1492
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !dbg !1492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1492
  br label %if.end, !dbg !1492

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.119, align 16, !dbg !1492
  %1 = add i64 %gcov_ctr, 1, !dbg !1492
  store i64 %1, ptr @__llvm_gcov_ctr.119, align 16, !dbg !1492
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.45, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #17, !dbg !1493
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1492
  %cmp.not = icmp eq i32 %call.i, 0, !dbg !1492
  br i1 %cmp.not, label %if.then, label %land.rhs.if.end_crit_edge, !dbg !1492, !prof !281

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1492
  br label %if.end, !dbg !1492

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1492
  %gcov_ctr56 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 1), align 8, !dbg !1492
  %3 = add i64 %gcov_ctr56, 1, !dbg !1492
  store i64 %3, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 1), align 8, !dbg !1492
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 574, i32 noundef 9, ptr noundef null) #17, !dbg !1492
  br label %if.end, !dbg !1492

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 6, !dbg !1495
  %4 = ptrtoint ptr %triggers to i32, !dbg !1495
  call void @__asan_load4_noabort(i32 %4), !dbg !1495
  %.pn86 = load ptr, ptr %triggers, align 4, !dbg !1495
  %cmp26.not87 = icmp eq ptr %.pn86, %triggers, !dbg !1495
  br i1 %cmp26.not87, label %if.end.for.end_crit_edge, label %for.body.lr.ph, !dbg !1495

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1495
  br label %for.end, !dbg !1495

for.body.lr.ph:                                   ; preds = %if.end
  %cmd_ops29 = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 4
  br label %for.body, !dbg !1495

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.body.lr.ph
  %.pn88 = phi ptr [ %.pn86, %for.body.lr.ph ], [ %.pn, %if.end33.for.body_crit_edge ]
  %cmd_ops = getelementptr i8, ptr %.pn88, i32 -20, !dbg !1496
  %5 = ptrtoint ptr %cmd_ops to i32, !dbg !1496
  call void @__asan_load4_noabort(i32 %5), !dbg !1496
  %6 = load ptr, ptr %cmd_ops, align 4, !dbg !1496
  %trigger_type = getelementptr inbounds %struct.event_command, ptr %6, i32 0, i32 2, !dbg !1497
  %7 = ptrtoint ptr %trigger_type to i32, !dbg !1497
  call void @__asan_load4_noabort(i32 %7), !dbg !1497
  %8 = load i32, ptr %trigger_type, align 4, !dbg !1497
  %9 = ptrtoint ptr %cmd_ops29 to i32, !dbg !1498
  call void @__asan_load4_noabort(i32 %9), !dbg !1498
  %10 = load ptr, ptr %cmd_ops29, align 4, !dbg !1498
  %trigger_type30 = getelementptr inbounds %struct.event_command, ptr %10, i32 0, i32 2, !dbg !1499
  %11 = ptrtoint ptr %trigger_type30 to i32, !dbg !1499
  call void @__asan_load4_noabort(i32 %11), !dbg !1499
  %12 = load i32, ptr %trigger_type30, align 4, !dbg !1499
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12), !dbg !1500
  %cmp31 = icmp eq i32 %8, %12, !dbg !1500
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !1501

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1502
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 3), align 8, !dbg !1502
  %13 = add i64 %gcov_ctr58, 1, !dbg !1502
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 3), align 8, !dbg !1502
  br label %out, !dbg !1503

if.end33:                                         ; preds = %for.body
  %gcov_ctr57 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 2), align 16, !dbg !1504
  %14 = add i64 %gcov_ctr57, 1, !dbg !1504
  store i64 %14, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 2), align 16, !dbg !1504
  %15 = ptrtoint ptr %.pn88 to i32, !dbg !1495
  call void @__asan_load4_noabort(i32 %15), !dbg !1495
  %.pn = load ptr, ptr %.pn88, align 4, !dbg !1495
  %cmp26.not = icmp eq ptr %.pn, %triggers, !dbg !1495
  br i1 %cmp26.not, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge, !dbg !1495, !llvm.loop !1505

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1495
  br label %for.body, !dbg !1495

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1495
  br label %for.end, !dbg !1495

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %if.end.for.end_crit_edge
  %ops = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 3, !dbg !1506
  %16 = ptrtoint ptr %ops to i32, !dbg !1506
  call void @__asan_load4_noabort(i32 %16), !dbg !1506
  %17 = load ptr, ptr %ops, align 4, !dbg !1506
  %init = getelementptr inbounds %struct.event_trigger_ops, ptr %17, i32 0, i32 1, !dbg !1507
  %18 = ptrtoint ptr %init to i32, !dbg !1507
  call void @__asan_load4_noabort(i32 %18), !dbg !1507
  %19 = load ptr, ptr %init, align 4, !dbg !1507
  %tobool39.not = icmp eq ptr %19, null, !dbg !1508
  br i1 %tobool39.not, label %for.end.if.end48_crit_edge, label %if.then40, !dbg !1508

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1508
  br label %if.end48, !dbg !1508

if.then40:                                        ; preds = %for.end
  %call44 = tail call i32 %19(ptr noundef %17, ptr noundef %data) #17, !dbg !1509
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44), !dbg !1510
  %cmp45 = icmp slt i32 %call44, 0, !dbg !1510
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1511

if.then46:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1512
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 4), align 16, !dbg !1512
  %20 = add i64 %gcov_ctr59, 1, !dbg !1512
  store i64 %20, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 4), align 16, !dbg !1512
  br label %out, !dbg !1512

if.end47:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1513
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 5), align 8, !dbg !1513
  %21 = add i64 %gcov_ctr60, 1, !dbg !1513
  store i64 %21, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 5), align 8, !dbg !1513
  br label %if.end48, !dbg !1513

if.end48:                                         ; preds = %if.end47, %for.end.if.end48_crit_edge
  %ret.0 = phi i32 [ %call44, %if.end47 ], [ 0, %for.end.if.end48_crit_edge ], !dbg !1514
  %list49 = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 10, !dbg !1515
  %gcov_ctr.i80 = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %22 = add i64 %gcov_ctr.i80, 1
  store i64 %22, ptr @__llvm_gcov_ctr.78, align 8
  %23 = ptrtoint ptr %triggers to i32, !dbg !1516
  call void @__asan_load4_noabort(i32 %23), !dbg !1516
  %24 = load ptr, ptr %triggers, align 4, !dbg !1516
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list49, ptr noundef %triggers, ptr noundef %24) #17, !dbg !1518
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1520

if.then.i.i:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1521
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.116, align 16, !dbg !1521
  %25 = add i64 %gcov_ctr.i.i, 1, !dbg !1521
  store i64 %25, ptr @__llvm_gcov_ctr.116, align 16, !dbg !1521
  br label %list_add_rcu.exit, !dbg !1521

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1522
  %26 = ptrtoint ptr %list49 to i32, !dbg !1522
  call void @__asan_store4_noabort(i32 %26), !dbg !1522
  store ptr %24, ptr %list49, align 4, !dbg !1522
  %prev2.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 10, i32 1, !dbg !1523
  %27 = ptrtoint ptr %prev2.i.i to i32, !dbg !1524
  call void @__asan_store4_noabort(i32 %27), !dbg !1524
  store ptr %triggers, ptr %prev2.i.i, align 4, !dbg !1524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !dbg !1525, !srcloc !1178
  %28 = ptrtoint ptr %triggers to i32, !dbg !1525
  call void @__asan_store4_noabort(i32 %28), !dbg !1525
  store volatile ptr %list49, ptr %triggers, align 4, !dbg !1525
  %gcov_ctr40.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 3), align 8
  %29 = add i64 %gcov_ctr40.i.i, 1
  store i64 %29, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.116, i32 0, i32 3), align 8
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1, !dbg !1526
  %30 = ptrtoint ptr %prev37.i.i to i32, !dbg !1527
  call void @__asan_store4_noabort(i32 %30), !dbg !1527
  store ptr %list49, ptr %prev37.i.i, align 4, !dbg !1527
  br label %list_add_rcu.exit, !dbg !1528

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.then.i.i
  %inc = add nuw i32 %ret.0, 1, !dbg !1529
  tail call void @update_cond_flag(ptr noundef %file), !dbg !1530
  %call51 = tail call i32 @trace_event_trigger_enable_disable(ptr noundef %file, i32 noundef 1), !dbg !1531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51), !dbg !1532
  %cmp52 = icmp slt i32 %call51, 0, !dbg !1532
  br i1 %cmp52, label %if.then53, label %list_add_rcu.exit.if.end55_crit_edge, !dbg !1531

list_add_rcu.exit.if.end55_crit_edge:             ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1531
  br label %if.end55, !dbg !1531

if.then53:                                        ; preds = %list_add_rcu.exit
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 6), align 16, !dbg !1533
  %31 = add i64 %gcov_ctr61, 1, !dbg !1533
  store i64 %31, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 6), align 16, !dbg !1533
  %gcov_ctr.i81 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %32 = add i64 %gcov_ctr.i81, 1
  store i64 %32, ptr @__llvm_gcov_ctr.43, align 8
  %call.i.i82 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list49) #17, !dbg !1534
  br i1 %call.i.i82, label %if.end.i.i85, label %if.then.i.i84, !dbg !1537

if.then.i.i84:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1538
  %gcov_ctr.i.i83 = load i64, ptr @__llvm_gcov_ctr.99, align 8, !dbg !1538
  %33 = add i64 %gcov_ctr.i.i83, 1, !dbg !1538
  store i64 %33, ptr @__llvm_gcov_ctr.99, align 8, !dbg !1538
  br label %list_del_rcu.exit, !dbg !1538

if.end.i.i85:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1539
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !1539
  %34 = add i64 %gcov_ctr2.i.i, 1, !dbg !1539
  store i64 %34, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !1539
  %prev.i.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 10, i32 1, !dbg !1540
  %35 = ptrtoint ptr %prev.i.i to i32, !dbg !1540
  call void @__asan_load4_noabort(i32 %35), !dbg !1540
  %36 = load ptr, ptr %prev.i.i, align 4, !dbg !1540
  %37 = ptrtoint ptr %list49 to i32, !dbg !1541
  call void @__asan_load4_noabort(i32 %37), !dbg !1541
  %38 = load ptr, ptr %list49, align 4, !dbg !1541
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1, !dbg !1542
  %39 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !1544
  call void @__asan_store4_noabort(i32 %39), !dbg !1544
  store ptr %36, ptr %prev1.i.i.i, align 4, !dbg !1544
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1545
  %40 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1545
  store i64 %40, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1545
  %41 = ptrtoint ptr %36 to i32, !dbg !1545
  call void @__asan_store4_noabort(i32 %41), !dbg !1545
  store volatile ptr %38, ptr %36, align 4, !dbg !1545
  br label %list_del_rcu.exit, !dbg !1546

list_del_rcu.exit:                                ; preds = %if.end.i.i85, %if.then.i.i84
  %prev.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 10, i32 1, !dbg !1547
  %42 = ptrtoint ptr %prev.i to i32, !dbg !1548
  call void @__asan_store4_noabort(i32 %42), !dbg !1548
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4, !dbg !1548
  tail call void @update_cond_flag(ptr noundef %file), !dbg !1549
  br label %if.end55, !dbg !1550

if.end55:                                         ; preds = %list_del_rcu.exit, %list_add_rcu.exit.if.end55_crit_edge
  %ret.1 = phi i32 [ %ret.0, %list_del_rcu.exit ], [ %inc, %list_add_rcu.exit.if.end55_crit_edge ], !dbg !1514
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 7), align 8, !dbg !1551
  %43 = add i64 %gcov_ctr62, 1, !dbg !1551
  store i64 %43, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.119, i32 0, i32 7), align 8, !dbg !1551
  br label %out, !dbg !1551

out:                                              ; preds = %if.end55, %if.then46, %if.then32
  %ret.2 = phi i32 [ -17, %if.then32 ], [ %call44, %if.then46 ], [ %ret.1, %if.end55 ], !dbg !1514
  ret i32 %ret.2, !dbg !1552
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unregister_trigger(ptr nocapture noundef readnone %glob, ptr nocapture noundef readonly %test, ptr noundef %file) #0 align 64 !dbg !1553 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1554
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32)), !dbg !1555
  %0 = load i32, ptr @debug_locks, align 4, !dbg !1555
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0), !dbg !1555
  %tobool.not = icmp eq i32 %0, 0, !dbg !1555
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !dbg !1555

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1555
  br label %if.end, !dbg !1555

land.rhs:                                         ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.120, align 16, !dbg !1555
  %1 = add i64 %gcov_ctr, 1, !dbg !1555
  store i64 %1, ptr @__llvm_gcov_ctr.120, align 16, !dbg !1555
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.45, align 8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @event_mutex, i32 0, i32 5), i32 noundef -1) #17, !dbg !1556
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i), !dbg !1555
  %cmp.not = icmp eq i32 %call.i, 0, !dbg !1555
  br i1 %cmp.not, label %if.then, label %land.rhs.if.end_crit_edge, !dbg !1555, !prof !281

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1555
  br label %if.end, !dbg !1555

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1555
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 1), align 8, !dbg !1555
  %3 = add i64 %gcov_ctr48, 1, !dbg !1555
  store i64 %3, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 1), align 8, !dbg !1555
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 620, i32 noundef 9, ptr noundef null) #17, !dbg !1555
  br label %if.end, !dbg !1555

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 2), align 16, !dbg !1558
  %4 = add i64 %gcov_ctr49, 1, !dbg !1558
  store i64 %4, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 2), align 16, !dbg !1558
  %triggers = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 6, !dbg !1558
  %5 = ptrtoint ptr %triggers to i32, !dbg !1558
  call void @__asan_load4_noabort(i32 %5), !dbg !1558
  %.pn69 = load ptr, ptr %triggers, align 4, !dbg !1558
  %cmp26.not70 = icmp eq ptr %.pn69, %triggers, !dbg !1558
  br i1 %cmp26.not70, label %if.end.if.end47_crit_edge, label %for.body.lr.ph, !dbg !1558

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1558
  br label %if.end47, !dbg !1558

for.body.lr.ph:                                   ; preds = %if.end
  %cmd_ops29 = getelementptr inbounds %struct.event_trigger_data, ptr %test, i32 0, i32 4
  br label %for.body, !dbg !1558

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn71 = phi ptr [ %.pn69, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %cmd_ops = getelementptr i8, ptr %.pn71, i32 -20, !dbg !1559
  %6 = ptrtoint ptr %cmd_ops to i32, !dbg !1559
  call void @__asan_load4_noabort(i32 %6), !dbg !1559
  %7 = load ptr, ptr %cmd_ops, align 4, !dbg !1559
  %trigger_type = getelementptr inbounds %struct.event_command, ptr %7, i32 0, i32 2, !dbg !1560
  %8 = ptrtoint ptr %trigger_type to i32, !dbg !1560
  call void @__asan_load4_noabort(i32 %8), !dbg !1560
  %9 = load i32, ptr %trigger_type, align 4, !dbg !1560
  %10 = ptrtoint ptr %cmd_ops29 to i32, !dbg !1561
  call void @__asan_load4_noabort(i32 %10), !dbg !1561
  %11 = load ptr, ptr %cmd_ops29, align 4, !dbg !1561
  %trigger_type30 = getelementptr inbounds %struct.event_command, ptr %11, i32 0, i32 2, !dbg !1562
  %12 = ptrtoint ptr %trigger_type30 to i32, !dbg !1562
  call void @__asan_load4_noabort(i32 %12), !dbg !1562
  %13 = load i32, ptr %trigger_type30, align 4, !dbg !1562
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13), !dbg !1563
  %cmp31 = icmp eq i32 %9, %13, !dbg !1563
  br i1 %cmp31, label %if.then32, label %for.inc, !dbg !1564

if.then32:                                        ; preds = %for.body
  %data.0.le = getelementptr i8, ptr %.pn71, i32 -36, !dbg !1558
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 3), align 8, !dbg !1565
  %14 = add i64 %gcov_ctr50, 1, !dbg !1565
  store i64 %14, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 3), align 8, !dbg !1565
  %gcov_ctr.i65 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %15 = add i64 %gcov_ctr.i65, 1
  store i64 %15, ptr @__llvm_gcov_ctr.43, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn71) #17, !dbg !1566
  br i1 %call.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1569

if.then.i.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1570
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.99, align 8, !dbg !1570
  %16 = add i64 %gcov_ctr.i.i, 1, !dbg !1570
  store i64 %16, ptr @__llvm_gcov_ctr.99, align 8, !dbg !1570
  br label %list_del_rcu.exit, !dbg !1570

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1571
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !1571
  %17 = add i64 %gcov_ctr2.i.i, 1, !dbg !1571
  store i64 %17, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.99, i32 0, i32 1), align 8, !dbg !1571
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn71, i32 0, i32 1, !dbg !1572
  %18 = ptrtoint ptr %prev.i.i to i32, !dbg !1572
  call void @__asan_load4_noabort(i32 %18), !dbg !1572
  %19 = load ptr, ptr %prev.i.i, align 4, !dbg !1572
  %20 = ptrtoint ptr %.pn71 to i32, !dbg !1573
  call void @__asan_load4_noabort(i32 %20), !dbg !1573
  %21 = load ptr, ptr %.pn71, align 4, !dbg !1573
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1, !dbg !1574
  %22 = ptrtoint ptr %prev1.i.i.i to i32, !dbg !1576
  call void @__asan_store4_noabort(i32 %22), !dbg !1576
  store ptr %19, ptr %prev1.i.i.i, align 4, !dbg !1576
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1577
  %23 = add i64 %gcov_ctr.i.i.i, 1, !dbg !1577
  store i64 %23, ptr @__llvm_gcov_ctr.100, align 8, !dbg !1577
  %24 = ptrtoint ptr %19 to i32, !dbg !1577
  call void @__asan_store4_noabort(i32 %24), !dbg !1577
  store volatile ptr %21, ptr %19, align 4, !dbg !1577
  br label %list_del_rcu.exit, !dbg !1578

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.i.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn71, i32 0, i32 1, !dbg !1579
  %25 = ptrtoint ptr %prev.i to i32, !dbg !1580
  call void @__asan_store4_noabort(i32 %25), !dbg !1580
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4, !dbg !1580
  %call34 = tail call i32 @trace_event_trigger_enable_disable(ptr noundef %file, i32 noundef 0), !dbg !1581
  tail call void @update_cond_flag(ptr noundef %file), !dbg !1582
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 5), align 8, !dbg !1583
  %26 = add i64 %gcov_ctr52, 1, !dbg !1583
  store i64 %26, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 5), align 8, !dbg !1583
  %ops = getelementptr i8, ptr %.pn71, i32 -24, !dbg !1584
  %27 = ptrtoint ptr %ops to i32, !dbg !1584
  call void @__asan_load4_noabort(i32 %27), !dbg !1584
  %28 = load ptr, ptr %ops, align 4, !dbg !1584
  %free = getelementptr inbounds %struct.event_trigger_ops, ptr %28, i32 0, i32 2, !dbg !1585
  %29 = ptrtoint ptr %free to i32, !dbg !1585
  call void @__asan_load4_noabort(i32 %29), !dbg !1585
  %30 = load ptr, ptr %free, align 4, !dbg !1585
  %tobool42.not = icmp eq ptr %30, null, !dbg !1583
  br i1 %tobool42.not, label %list_del_rcu.exit.if.end47_crit_edge, label %if.then43, !dbg !1586

list_del_rcu.exit.if.end47_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1586
  br label %if.end47, !dbg !1586

for.inc:                                          ; preds = %for.body
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 4), align 16, !dbg !1558
  %31 = add i64 %gcov_ctr51, 1, !dbg !1558
  store i64 %31, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 4), align 16, !dbg !1558
  %32 = ptrtoint ptr %.pn71 to i32, !dbg !1558
  call void @__asan_load4_noabort(i32 %32), !dbg !1558
  %.pn = load ptr, ptr %.pn71, align 4, !dbg !1558
  %cmp26.not = icmp eq ptr %.pn, %triggers, !dbg !1558
  br i1 %cmp26.not, label %for.inc.if.end47_crit_edge, label %for.inc.for.body_crit_edge, !dbg !1558, !llvm.loop !1587

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1558
  br label %for.body, !dbg !1558

for.inc.if.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1558
  br label %if.end47, !dbg !1558

if.then43:                                        ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1589
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 6), align 16, !dbg !1589
  %33 = add i64 %gcov_ctr53, 1, !dbg !1589
  store i64 %33, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr.120, i32 0, i32 6), align 16, !dbg !1589
  %34 = ptrtoint ptr %ops to i32, !dbg !1590
  call void @__asan_load4_noabort(i32 %34), !dbg !1590
  %35 = load ptr, ptr %ops, align 4, !dbg !1590
  %free45 = getelementptr inbounds %struct.event_trigger_ops, ptr %35, i32 0, i32 2, !dbg !1591
  %36 = ptrtoint ptr %free45 to i32, !dbg !1591
  call void @__asan_load4_noabort(i32 %36), !dbg !1591
  %37 = load ptr, ptr %free45, align 4, !dbg !1591
  tail call void %37(ptr noundef %35, ptr noundef %data.0.le) #17, !dbg !1589
  br label %if.end47, !dbg !1589

if.end47:                                         ; preds = %if.then43, %for.inc.if.end47_crit_edge, %list_del_rcu.exit.if.end47_crit_edge, %if.end.if.end47_crit_edge
  ret void, !dbg !1592
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @onoff_get_trigger_ops(ptr nocapture noundef readonly %cmd, ptr noundef readnone %param) #11 align 64 !dbg !1593 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1594
  %call = tail call i32 @strcmp(ptr noundef %cmd, ptr noundef nonnull dereferenceable(8) @.str.20) #18, !dbg !1595
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1596
  %cmp = icmp eq i32 %call, 0, !dbg !1596
  br i1 %cmp, label %if.then, label %if.else, !dbg !1595

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1597
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.121, align 8, !dbg !1597
  %0 = add i64 %gcov_ctr, 1, !dbg !1597
  store i64 %0, ptr @__llvm_gcov_ctr.121, align 8, !dbg !1597
  %tobool.not = icmp eq ptr %param, null, !dbg !1597
  %cond = select i1 %tobool.not, ptr @traceon_trigger_ops, ptr @traceon_count_trigger_ops, !dbg !1597
  br label %if.end, !dbg !1598

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1599
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.121, i32 0, i32 1), align 8, !dbg !1599
  %1 = add i64 %gcov_ctr3, 1, !dbg !1599
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.121, i32 0, i32 1), align 8, !dbg !1599
  %tobool1.not = icmp eq ptr %param, null, !dbg !1599
  %cond2 = select i1 %tobool1.not, ptr @traceoff_trigger_ops, ptr @traceoff_count_trigger_ops, !dbg !1599
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ops.0 = phi ptr [ %cond, %if.then ], [ %cond2, %if.else ], !dbg !1600
  ret ptr %ops.0, !dbg !1601
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @traceon_count_trigger(ptr nocapture noundef %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1602 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1603
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1604
  %0 = ptrtoint ptr %private_data to i32, !dbg !1604
  call void @__asan_load4_noabort(i32 %0), !dbg !1604
  %1 = load ptr, ptr %private_data, align 4, !dbg !1604
  %tobool.not = icmp eq ptr %1, null, !dbg !1605
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1605

if.then:                                          ; preds = %entry
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !1606
  %2 = ptrtoint ptr %tr to i32, !dbg !1606
  call void @__asan_load4_noabort(i32 %2), !dbg !1606
  %3 = load ptr, ptr %tr, align 4, !dbg !1606
  %call = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %3) #17, !dbg !1607
  br i1 %call, label %if.then1, label %if.then.if.end6_crit_edge, !dbg !1607

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1607
  br label %if.end6, !dbg !1607

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1608
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.122, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.122, align 16
  br label %cleanup, !dbg !1609

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @tracing_is_on() #17, !dbg !1610
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1610
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !1610
  br i1 %tobool3.not, label %if.end5, label %if.then4, !dbg !1610

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1608
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 1), align 8
  %5 = add i64 %gcov_ctr19, 1
  store i64 %5, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 1), align 8
  br label %cleanup, !dbg !1611

if.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1608
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 2), align 16
  %6 = add i64 %gcov_ctr20, 1
  store i64 %6, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 2), align 16
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then.if.end6_crit_edge
  %7 = ptrtoint ptr %data to i32, !dbg !1612
  call void @__asan_load4_noabort(i32 %7), !dbg !1612
  %8 = load i32, ptr %data, align 4, !dbg !1612
  %9 = zext i32 %8 to i64, !dbg !1613
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values), !dbg !1613
  switch i32 %8, label %if.then11 [
    i32 0, label %if.then8
    i32 -1, label %if.end6.if.end13_crit_edge
  ], !dbg !1613

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1613
  br label %if.end13, !dbg !1613

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1608
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 3), align 8
  %10 = add i64 %gcov_ctr21, 1
  store i64 %10, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 3), align 8
  br label %cleanup, !dbg !1614

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1615
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 4), align 16, !dbg !1615
  %11 = add i64 %gcov_ctr22, 1, !dbg !1615
  store i64 %11, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 4), align 16, !dbg !1615
  %12 = ptrtoint ptr %data to i32, !dbg !1616
  call void @__asan_load4_noabort(i32 %12), !dbg !1616
  %13 = load i32, ptr %data, align 4, !dbg !1616
  %dec = add i32 %13, -1, !dbg !1616
  store i32 %dec, ptr %data, align 4, !dbg !1616
  br label %if.end13, !dbg !1617

if.end13:                                         ; preds = %if.then11, %if.end6.if.end13_crit_edge
  br i1 %tobool.not, label %if.else17, label %if.then15, !dbg !1618

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1619
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 5), align 8, !dbg !1619
  %14 = add i64 %gcov_ctr23, 1, !dbg !1619
  store i64 %14, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 5), align 8, !dbg !1619
  %tr16 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !1620
  %15 = ptrtoint ptr %tr16 to i32, !dbg !1620
  call void @__asan_load4_noabort(i32 %15), !dbg !1620
  %16 = load ptr, ptr %tr16, align 4, !dbg !1620
  tail call void @tracer_tracing_on(ptr noundef %16) #17, !dbg !1621
  br label %cleanup, !dbg !1621

if.else17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1622
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 6), align 16, !dbg !1622
  %17 = add i64 %gcov_ctr24, 1, !dbg !1622
  store i64 %17, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.122, i32 0, i32 6), align 16, !dbg !1622
  tail call void @tracing_on() #17, !dbg !1622
  br label %cleanup

cleanup:                                          ; preds = %if.else17, %if.then15, %if.then8, %if.then4, %if.then1
  ret void, !dbg !1623
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @traceon_trigger_print(ptr noundef %m, ptr nocapture noundef readnone %ops, ptr nocapture noundef readonly %data) #0 align 64 !dbg !1624 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1625
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.123, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.123, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !1626
  call void @__asan_load4_noabort(i32 %1), !dbg !1626
  %2 = load i32, ptr %data, align 4, !dbg !1626
  %3 = inttoptr i32 %2 to ptr, !dbg !1627
  %filter_str = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 6, !dbg !1628
  %4 = ptrtoint ptr %filter_str to i32, !dbg !1628
  call void @__asan_load4_noabort(i32 %4), !dbg !1628
  %5 = load ptr, ptr %filter_str, align 4, !dbg !1628
  tail call fastcc void @event_trigger_print(ptr noundef nonnull @.str.20, ptr noundef %m, ptr noundef %3, ptr noundef %5), !dbg !1629
  ret i32 0, !dbg !1630
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tracer_tracing_is_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_is_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_tracing_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_on() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @event_trigger_print(ptr noundef %name, ptr noundef %m, ptr noundef %data, ptr noundef %filter_str) unnamed_addr #0 align 64 !dbg !1631 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1632
  tail call void @seq_puts(ptr noundef %m, ptr noundef %name) #17, !dbg !1633
  %cmp = icmp eq ptr %data, inttoptr (i32 -1 to ptr), !dbg !1634
  br i1 %cmp, label %if.then, label %if.else, !dbg !1635

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1636
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.124, align 16, !dbg !1636
  %0 = add i64 %gcov_ctr, 1, !dbg !1636
  store i64 %0, ptr @__llvm_gcov_ctr.124, align 16, !dbg !1636
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.13) #17, !dbg !1637
  br label %if.end, !dbg !1637

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1638
  %1 = ptrtoint ptr %data to i32, !dbg !1638
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %1) #17, !dbg !1639
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool.not = icmp eq ptr %filter_str, null, !dbg !1640
  br i1 %tobool.not, label %if.else2, label %if.then1, !dbg !1640

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1641
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8, !dbg !1641
  %2 = add i64 %gcov_ctr4, 1, !dbg !1641
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 1), align 8, !dbg !1641
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, ptr noundef nonnull %filter_str) #17, !dbg !1642
  br label %if.end3, !dbg !1642

if.else2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1643
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16, !dbg !1643
  %3 = add i64 %gcov_ctr5, 1, !dbg !1643
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16, !dbg !1643
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #17, !dbg !1644
  br label %if.end3

if.end3:                                          ; preds = %if.else2, %if.then1
  ret void, !dbg !1645
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @traceon_trigger(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1646 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1647
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1648
  %0 = ptrtoint ptr %private_data to i32, !dbg !1648
  call void @__asan_load4_noabort(i32 %0), !dbg !1648
  %1 = load ptr, ptr %private_data, align 4, !dbg !1648
  %tobool.not = icmp eq ptr %1, null, !dbg !1649
  br i1 %tobool.not, label %if.end3, label %if.then, !dbg !1649

if.then:                                          ; preds = %entry
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !1650
  %2 = ptrtoint ptr %tr to i32, !dbg !1650
  call void @__asan_load4_noabort(i32 %2), !dbg !1650
  %3 = load ptr, ptr %tr, align 4, !dbg !1650
  %call = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %3) #17, !dbg !1651
  br i1 %call, label %if.then1, label %if.end, !dbg !1651

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1652
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.125, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.125, align 16
  br label %cleanup, !dbg !1653

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1654
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 1), align 8, !dbg !1654
  %5 = add i64 %gcov_ctr8, 1, !dbg !1654
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 1), align 8, !dbg !1654
  %6 = ptrtoint ptr %tr to i32, !dbg !1655
  call void @__asan_load4_noabort(i32 %6), !dbg !1655
  %7 = load ptr, ptr %tr, align 4, !dbg !1655
  tail call void @tracer_tracing_on(ptr noundef %7) #17, !dbg !1656
  br label %cleanup, !dbg !1657

if.end3:                                          ; preds = %entry
  %call4 = tail call i32 @tracing_is_on() #17, !dbg !1658
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4), !dbg !1658
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !1658
  br i1 %tobool5.not, label %if.end7, label %if.then6, !dbg !1658

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1652
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 2), align 16
  %8 = add i64 %gcov_ctr9, 1
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 2), align 16
  br label %cleanup, !dbg !1659

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1660
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 3), align 8, !dbg !1660
  %9 = add i64 %gcov_ctr10, 1, !dbg !1660
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.125, i32 0, i32 3), align 8, !dbg !1660
  tail call void @tracing_on() #17, !dbg !1660
  br label %cleanup, !dbg !1661

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end, %if.then1
  ret void, !dbg !1661
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @traceoff_count_trigger(ptr nocapture noundef %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1662 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1663
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1664
  %0 = ptrtoint ptr %private_data to i32, !dbg !1664
  call void @__asan_load4_noabort(i32 %0), !dbg !1664
  %1 = load ptr, ptr %private_data, align 4, !dbg !1664
  %tobool.not = icmp eq ptr %1, null, !dbg !1665
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1665

if.then:                                          ; preds = %entry
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !1666
  %2 = ptrtoint ptr %tr to i32, !dbg !1666
  call void @__asan_load4_noabort(i32 %2), !dbg !1666
  %3 = load ptr, ptr %tr, align 4, !dbg !1666
  %call = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %3) #17, !dbg !1667
  br i1 %call, label %if.then.if.end6_crit_edge, label %if.then1, !dbg !1668

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1668
  br label %if.end6, !dbg !1668

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1669
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.126, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.126, align 16
  br label %cleanup, !dbg !1670

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @tracing_is_on() #17, !dbg !1671
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2), !dbg !1671
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !1671
  br i1 %tobool3.not, label %if.then4, label %if.end5, !dbg !1672

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1669
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 1), align 8
  %5 = add i64 %gcov_ctr19, 1
  store i64 %5, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 1), align 8
  br label %cleanup, !dbg !1673

if.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1669
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 2), align 16
  %6 = add i64 %gcov_ctr20, 1
  store i64 %6, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 2), align 16
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then.if.end6_crit_edge
  %7 = ptrtoint ptr %data to i32, !dbg !1674
  call void @__asan_load4_noabort(i32 %7), !dbg !1674
  %8 = load i32, ptr %data, align 4, !dbg !1674
  %9 = zext i32 %8 to i64, !dbg !1675
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.146), !dbg !1675
  switch i32 %8, label %if.then11 [
    i32 0, label %if.then8
    i32 -1, label %if.end6.if.end13_crit_edge
  ], !dbg !1675

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1675
  br label %if.end13, !dbg !1675

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1669
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 3), align 8
  %10 = add i64 %gcov_ctr21, 1
  store i64 %10, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 3), align 8
  br label %cleanup, !dbg !1676

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1677
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 4), align 16, !dbg !1677
  %11 = add i64 %gcov_ctr22, 1, !dbg !1677
  store i64 %11, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 4), align 16, !dbg !1677
  %12 = ptrtoint ptr %data to i32, !dbg !1678
  call void @__asan_load4_noabort(i32 %12), !dbg !1678
  %13 = load i32, ptr %data, align 4, !dbg !1678
  %dec = add i32 %13, -1, !dbg !1678
  store i32 %dec, ptr %data, align 4, !dbg !1678
  br label %if.end13, !dbg !1679

if.end13:                                         ; preds = %if.then11, %if.end6.if.end13_crit_edge
  br i1 %tobool.not, label %if.else17, label %if.then15, !dbg !1680

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1681
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 5), align 8, !dbg !1681
  %14 = add i64 %gcov_ctr23, 1, !dbg !1681
  store i64 %14, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 5), align 8, !dbg !1681
  %tr16 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !1682
  %15 = ptrtoint ptr %tr16 to i32, !dbg !1682
  call void @__asan_load4_noabort(i32 %15), !dbg !1682
  %16 = load ptr, ptr %tr16, align 4, !dbg !1682
  tail call void @tracer_tracing_off(ptr noundef %16) #17, !dbg !1683
  br label %cleanup, !dbg !1683

if.else17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1684
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 6), align 16, !dbg !1684
  %17 = add i64 %gcov_ctr24, 1, !dbg !1684
  store i64 %17, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 6), align 16, !dbg !1684
  tail call void @tracing_off() #17, !dbg !1684
  br label %cleanup

cleanup:                                          ; preds = %if.else17, %if.then15, %if.then8, %if.then4, %if.then1
  ret void, !dbg !1685
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @traceoff_trigger_print(ptr noundef %m, ptr nocapture noundef readnone %ops, ptr nocapture noundef readonly %data) #0 align 64 !dbg !1686 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1687
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.127, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.127, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !1688
  call void @__asan_load4_noabort(i32 %1), !dbg !1688
  %2 = load i32, ptr %data, align 4, !dbg !1688
  %3 = inttoptr i32 %2 to ptr, !dbg !1689
  %filter_str = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 6, !dbg !1690
  %4 = ptrtoint ptr %filter_str to i32, !dbg !1690
  call void @__asan_load4_noabort(i32 %4), !dbg !1690
  %5 = load ptr, ptr %filter_str, align 4, !dbg !1690
  tail call fastcc void @event_trigger_print(ptr noundef nonnull @.str.21, ptr noundef %m, ptr noundef %3, ptr noundef %5), !dbg !1691
  ret i32 0, !dbg !1692
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_tracing_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @traceoff_trigger(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1693 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1694
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1695
  %0 = ptrtoint ptr %private_data to i32, !dbg !1695
  call void @__asan_load4_noabort(i32 %0), !dbg !1695
  %1 = load ptr, ptr %private_data, align 4, !dbg !1695
  %tobool.not = icmp eq ptr %1, null, !dbg !1696
  br i1 %tobool.not, label %if.end3, label %if.then, !dbg !1696

if.then:                                          ; preds = %entry
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !1697
  %2 = ptrtoint ptr %tr to i32, !dbg !1697
  call void @__asan_load4_noabort(i32 %2), !dbg !1697
  %3 = load ptr, ptr %tr, align 4, !dbg !1697
  %call = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %3) #17, !dbg !1698
  br i1 %call, label %if.end, label %if.then1, !dbg !1699

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1700
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.128, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.128, align 16
  br label %cleanup, !dbg !1701

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1702
  %gcov_ctr8 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1702
  %5 = add i64 %gcov_ctr8, 1, !dbg !1702
  store i64 %5, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 1), align 8, !dbg !1702
  %6 = ptrtoint ptr %tr to i32, !dbg !1703
  call void @__asan_load4_noabort(i32 %6), !dbg !1703
  %7 = load ptr, ptr %tr, align 4, !dbg !1703
  tail call void @tracer_tracing_off(ptr noundef %7) #17, !dbg !1704
  br label %cleanup, !dbg !1705

if.end3:                                          ; preds = %entry
  %call4 = tail call i32 @tracing_is_on() #17, !dbg !1706
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4), !dbg !1706
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !1706
  br i1 %tobool5.not, label %if.then6, label %if.end7, !dbg !1707

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1700
  %gcov_ctr9 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 2), align 16
  %8 = add i64 %gcov_ctr9, 1
  store i64 %8, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 2), align 16
  br label %cleanup, !dbg !1708

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1709
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 3), align 8, !dbg !1709
  %9 = add i64 %gcov_ctr10, 1, !dbg !1709
  store i64 %9, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 3), align 8, !dbg !1709
  tail call void @tracing_off() #17, !dbg !1709
  br label %cleanup, !dbg !1710

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end, %if.then1
  ret void, !dbg !1710
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @register_snapshot_trigger(ptr nocapture noundef readnone %glob, ptr noundef %data, ptr noundef %file) #0 align 64 !dbg !1711 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1712
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %file, i32 0, i32 4, !dbg !1713
  %0 = ptrtoint ptr %tr to i32, !dbg !1713
  call void @__asan_load4_noabort(i32 %0), !dbg !1713
  %1 = load ptr, ptr %tr, align 4, !dbg !1713
  %call = tail call i32 @tracing_alloc_snapshot_instance(ptr noundef %1) #17, !dbg !1714
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1715
  %cmp.not = icmp eq i32 %call, 0, !dbg !1715
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1714

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1716
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.129, align 8, !dbg !1716
  %2 = add i64 %gcov_ctr, 1, !dbg !1716
  store i64 %2, ptr @__llvm_gcov_ctr.129, align 8, !dbg !1716
  br label %return, !dbg !1716

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1717
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !1717
  %3 = add i64 %gcov_ctr2, 1, !dbg !1717
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.129, i32 0, i32 1), align 8, !dbg !1717
  %call1 = tail call i32 @register_trigger(ptr noundef %glob, ptr noundef %data, ptr noundef %file), !dbg !1718
  br label %return, !dbg !1719

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ], !dbg !1720
  ret i32 %retval.0, !dbg !1721
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @snapshot_get_trigger_ops(ptr nocapture noundef readnone %cmd, ptr noundef readnone %param) #5 align 64 !dbg !1722 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1723
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.130, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.130, align 8
  %tobool.not = icmp eq ptr %param, null, !dbg !1724
  %cond = select i1 %tobool.not, ptr @snapshot_trigger_ops, ptr @snapshot_count_trigger_ops, !dbg !1724
  ret ptr %cond, !dbg !1725
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_alloc_snapshot_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snapshot_count_trigger(ptr nocapture noundef %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1726 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1727
  %0 = ptrtoint ptr %data to i32, !dbg !1728
  call void @__asan_load4_noabort(i32 %0), !dbg !1728
  %1 = load i32, ptr %data, align 4, !dbg !1728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !1729
  %tobool.not = icmp eq i32 %1, 0, !dbg !1729
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1730

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1731
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.131, align 16, !dbg !1731
  %2 = add i64 %gcov_ctr, 1, !dbg !1731
  store i64 %2, ptr @__llvm_gcov_ctr.131, align 16, !dbg !1731
  br label %return, !dbg !1731

if.end:                                           ; preds = %entry
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.131, i32 0, i32 1), align 8, !dbg !1732
  %3 = add i64 %gcov_ctr5, 1, !dbg !1732
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.131, i32 0, i32 1), align 8, !dbg !1732
  %4 = ptrtoint ptr %data to i32, !dbg !1733
  call void @__asan_load4_noabort(i32 %4), !dbg !1733
  %5 = load i32, ptr %data, align 4, !dbg !1733
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5), !dbg !1734
  %cmp.not = icmp eq i32 %5, -1, !dbg !1734
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2, !dbg !1732

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1732
  br label %if.end4, !dbg !1732

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1735
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.131, i32 0, i32 2), align 16, !dbg !1735
  %6 = add i64 %gcov_ctr6, 1, !dbg !1735
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.131, i32 0, i32 2), align 16, !dbg !1735
  %7 = ptrtoint ptr %data to i32, !dbg !1736
  call void @__asan_load4_noabort(i32 %7), !dbg !1736
  %8 = load i32, ptr %data, align 4, !dbg !1736
  %dec = add i32 %8, -1, !dbg !1736
  store i32 %dec, ptr %data, align 4, !dbg !1736
  br label %if.end4, !dbg !1737

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %private_data.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1738
  %9 = ptrtoint ptr %private_data.i to i32, !dbg !1738
  call void @__asan_load4_noabort(i32 %9), !dbg !1738
  %10 = load ptr, ptr %private_data.i, align 4, !dbg !1738
  %tobool.not.i = icmp eq ptr %10, null, !dbg !1741
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1741

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1742
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.133, align 8, !dbg !1742
  %11 = add i64 %gcov_ctr.i, 1, !dbg !1742
  store i64 %11, ptr @__llvm_gcov_ctr.133, align 8, !dbg !1742
  %tr.i = getelementptr inbounds %struct.trace_event_file, ptr %10, i32 0, i32 4, !dbg !1743
  %12 = ptrtoint ptr %tr.i to i32, !dbg !1743
  call void @__asan_load4_noabort(i32 %12), !dbg !1743
  %13 = load ptr, ptr %tr.i, align 4, !dbg !1743
  tail call void @tracing_snapshot_instance(ptr noundef %13) #17, !dbg !1744
  br label %return, !dbg !1744

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1745
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 1), align 8, !dbg !1745
  %14 = add i64 %gcov_ctr1.i, 1, !dbg !1745
  store i64 %14, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 1), align 8, !dbg !1745
  tail call void @tracing_snapshot() #17, !dbg !1745
  br label %return

return:                                           ; preds = %if.else.i, %if.then.i, %if.then
  ret void, !dbg !1746
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_trigger_print(ptr noundef %m, ptr nocapture noundef readnone %ops, ptr nocapture noundef readonly %data) #0 align 64 !dbg !1747 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1748
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.132, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.132, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !1749
  call void @__asan_load4_noabort(i32 %1), !dbg !1749
  %2 = load i32, ptr %data, align 4, !dbg !1749
  %3 = inttoptr i32 %2 to ptr, !dbg !1750
  %filter_str = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 6, !dbg !1751
  %4 = ptrtoint ptr %filter_str to i32, !dbg !1751
  call void @__asan_load4_noabort(i32 %4), !dbg !1751
  %5 = load ptr, ptr %filter_str, align 4, !dbg !1751
  tail call fastcc void @event_trigger_print(ptr noundef nonnull @.str.22, ptr noundef %m, ptr noundef %3, ptr noundef %5), !dbg !1752
  ret i32 0, !dbg !1753
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snapshot_trigger(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1739 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1754
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1755
  %0 = ptrtoint ptr %private_data to i32, !dbg !1755
  call void @__asan_load4_noabort(i32 %0), !dbg !1755
  %1 = load ptr, ptr %private_data, align 4, !dbg !1755
  %tobool.not = icmp eq ptr %1, null, !dbg !1756
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1756

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1757
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.133, align 8, !dbg !1757
  %2 = add i64 %gcov_ctr, 1, !dbg !1757
  store i64 %2, ptr @__llvm_gcov_ctr.133, align 8, !dbg !1757
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !1758
  %3 = ptrtoint ptr %tr to i32, !dbg !1758
  call void @__asan_load4_noabort(i32 %3), !dbg !1758
  %4 = load ptr, ptr %tr, align 4, !dbg !1758
  tail call void @tracing_snapshot_instance(ptr noundef %4) #17, !dbg !1759
  br label %if.end, !dbg !1759

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1760
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 1), align 8, !dbg !1760
  %5 = add i64 %gcov_ctr1, 1, !dbg !1760
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.133, i32 0, i32 1), align 8, !dbg !1760
  tail call void @tracing_snapshot() #17, !dbg !1760
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1761
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_snapshot_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_snapshot() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @stacktrace_get_trigger_ops(ptr nocapture noundef readnone %cmd, ptr noundef readnone %param) #5 align 64 !dbg !1762 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1763
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.134, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.134, align 8
  %tobool.not = icmp eq ptr %param, null, !dbg !1764
  %cond = select i1 %tobool.not, ptr @stacktrace_trigger_ops, ptr @stacktrace_count_trigger_ops, !dbg !1764
  ret ptr %cond, !dbg !1765
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stacktrace_count_trigger(ptr nocapture noundef %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1766 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1767
  %0 = ptrtoint ptr %data to i32, !dbg !1768
  call void @__asan_load4_noabort(i32 %0), !dbg !1768
  %1 = load i32, ptr %data, align 4, !dbg !1768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !1769
  %tobool.not = icmp eq i32 %1, 0, !dbg !1769
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1770

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1771
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.135, align 16, !dbg !1771
  %2 = add i64 %gcov_ctr, 1, !dbg !1771
  store i64 %2, ptr @__llvm_gcov_ctr.135, align 16, !dbg !1771
  br label %return, !dbg !1771

if.end:                                           ; preds = %entry
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !1772
  %3 = add i64 %gcov_ctr5, 1, !dbg !1772
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 1), align 8, !dbg !1772
  %4 = ptrtoint ptr %data to i32, !dbg !1773
  call void @__asan_load4_noabort(i32 %4), !dbg !1773
  %5 = load i32, ptr %data, align 4, !dbg !1773
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5), !dbg !1774
  %cmp.not = icmp eq i32 %5, -1, !dbg !1774
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2, !dbg !1772

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1772
  br label %if.end4, !dbg !1772

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1775
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !1775
  %6 = add i64 %gcov_ctr6, 1, !dbg !1775
  store i64 %6, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.135, i32 0, i32 2), align 16, !dbg !1775
  %7 = ptrtoint ptr %data to i32, !dbg !1776
  call void @__asan_load4_noabort(i32 %7), !dbg !1776
  %8 = load i32, ptr %data, align 4, !dbg !1776
  %dec = add i32 %8, -1, !dbg !1776
  store i32 %dec, ptr %data, align 4, !dbg !1776
  br label %if.end4, !dbg !1777

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %private_data.i = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1778
  %9 = ptrtoint ptr %private_data.i to i32, !dbg !1778
  call void @__asan_load4_noabort(i32 %9), !dbg !1778
  %10 = load ptr, ptr %private_data.i, align 4, !dbg !1778
  %tobool.not.i = icmp eq ptr %10, null, !dbg !1781
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1781

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1782
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.137, align 8, !dbg !1782
  %11 = add i64 %gcov_ctr.i, 1, !dbg !1782
  store i64 %11, ptr @__llvm_gcov_ctr.137, align 8, !dbg !1782
  %tr.i = getelementptr inbounds %struct.trace_event_file, ptr %10, i32 0, i32 4, !dbg !1783
  %12 = ptrtoint ptr %tr.i to i32, !dbg !1783
  call void @__asan_load4_noabort(i32 %12), !dbg !1783
  %13 = load ptr, ptr %tr.i, align 4, !dbg !1783
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.138, align 8, !dbg !1784
  %14 = add i64 %gcov_ctr.i.i, 1, !dbg !1784
  store i64 %14, ptr @__llvm_gcov_ctr.138, align 8, !dbg !1784
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8
  %15 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.139, align 8
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !dbg !1787, !srcloc !1791
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.140, align 8
  %17 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %17, ptr @__llvm_gcov_ctr.140, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.141, align 8
  %18 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.141, align 8
  %and.i.i.i.i = lshr i32 %16, 7, !dbg !1792
  %and.i.lobit.i.i.i = and i32 %and.i.i.i.i, 1, !dbg !1792
  %call2.i.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i.i) #17, !dbg !1795
  tail call void @__trace_stack(ptr noundef %13, i32 noundef %call2.i.i.i, i32 noundef 4) #17, !dbg !1796
  br label %return, !dbg !1796

if.else.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1797
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !1797
  %19 = add i64 %gcov_ctr1.i, 1, !dbg !1797
  store i64 %19, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !1797
  tail call void @trace_dump_stack(i32 noundef 4) #17, !dbg !1797
  br label %return

return:                                           ; preds = %if.else.i, %if.then.i, %if.then
  ret void, !dbg !1798
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stacktrace_trigger_print(ptr noundef %m, ptr nocapture noundef readnone %ops, ptr nocapture noundef readonly %data) #0 align 64 !dbg !1799 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1800
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.136, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.136, align 8
  %1 = ptrtoint ptr %data to i32, !dbg !1801
  call void @__asan_load4_noabort(i32 %1), !dbg !1801
  %2 = load i32, ptr %data, align 4, !dbg !1801
  %3 = inttoptr i32 %2 to ptr, !dbg !1802
  %filter_str = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 6, !dbg !1803
  %4 = ptrtoint ptr %filter_str to i32, !dbg !1803
  call void @__asan_load4_noabort(i32 %4), !dbg !1803
  %5 = load ptr, ptr %filter_str, align 4, !dbg !1803
  tail call fastcc void @event_trigger_print(ptr noundef nonnull @.str.23, ptr noundef %m, ptr noundef %3, ptr noundef %5), !dbg !1804
  ret i32 0, !dbg !1805
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stacktrace_trigger(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1779 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1806
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1807
  %0 = ptrtoint ptr %private_data to i32, !dbg !1807
  call void @__asan_load4_noabort(i32 %0), !dbg !1807
  %1 = load ptr, ptr %private_data, align 4, !dbg !1807
  %tobool.not = icmp eq ptr %1, null, !dbg !1808
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1808

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1809
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.137, align 8, !dbg !1809
  %2 = add i64 %gcov_ctr, 1, !dbg !1809
  store i64 %2, ptr @__llvm_gcov_ctr.137, align 8, !dbg !1809
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !1810
  %3 = ptrtoint ptr %tr to i32, !dbg !1810
  call void @__asan_load4_noabort(i32 %3), !dbg !1810
  %4 = load ptr, ptr %tr, align 4, !dbg !1810
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.138, align 8, !dbg !1811
  %5 = add i64 %gcov_ctr.i, 1, !dbg !1811
  store i64 %5, ptr @__llvm_gcov_ctr.138, align 8, !dbg !1811
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.139, align 8
  %6 = add i64 %gcov_ctr.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.139, align 8
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !dbg !1813, !srcloc !1791
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.140, align 8
  %8 = add i64 %gcov_ctr.i2.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.140, align 8
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.141, align 8
  %9 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.141, align 8
  %and.i.i.i = lshr i32 %7, 7, !dbg !1815
  %and.i.lobit.i.i = and i32 %and.i.i.i, 1, !dbg !1815
  %call2.i.i = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %and.i.lobit.i.i) #17, !dbg !1817
  tail call void @__trace_stack(ptr noundef %4, i32 noundef %call2.i.i, i32 noundef 4) #17, !dbg !1818
  br label %if.end, !dbg !1818

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1819
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !1819
  %10 = add i64 %gcov_ctr1, 1, !dbg !1819
  store i64 %10, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.137, i32 0, i32 1), align 8, !dbg !1819
  tail call void @trace_dump_stack(i32 noundef 4) #17, !dbg !1819
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1820
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_stack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_dump_stack(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unregister_trigger_enable_disable_cmds() unnamed_addr #4 section ".init.text" align 64 !dbg !1821 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1822
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.142, align 8, !dbg !1823
  %0 = add i64 %gcov_ctr, 1, !dbg !1823
  store i64 %0, ptr @__llvm_gcov_ctr.142, align 8, !dbg !1823
  %call = tail call i32 @unregister_event_command(ptr noundef nonnull @trigger_enable_cmd) #21, !dbg !1823
  %call1 = tail call i32 @unregister_event_command(ptr noundef nonnull @trigger_disable_cmd) #21, !dbg !1824
  ret void, !dbg !1825
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @event_enable_get_trigger_ops(ptr nocapture noundef readonly %cmd, ptr noundef readnone %param) #11 align 64 !dbg !1826 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1827
  %call = tail call i32 @strcmp(ptr noundef %cmd, ptr noundef nonnull dereferenceable(13) @.str.11) #18, !dbg !1828
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !1829
  %cmp = icmp eq i32 %call, 0, !dbg !1829
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.rhs, !dbg !1830

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1830
  br label %if.then, !dbg !1830

lor.rhs:                                          ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.143, align 16, !dbg !1831
  %0 = add i64 %gcov_ctr, 1, !dbg !1831
  store i64 %0, ptr @__llvm_gcov_ctr.143, align 16, !dbg !1831
  %call1 = tail call i32 @strcmp(ptr noundef %cmd, ptr noundef nonnull dereferenceable(12) @.str.9) #18, !dbg !1832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !1833
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1833
  br i1 %cmp2, label %lor.rhs.if.then_crit_edge, label %if.else, !dbg !1834

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1834
  br label %if.then, !dbg !1834

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 1), align 8, !dbg !1835
  %1 = add i64 %gcov_ctr6, 1, !dbg !1835
  store i64 %1, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 1), align 8, !dbg !1835
  %tobool3.not = icmp eq ptr %param, null, !dbg !1835
  %cond = select i1 %tobool3.not, ptr @event_enable_trigger_ops, ptr @event_enable_count_trigger_ops, !dbg !1835
  br label %if.end, !dbg !1836

if.else:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1837
  %gcov_ctr7 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 2), align 16, !dbg !1837
  %2 = add i64 %gcov_ctr7, 1, !dbg !1837
  store i64 %2, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.143, i32 0, i32 2), align 16, !dbg !1837
  %tobool4.not = icmp eq ptr %param, null, !dbg !1837
  %cond5 = select i1 %tobool4.not, ptr @event_disable_trigger_ops, ptr @event_disable_count_trigger_ops, !dbg !1837
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ops.0 = phi ptr [ %cond, %if.then ], [ %cond5, %if.else ], !dbg !1838
  ret ptr %ops.0, !dbg !1839
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_enable_count_trigger(ptr nocapture noundef %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1840 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1841
  %0 = ptrtoint ptr %data to i32, !dbg !1842
  call void @__asan_load4_noabort(i32 %0), !dbg !1842
  %1 = load i32, ptr %data, align 4, !dbg !1842
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !1843
  %tobool.not = icmp eq i32 %1, 0, !dbg !1843
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1844

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1845
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.144, align 16
  %2 = add i64 %gcov_ctr, 1
  store i64 %2, ptr @__llvm_gcov_ctr.144, align 16
  br label %cleanup, !dbg !1846

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1847
  %3 = ptrtoint ptr %private_data to i32, !dbg !1847
  call void @__asan_load4_noabort(i32 %3), !dbg !1847
  %4 = load ptr, ptr %private_data, align 4, !dbg !1847
  %enable = getelementptr inbounds %struct.enable_trigger_data, ptr %4, i32 0, i32 1, !dbg !1848
  %5 = ptrtoint ptr %enable to i32, !dbg !1848
  call void @__asan_load1_noabort(i32 %5), !dbg !1848
  %6 = load i8, ptr %enable, align 4, !dbg !1848, !range !145
  %7 = zext i8 %6 to i32, !dbg !1849
  %8 = ptrtoint ptr %4 to i32, !dbg !1850
  call void @__asan_load4_noabort(i32 %8), !dbg !1850
  %9 = load ptr, ptr %4, align 4, !dbg !1850
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %9, i32 0, i32 7, !dbg !1851
  %10 = ptrtoint ptr %flags to i32, !dbg !1851
  call void @__asan_load4_noabort(i32 %10), !dbg !1851
  %11 = load i32, ptr %flags, align 4, !dbg !1851
  %and = lshr i32 %11, 6, !dbg !1852
  %and.lobit = and i32 %and, 1, !dbg !1852
  %12 = xor i32 %and.lobit, 1, !dbg !1852
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %7), !dbg !1853
  %cmp = icmp eq i32 %12, %7, !dbg !1853
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !1849

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1845
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 1), align 8
  %13 = add i64 %gcov_ctr12, 1
  store i64 %13, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 1), align 8
  br label %cleanup, !dbg !1854

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1), !dbg !1855
  %cmp7.not = icmp eq i32 %1, -1, !dbg !1855
  br i1 %cmp7.not, label %if.end5.if.end11_crit_edge, label %if.then9, !dbg !1856

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1856
  br label %if.end11, !dbg !1856

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1857
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 2), align 16, !dbg !1857
  %14 = add i64 %gcov_ctr13, 1, !dbg !1857
  store i64 %14, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 2), align 16, !dbg !1857
  %15 = ptrtoint ptr %data to i32, !dbg !1858
  call void @__asan_load4_noabort(i32 %15), !dbg !1858
  %16 = load i32, ptr %data, align 4, !dbg !1858
  %dec = add i32 %16, -1, !dbg !1858
  store i32 %dec, ptr %data, align 4, !dbg !1858
  br label %if.end11, !dbg !1859

if.end11:                                         ; preds = %if.then9, %if.end5.if.end11_crit_edge
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !1860
  %17 = add i64 %gcov_ctr14, 1, !dbg !1860
  store i64 %17, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.144, i32 0, i32 3), align 8, !dbg !1860
  %18 = ptrtoint ptr %private_data to i32, !dbg !1861
  call void @__asan_load4_noabort(i32 %18), !dbg !1861
  %19 = load ptr, ptr %private_data, align 4, !dbg !1861
  %enable.i = getelementptr inbounds %struct.enable_trigger_data, ptr %19, i32 0, i32 1, !dbg !1864
  %20 = ptrtoint ptr %enable.i to i32, !dbg !1864
  call void @__asan_load1_noabort(i32 %20), !dbg !1864
  %21 = load i8, ptr %enable.i, align 4, !dbg !1864, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21), !dbg !1864
  %tobool.not.i = icmp eq i8 %21, 0, !dbg !1864
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !dbg !1865

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1866
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.145, align 8, !dbg !1866
  %22 = add i64 %gcov_ctr.i, 1, !dbg !1866
  store i64 %22, ptr @__llvm_gcov_ctr.145, align 8, !dbg !1866
  %23 = ptrtoint ptr %19 to i32, !dbg !1866
  call void @__asan_load4_noabort(i32 %23), !dbg !1866
  %24 = load ptr, ptr %19, align 4, !dbg !1866
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %24, i32 0, i32 7, !dbg !1866
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags.i) #17, !dbg !1866
  br label %cleanup, !dbg !1866

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1867
  %gcov_ctr3.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1867
  %25 = add i64 %gcov_ctr3.i, 1, !dbg !1867
  store i64 %25, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1867
  %26 = ptrtoint ptr %19 to i32, !dbg !1867
  call void @__asan_load4_noabort(i32 %26), !dbg !1867
  %27 = load ptr, ptr %19, align 4, !dbg !1867
  %flags2.i = getelementptr inbounds %struct.trace_event_file, ptr %27, i32 0, i32 7, !dbg !1867
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags2.i) #17, !dbg !1867
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.then4, %if.then
  ret void, !dbg !1868
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_enable_trigger(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %buffer, ptr nocapture noundef readnone %rec, ptr nocapture noundef readnone %event) #0 align 64 !dbg !1862 {
entry:
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1869
  %private_data = getelementptr inbounds %struct.event_trigger_data, ptr %data, i32 0, i32 7, !dbg !1870
  %0 = ptrtoint ptr %private_data to i32, !dbg !1870
  call void @__asan_load4_noabort(i32 %0), !dbg !1870
  %1 = load ptr, ptr %private_data, align 4, !dbg !1870
  %enable = getelementptr inbounds %struct.enable_trigger_data, ptr %1, i32 0, i32 1, !dbg !1871
  %2 = ptrtoint ptr %enable to i32, !dbg !1871
  call void @__asan_load1_noabort(i32 %2), !dbg !1871
  %3 = load i8, ptr %enable, align 4, !dbg !1871, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3), !dbg !1871
  %tobool.not = icmp eq i8 %3, 0, !dbg !1871
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1872

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1873
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.145, align 8, !dbg !1873
  %4 = add i64 %gcov_ctr, 1, !dbg !1873
  store i64 %4, ptr @__llvm_gcov_ctr.145, align 8, !dbg !1873
  %5 = ptrtoint ptr %1 to i32, !dbg !1873
  call void @__asan_load4_noabort(i32 %5), !dbg !1873
  %6 = load ptr, ptr %1, align 4, !dbg !1873
  %flags = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 7, !dbg !1873
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #17, !dbg !1873
  br label %if.end, !dbg !1873

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16, !dbg !1874
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1874
  %7 = add i64 %gcov_ctr3, 1, !dbg !1874
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.145, i32 0, i32 1), align 8, !dbg !1874
  %8 = ptrtoint ptr %1 to i32, !dbg !1874
  call void @__asan_load4_noabort(i32 %8), !dbg !1874
  %9 = load ptr, ptr %1, align 4, !dbg !1874
  %flags2 = getelementptr inbounds %struct.trace_event_file, ptr %9, i32 0, i32 7, !dbg !1874
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags2) #17, !dbg !1874
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1875
}

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #12 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -613052475) #17
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #17
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #17
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 123
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #16
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @llvm_gcda_summary_info() #17
  tail call void @llvm_gcda_end_file() #17
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #13 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.24, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) @__llvm_gcov_ctr.25, i8 0, i64 112, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  store i64 0, ptr @__llvm_gcov_ctr.27, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.28, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.29, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.30, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.31, align 8
  store i64 0, ptr @__llvm_gcov_ctr.32, align 8
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.34, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.35, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.36, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  store i64 0, ptr @__llvm_gcov_ctr.38, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.39, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.40, align 8
  store i64 0, ptr @__llvm_gcov_ctr.41, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.42, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.44, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.45, align 8
  store i64 0, ptr @__llvm_gcov_ctr.46, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.47, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.48, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.49, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.50, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.51, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.52, align 8
  store i64 0, ptr @__llvm_gcov_ctr.53, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.54, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.55, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.56, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.57, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.58, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.59, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.60, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.61, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.62, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.63, align 8
  store i64 0, ptr @__llvm_gcov_ctr.64, align 8
  store i64 0, ptr @__llvm_gcov_ctr.65, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.66, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.67, align 8
  store i64 0, ptr @__llvm_gcov_ctr.68, align 8
  store i64 0, ptr @__llvm_gcov_ctr.69, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.70, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.71, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.72, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.73, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(184) @__llvm_gcov_ctr.74, i8 0, i64 184, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.75, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.76, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.77, i8 0, i64 80, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.78, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.79, i8 0, i64 72, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.80, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.81, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.82, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.83, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.84, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.85, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.86, align 8
  store i64 0, ptr @__llvm_gcov_ctr.87, align 8
  store i64 0, ptr @__llvm_gcov_ctr.88, align 8
  store i64 0, ptr @__llvm_gcov_ctr.89, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.90, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.91, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.92, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.93, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.94, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.95, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.96, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.97, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.98, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.99, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.100, align 8
  store i64 0, ptr @__llvm_gcov_ctr.101, align 8
  store i64 0, ptr @__llvm_gcov_ctr.102, align 8
  store i64 0, ptr @__llvm_gcov_ctr.103, align 8
  store i64 0, ptr @__llvm_gcov_ctr.104, align 8
  store i64 0, ptr @__llvm_gcov_ctr.105, align 8
  store i64 0, ptr @__llvm_gcov_ctr.106, align 8
  store i64 0, ptr @__llvm_gcov_ctr.107, align 8
  store i64 0, ptr @__llvm_gcov_ctr.108, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.109, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.110, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.111, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.112, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.113, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.114, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.115, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.116, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.117, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) @__llvm_gcov_ctr.118, i8 0, i64 128, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.119, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr.120, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.121, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.122, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.123, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.124, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.125, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.126, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.127, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.128, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.129, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.130, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.131, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.132, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.133, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.134, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.135, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.136, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.137, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.138, align 8
  store i64 0, ptr @__llvm_gcov_ctr.139, align 8
  store i64 0, ptr @__llvm_gcov_ctr.140, align 8
  store i64 0, ptr @__llvm_gcov_ctr.141, align 8
  store i64 0, ptr @__llvm_gcov_ctr.142, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.143, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.144, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.145, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #12 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #17
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { noinline nounwind uwtable(sync) }
attributes #13 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nounwind uwtable(sync) }
attributes #16 = { nomerge }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { cold }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.gcov = !{!115}
!llvm.ident = !{!116}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_events_trigger.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_events_trigger.c", i32 67, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_events_trigger.c", i32 74, i32 12}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_event_triggers_call, !10, !"__ksymtab_event_triggers_call", i1 false, i1 false}
!10 = !{!"../kernel/trace/trace_events_trigger.c", i32 85, i32 1}
!11 = !{ptr @__ksymtab___trace_trigger_soft_disabled, !12, !"__ksymtab___trace_trigger_soft_disabled", i1 false, i1 false}
!12 = !{!"../kernel/trace/trace_events_trigger.c", i32 99, i32 1}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../kernel/trace/trace_events_trigger.c", i32 119, i32 2}
!15 = !{ptr @__ksymtab_event_triggers_post_call, !16, !"__ksymtab_event_triggers_post_call", i1 false, i1 false}
!16 = !{!"../kernel/trace/trace_events_trigger.c", i32 126, i32 1}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/trace/trace_events_trigger.c", i32 251, i32 26}
!19 = !{ptr @event_trigger_fops, !20, !"event_trigger_fops", i1 false, i1 false}
!20 = !{!"../kernel/trace/trace_events_trigger.c", i32 344, i32 30}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/trace/trace_events_trigger.c", i32 800, i32 37}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/trace/trace_events_trigger.c", i32 873, i32 27}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/trace/trace_events_trigger.c", i32 1119, i32 30}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/trace/trace_events_trigger.c", i32 1716, i32 16}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/trace/trace_events_trigger.c", i32 1718, i32 29}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/trace/trace_events_trigger.c", i32 1718, i32 47}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../kernel/trace/trace_events_trigger.c", i32 1719, i32 29}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/trace/trace_events_trigger.c", i32 1719, i32 48}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/trace/trace_events_trigger.c", i32 1724, i32 15}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/trace/trace_events_trigger.c", i32 1726, i32 17}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/trace/trace_events_trigger.c", i32 1729, i32 17}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../kernel/trace/trace_events_trigger.c", i32 1741, i32 6}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/trace/trace_events_trigger.c", i32 18, i32 8}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @trigger_cmd_mutex, !46, !"trigger_cmd_mutex", i1 false, i1 false}
!49 = !{ptr @trigger_commands, !50, !"trigger_commands", i1 false, i1 false}
!50 = !{!"../kernel/trace/trace_events_trigger.c", i32 17, i32 8}
!51 = !{ptr @event_triggers_seq_ops, !52, !"event_triggers_seq_ops", i1 false, i1 false}
!52 = !{!"../kernel/trace/trace_events_trigger.c", i32 196, i32 36}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../kernel/trace/trace_events_trigger.c", i32 145, i32 2}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/trace/trace_events_trigger.c", i32 180, i32 15}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/trace/trace_events_trigger.c", i32 184, i32 18}
!59 = !{ptr @named_triggers, !60, !"named_triggers", i1 false, i1 false}
!60 = !{!"../kernel/trace/trace_events_trigger.c", i32 1158, i32 8}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../kernel/trace/trace_events_trigger.c", i32 466, i32 6}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/trace/trace_events_trigger.c", i32 1464, i32 12}
!65 = !{ptr @trigger_traceon_cmd, !66, !"trigger_traceon_cmd", i1 false, i1 false}
!66 = !{!"../kernel/trace/trace_events_trigger.c", i32 1463, i32 29}
!67 = !{ptr @traceon_count_trigger_ops, !68, !"traceon_count_trigger_ops", i1 false, i1 false}
!68 = !{!"../kernel/trace/trace_events_trigger.c", i32 1426, i32 33}
!69 = !{ptr @traceon_trigger_ops, !70, !"traceon_trigger_ops", i1 false, i1 false}
!70 = !{!"../kernel/trace/trace_events_trigger.c", i32 1419, i32 33}
!71 = !{ptr @traceoff_count_trigger_ops, !72, !"traceoff_count_trigger_ops", i1 false, i1 false}
!72 = !{!"../kernel/trace/trace_events_trigger.c", i32 1440, i32 33}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/trace/trace_events_trigger.c", i32 1415, i32 29}
!75 = !{ptr @traceoff_trigger_ops, !76, !"traceoff_trigger_ops", i1 false, i1 false}
!76 = !{!"../kernel/trace/trace_events_trigger.c", i32 1433, i32 33}
!77 = !{ptr @trigger_traceoff_cmd, !78, !"trigger_traceoff_cmd", i1 false, i1 false}
!78 = !{!"../kernel/trace/trace_events_trigger.c", i32 1473, i32 29}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../kernel/trace/trace_events_trigger.c", i32 1552, i32 12}
!81 = !{ptr @trigger_snapshot_cmd, !82, !"trigger_snapshot_cmd", i1 false, i1 false}
!82 = !{!"../kernel/trace/trace_events_trigger.c", i32 1551, i32 29}
!83 = !{ptr @snapshot_count_trigger_ops, !84, !"snapshot_count_trigger_ops", i1 false, i1 false}
!84 = !{!"../kernel/trace/trace_events_trigger.c", i32 1538, i32 33}
!85 = !{ptr @snapshot_trigger_ops, !86, !"snapshot_trigger_ops", i1 false, i1 false}
!86 = !{!"../kernel/trace/trace_events_trigger.c", i32 1531, i32 33}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../kernel/trace/trace_events_trigger.c", i32 1648, i32 12}
!89 = !{ptr @trigger_stacktrace_cmd, !90, !"trigger_stacktrace_cmd", i1 false, i1 false}
!90 = !{!"../kernel/trace/trace_events_trigger.c", i32 1647, i32 29}
!91 = !{ptr @stacktrace_count_trigger_ops, !92, !"stacktrace_count_trigger_ops", i1 false, i1 false}
!92 = !{!"../kernel/trace/trace_events_trigger.c", i32 1634, i32 33}
!93 = !{ptr @stacktrace_trigger_ops, !94, !"stacktrace_trigger_ops", i1 false, i1 false}
!94 = !{!"../kernel/trace/trace_events_trigger.c", i32 1627, i32 33}
!95 = !{ptr @trigger_enable_cmd, !96, !"trigger_enable_cmd", i1 false, i1 false}
!96 = !{!"../kernel/trace/trace_events_trigger.c", i32 2025, i32 29}
!97 = !{ptr @event_enable_count_trigger_ops, !98, !"event_enable_count_trigger_ops", i1 false, i1 false}
!98 = !{!"../kernel/trace/trace_events_trigger.c", i32 1761, i32 33}
!99 = !{ptr @event_enable_trigger_ops, !100, !"event_enable_trigger_ops", i1 false, i1 false}
!100 = !{!"../kernel/trace/trace_events_trigger.c", i32 1754, i32 33}
!101 = !{ptr @event_disable_count_trigger_ops, !102, !"event_disable_count_trigger_ops", i1 false, i1 false}
!102 = !{!"../kernel/trace/trace_events_trigger.c", i32 1775, i32 33}
!103 = !{ptr @event_disable_trigger_ops, !104, !"event_disable_trigger_ops", i1 false, i1 false}
!104 = !{!"../kernel/trace/trace_events_trigger.c", i32 1768, i32 33}
!105 = !{ptr @trigger_disable_cmd, !106, !"trigger_disable_cmd", i1 false, i1 false}
!106 = !{!"../kernel/trace/trace_events_trigger.c", i32 2035, i32 29}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_events_trigger.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_events_trigger.gcda", !0}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = distinct !DISubprogram(name: "trigger_data_free", scope: !1, file: !1, line: 20, type: !118, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!118 = !DISubroutineType(types: !119)
!119 = !{}
!120 = !DILocation(line: 21, scope: !117)
!121 = !DILocation(line: 22, column: 12, scope: !117)
!122 = !DILocation(line: 22, column: 21, scope: !117)
!123 = !DILocation(line: 22, column: 6, scope: !117)
!124 = !DILocation(line: 23, column: 3, scope: !117)
!125 = !DILocation(line: 93, column: 2, scope: !126, inlinedAt: !128)
!126 = distinct !DISubprogram(name: "tracepoint_synchronize_unregister", scope: !127, file: !127, line: 91, type: !118, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!127 = !DIFile(filename: "../include/linux/tracepoint.h", directory: "/llk/linux-5.17/build_arm_allyes")
!128 = distinct !DILocation(line: 26, column: 2, scope: !117)
!129 = !DILocation(line: 94, column: 2, scope: !126, inlinedAt: !128)
!130 = !DILocation(line: 28, column: 2, scope: !117)
!131 = !DILocation(line: 29, column: 1, scope: !117)
!132 = distinct !DISubprogram(name: "event_triggers_call", scope: !1, file: !1, line: 56, type: !118, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!133 = !DILocation(line: 59, scope: !132)
!134 = !DILocation(line: 64, column: 24, scope: !132)
!135 = !DILocation(line: 292, column: 9, scope: !136, inlinedAt: !138)
!136 = distinct !DISubprogram(name: "list_empty", scope: !137, file: !137, line: 290, type: !118, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!137 = !DIFile(filename: "../include/linux/list.h", directory: "/llk/linux-5.17/build_arm_allyes")
!138 = distinct !DILocation(line: 64, column: 6, scope: !132)
!139 = !DILocation(line: 292, column: 31, scope: !136, inlinedAt: !138)
!140 = !DILocation(line: 64, column: 6, scope: !132)
!141 = !DILocation(line: 65, column: 10, scope: !132)
!142 = !DILocation(line: 65, column: 3, scope: !132)
!143 = !DILocation(line: 67, column: 2, scope: !132)
!144 = !DILocation(line: 68, column: 13, scope: !132)
!145 = !{i8 0, i8 2}
!146 = !DILocation(line: 68, column: 7, scope: !132)
!147 = !DILocation(line: 69, column: 4, scope: !132)
!148 = !DILocation(line: 70, column: 7, scope: !132)
!149 = !DILocation(line: 71, column: 4, scope: !132)
!150 = !DILocation(line: 71, column: 10, scope: !132)
!151 = !DILocation(line: 71, column: 15, scope: !132)
!152 = !DILocation(line: 72, column: 4, scope: !132)
!153 = !DILocation(line: 74, column: 12, scope: !132)
!154 = !DILocation(line: 75, column: 7, scope: !132)
!155 = !DILocation(line: 75, column: 14, scope: !132)
!156 = !DILocation(line: 75, column: 37, scope: !132)
!157 = !DILocation(line: 75, column: 18, scope: !132)
!158 = !DILocation(line: 76, column: 4, scope: !132)
!159 = !DILocation(line: 77, column: 40, scope: !132)
!160 = !DILocation(line: 1834, column: 18, scope: !161, inlinedAt: !163)
!161 = distinct !DISubprogram(name: "event_command_post_trigger", scope: !162, file: !162, line: 1832, type: !118, scopeLine: 1833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!162 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!163 = distinct !DILocation(line: 77, column: 7, scope: !132)
!164 = !DILocation(line: 1834, column: 24, scope: !161, inlinedAt: !163)
!165 = !DILocation(line: 1834, column: 9, scope: !161, inlinedAt: !163)
!166 = !DILocation(line: 77, column: 7, scope: !132)
!167 = !DILocation(line: 78, column: 10, scope: !132)
!168 = !DILocation(line: 78, column: 16, scope: !132)
!169 = !DILocation(line: 78, column: 25, scope: !132)
!170 = !DILocation(line: 78, column: 7, scope: !132)
!171 = !DILocation(line: 79, column: 4, scope: !132)
!172 = !DILocation(line: 81, column: 3, scope: !132)
!173 = !DILocation(line: 81, column: 9, scope: !132)
!174 = !DILocation(line: 81, column: 14, scope: !132)
!175 = !DILocation(line: 82, column: 2, scope: !132)
!176 = !DILocation(line: 0, scope: !132)
!177 = distinct !{!177, !143, !175}
!178 = !DILocation(line: 61, column: 26, scope: !132)
!179 = !DILocation(line: 83, column: 9, scope: !132)
!180 = !DILocation(line: 83, column: 2, scope: !132)
!181 = !DILocation(line: 84, column: 1, scope: !132)
!182 = distinct !DISubprogram(name: "__trace_trigger_soft_disabled", scope: !1, file: !1, line: 87, type: !118, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!183 = !DILocation(line: 88, scope: !182)
!184 = !DILocation(line: 89, column: 31, scope: !182)
!185 = !DILocation(line: 91, column: 13, scope: !182)
!186 = !DILocation(line: 91, column: 6, scope: !182)
!187 = !DILocation(line: 92, column: 23, scope: !182)
!188 = !DILocation(line: 92, column: 3, scope: !182)
!189 = !DILocation(line: 93, column: 13, scope: !182)
!190 = !DILocation(line: 93, column: 6, scope: !182)
!191 = !DILocation(line: 94, column: 3, scope: !182)
!192 = !DILocation(line: 95, column: 13, scope: !182)
!193 = !DILocation(line: 95, column: 6, scope: !182)
!194 = !DILocation(line: 96, column: 38, scope: !182)
!195 = !DILocation(line: 96, column: 10, scope: !182)
!196 = !DILocation(line: 96, column: 3, scope: !182)
!197 = !DILocation(line: 97, column: 2, scope: !182)
!198 = !DILocation(line: 0, scope: !182)
!199 = !DILocation(line: 98, column: 1, scope: !182)
!200 = distinct !DISubprogram(name: "event_triggers_post_call", scope: !1, file: !1, line: 114, type: !118, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!201 = !DILocation(line: 116, scope: !200)
!202 = !DILocation(line: 119, column: 2, scope: !200)
!203 = !DILocation(line: 120, column: 13, scope: !200)
!204 = !DILocation(line: 120, column: 7, scope: !200)
!205 = !DILocation(line: 122, column: 13, scope: !200)
!206 = !DILocation(line: 122, column: 22, scope: !200)
!207 = !DILocation(line: 122, column: 35, scope: !200)
!208 = !DILocation(line: 122, column: 7, scope: !200)
!209 = !DILocation(line: 123, column: 4, scope: !200)
!210 = !DILocation(line: 123, column: 10, scope: !200)
!211 = !DILocation(line: 123, column: 15, scope: !200)
!212 = !DILocation(line: 0, scope: !200)
!213 = distinct !{!213, !202, !214}
!214 = !DILocation(line: 124, column: 2, scope: !200)
!215 = !DILocation(line: 125, column: 1, scope: !200)
!216 = distinct !DISubprogram(name: "trigger_process_regex", scope: !1, file: !1, line: 244, type: !118, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!217 = !DILocation(line: 245, scope: !216)
!218 = !DILocation(line: 246, column: 2, scope: !216)
!219 = !DILocation(line: 250, column: 16, scope: !216)
!220 = !DILocation(line: 250, column: 7, scope: !216)
!221 = !DILocation(line: 251, column: 12, scope: !216)
!222 = !DILocation(line: 252, column: 6, scope: !216)
!223 = !DILocation(line: 253, column: 10, scope: !216)
!224 = !DILocation(line: 253, column: 8, scope: !216)
!225 = !DILocation(line: 254, column: 8, scope: !216)
!226 = !DILocation(line: 254, column: 7, scope: !216)
!227 = !DILocation(line: 255, column: 9, scope: !216)
!228 = !DILocation(line: 255, column: 4, scope: !216)
!229 = !DILocation(line: 256, column: 2, scope: !216)
!230 = !DILocation(line: 257, column: 13, scope: !216)
!231 = !DILocation(line: 257, column: 24, scope: !216)
!232 = !DILocation(line: 257, column: 12, scope: !216)
!233 = !DILocation(line: 257, column: 44, scope: !216)
!234 = !DILocation(line: 257, column: 52, scope: !216)
!235 = !DILocation(line: 259, column: 2, scope: !216)
!236 = !DILocation(line: 260, column: 2, scope: !216)
!237 = !DILocation(line: 261, column: 17, scope: !216)
!238 = !DILocation(line: 261, column: 7, scope: !216)
!239 = !DILocation(line: 261, column: 32, scope: !216)
!240 = !DILocation(line: 262, column: 10, scope: !216)
!241 = !DILocation(line: 262, column: 13, scope: !216)
!242 = !DILocation(line: 262, column: 43, scope: !216)
!243 = !DILocation(line: 263, column: 4, scope: !216)
!244 = distinct !{!244, !236, !245}
!245 = !DILocation(line: 265, column: 2, scope: !216)
!246 = !DILocation(line: 0, scope: !216)
!247 = !DILocation(line: 267, column: 2, scope: !216)
!248 = !DILocation(line: 270, column: 1, scope: !216)
!249 = !DILocation(line: 269, column: 2, scope: !216)
!250 = distinct !DISubprogram(name: "event_trigger_write", scope: !1, file: !1, line: 325, type: !118, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!251 = !DILocation(line: 327, scope: !250)
!252 = !DILocation(line: 280, column: 7, scope: !253, inlinedAt: !254)
!253 = distinct !DISubprogram(name: "event_trigger_regex_write", scope: !1, file: !1, line: 272, type: !118, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!254 = distinct !DILocation(line: 328, column: 9, scope: !250)
!255 = !DILocation(line: 280, column: 6, scope: !253, inlinedAt: !254)
!256 = !DILocation(line: 281, column: 3, scope: !253, inlinedAt: !254)
!257 = !DILocation(line: 283, column: 10, scope: !253, inlinedAt: !254)
!258 = !DILocation(line: 283, column: 6, scope: !253, inlinedAt: !254)
!259 = !DILocation(line: 284, column: 3, scope: !253, inlinedAt: !254)
!260 = !DILocation(line: 286, column: 8, scope: !253, inlinedAt: !254)
!261 = !DILocation(line: 36, column: 9, scope: !262, inlinedAt: !264)
!262 = distinct !DISubprogram(name: "IS_ERR", scope: !263, file: !263, line: 34, type: !118, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!263 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!264 = distinct !DILocation(line: 287, column: 6, scope: !253, inlinedAt: !254)
!265 = !DILocation(line: 287, column: 6, scope: !253, inlinedAt: !254)
!266 = !DILocation(line: 288, column: 18, scope: !253, inlinedAt: !254)
!267 = !DILocation(line: 31, column: 9, scope: !268, inlinedAt: !269)
!268 = distinct !DISubprogram(name: "PTR_ERR", scope: !263, file: !263, line: 29, type: !118, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!269 = distinct !DILocation(line: 288, column: 10, scope: !253, inlinedAt: !254)
!270 = !DILocation(line: 288, column: 3, scope: !253, inlinedAt: !254)
!271 = !DILocation(line: 290, column: 2, scope: !253, inlinedAt: !254)
!272 = !DILocation(line: 292, column: 2, scope: !253, inlinedAt: !254)
!273 = !DILocation(line: 1341, column: 12, scope: !274, inlinedAt: !276)
!274 = distinct !DISubprogram(name: "file_inode", scope: !275, file: !275, line: 1339, type: !118, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!275 = !DIFile(filename: "../include/linux/fs.h", directory: "/llk/linux-5.17/build_arm_allyes")
!276 = distinct !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !278)
!277 = distinct !DISubprogram(name: "event_file_data", scope: !162, file: !162, line: 1518, type: !118, scopeLine: 1519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!278 = distinct !DILocation(line: 293, column: 15, scope: !253, inlinedAt: !254)
!279 = !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !278)
!280 = !DILocation(line: 294, column: 6, scope: !253, inlinedAt: !254)
!281 = !{!"branch_weights", i32 1, i32 2000}
!282 = !DILocation(line: 295, column: 3, scope: !253, inlinedAt: !254)
!283 = !DILocation(line: 296, column: 3, scope: !253, inlinedAt: !254)
!284 = !DILocation(line: 297, column: 3, scope: !253, inlinedAt: !254)
!285 = !DILocation(line: 299, column: 8, scope: !253, inlinedAt: !254)
!286 = !DILocation(line: 300, column: 2, scope: !253, inlinedAt: !254)
!287 = !DILocation(line: 302, column: 2, scope: !253, inlinedAt: !254)
!288 = !DILocation(line: 303, column: 10, scope: !253, inlinedAt: !254)
!289 = !DILocation(line: 303, column: 6, scope: !253, inlinedAt: !254)
!290 = !DILocation(line: 304, column: 3, scope: !253, inlinedAt: !254)
!291 = !DILocation(line: 306, column: 11, scope: !253, inlinedAt: !254)
!292 = !DILocation(line: 306, column: 8, scope: !253, inlinedAt: !254)
!293 = !DILocation(line: 307, column: 2, scope: !253, inlinedAt: !254)
!294 = !DILocation(line: 0, scope: !253, inlinedAt: !254)
!295 = !DILocation(line: 328, column: 2, scope: !250)
!296 = distinct !DISubprogram(name: "event_trigger_open", scope: !1, file: !1, line: 332, type: !118, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!297 = !DILocation(line: 333, scope: !296)
!298 = !DILocation(line: 207, column: 8, scope: !299, inlinedAt: !300)
!299 = distinct !DISubprogram(name: "event_trigger_regex_open", scope: !1, file: !1, line: 203, type: !118, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!300 = distinct !DILocation(line: 335, column: 9, scope: !296)
!301 = !DILocation(line: 208, column: 6, scope: !299, inlinedAt: !300)
!302 = !DILocation(line: 209, column: 10, scope: !299, inlinedAt: !300)
!303 = !DILocation(line: 209, column: 3, scope: !299, inlinedAt: !300)
!304 = !DILocation(line: 211, column: 2, scope: !299, inlinedAt: !300)
!305 = !DILocation(line: 1341, column: 12, scope: !274, inlinedAt: !306)
!306 = distinct !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !307)
!307 = distinct !DILocation(line: 213, column: 6, scope: !299, inlinedAt: !300)
!308 = !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !307)
!309 = !DILocation(line: 213, column: 6, scope: !299, inlinedAt: !300)
!310 = !DILocation(line: 214, column: 3, scope: !299, inlinedAt: !300)
!311 = !DILocation(line: 215, column: 3, scope: !299, inlinedAt: !300)
!312 = !DILocation(line: 218, column: 13, scope: !299, inlinedAt: !300)
!313 = !DILocation(line: 218, column: 20, scope: !299, inlinedAt: !300)
!314 = !DILocation(line: 218, column: 35, scope: !299, inlinedAt: !300)
!315 = !DILocation(line: 219, column: 7, scope: !299, inlinedAt: !300)
!316 = !DILocation(line: 219, column: 13, scope: !299, inlinedAt: !300)
!317 = !DILocation(line: 219, column: 21, scope: !299, inlinedAt: !300)
!318 = !DILocation(line: 218, column: 6, scope: !299, inlinedAt: !300)
!319 = !DILocation(line: 1341, column: 12, scope: !274, inlinedAt: !320)
!320 = distinct !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !321)
!321 = distinct !DILocation(line: 223, column: 16, scope: !299, inlinedAt: !300)
!322 = !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !321)
!323 = !DILocation(line: 225, column: 3, scope: !299, inlinedAt: !300)
!324 = !DILocation(line: 226, column: 11, scope: !299, inlinedAt: !300)
!325 = !DILocation(line: 226, column: 8, scope: !299, inlinedAt: !300)
!326 = !DILocation(line: 227, column: 5, scope: !299, inlinedAt: !300)
!327 = distinct !{!327, !323, !328}
!328 = !DILocation(line: 228, column: 3, scope: !299, inlinedAt: !300)
!329 = !DILocation(line: 229, column: 2, scope: !299, inlinedAt: !300)
!330 = !DILocation(line: 231, column: 12, scope: !299, inlinedAt: !300)
!331 = !DILocation(line: 231, column: 19, scope: !299, inlinedAt: !300)
!332 = !DILocation(line: 231, column: 6, scope: !299, inlinedAt: !300)
!333 = !DILocation(line: 232, column: 9, scope: !299, inlinedAt: !300)
!334 = !DILocation(line: 233, column: 8, scope: !299, inlinedAt: !300)
!335 = !DILocation(line: 233, column: 7, scope: !299, inlinedAt: !300)
!336 = !DILocation(line: 234, column: 4, scope: !299, inlinedAt: !300)
!337 = !DILocation(line: 234, column: 31, scope: !299, inlinedAt: !300)
!338 = !DILocation(line: 235, column: 7, scope: !299, inlinedAt: !300)
!339 = !DILocation(line: 235, column: 15, scope: !299, inlinedAt: !300)
!340 = !DILocation(line: 236, column: 3, scope: !299, inlinedAt: !300)
!341 = !DILocation(line: 237, column: 2, scope: !299, inlinedAt: !300)
!342 = !DILocation(line: 0, scope: !299, inlinedAt: !300)
!343 = !DILocation(line: 239, column: 2, scope: !299, inlinedAt: !300)
!344 = !DILocation(line: 241, column: 2, scope: !299, inlinedAt: !300)
!345 = !DILocation(line: 335, column: 2, scope: !296)
!346 = distinct !DISubprogram(name: "event_trigger_release", scope: !1, file: !1, line: 339, type: !118, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!347 = !DILocation(line: 340, scope: !346)
!348 = !DILocation(line: 314, column: 2, scope: !349, inlinedAt: !350)
!349 = distinct !DISubprogram(name: "event_trigger_regex_release", scope: !1, file: !1, line: 312, type: !118, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!350 = distinct !DILocation(line: 341, column: 9, scope: !346)
!351 = !DILocation(line: 316, column: 12, scope: !349, inlinedAt: !350)
!352 = !DILocation(line: 316, column: 19, scope: !349, inlinedAt: !350)
!353 = !DILocation(line: 316, column: 6, scope: !349, inlinedAt: !350)
!354 = !DILocation(line: 317, column: 15, scope: !349, inlinedAt: !350)
!355 = !DILocation(line: 317, column: 3, scope: !349, inlinedAt: !350)
!356 = !DILocation(line: 319, column: 2, scope: !349, inlinedAt: !350)
!357 = !DILocation(line: 341, column: 2, scope: !346)
!358 = distinct !DISubprogram(name: "register_event_command", scope: !1, file: !1, line: 356, type: !118, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!359 = !DILocation(line: 357, scope: !358)
!360 = !DILocation(line: 361, column: 2, scope: !358)
!361 = !DILocation(line: 362, column: 2, scope: !358)
!362 = !DILocation(line: 363, column: 19, scope: !358)
!363 = !DILocation(line: 363, column: 28, scope: !358)
!364 = !DILocation(line: 363, column: 7, scope: !358)
!365 = !DILocation(line: 363, column: 34, scope: !358)
!366 = !DILocation(line: 364, column: 8, scope: !358)
!367 = !DILocation(line: 365, column: 4, scope: !358)
!368 = distinct !{!368, !361, !369}
!369 = !DILocation(line: 367, column: 2, scope: !358)
!370 = !DILocation(line: 368, column: 12, scope: !358)
!371 = !DILocation(line: 88, column: 30, scope: !372, inlinedAt: !373)
!372 = distinct !DISubprogram(name: "list_add", scope: !137, file: !137, line: 86, type: !118, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!373 = distinct !DILocation(line: 368, column: 2, scope: !358)
!374 = !DILocation(line: 69, column: 7, scope: !375, inlinedAt: !376)
!375 = distinct !DISubprogram(name: "__list_add", scope: !137, file: !137, line: 65, type: !118, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!376 = distinct !DILocation(line: 88, column: 2, scope: !372, inlinedAt: !373)
!377 = !DILocation(line: 69, column: 6, scope: !375, inlinedAt: !376)
!378 = !DILocation(line: 72, column: 8, scope: !375, inlinedAt: !376)
!379 = !DILocation(line: 72, column: 13, scope: !375, inlinedAt: !376)
!380 = !DILocation(line: 73, column: 12, scope: !375, inlinedAt: !376)
!381 = !DILocation(line: 74, column: 7, scope: !375, inlinedAt: !376)
!382 = !DILocation(line: 74, column: 12, scope: !375, inlinedAt: !376)
!383 = !DILocation(line: 75, column: 2, scope: !375, inlinedAt: !376)
!384 = !DILocation(line: 0, scope: !375, inlinedAt: !376)
!385 = !DILocation(line: 368, column: 2, scope: !358)
!386 = !DILocation(line: 0, scope: !358)
!387 = !DILocation(line: 370, column: 2, scope: !358)
!388 = !DILocation(line: 372, column: 2, scope: !358)
!389 = distinct !DISubprogram(name: "unregister_event_command", scope: !1, file: !1, line: 379, type: !118, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!390 = !DILocation(line: 380, scope: !389)
!391 = !DILocation(line: 384, column: 2, scope: !389)
!392 = !DILocation(line: 385, column: 2, scope: !389)
!393 = !DILocation(line: 386, column: 19, scope: !389)
!394 = !DILocation(line: 386, column: 28, scope: !389)
!395 = !DILocation(line: 386, column: 7, scope: !389)
!396 = !DILocation(line: 386, column: 34, scope: !389)
!397 = !DILocation(line: 387, column: 8, scope: !389)
!398 = !DILocation(line: 134, column: 7, scope: !399, inlinedAt: !400)
!399 = distinct !DISubprogram(name: "__list_del_entry", scope: !137, file: !137, line: 132, type: !118, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!400 = distinct !DILocation(line: 206, column: 2, scope: !401, inlinedAt: !402)
!401 = distinct !DISubprogram(name: "list_del_init", scope: !137, file: !137, line: 204, type: !118, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!402 = distinct !DILocation(line: 388, column: 4, scope: !389)
!403 = !DILocation(line: 134, column: 6, scope: !399, inlinedAt: !400)
!404 = !DILocation(line: 135, column: 3, scope: !399, inlinedAt: !400)
!405 = !DILocation(line: 137, column: 13, scope: !399, inlinedAt: !400)
!406 = !DILocation(line: 137, column: 20, scope: !399, inlinedAt: !400)
!407 = !DILocation(line: 137, column: 33, scope: !399, inlinedAt: !400)
!408 = !DILocation(line: 114, column: 8, scope: !409, inlinedAt: !410)
!409 = distinct !DISubprogram(name: "__list_del", scope: !137, file: !137, line: 112, type: !118, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!410 = distinct !DILocation(line: 137, column: 2, scope: !399, inlinedAt: !400)
!411 = !DILocation(line: 114, column: 13, scope: !409, inlinedAt: !410)
!412 = !DILocation(line: 115, column: 2, scope: !409, inlinedAt: !410)
!413 = !DILocation(line: 138, column: 1, scope: !399, inlinedAt: !400)
!414 = !DILocation(line: 37, column: 2, scope: !415, inlinedAt: !416)
!415 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !137, file: !137, line: 35, type: !118, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!416 = distinct !DILocation(line: 207, column: 2, scope: !401, inlinedAt: !402)
!417 = !DILocation(line: 38, column: 8, scope: !415, inlinedAt: !416)
!418 = !DILocation(line: 38, column: 13, scope: !415, inlinedAt: !416)
!419 = !DILocation(line: 389, column: 4, scope: !389)
!420 = distinct !{!420, !392, !421}
!421 = !DILocation(line: 391, column: 2, scope: !389)
!422 = !DILocation(line: 0, scope: !389)
!423 = !DILocation(line: 393, column: 2, scope: !389)
!424 = !DILocation(line: 395, column: 2, scope: !389)
!425 = distinct !DISubprogram(name: "event_trigger_init", scope: !1, file: !1, line: 445, type: !118, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!426 = !DILocation(line: 447, scope: !425)
!427 = !DILocation(line: 448, column: 8, scope: !425)
!428 = !DILocation(line: 448, column: 11, scope: !425)
!429 = !DILocation(line: 449, column: 2, scope: !425)
!430 = distinct !DISubprogram(name: "trace_event_trigger_enable_disable", scope: !1, file: !1, line: 474, type: !118, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!431 = !DILocation(line: 476, scope: !430)
!432 = !DILocation(line: 479, column: 6, scope: !430)
!433 = !DILocation(line: 0, scope: !430)
!434 = !DILocation(line: 101, column: 2, scope: !435, inlinedAt: !437)
!435 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !436, file: !436, line: 99, type: !118, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!436 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!437 = distinct !DILocation(line: 198, column: 2, scope: !438, inlinedAt: !440)
!438 = distinct !DISubprogram(name: "atomic_inc_return", scope: !439, file: !439, line: 195, type: !118, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!439 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!440 = distinct !DILocation(line: 480, column: 7, scope: !430)
!441 = !DILocation(line: 200, column: 2, scope: !442, inlinedAt: !444)
!442 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !443, file: !443, line: 197, type: !118, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!443 = !DIFile(filename: "../include/linux/atomic/atomic-arch-fallback.h", directory: "/llk/linux-5.17/build_arm_allyes")
!444 = distinct !DILocation(line: 356, column: 9, scope: !445, inlinedAt: !446)
!445 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !443, file: !443, line: 354, type: !118, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!446 = distinct !DILocation(line: 199, column: 9, scope: !438, inlinedAt: !440)
!447 = !{i64 2148533582}
!448 = !DILocation(line: 223, column: 1, scope: !449, inlinedAt: !451)
!449 = distinct !DISubprogram(name: "arch_atomic_add_return_relaxed", scope: !450, file: !450, line: 223, type: !118, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!450 = !DIFile(filename: "../arch/arm/include/asm/atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!451 = distinct !DILocation(line: 201, column: 8, scope: !442, inlinedAt: !444)
!452 = !{i64 2148448867, i64 2148448899, i64 2148448928, i64 2148448962, i64 2148448993, i64 2148449016}
!453 = !DILocation(line: 202, column: 2, scope: !442, inlinedAt: !444)
!454 = !{i64 2148533811}
!455 = !DILocation(line: 480, column: 40, scope: !430)
!456 = !DILocation(line: 480, column: 7, scope: !430)
!457 = !DILocation(line: 481, column: 11, scope: !430)
!458 = !DILocation(line: 481, column: 4, scope: !430)
!459 = !DILocation(line: 482, column: 3, scope: !430)
!460 = !DILocation(line: 483, column: 9, scope: !430)
!461 = !DILocation(line: 484, column: 2, scope: !430)
!462 = !DILocation(line: 101, column: 2, scope: !435, inlinedAt: !463)
!463 = distinct !DILocation(line: 265, column: 2, scope: !464, inlinedAt: !465)
!464 = distinct !DISubprogram(name: "atomic_dec_return", scope: !439, file: !439, line: 262, type: !118, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!465 = distinct !DILocation(line: 485, column: 7, scope: !430)
!466 = !DILocation(line: 284, column: 2, scope: !467, inlinedAt: !468)
!467 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !443, file: !443, line: 281, type: !118, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!468 = distinct !DILocation(line: 527, column: 9, scope: !469, inlinedAt: !470)
!469 = distinct !DISubprogram(name: "arch_atomic_dec_return", scope: !443, file: !443, line: 525, type: !118, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!470 = distinct !DILocation(line: 266, column: 9, scope: !464, inlinedAt: !465)
!471 = !{i64 2148536623}
!472 = !DILocation(line: 224, column: 1, scope: !473, inlinedAt: !474)
!473 = distinct !DISubprogram(name: "arch_atomic_sub_return_relaxed", scope: !450, file: !450, line: 224, type: !118, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!474 = distinct !DILocation(line: 285, column: 8, scope: !467, inlinedAt: !468)
!475 = !{i64 2148451332, i64 2148451364, i64 2148451393, i64 2148451427, i64 2148451458, i64 2148451481}
!476 = !DILocation(line: 286, column: 2, scope: !467, inlinedAt: !468)
!477 = !{i64 2148536852}
!478 = !DILocation(line: 485, column: 40, scope: !430)
!479 = !DILocation(line: 485, column: 7, scope: !430)
!480 = !DILocation(line: 486, column: 11, scope: !430)
!481 = !DILocation(line: 486, column: 4, scope: !430)
!482 = !DILocation(line: 487, column: 3, scope: !430)
!483 = !DILocation(line: 488, column: 9, scope: !430)
!484 = !DILocation(line: 492, column: 1, scope: !430)
!485 = distinct !DISubprogram(name: "clear_event_triggers", scope: !1, file: !1, line: 508, type: !118, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!486 = !DILocation(line: 509, scope: !485)
!487 = !DILocation(line: 512, column: 2, scope: !485)
!488 = !DILocation(line: 514, column: 3, scope: !485)
!489 = !DILocation(line: 515, column: 4, scope: !485)
!490 = !DILocation(line: 134, column: 7, scope: !399, inlinedAt: !491)
!491 = distinct !DILocation(line: 157, column: 2, scope: !492, inlinedAt: !494)
!492 = distinct !DISubprogram(name: "list_del_rcu", scope: !493, file: !493, line: 155, type: !118, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!493 = !DIFile(filename: "../include/linux/rculist.h", directory: "/llk/linux-5.17/build_arm_allyes")
!494 = distinct !DILocation(line: 516, column: 4, scope: !485)
!495 = !DILocation(line: 134, column: 6, scope: !399, inlinedAt: !491)
!496 = !DILocation(line: 135, column: 3, scope: !399, inlinedAt: !491)
!497 = !DILocation(line: 137, column: 13, scope: !399, inlinedAt: !491)
!498 = !DILocation(line: 137, column: 20, scope: !399, inlinedAt: !491)
!499 = !DILocation(line: 137, column: 33, scope: !399, inlinedAt: !491)
!500 = !DILocation(line: 114, column: 8, scope: !409, inlinedAt: !501)
!501 = distinct !DILocation(line: 137, column: 2, scope: !399, inlinedAt: !491)
!502 = !DILocation(line: 114, column: 13, scope: !409, inlinedAt: !501)
!503 = !DILocation(line: 115, column: 2, scope: !409, inlinedAt: !501)
!504 = !DILocation(line: 138, column: 1, scope: !399, inlinedAt: !491)
!505 = !DILocation(line: 158, column: 9, scope: !492, inlinedAt: !494)
!506 = !DILocation(line: 158, column: 14, scope: !492, inlinedAt: !494)
!507 = !DILocation(line: 517, column: 14, scope: !485)
!508 = !DILocation(line: 517, column: 19, scope: !485)
!509 = !DILocation(line: 517, column: 8, scope: !485)
!510 = !DILocation(line: 518, column: 5, scope: !485)
!511 = !DILocation(line: 518, column: 11, scope: !485)
!512 = !DILocation(line: 518, column: 16, scope: !485)
!513 = distinct !{!513, !488, !514}
!514 = !DILocation(line: 519, column: 3, scope: !485)
!515 = distinct !{!515, !487, !516}
!516 = !DILocation(line: 520, column: 2, scope: !485)
!517 = !DILocation(line: 521, column: 1, scope: !485)
!518 = distinct !DISubprogram(name: "update_cond_flag", scope: !1, file: !1, line: 533, type: !118, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!519 = !DILocation(line: 534, scope: !518)
!520 = !DILocation(line: 538, column: 2, scope: !518)
!521 = !DILocation(line: 283, column: 9, scope: !522, inlinedAt: !524)
!522 = distinct !DISubprogram(name: "lock_is_held", scope: !523, file: !523, line: 281, type: !118, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!523 = !DIFile(filename: "../include/linux/lockdep.h", directory: "/llk/linux-5.17/build_arm_allyes")
!524 = distinct !DILocation(line: 538, column: 2, scope: !518)
!525 = !DILocation(line: 540, column: 2, scope: !518)
!526 = !DILocation(line: 541, column: 13, scope: !518)
!527 = !DILocation(line: 541, column: 7, scope: !518)
!528 = !DILocation(line: 541, column: 20, scope: !518)
!529 = !DILocation(line: 541, column: 50, scope: !518)
!530 = !DILocation(line: 541, column: 56, scope: !518)
!531 = !DILocation(line: 1834, column: 18, scope: !161, inlinedAt: !532)
!532 = distinct !DILocation(line: 541, column: 23, scope: !518)
!533 = !DILocation(line: 1834, column: 24, scope: !161, inlinedAt: !532)
!534 = !DILocation(line: 1834, column: 9, scope: !161, inlinedAt: !532)
!535 = !DILocation(line: 541, column: 65, scope: !518)
!536 = !DILocation(line: 542, column: 31, scope: !518)
!537 = !DILocation(line: 542, column: 37, scope: !518)
!538 = !DILocation(line: 1839, column: 18, scope: !539, inlinedAt: !540)
!539 = distinct !DISubprogram(name: "event_command_needs_rec", scope: !162, file: !162, line: 1837, type: !118, scopeLine: 1838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!540 = distinct !DILocation(line: 542, column: 7, scope: !518)
!541 = !DILocation(line: 1839, column: 24, scope: !539, inlinedAt: !540)
!542 = !DILocation(line: 1839, column: 9, scope: !539, inlinedAt: !540)
!543 = !DILocation(line: 543, column: 13, scope: !518)
!544 = !DILocation(line: 549, column: 3, scope: !518)
!545 = !DILocation(line: 546, column: 2, scope: !518)
!546 = distinct !{!546, !525, !545}
!547 = !DILocation(line: 551, column: 3, scope: !518)
!548 = !DILocation(line: 552, column: 1, scope: !518)
!549 = distinct !DISubprogram(name: "event_trigger_check_remove", scope: !1, file: !1, line: 723, type: !118, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!550 = !DILocation(line: 724, scope: !549)
!551 = !DILocation(line: 725, column: 10, scope: !549)
!552 = !DILocation(line: 725, column: 15, scope: !549)
!553 = !DILocation(line: 725, column: 18, scope: !549)
!554 = !DILocation(line: 725, column: 26, scope: !549)
!555 = !DILocation(line: 0, scope: !549)
!556 = !DILocation(line: 725, column: 2, scope: !549)
!557 = distinct !DISubprogram(name: "event_trigger_empty_param", scope: !1, file: !1, line: 740, type: !118, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!558 = !DILocation(line: 741, scope: !557)
!559 = !DILocation(line: 742, column: 9, scope: !557)
!560 = !DILocation(line: 742, column: 2, scope: !557)
!561 = distinct !DISubprogram(name: "event_trigger_separate_filter", scope: !1, file: !1, line: 771, type: !118, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!562 = !DILocation(line: 773, scope: !561)
!563 = !DILocation(line: 776, column: 19, scope: !561)
!564 = !DILocation(line: 776, column: 9, scope: !561)
!565 = !DILocation(line: 778, column: 7, scope: !561)
!566 = !DILocation(line: 778, column: 6, scope: !561)
!567 = !DILocation(line: 779, column: 7, scope: !561)
!568 = !DILocation(line: 780, column: 8, scope: !561)
!569 = !DILocation(line: 780, column: 4, scope: !561)
!570 = !DILocation(line: 0, scope: !561)
!571 = !DILocation(line: 781, column: 3, scope: !561)
!572 = !DILocation(line: 790, column: 7, scope: !561)
!573 = !DILocation(line: 790, column: 22, scope: !561)
!574 = !DILocation(line: 790, column: 25, scope: !561)
!575 = !DILocation(line: 790, column: 54, scope: !561)
!576 = !DILocation(line: 45, column: 13, scope: !577, inlinedAt: !579)
!577 = distinct !DISubprogram(name: "isdigit", scope: !578, file: !578, line: 43, type: !118, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!578 = !DIFile(filename: "../include/linux/ctype.h", directory: "/llk/linux-5.17/build_arm_allyes")
!579 = distinct !DILocation(line: 790, column: 46, scope: !561)
!580 = !DILocation(line: 45, column: 18, scope: !577, inlinedAt: !579)
!581 = !DILocation(line: 45, column: 21, scope: !577, inlinedAt: !579)
!582 = !DILocation(line: 45, column: 23, scope: !577, inlinedAt: !579)
!583 = !DILocation(line: 790, column: 6, scope: !561)
!584 = !DILocation(line: 791, column: 13, scope: !561)
!585 = !DILocation(line: 791, column: 11, scope: !561)
!586 = !DILocation(line: 792, column: 3, scope: !561)
!587 = !DILocation(line: 800, column: 11, scope: !561)
!588 = !DILocation(line: 800, column: 9, scope: !561)
!589 = !DILocation(line: 805, column: 6, scope: !561)
!590 = !DILocation(line: 806, column: 13, scope: !561)
!591 = !DILocation(line: 806, column: 11, scope: !561)
!592 = !DILocation(line: 807, column: 8, scope: !561)
!593 = !DILocation(line: 807, column: 7, scope: !561)
!594 = !DILocation(line: 808, column: 5, scope: !561)
!595 = !DILocation(line: 808, column: 12, scope: !561)
!596 = !DILocation(line: 808, column: 4, scope: !561)
!597 = !DILocation(line: 809, column: 2, scope: !561)
!598 = !DILocation(line: 811, column: 2, scope: !561)
!599 = distinct !DISubprogram(name: "event_trigger_alloc", scope: !1, file: !1, line: 830, type: !118, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!600 = !DILocation(line: 834, scope: !599)
!601 = !DILocation(line: 838, column: 25, scope: !599)
!602 = !DILocation(line: 838, column: 16, scope: !599)
!603 = !DILocation(line: 376, column: 3, scope: !604, inlinedAt: !606)
!604 = distinct !DISubprogram(name: "__kmalloc_index", scope: !605, file: !605, line: 369, type: !118, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!605 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!606 = distinct !DILocation(line: 576, column: 11, scope: !607, inlinedAt: !608)
!607 = distinct !DISubprogram(name: "kmalloc", scope: !605, file: !605, line: 567, type: !118, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!608 = distinct !DILocation(line: 714, column: 9, scope: !609, inlinedAt: !610)
!609 = distinct !DISubprogram(name: "kzalloc", scope: !605, file: !605, line: 712, type: !118, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!610 = distinct !DILocation(line: 840, column: 17, scope: !599)
!611 = !DILocation(line: 582, column: 33, scope: !607, inlinedAt: !608)
!612 = !DILocation(line: 339, column: 3, scope: !613, inlinedAt: !614)
!613 = distinct !DISubprogram(name: "kmalloc_type", scope: !605, file: !605, line: 332, type: !118, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!614 = distinct !DILocation(line: 582, column: 20, scope: !607, inlinedAt: !608)
!615 = !DILocation(line: 582, column: 5, scope: !607, inlinedAt: !608)
!616 = !DILocation(line: 581, column: 10, scope: !607, inlinedAt: !608)
!617 = !DILocation(line: 841, column: 7, scope: !599)
!618 = !DILocation(line: 841, column: 6, scope: !599)
!619 = !DILocation(line: 844, column: 22, scope: !599)
!620 = !DILocation(line: 845, column: 16, scope: !599)
!621 = !DILocation(line: 845, column: 20, scope: !599)
!622 = !DILocation(line: 846, column: 16, scope: !599)
!623 = !DILocation(line: 846, column: 24, scope: !599)
!624 = !DILocation(line: 847, column: 16, scope: !599)
!625 = !DILocation(line: 847, column: 29, scope: !599)
!626 = !DILocation(line: 849, column: 32, scope: !599)
!627 = !DILocation(line: 37, column: 2, scope: !415, inlinedAt: !628)
!628 = distinct !DILocation(line: 849, column: 2, scope: !599)
!629 = !DILocation(line: 38, column: 8, scope: !415, inlinedAt: !628)
!630 = !DILocation(line: 38, column: 13, scope: !415, inlinedAt: !628)
!631 = !DILocation(line: 850, column: 32, scope: !599)
!632 = !DILocation(line: 37, column: 2, scope: !415, inlinedAt: !633)
!633 = distinct !DILocation(line: 850, column: 2, scope: !599)
!634 = !DILocation(line: 38, column: 8, scope: !415, inlinedAt: !633)
!635 = !DILocation(line: 38, column: 13, scope: !415, inlinedAt: !633)
!636 = !DILocation(line: 851, column: 2, scope: !599)
!637 = !DILocation(line: 853, column: 2, scope: !599)
!638 = !DILocation(line: 0, scope: !599)
!639 = !DILocation(line: 854, column: 1, scope: !599)
!640 = distinct !DISubprogram(name: "event_trigger_parse_num", scope: !1, file: !1, line: 866, type: !118, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!641 = !DILocation(line: 868, scope: !640)
!642 = !DILocation(line: 872, column: 6, scope: !640)
!643 = !DILocation(line: 873, column: 12, scope: !640)
!644 = !DILocation(line: 875, column: 8, scope: !640)
!645 = !DILocation(line: 875, column: 7, scope: !640)
!646 = !DILocation(line: 882, column: 18, scope: !640)
!647 = !DILocation(line: 40, column: 10, scope: !648, inlinedAt: !650)
!648 = distinct !DISubprogram(name: "kstrtoul", scope: !649, file: !649, line: 30, type: !118, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!649 = !DIFile(filename: "../include/linux/kstrtox.h", directory: "/llk/linux-5.17/build_arm_allyes")
!650 = distinct !DILocation(line: 882, column: 9, scope: !640)
!651 = !DILocation(line: 883, column: 2, scope: !640)
!652 = !DILocation(line: 0, scope: !640)
!653 = !DILocation(line: 886, column: 1, scope: !640)
!654 = distinct !DISubprogram(name: "event_trigger_set_filter", scope: !1, file: !1, line: 900, type: !118, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!655 = !DILocation(line: 904, scope: !654)
!656 = !DILocation(line: 905, column: 6, scope: !654)
!657 = !DILocation(line: 905, column: 12, scope: !654)
!658 = !DILocation(line: 905, column: 15, scope: !654)
!659 = !DILocation(line: 905, column: 24, scope: !654)
!660 = !DILocation(line: 906, column: 10, scope: !654)
!661 = !DILocation(line: 906, column: 3, scope: !654)
!662 = !DILocation(line: 908, column: 2, scope: !654)
!663 = !DILocation(line: 0, scope: !654)
!664 = !DILocation(line: 909, column: 1, scope: !654)
!665 = distinct !DISubprogram(name: "event_trigger_reset_filter", scope: !1, file: !1, line: 918, type: !118, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!666 = !DILocation(line: 920, scope: !665)
!667 = !DILocation(line: 921, column: 15, scope: !665)
!668 = !DILocation(line: 921, column: 6, scope: !665)
!669 = !DILocation(line: 922, column: 3, scope: !665)
!670 = !DILocation(line: 923, column: 1, scope: !665)
!671 = distinct !DISubprogram(name: "event_trigger_register", scope: !1, file: !1, line: 942, type: !118, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!672 = !DILocation(line: 949, scope: !671)
!673 = !DILocation(line: 952, column: 6, scope: !671)
!674 = !DILocation(line: 953, column: 4, scope: !671)
!675 = !DILocation(line: 953, column: 17, scope: !671)
!676 = !DILocation(line: 953, column: 3, scope: !671)
!677 = !DILocation(line: 955, column: 17, scope: !671)
!678 = !DILocation(line: 955, column: 8, scope: !671)
!679 = !DILocation(line: 961, column: 7, scope: !671)
!680 = !DILocation(line: 961, column: 6, scope: !671)
!681 = !DILocation(line: 962, column: 3, scope: !671)
!682 = !DILocation(line: 962, column: 12, scope: !671)
!683 = !DILocation(line: 964, column: 2, scope: !671)
!684 = !DILocation(line: 964, column: 17, scope: !671)
!685 = !DILocation(line: 964, column: 13, scope: !671)
!686 = !DILocation(line: 965, column: 7, scope: !671)
!687 = !DILocation(line: 966, column: 20, scope: !671)
!688 = !DILocation(line: 966, column: 18, scope: !671)
!689 = !DILocation(line: 966, column: 4, scope: !671)
!690 = !DILocation(line: 968, column: 7, scope: !671)
!691 = !DILocation(line: 969, column: 2, scope: !671)
!692 = !DILocation(line: 0, scope: !671)
!693 = !DILocation(line: 971, column: 2, scope: !671)
!694 = distinct !DISubprogram(name: "set_trigger_filter", scope: !1, file: !1, line: 1105, type: !118, scopeLine: 1108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!695 = !DILocation(line: 1108, scope: !694)
!696 = !DILocation(line: 1110, column: 2, scope: !694)
!697 = !DILocation(line: 1110, column: 23, scope: !694)
!698 = !DILocation(line: 1114, column: 7, scope: !694)
!699 = !DILocation(line: 1114, column: 6, scope: !694)
!700 = !DILocation(line: 1115, column: 3, scope: !694)
!701 = !DILocation(line: 1117, column: 6, scope: !694)
!702 = !DILocation(line: 1119, column: 7, scope: !694)
!703 = !DILocation(line: 1119, column: 17, scope: !694)
!704 = !DILocation(line: 1119, column: 27, scope: !694)
!705 = !DILocation(line: 1119, column: 20, scope: !694)
!706 = !DILocation(line: 1119, column: 36, scope: !694)
!707 = !DILocation(line: 1119, column: 6, scope: !694)
!708 = !DILocation(line: 1122, column: 7, scope: !694)
!709 = !DILocation(line: 1122, column: 6, scope: !694)
!710 = !DILocation(line: 1123, column: 3, scope: !694)
!711 = !DILocation(line: 1126, column: 28, scope: !694)
!712 = !DILocation(line: 1126, column: 34, scope: !694)
!713 = !DILocation(line: 1126, column: 44, scope: !694)
!714 = !DILocation(line: 1126, column: 8, scope: !694)
!715 = !DILocation(line: 1126, column: 2, scope: !694)
!716 = !DILocation(line: 0, scope: !694)
!717 = !DILocation(line: 1133, column: 8, scope: !694)
!718 = !DILocation(line: 1135, column: 2, scope: !694)
!719 = !{i64 2155496539}
!720 = !DILocation(line: 1137, column: 6, scope: !694)
!721 = !DILocation(line: 1139, column: 3, scope: !694)
!722 = !DILocation(line: 93, column: 2, scope: !126, inlinedAt: !723)
!723 = distinct !DILocation(line: 1139, column: 3, scope: !694)
!724 = !DILocation(line: 94, column: 2, scope: !126, inlinedAt: !723)
!725 = !DILocation(line: 1140, column: 3, scope: !694)
!726 = !DILocation(line: 1141, column: 2, scope: !694)
!727 = !DILocation(line: 1143, column: 14, scope: !694)
!728 = !DILocation(line: 1143, column: 2, scope: !694)
!729 = !DILocation(line: 1144, column: 19, scope: !694)
!730 = !DILocation(line: 1146, column: 6, scope: !694)
!731 = !DILocation(line: 1147, column: 30, scope: !694)
!732 = !DILocation(line: 1147, column: 22, scope: !694)
!733 = !DILocation(line: 1147, column: 20, scope: !694)
!734 = !DILocation(line: 1148, column: 8, scope: !694)
!735 = !DILocation(line: 1148, column: 7, scope: !694)
!736 = !DILocation(line: 1149, column: 22, scope: !694)
!737 = !DILocation(line: 1149, column: 4, scope: !694)
!738 = !DILocation(line: 1150, column: 17, scope: !694)
!739 = !DILocation(line: 1152, column: 3, scope: !694)
!740 = !DILocation(line: 1156, column: 1, scope: !694)
!741 = !DILocation(line: 1155, column: 2, scope: !694)
!742 = distinct !DISubprogram(name: "find_named_trigger", scope: !1, file: !1, line: 1174, type: !118, scopeLine: 1175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!743 = !DILocation(line: 1175, scope: !742)
!744 = !DILocation(line: 1178, column: 7, scope: !742)
!745 = !DILocation(line: 1178, column: 6, scope: !742)
!746 = !DILocation(line: 1181, column: 2, scope: !742)
!747 = !DILocation(line: 1179, column: 3, scope: !742)
!748 = !DILocation(line: 1182, column: 13, scope: !742)
!749 = !DILocation(line: 1182, column: 7, scope: !742)
!750 = !DILocation(line: 1184, column: 20, scope: !742)
!751 = !DILocation(line: 1184, column: 7, scope: !742)
!752 = !DILocation(line: 1184, column: 32, scope: !742)
!753 = !DILocation(line: 1185, column: 11, scope: !742)
!754 = !DILocation(line: 1185, column: 4, scope: !742)
!755 = !DILocation(line: 0, scope: !742)
!756 = distinct !{!756, !746, !757}
!757 = !DILocation(line: 1186, column: 2, scope: !742)
!758 = !DILocation(line: 1188, column: 2, scope: !742)
!759 = !DILocation(line: 1189, column: 1, scope: !742)
!760 = distinct !DISubprogram(name: "is_named_trigger", scope: !1, file: !1, line: 1197, type: !118, scopeLine: 1198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!761 = !DILocation(line: 1198, scope: !760)
!762 = !DILocation(line: 1201, column: 2, scope: !760)
!763 = !DILocation(line: 1202, column: 12, scope: !760)
!764 = !DILocation(line: 1202, column: 7, scope: !760)
!765 = distinct !{!765, !762, !766}
!766 = !DILocation(line: 1204, column: 2, scope: !760)
!767 = !DILocation(line: 0, scope: !760)
!768 = !DILocation(line: 1207, column: 1, scope: !760)
!769 = distinct !DISubprogram(name: "save_named_trigger", scope: !1, file: !1, line: 1216, type: !118, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!770 = !DILocation(line: 1217, scope: !769)
!771 = !DILocation(line: 1218, column: 15, scope: !769)
!772 = !DILocation(line: 1218, column: 8, scope: !769)
!773 = !DILocation(line: 1218, column: 13, scope: !769)
!774 = !DILocation(line: 1219, column: 7, scope: !769)
!775 = !DILocation(line: 1219, column: 6, scope: !769)
!776 = !DILocation(line: 1222, column: 12, scope: !769)
!777 = !DILocation(line: 1222, column: 18, scope: !769)
!778 = !DILocation(line: 88, column: 30, scope: !372, inlinedAt: !779)
!779 = distinct !DILocation(line: 1222, column: 2, scope: !769)
!780 = !DILocation(line: 69, column: 7, scope: !375, inlinedAt: !781)
!781 = distinct !DILocation(line: 88, column: 2, scope: !372, inlinedAt: !779)
!782 = !DILocation(line: 69, column: 6, scope: !375, inlinedAt: !781)
!783 = !DILocation(line: 72, column: 8, scope: !375, inlinedAt: !781)
!784 = !DILocation(line: 72, column: 13, scope: !375, inlinedAt: !781)
!785 = !DILocation(line: 73, column: 12, scope: !375, inlinedAt: !781)
!786 = !DILocation(line: 74, column: 7, scope: !375, inlinedAt: !781)
!787 = !DILocation(line: 74, column: 12, scope: !375, inlinedAt: !781)
!788 = !DILocation(line: 75, column: 2, scope: !375, inlinedAt: !781)
!789 = !DILocation(line: 0, scope: !769)
!790 = !DILocation(line: 1225, column: 1, scope: !769)
!791 = distinct !DISubprogram(name: "del_named_trigger", scope: !1, file: !1, line: 1231, type: !118, scopeLine: 1232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!792 = !DILocation(line: 1232, scope: !791)
!793 = !DILocation(line: 1233, column: 14, scope: !791)
!794 = !DILocation(line: 1233, column: 2, scope: !791)
!795 = !DILocation(line: 1234, column: 13, scope: !791)
!796 = !DILocation(line: 1236, column: 18, scope: !791)
!797 = !DILocation(line: 134, column: 7, scope: !399, inlinedAt: !798)
!798 = distinct !DILocation(line: 148, column: 2, scope: !799, inlinedAt: !800)
!799 = distinct !DISubprogram(name: "list_del", scope: !137, file: !137, line: 146, type: !118, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!800 = distinct !DILocation(line: 1236, column: 2, scope: !791)
!801 = !DILocation(line: 134, column: 6, scope: !399, inlinedAt: !798)
!802 = !DILocation(line: 135, column: 3, scope: !399, inlinedAt: !798)
!803 = !DILocation(line: 137, column: 13, scope: !399, inlinedAt: !798)
!804 = !DILocation(line: 137, column: 20, scope: !399, inlinedAt: !798)
!805 = !DILocation(line: 137, column: 33, scope: !399, inlinedAt: !798)
!806 = !DILocation(line: 114, column: 8, scope: !409, inlinedAt: !807)
!807 = distinct !DILocation(line: 137, column: 2, scope: !399, inlinedAt: !798)
!808 = !DILocation(line: 114, column: 13, scope: !409, inlinedAt: !807)
!809 = !DILocation(line: 115, column: 2, scope: !409, inlinedAt: !807)
!810 = !DILocation(line: 138, column: 1, scope: !399, inlinedAt: !798)
!811 = !DILocation(line: 149, column: 14, scope: !799, inlinedAt: !800)
!812 = !DILocation(line: 150, column: 9, scope: !799, inlinedAt: !800)
!813 = !DILocation(line: 150, column: 14, scope: !799, inlinedAt: !800)
!814 = !DILocation(line: 1237, column: 1, scope: !791)
!815 = distinct !DISubprogram(name: "pause_named_trigger", scope: !1, file: !1, line: 1264, type: !118, scopeLine: 1265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!816 = !DILocation(line: 1265, scope: !815)
!817 = !DILocation(line: 1243, column: 2, scope: !818, inlinedAt: !819)
!818 = distinct !DISubprogram(name: "__pause_named_trigger", scope: !1, file: !1, line: 1239, type: !118, scopeLine: 1240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!819 = distinct !DILocation(line: 1266, column: 2, scope: !815)
!820 = !DILocation(line: 1244, column: 20, scope: !818, inlinedAt: !819)
!821 = !DILocation(line: 1244, column: 32, scope: !818, inlinedAt: !819)
!822 = !DILocation(line: 1244, column: 7, scope: !818, inlinedAt: !819)
!823 = !DILocation(line: 1244, column: 38, scope: !818, inlinedAt: !819)
!824 = !DILocation(line: 1246, column: 24, scope: !818, inlinedAt: !819)
!825 = !DILocation(line: 1246, column: 30, scope: !818, inlinedAt: !819)
!826 = !DILocation(line: 1246, column: 11, scope: !818, inlinedAt: !819)
!827 = !DILocation(line: 1246, column: 22, scope: !818, inlinedAt: !819)
!828 = !DILocation(line: 1247, column: 18, scope: !818, inlinedAt: !819)
!829 = !DILocation(line: 1248, column: 4, scope: !818, inlinedAt: !819)
!830 = distinct !{!830, !817, !831}
!831 = !DILocation(line: 1252, column: 2, scope: !818, inlinedAt: !819)
!832 = !DILocation(line: 1267, column: 1, scope: !815)
!833 = distinct !DISubprogram(name: "unpause_named_trigger", scope: !1, file: !1, line: 1278, type: !118, scopeLine: 1279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!834 = !DILocation(line: 1279, scope: !833)
!835 = !DILocation(line: 1243, column: 2, scope: !818, inlinedAt: !836)
!836 = distinct !DILocation(line: 1280, column: 2, scope: !833)
!837 = !DILocation(line: 1244, column: 20, scope: !818, inlinedAt: !836)
!838 = !DILocation(line: 1244, column: 32, scope: !818, inlinedAt: !836)
!839 = !DILocation(line: 1244, column: 7, scope: !818, inlinedAt: !836)
!840 = !DILocation(line: 1244, column: 38, scope: !818, inlinedAt: !836)
!841 = !DILocation(line: 1249, column: 20, scope: !818, inlinedAt: !836)
!842 = !DILocation(line: 1249, column: 26, scope: !818, inlinedAt: !836)
!843 = !DILocation(line: 1249, column: 11, scope: !818, inlinedAt: !836)
!844 = !DILocation(line: 1249, column: 18, scope: !818, inlinedAt: !836)
!845 = distinct !{!845, !835, !846}
!846 = !DILocation(line: 1252, column: 2, scope: !818, inlinedAt: !836)
!847 = !DILocation(line: 1281, column: 1, scope: !833)
!848 = distinct !DISubprogram(name: "set_named_trigger_data", scope: !1, file: !1, line: 1295, type: !118, scopeLine: 1297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!849 = !DILocation(line: 1297, scope: !848)
!850 = !DILocation(line: 1298, column: 8, scope: !848)
!851 = !DILocation(line: 1298, column: 19, scope: !848)
!852 = !DILocation(line: 1299, column: 1, scope: !848)
!853 = distinct !DISubprogram(name: "get_named_trigger_data", scope: !1, file: !1, line: 1302, type: !118, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!854 = !DILocation(line: 1303, scope: !853)
!855 = !DILocation(line: 1304, column: 15, scope: !853)
!856 = !DILocation(line: 1304, column: 2, scope: !853)
!857 = distinct !DISubprogram(name: "event_enable_trigger_print", scope: !1, file: !1, line: 1710, type: !118, scopeLine: 1713, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!858 = !DILocation(line: 1713, scope: !857)
!859 = !DILocation(line: 1714, column: 50, scope: !857)
!860 = !DILocation(line: 1717, column: 19, scope: !857)
!861 = !DILocation(line: 1717, column: 6, scope: !857)
!862 = !DILocation(line: 1718, column: 7, scope: !857)
!863 = !DILocation(line: 1718, column: 20, scope: !857)
!864 = !DILocation(line: 1719, column: 7, scope: !857)
!865 = !DILocation(line: 1719, column: 20, scope: !857)
!866 = !DILocation(line: 1720, column: 19, scope: !857)
!867 = !DILocation(line: 1720, column: 25, scope: !857)
!868 = !DILocation(line: 1720, column: 37, scope: !857)
!869 = !DILocation(line: 1720, column: 44, scope: !857)
!870 = !DILocation(line: 443, column: 12, scope: !871, inlinedAt: !873)
!871 = distinct !DISubprogram(name: "trace_event_name", scope: !872, file: !872, line: 441, type: !118, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!872 = !DIFile(filename: "../include/linux/trace_events.h", directory: "/llk/linux-5.17/build_arm_allyes")
!873 = distinct !DILocation(line: 1721, column: 6, scope: !857)
!874 = !DILocation(line: 443, column: 18, scope: !871, inlinedAt: !873)
!875 = !DILocation(line: 443, column: 6, scope: !871, inlinedAt: !873)
!876 = !DILocation(line: 444, column: 16, scope: !871, inlinedAt: !873)
!877 = !DILocation(line: 444, column: 10, scope: !871, inlinedAt: !873)
!878 = !DILocation(line: 444, column: 21, scope: !871, inlinedAt: !873)
!879 = !DILocation(line: 444, column: 27, scope: !871, inlinedAt: !873)
!880 = !DILocation(line: 444, column: 31, scope: !871, inlinedAt: !873)
!881 = !DILocation(line: 446, column: 10, scope: !871, inlinedAt: !873)
!882 = !DILocation(line: 446, column: 16, scope: !871, inlinedAt: !873)
!883 = !DILocation(line: 446, column: 3, scope: !871, inlinedAt: !873)
!884 = !DILocation(line: 0, scope: !871, inlinedAt: !873)
!885 = !DILocation(line: 1716, column: 2, scope: !857)
!886 = !DILocation(line: 1723, column: 12, scope: !857)
!887 = !DILocation(line: 1723, column: 18, scope: !857)
!888 = !DILocation(line: 1723, column: 6, scope: !857)
!889 = !DILocation(line: 1724, column: 12, scope: !857)
!890 = !DILocation(line: 1724, column: 3, scope: !857)
!891 = !DILocation(line: 1726, column: 3, scope: !857)
!892 = !DILocation(line: 1728, column: 12, scope: !857)
!893 = !DILocation(line: 1728, column: 6, scope: !857)
!894 = !DILocation(line: 1729, column: 3, scope: !857)
!895 = !DILocation(line: 1731, column: 12, scope: !857)
!896 = !DILocation(line: 1731, column: 3, scope: !857)
!897 = !DILocation(line: 1733, column: 2, scope: !857)
!898 = distinct !DISubprogram(name: "event_enable_trigger_free", scope: !1, file: !1, line: 1736, type: !118, scopeLine: 1738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!899 = !DILocation(line: 1738, scope: !898)
!900 = !DILocation(line: 1739, column: 50, scope: !898)
!901 = !DILocation(line: 1741, column: 6, scope: !898)
!902 = !{!"branch_weights", i32 2000, i32 1}
!903 = !DILocation(line: 1744, column: 11, scope: !898)
!904 = !DILocation(line: 1745, column: 7, scope: !898)
!905 = !DILocation(line: 1745, column: 6, scope: !898)
!906 = !DILocation(line: 1747, column: 30, scope: !898)
!907 = !DILocation(line: 1747, column: 43, scope: !898)
!908 = !DILocation(line: 1747, column: 3, scope: !898)
!909 = !DILocation(line: 1748, column: 36, scope: !898)
!910 = !DILocation(line: 1748, column: 42, scope: !898)
!911 = !DILocation(line: 410, column: 12, scope: !912, inlinedAt: !913)
!912 = distinct !DISubprogram(name: "trace_event_put_ref", scope: !872, file: !872, line: 408, type: !118, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!913 = distinct !DILocation(line: 1748, column: 3, scope: !898)
!914 = !DILocation(line: 410, column: 18, scope: !912, inlinedAt: !913)
!915 = !DILocation(line: 410, column: 6, scope: !912, inlinedAt: !913)
!916 = !DILocation(line: 411, column: 27, scope: !912, inlinedAt: !913)
!917 = !DILocation(line: 411, column: 3, scope: !912, inlinedAt: !913)
!918 = !DILocation(line: 413, column: 14, scope: !912, inlinedAt: !913)
!919 = !DILocation(line: 413, column: 20, scope: !912, inlinedAt: !913)
!920 = !DILocation(line: 413, column: 3, scope: !912, inlinedAt: !913)
!921 = !DILocation(line: 22, column: 12, scope: !117, inlinedAt: !922)
!922 = distinct !DILocation(line: 1749, column: 3, scope: !898)
!923 = !DILocation(line: 22, column: 21, scope: !117, inlinedAt: !922)
!924 = !DILocation(line: 22, column: 6, scope: !117, inlinedAt: !922)
!925 = !DILocation(line: 23, column: 3, scope: !117, inlinedAt: !922)
!926 = !DILocation(line: 93, column: 2, scope: !126, inlinedAt: !927)
!927 = distinct !DILocation(line: 26, column: 2, scope: !117, inlinedAt: !922)
!928 = !DILocation(line: 94, column: 2, scope: !126, inlinedAt: !927)
!929 = !DILocation(line: 28, column: 2, scope: !117, inlinedAt: !922)
!930 = !DILocation(line: 1750, column: 3, scope: !898)
!931 = !DILocation(line: 1751, column: 2, scope: !898)
!932 = !DILocation(line: 1752, column: 1, scope: !898)
!933 = !DILocation(line: 409, scope: !912)
!934 = !DILocation(line: 410, column: 12, scope: !912)
!935 = !DILocation(line: 410, column: 18, scope: !912)
!936 = !DILocation(line: 410, column: 6, scope: !912)
!937 = !DILocation(line: 411, column: 27, scope: !912)
!938 = !DILocation(line: 411, column: 3, scope: !912)
!939 = !DILocation(line: 413, column: 14, scope: !912)
!940 = !DILocation(line: 413, column: 20, scope: !912)
!941 = !DILocation(line: 413, column: 3, scope: !912)
!942 = !DILocation(line: 414, column: 1, scope: !912)
!943 = distinct !DISubprogram(name: "event_enable_trigger_parse", scope: !1, file: !1, line: 1782, type: !118, scopeLine: 1785, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!944 = !DILocation(line: 1785, scope: !943)
!945 = !DILocation(line: 1790, column: 33, scope: !943)
!946 = !DILocation(line: 1794, column: 2, scope: !943)
!947 = !DILocation(line: 1794, column: 8, scope: !943)
!948 = !{!"auto-init"}
!949 = !DILocation(line: 1799, column: 7, scope: !943)
!950 = !DILocation(line: 1799, column: 6, scope: !943)
!951 = !DILocation(line: 1800, column: 3, scope: !943)
!952 = !DILocation(line: 1803, column: 12, scope: !943)
!953 = !DILocation(line: 1803, column: 10, scope: !943)
!954 = !DILocation(line: 1804, column: 7, scope: !943)
!955 = !DILocation(line: 1804, column: 6, scope: !943)
!956 = !DILocation(line: 1805, column: 3, scope: !943)
!957 = !DILocation(line: 1806, column: 6, scope: !943)
!958 = !DILocation(line: 1807, column: 11, scope: !943)
!959 = !DILocation(line: 1807, column: 9, scope: !943)
!960 = !DILocation(line: 1808, column: 8, scope: !943)
!961 = !DILocation(line: 1808, column: 7, scope: !943)
!962 = !DILocation(line: 1809, column: 10, scope: !943)
!963 = !DILocation(line: 1809, column: 4, scope: !943)
!964 = !DILocation(line: 1810, column: 2, scope: !943)
!965 = !DILocation(line: 1812, column: 11, scope: !943)
!966 = !DILocation(line: 1813, column: 7, scope: !943)
!967 = !DILocation(line: 1813, column: 6, scope: !943)
!968 = !DILocation(line: 1814, column: 3, scope: !943)
!969 = !DILocation(line: 1816, column: 10, scope: !943)
!970 = !DILocation(line: 1819, column: 22, scope: !943)
!971 = !DILocation(line: 1820, column: 7, scope: !943)
!972 = !DILocation(line: 1820, column: 6, scope: !943)
!973 = !DILocation(line: 1821, column: 3, scope: !943)
!974 = !DILocation(line: 1824, column: 11, scope: !943)
!975 = !DILocation(line: 1824, column: 40, scope: !943)
!976 = !DILocation(line: 1824, column: 46, scope: !943)
!977 = !DILocation(line: 1825, column: 11, scope: !943)
!978 = !DILocation(line: 1825, column: 4, scope: !943)
!979 = !DILocation(line: 1825, column: 34, scope: !943)
!980 = !DILocation(line: 1824, column: 7, scope: !943)
!981 = !DILocation(line: 1827, column: 13, scope: !943)
!982 = !DILocation(line: 1827, column: 43, scope: !943)
!983 = !DILocation(line: 1827, column: 49, scope: !943)
!984 = !DILocation(line: 1828, column: 13, scope: !943)
!985 = !DILocation(line: 1828, column: 6, scope: !943)
!986 = !DILocation(line: 1828, column: 35, scope: !943)
!987 = !DILocation(line: 1827, column: 9, scope: !943)
!988 = !DILocation(line: 1832, column: 25, scope: !943)
!989 = !DILocation(line: 1832, column: 46, scope: !943)
!990 = !DILocation(line: 1832, column: 16, scope: !943)
!991 = !DILocation(line: 376, column: 3, scope: !604, inlinedAt: !992)
!992 = distinct !DILocation(line: 576, column: 11, scope: !607, inlinedAt: !993)
!993 = distinct !DILocation(line: 714, column: 9, scope: !609, inlinedAt: !994)
!994 = distinct !DILocation(line: 1835, column: 17, scope: !943)
!995 = !DILocation(line: 582, column: 33, scope: !607, inlinedAt: !993)
!996 = !DILocation(line: 339, column: 3, scope: !613, inlinedAt: !997)
!997 = distinct !DILocation(line: 582, column: 20, scope: !607, inlinedAt: !993)
!998 = !DILocation(line: 582, column: 5, scope: !607, inlinedAt: !993)
!999 = !DILocation(line: 581, column: 10, scope: !607, inlinedAt: !993)
!1000 = !DILocation(line: 1836, column: 7, scope: !943)
!1001 = !DILocation(line: 1836, column: 6, scope: !943)
!1002 = !DILocation(line: 1837, column: 3, scope: !943)
!1003 = !DILocation(line: 376, column: 3, scope: !604, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 576, column: 11, scope: !607, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 714, column: 9, scope: !609, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 1839, column: 16, scope: !943)
!1007 = !DILocation(line: 582, column: 33, scope: !607, inlinedAt: !1005)
!1008 = !DILocation(line: 339, column: 3, scope: !613, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 582, column: 20, scope: !607, inlinedAt: !1005)
!1010 = !DILocation(line: 582, column: 5, scope: !607, inlinedAt: !1005)
!1011 = !DILocation(line: 581, column: 10, scope: !607, inlinedAt: !1005)
!1012 = !DILocation(line: 1840, column: 7, scope: !943)
!1013 = !DILocation(line: 1840, column: 6, scope: !943)
!1014 = !DILocation(line: 1841, column: 9, scope: !943)
!1015 = !DILocation(line: 1841, column: 3, scope: !943)
!1016 = !DILocation(line: 1842, column: 3, scope: !943)
!1017 = !DILocation(line: 1845, column: 22, scope: !943)
!1018 = !DILocation(line: 1846, column: 16, scope: !943)
!1019 = !DILocation(line: 1846, column: 20, scope: !943)
!1020 = !DILocation(line: 1847, column: 16, scope: !943)
!1021 = !DILocation(line: 1847, column: 24, scope: !943)
!1022 = !DILocation(line: 1848, column: 32, scope: !943)
!1023 = !DILocation(line: 37, column: 2, scope: !415, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 1848, column: 2, scope: !943)
!1025 = !DILocation(line: 38, column: 8, scope: !415, inlinedAt: !1024)
!1026 = !DILocation(line: 38, column: 13, scope: !415, inlinedAt: !1024)
!1027 = !DILocation(line: 1849, column: 2, scope: !943)
!1028 = !DILocation(line: 1851, column: 15, scope: !943)
!1029 = !DILocation(line: 1851, column: 20, scope: !943)
!1030 = !DILocation(line: 1852, column: 15, scope: !943)
!1031 = !DILocation(line: 1852, column: 22, scope: !943)
!1032 = !DILocation(line: 1853, column: 20, scope: !943)
!1033 = !DILocation(line: 1854, column: 16, scope: !943)
!1034 = !DILocation(line: 1854, column: 29, scope: !943)
!1035 = !DILocation(line: 1856, column: 6, scope: !943)
!1036 = !DILocation(line: 1856, column: 14, scope: !943)
!1037 = !DILocation(line: 1857, column: 3, scope: !943)
!1038 = !DILocation(line: 1857, column: 12, scope: !943)
!1039 = !DILocation(line: 1857, column: 22, scope: !943)
!1040 = !DILocation(line: 1858, column: 3, scope: !943)
!1041 = !DILocation(line: 1859, column: 3, scope: !943)
!1042 = !DILocation(line: 1861, column: 3, scope: !943)
!1043 = !DILocation(line: 448, column: 8, scope: !425, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 1865, column: 2, scope: !943)
!1045 = !DILocation(line: 448, column: 11, scope: !425, inlinedAt: !1044)
!1046 = !DILocation(line: 1867, column: 6, scope: !943)
!1047 = !DILocation(line: 1868, column: 12, scope: !943)
!1048 = !DILocation(line: 1871, column: 8, scope: !943)
!1049 = !DILocation(line: 1871, column: 7, scope: !943)
!1050 = !DILocation(line: 1872, column: 4, scope: !943)
!1051 = !DILocation(line: 40, column: 10, scope: !648, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 1878, column: 9, scope: !943)
!1053 = !DILocation(line: 1879, column: 7, scope: !943)
!1054 = !DILocation(line: 1880, column: 4, scope: !943)
!1055 = !DILocation(line: 1881, column: 2, scope: !943)
!1056 = !DILocation(line: 1883, column: 7, scope: !943)
!1057 = !DILocation(line: 1883, column: 6, scope: !943)
!1058 = !DILocation(line: 1886, column: 16, scope: !943)
!1059 = !DILocation(line: 1886, column: 7, scope: !943)
!1060 = !DILocation(line: 1886, column: 6, scope: !943)
!1061 = !DILocation(line: 1889, column: 8, scope: !943)
!1062 = !DILocation(line: 1890, column: 10, scope: !943)
!1063 = !DILocation(line: 1890, column: 6, scope: !943)
!1064 = !DILocation(line: 1891, column: 3, scope: !943)
!1065 = !DILocation(line: 0, scope: !943)
!1066 = !DILocation(line: 1895, column: 51, scope: !943)
!1067 = !DILocation(line: 1895, column: 8, scope: !943)
!1068 = !DILocation(line: 1896, column: 6, scope: !943)
!1069 = !DILocation(line: 1897, column: 7, scope: !943)
!1070 = !DILocation(line: 1898, column: 3, scope: !943)
!1071 = !DILocation(line: 1901, column: 8, scope: !943)
!1072 = !DILocation(line: 1902, column: 10, scope: !943)
!1073 = !DILocation(line: 1902, column: 6, scope: !943)
!1074 = !DILocation(line: 1903, column: 3, scope: !943)
!1075 = !DILocation(line: 1904, column: 17, scope: !943)
!1076 = !DILocation(line: 1904, column: 8, scope: !943)
!1077 = !DILocation(line: 1910, column: 7, scope: !943)
!1078 = !DILocation(line: 1910, column: 6, scope: !943)
!1079 = !DILocation(line: 1911, column: 7, scope: !943)
!1080 = !DILocation(line: 1912, column: 3, scope: !943)
!1081 = !DILocation(line: 1913, column: 17, scope: !943)
!1082 = !DILocation(line: 1913, column: 13, scope: !943)
!1083 = !DILocation(line: 1914, column: 3, scope: !943)
!1084 = !DILocation(line: 1916, column: 6, scope: !943)
!1085 = !DILocation(line: 1917, column: 2, scope: !943)
!1086 = !DILocation(line: 1922, column: 2, scope: !943)
!1087 = !DILocation(line: 1924, column: 41, scope: !943)
!1088 = !DILocation(line: 1924, column: 2, scope: !943)
!1089 = !DILocation(line: 1926, column: 15, scope: !943)
!1090 = !DILocation(line: 1926, column: 6, scope: !943)
!1091 = !DILocation(line: 1927, column: 3, scope: !943)
!1092 = !DILocation(line: 1927, column: 12, scope: !943)
!1093 = !DILocation(line: 1928, column: 2, scope: !943)
!1094 = !DILocation(line: 1929, column: 2, scope: !943)
!1095 = !DILocation(line: 1930, column: 2, scope: !943)
!1096 = !DILocation(line: 1931, column: 1, scope: !943)
!1097 = distinct !DISubprogram(name: "trace_event_try_get_ref", scope: !872, file: !872, line: 400, type: !118, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1098 = !DILocation(line: 401, scope: !1097)
!1099 = !DILocation(line: 402, column: 12, scope: !1097)
!1100 = !DILocation(line: 402, column: 18, scope: !1097)
!1101 = !DILocation(line: 402, column: 6, scope: !1097)
!1102 = !DILocation(line: 403, column: 38, scope: !1097)
!1103 = !DILocation(line: 403, column: 10, scope: !1097)
!1104 = !DILocation(line: 403, column: 3, scope: !1097)
!1105 = !DILocation(line: 405, column: 25, scope: !1097)
!1106 = !DILocation(line: 405, column: 31, scope: !1097)
!1107 = !DILocation(line: 405, column: 10, scope: !1097)
!1108 = !DILocation(line: 405, column: 3, scope: !1097)
!1109 = !DILocation(line: 0, scope: !1097)
!1110 = !DILocation(line: 406, column: 1, scope: !1097)
!1111 = distinct !DISubprogram(name: "event_trigger_free", scope: !1, file: !1, line: 463, type: !118, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1112 = !DILocation(line: 465, scope: !1111)
!1113 = !DILocation(line: 466, column: 6, scope: !1111)
!1114 = !DILocation(line: 467, column: 3, scope: !1111)
!1115 = !DILocation(line: 469, column: 2, scope: !1111)
!1116 = !DILocation(line: 469, column: 11, scope: !1111)
!1117 = !DILocation(line: 470, column: 7, scope: !1111)
!1118 = !DILocation(line: 470, column: 6, scope: !1111)
!1119 = !DILocation(line: 471, column: 21, scope: !1111)
!1120 = !DILocation(line: 22, column: 12, scope: !117, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 471, column: 3, scope: !1111)
!1122 = !DILocation(line: 22, column: 21, scope: !117, inlinedAt: !1121)
!1123 = !DILocation(line: 22, column: 6, scope: !117, inlinedAt: !1121)
!1124 = !DILocation(line: 23, column: 3, scope: !117, inlinedAt: !1121)
!1125 = !DILocation(line: 93, column: 2, scope: !126, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 26, column: 2, scope: !117, inlinedAt: !1121)
!1127 = !DILocation(line: 94, column: 2, scope: !126, inlinedAt: !1126)
!1128 = !DILocation(line: 28, column: 2, scope: !117, inlinedAt: !1121)
!1129 = !DILocation(line: 471, column: 3, scope: !1111)
!1130 = !DILocation(line: 472, column: 1, scope: !1111)
!1131 = distinct !DISubprogram(name: "event_enable_register_trigger", scope: !1, file: !1, line: 1933, type: !118, scopeLine: 1936, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1132 = !DILocation(line: 1936, scope: !1131)
!1133 = !DILocation(line: 1937, column: 50, scope: !1131)
!1134 = !DILocation(line: 1942, column: 2, scope: !1131)
!1135 = !DILocation(line: 283, column: 9, scope: !522, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 1942, column: 2, scope: !1131)
!1137 = !DILocation(line: 1944, column: 2, scope: !1131)
!1138 = !DILocation(line: 1945, column: 28, scope: !1131)
!1139 = !DILocation(line: 1946, column: 7, scope: !1131)
!1140 = !DILocation(line: 1946, column: 24, scope: !1131)
!1141 = !DILocation(line: 1947, column: 8, scope: !1131)
!1142 = !DILocation(line: 1947, column: 14, scope: !1131)
!1143 = !DILocation(line: 1947, column: 23, scope: !1131)
!1144 = !DILocation(line: 1948, column: 14, scope: !1131)
!1145 = !DILocation(line: 1948, column: 23, scope: !1131)
!1146 = !DILocation(line: 1947, column: 36, scope: !1131)
!1147 = !DILocation(line: 1948, column: 37, scope: !1131)
!1148 = !DILocation(line: 1949, column: 8, scope: !1131)
!1149 = !DILocation(line: 1949, column: 26, scope: !1131)
!1150 = !DILocation(line: 1949, column: 47, scope: !1131)
!1151 = !DILocation(line: 1949, column: 31, scope: !1131)
!1152 = !DILocation(line: 1950, column: 8, scope: !1131)
!1153 = !DILocation(line: 1951, column: 4, scope: !1131)
!1154 = distinct !{!1154, !1137, !1155}
!1155 = !DILocation(line: 1953, column: 2, scope: !1131)
!1156 = !DILocation(line: 1955, column: 12, scope: !1131)
!1157 = !DILocation(line: 1955, column: 17, scope: !1131)
!1158 = !DILocation(line: 1955, column: 6, scope: !1131)
!1159 = !DILocation(line: 1956, column: 9, scope: !1131)
!1160 = !DILocation(line: 1957, column: 11, scope: !1131)
!1161 = !DILocation(line: 1957, column: 7, scope: !1131)
!1162 = !DILocation(line: 1958, column: 4, scope: !1131)
!1163 = !DILocation(line: 1959, column: 2, scope: !1131)
!1164 = !DILocation(line: 0, scope: !1131)
!1165 = !DILocation(line: 1961, column: 22, scope: !1131)
!1166 = !DILocation(line: 106, column: 34, scope: !1167, inlinedAt: !1168)
!1167 = distinct !DISubprogram(name: "list_add_rcu", scope: !493, file: !493, line: 104, type: !118, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1168 = distinct !DILocation(line: 1961, column: 2, scope: !1131)
!1169 = !DILocation(line: 79, column: 7, scope: !1170, inlinedAt: !1171)
!1170 = distinct !DISubprogram(name: "__list_add_rcu", scope: !493, file: !493, line: 76, type: !118, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1171 = distinct !DILocation(line: 106, column: 2, scope: !1167, inlinedAt: !1168)
!1172 = !DILocation(line: 79, column: 6, scope: !1170, inlinedAt: !1171)
!1173 = !DILocation(line: 80, column: 3, scope: !1170, inlinedAt: !1171)
!1174 = !DILocation(line: 82, column: 12, scope: !1170, inlinedAt: !1171)
!1175 = !DILocation(line: 83, column: 7, scope: !1170, inlinedAt: !1171)
!1176 = !DILocation(line: 83, column: 12, scope: !1170, inlinedAt: !1171)
!1177 = !DILocation(line: 84, column: 2, scope: !1170, inlinedAt: !1171)
!1178 = !{i64 2149752990}
!1179 = !DILocation(line: 85, column: 8, scope: !1170, inlinedAt: !1171)
!1180 = !DILocation(line: 85, column: 13, scope: !1170, inlinedAt: !1171)
!1181 = !DILocation(line: 86, column: 1, scope: !1170, inlinedAt: !1171)
!1182 = !DILocation(line: 1962, column: 5, scope: !1131)
!1183 = !DILocation(line: 1964, column: 2, scope: !1131)
!1184 = !DILocation(line: 1965, column: 6, scope: !1131)
!1185 = !DILocation(line: 1965, column: 50, scope: !1131)
!1186 = !DILocation(line: 1966, column: 17, scope: !1131)
!1187 = !DILocation(line: 134, column: 7, scope: !399, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 157, column: 2, scope: !492, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 1966, column: 3, scope: !1131)
!1190 = !DILocation(line: 134, column: 6, scope: !399, inlinedAt: !1188)
!1191 = !DILocation(line: 135, column: 3, scope: !399, inlinedAt: !1188)
!1192 = !DILocation(line: 137, column: 13, scope: !399, inlinedAt: !1188)
!1193 = !DILocation(line: 137, column: 20, scope: !399, inlinedAt: !1188)
!1194 = !DILocation(line: 137, column: 33, scope: !399, inlinedAt: !1188)
!1195 = !DILocation(line: 114, column: 8, scope: !409, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 137, column: 2, scope: !399, inlinedAt: !1188)
!1197 = !DILocation(line: 114, column: 13, scope: !409, inlinedAt: !1196)
!1198 = !DILocation(line: 115, column: 2, scope: !409, inlinedAt: !1196)
!1199 = !DILocation(line: 138, column: 1, scope: !399, inlinedAt: !1188)
!1200 = !DILocation(line: 158, column: 9, scope: !492, inlinedAt: !1189)
!1201 = !DILocation(line: 158, column: 14, scope: !492, inlinedAt: !1189)
!1202 = !DILocation(line: 1967, column: 3, scope: !1131)
!1203 = !DILocation(line: 1969, column: 2, scope: !1131)
!1204 = !DILocation(line: 1965, column: 52, scope: !1131)
!1205 = !DILocation(line: 1971, column: 2, scope: !1131)
!1206 = distinct !DISubprogram(name: "event_enable_unregister_trigger", scope: !1, file: !1, line: 1974, type: !118, scopeLine: 1977, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1207 = !DILocation(line: 1977, scope: !1206)
!1208 = !DILocation(line: 1978, column: 55, scope: !1206)
!1209 = !DILocation(line: 1983, column: 2, scope: !1206)
!1210 = !DILocation(line: 283, column: 9, scope: !522, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 1983, column: 2, scope: !1206)
!1212 = !DILocation(line: 1985, column: 2, scope: !1206)
!1213 = !DILocation(line: 1986, column: 23, scope: !1206)
!1214 = !DILocation(line: 1987, column: 7, scope: !1206)
!1215 = !DILocation(line: 1987, column: 19, scope: !1206)
!1216 = !DILocation(line: 1988, column: 8, scope: !1206)
!1217 = !DILocation(line: 1988, column: 14, scope: !1206)
!1218 = !DILocation(line: 1988, column: 23, scope: !1206)
!1219 = !DILocation(line: 1989, column: 14, scope: !1206)
!1220 = !DILocation(line: 1989, column: 23, scope: !1206)
!1221 = !DILocation(line: 1988, column: 36, scope: !1206)
!1222 = !DILocation(line: 1989, column: 37, scope: !1206)
!1223 = !DILocation(line: 1990, column: 8, scope: !1206)
!1224 = !DILocation(line: 1990, column: 21, scope: !1206)
!1225 = !DILocation(line: 1990, column: 47, scope: !1206)
!1226 = !DILocation(line: 1990, column: 26, scope: !1206)
!1227 = !DILocation(line: 1991, column: 17, scope: !1206)
!1228 = !DILocation(line: 134, column: 7, scope: !399, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 157, column: 2, scope: !492, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 1992, column: 4, scope: !1206)
!1231 = !DILocation(line: 134, column: 6, scope: !399, inlinedAt: !1229)
!1232 = !DILocation(line: 135, column: 3, scope: !399, inlinedAt: !1229)
!1233 = !DILocation(line: 137, column: 13, scope: !399, inlinedAt: !1229)
!1234 = !DILocation(line: 137, column: 20, scope: !399, inlinedAt: !1229)
!1235 = !DILocation(line: 137, column: 33, scope: !399, inlinedAt: !1229)
!1236 = !DILocation(line: 114, column: 8, scope: !409, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 137, column: 2, scope: !399, inlinedAt: !1229)
!1238 = !DILocation(line: 114, column: 13, scope: !409, inlinedAt: !1237)
!1239 = !DILocation(line: 115, column: 2, scope: !409, inlinedAt: !1237)
!1240 = !DILocation(line: 138, column: 1, scope: !399, inlinedAt: !1229)
!1241 = !DILocation(line: 158, column: 9, scope: !492, inlinedAt: !1230)
!1242 = !DILocation(line: 158, column: 14, scope: !492, inlinedAt: !1230)
!1243 = !DILocation(line: 1993, column: 4, scope: !1206)
!1244 = !DILocation(line: 1994, column: 4, scope: !1206)
!1245 = !DILocation(line: 1999, column: 22, scope: !1206)
!1246 = !DILocation(line: 1999, column: 28, scope: !1206)
!1247 = !DILocation(line: 1999, column: 33, scope: !1206)
!1248 = !DILocation(line: 1999, column: 6, scope: !1206)
!1249 = distinct !{!1249, !1212, !1250}
!1250 = !DILocation(line: 1997, column: 2, scope: !1206)
!1251 = !DILocation(line: 2000, column: 3, scope: !1206)
!1252 = !DILocation(line: 2000, column: 9, scope: !1206)
!1253 = !DILocation(line: 2000, column: 14, scope: !1206)
!1254 = !DILocation(line: 2001, column: 1, scope: !1206)
!1255 = distinct !DISubprogram(name: "register_trigger_cmds", scope: !1, file: !1, line: 2079, type: !118, scopeLine: 2080, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1256 = !DILocation(line: 2080, scope: !1255)
!1257 = !DILocation(line: 2081, column: 2, scope: !1255)
!1258 = !DILocation(line: 2082, column: 2, scope: !1255)
!1259 = !DILocation(line: 2083, column: 2, scope: !1255)
!1260 = !DILocation(line: 2084, column: 2, scope: !1255)
!1261 = !DILocation(line: 2085, column: 2, scope: !1255)
!1262 = !DILocation(line: 2086, column: 2, scope: !1255)
!1263 = !DILocation(line: 2088, column: 2, scope: !1255)
!1264 = distinct !DISubprogram(name: "register_trigger_traceon_traceoff_cmds", scope: !1, file: !1, line: 2065, type: !118, scopeLine: 2066, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1265 = !DILocation(line: 2066, scope: !1264)
!1266 = !DILocation(line: 2069, column: 8, scope: !1264)
!1267 = !DILocation(line: 2070, column: 6, scope: !1264)
!1268 = !DILocation(line: 2071, column: 10, scope: !1264)
!1269 = !DILocation(line: 2071, column: 3, scope: !1264)
!1270 = !DILocation(line: 2072, column: 8, scope: !1264)
!1271 = !DILocation(line: 2073, column: 6, scope: !1264)
!1272 = !DILocation(line: 2074, column: 3, scope: !1264)
!1273 = !DILocation(line: 2077, column: 1, scope: !1264)
!1274 = distinct !DISubprogram(name: "register_trigger_snapshot_cmd", scope: !1, file: !1, line: 1561, type: !118, scopeLine: 1562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1275 = !DILocation(line: 1562, scope: !1274)
!1276 = !DILocation(line: 1565, column: 8, scope: !1274)
!1277 = !DILocation(line: 1566, column: 2, scope: !1274)
!1278 = !DILocation(line: 1568, column: 2, scope: !1274)
!1279 = distinct !DISubprogram(name: "register_trigger_stacktrace_cmd", scope: !1, file: !1, line: 1658, type: !118, scopeLine: 1659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1280 = !DILocation(line: 1659, scope: !1279)
!1281 = !DILocation(line: 1662, column: 8, scope: !1279)
!1282 = !DILocation(line: 1663, column: 2, scope: !1279)
!1283 = !DILocation(line: 1665, column: 2, scope: !1279)
!1284 = distinct !DISubprogram(name: "register_trigger_enable_disable_cmds", scope: !1, file: !1, line: 2051, type: !118, scopeLine: 2052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1285 = !DILocation(line: 2052, scope: !1284)
!1286 = !DILocation(line: 2055, column: 8, scope: !1284)
!1287 = !DILocation(line: 2056, column: 6, scope: !1284)
!1288 = !DILocation(line: 2057, column: 10, scope: !1284)
!1289 = !DILocation(line: 2057, column: 3, scope: !1284)
!1290 = !DILocation(line: 2058, column: 8, scope: !1284)
!1291 = !DILocation(line: 2059, column: 6, scope: !1284)
!1292 = !DILocation(line: 2060, column: 3, scope: !1284)
!1293 = !DILocation(line: 2063, column: 1, scope: !1284)
!1294 = distinct !DISubprogram(name: "trigger_start", scope: !1, file: !1, line: 153, type: !118, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1295 = !DILocation(line: 154, scope: !1294)
!1296 = !DILocation(line: 158, column: 2, scope: !1294)
!1297 = !DILocation(line: 159, column: 34, scope: !1294)
!1298 = !DILocation(line: 1341, column: 12, scope: !274, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 159, column: 15, scope: !1294)
!1301 = !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !1300)
!1302 = !DILocation(line: 160, column: 6, scope: !1294)
!1303 = !DILocation(line: 161, column: 10, scope: !1294)
!1304 = !DILocation(line: 161, column: 3, scope: !1294)
!1305 = !DILocation(line: 163, column: 30, scope: !1294)
!1306 = !DILocation(line: 292, column: 9, scope: !136, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 163, column: 6, scope: !1294)
!1308 = !DILocation(line: 292, column: 31, scope: !136, inlinedAt: !1307)
!1309 = !DILocation(line: 163, column: 40, scope: !1294)
!1310 = !DILocation(line: 163, column: 63, scope: !1294)
!1311 = !DILocation(line: 145, column: 2, scope: !1312, inlinedAt: !1313)
!1312 = distinct !DISubprogram(name: "check_user_trigger", scope: !1, file: !1, line: 141, type: !118, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1313 = distinct !DILocation(line: 163, column: 44, scope: !1294)
!1314 = !DILocation(line: 146, column: 13, scope: !1312, inlinedAt: !1313)
!1315 = !DILocation(line: 146, column: 19, scope: !1312, inlinedAt: !1313)
!1316 = !DILocation(line: 146, column: 7, scope: !1312, inlinedAt: !1313)
!1317 = !DILocation(line: 147, column: 4, scope: !1312, inlinedAt: !1313)
!1318 = distinct !{!1318, !1311, !1319}
!1319 = !DILocation(line: 149, column: 2, scope: !1312, inlinedAt: !1313)
!1320 = !DILocation(line: 150, column: 2, scope: !1312, inlinedAt: !1313)
!1321 = !DILocation(line: 163, column: 6, scope: !1294)
!1322 = !DILocation(line: 164, column: 11, scope: !1294)
!1323 = !DILocation(line: 164, column: 10, scope: !1294)
!1324 = !DILocation(line: 164, column: 15, scope: !1294)
!1325 = !DILocation(line: 164, column: 3, scope: !1294)
!1326 = !DILocation(line: 148, column: 3, scope: !1312, inlinedAt: !1313)
!1327 = !DILocation(line: 166, column: 25, scope: !1294)
!1328 = !DILocation(line: 166, column: 47, scope: !1294)
!1329 = !DILocation(line: 166, column: 9, scope: !1294)
!1330 = !DILocation(line: 166, column: 2, scope: !1294)
!1331 = !DILocation(line: 0, scope: !1294)
!1332 = !DILocation(line: 167, column: 1, scope: !1294)
!1333 = distinct !DISubprogram(name: "trigger_stop", scope: !1, file: !1, line: 169, type: !118, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1334 = !DILocation(line: 170, scope: !1333)
!1335 = !DILocation(line: 171, column: 2, scope: !1333)
!1336 = !DILocation(line: 172, column: 1, scope: !1333)
!1337 = distinct !DISubprogram(name: "trigger_next", scope: !1, file: !1, line: 130, type: !118, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1338 = !DILocation(line: 131, scope: !1337)
!1339 = !DILocation(line: 132, column: 59, scope: !1337)
!1340 = !DILocation(line: 1341, column: 12, scope: !274, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 132, column: 40, scope: !1337)
!1343 = !DILocation(line: 1520, column: 9, scope: !277, inlinedAt: !1342)
!1344 = !DILocation(line: 134, column: 8, scope: !1337)
!1345 = !DILocation(line: 134, column: 6, scope: !1337)
!1346 = !DILocation(line: 135, column: 5, scope: !1337)
!1347 = !DILocation(line: 135, column: 9, scope: !1337)
!1348 = !DILocation(line: 136, column: 3, scope: !1337)
!1349 = !DILocation(line: 138, column: 23, scope: !1337)
!1350 = !DILocation(line: 138, column: 39, scope: !1337)
!1351 = !DILocation(line: 138, column: 9, scope: !1337)
!1352 = !DILocation(line: 138, column: 2, scope: !1337)
!1353 = !DILocation(line: 0, scope: !1337)
!1354 = !DILocation(line: 139, column: 1, scope: !1337)
!1355 = distinct !DISubprogram(name: "trigger_show", scope: !1, file: !1, line: 174, type: !118, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1356 = !DILocation(line: 175, scope: !1355)
!1357 = !DILocation(line: 179, column: 8, scope: !1355)
!1358 = !DILocation(line: 179, column: 6, scope: !1355)
!1359 = !DILocation(line: 180, column: 12, scope: !1355)
!1360 = !DILocation(line: 180, column: 3, scope: !1355)
!1361 = !DILocation(line: 181, column: 3, scope: !1355)
!1362 = !DILocation(line: 182, column: 3, scope: !1355)
!1363 = !DILocation(line: 183, column: 3, scope: !1355)
!1364 = !DILocation(line: 184, column: 28, scope: !1355)
!1365 = !DILocation(line: 184, column: 4, scope: !1355)
!1366 = distinct !{!1366, !1363, !1367}
!1367 = !DILocation(line: 184, column: 32, scope: !1355)
!1368 = !DILocation(line: 185, column: 3, scope: !1355)
!1369 = !DILocation(line: 186, column: 3, scope: !1355)
!1370 = !DILocation(line: 187, column: 3, scope: !1355)
!1371 = !DILocation(line: 190, column: 9, scope: !1355)
!1372 = !DILocation(line: 191, column: 8, scope: !1355)
!1373 = !DILocation(line: 191, column: 13, scope: !1355)
!1374 = !DILocation(line: 191, column: 2, scope: !1355)
!1375 = !DILocation(line: 193, column: 2, scope: !1355)
!1376 = !DILocation(line: 194, column: 1, scope: !1355)
!1377 = distinct !DISubprogram(name: "unregister_trigger_traceon_traceoff_cmds", scope: !1, file: !1, line: 1671, type: !118, scopeLine: 1672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1378 = !DILocation(line: 1672, scope: !1377)
!1379 = !DILocation(line: 1673, column: 2, scope: !1377)
!1380 = !DILocation(line: 1674, column: 2, scope: !1377)
!1381 = !DILocation(line: 1675, column: 1, scope: !1377)
!1382 = distinct !DISubprogram(name: "event_trigger_parse", scope: !1, file: !1, line: 995, type: !118, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1383 = !DILocation(line: 998, scope: !1382)
!1384 = !DILocation(line: 1001, column: 2, scope: !1382)
!1385 = !DILocation(line: 1001, column: 8, scope: !1382)
!1386 = !DILocation(line: 1006, column: 6, scope: !1382)
!1387 = !DILocation(line: 1006, column: 12, scope: !1382)
!1388 = !DILocation(line: 1006, column: 23, scope: !1382)
!1389 = !DILocation(line: 45, column: 13, scope: !577, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 1006, column: 15, scope: !1382)
!1391 = !DILocation(line: 45, column: 18, scope: !577, inlinedAt: !1390)
!1392 = !DILocation(line: 45, column: 21, scope: !577, inlinedAt: !1390)
!1393 = !DILocation(line: 45, column: 23, scope: !577, inlinedAt: !1390)
!1394 = !DILocation(line: 1007, column: 13, scope: !1382)
!1395 = !DILocation(line: 1007, column: 11, scope: !1382)
!1396 = !DILocation(line: 1008, column: 7, scope: !1382)
!1397 = !DILocation(line: 1009, column: 12, scope: !1382)
!1398 = !DILocation(line: 1009, column: 10, scope: !1382)
!1399 = !DILocation(line: 1010, column: 9, scope: !1382)
!1400 = !DILocation(line: 1010, column: 8, scope: !1382)
!1401 = !DILocation(line: 1011, column: 11, scope: !1382)
!1402 = !DILocation(line: 1011, column: 5, scope: !1382)
!1403 = !DILocation(line: 1012, column: 3, scope: !1382)
!1404 = !DILocation(line: 1013, column: 2, scope: !1382)
!1405 = !DILocation(line: 1015, column: 25, scope: !1382)
!1406 = !DILocation(line: 1015, column: 46, scope: !1382)
!1407 = !DILocation(line: 1015, column: 16, scope: !1382)
!1408 = !DILocation(line: 376, column: 3, scope: !604, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 576, column: 11, scope: !607, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 714, column: 9, scope: !609, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 1018, column: 17, scope: !1382)
!1412 = !DILocation(line: 582, column: 33, scope: !607, inlinedAt: !1410)
!1413 = !DILocation(line: 339, column: 3, scope: !613, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 582, column: 20, scope: !607, inlinedAt: !1410)
!1415 = !DILocation(line: 582, column: 5, scope: !607, inlinedAt: !1410)
!1416 = !DILocation(line: 581, column: 10, scope: !607, inlinedAt: !1410)
!1417 = !DILocation(line: 1019, column: 7, scope: !1382)
!1418 = !DILocation(line: 1019, column: 6, scope: !1382)
!1419 = !DILocation(line: 1020, column: 3, scope: !1382)
!1420 = !DILocation(line: 1022, column: 22, scope: !1382)
!1421 = !DILocation(line: 1023, column: 16, scope: !1382)
!1422 = !DILocation(line: 1023, column: 20, scope: !1382)
!1423 = !DILocation(line: 1024, column: 16, scope: !1382)
!1424 = !DILocation(line: 1024, column: 24, scope: !1382)
!1425 = !DILocation(line: 1025, column: 16, scope: !1382)
!1426 = !DILocation(line: 1025, column: 29, scope: !1382)
!1427 = !DILocation(line: 1026, column: 32, scope: !1382)
!1428 = !DILocation(line: 37, column: 2, scope: !415, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 1026, column: 2, scope: !1382)
!1430 = !DILocation(line: 38, column: 8, scope: !415, inlinedAt: !1429)
!1431 = !DILocation(line: 38, column: 13, scope: !415, inlinedAt: !1429)
!1432 = !DILocation(line: 1027, column: 32, scope: !1382)
!1433 = !DILocation(line: 37, column: 2, scope: !415, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 1027, column: 2, scope: !1382)
!1435 = !DILocation(line: 38, column: 8, scope: !415, inlinedAt: !1434)
!1436 = !DILocation(line: 38, column: 13, scope: !415, inlinedAt: !1434)
!1437 = !DILocation(line: 1029, column: 6, scope: !1382)
!1438 = !DILocation(line: 1029, column: 14, scope: !1382)
!1439 = !DILocation(line: 1030, column: 3, scope: !1382)
!1440 = !DILocation(line: 1030, column: 12, scope: !1382)
!1441 = !DILocation(line: 1030, column: 22, scope: !1382)
!1442 = !DILocation(line: 1031, column: 3, scope: !1382)
!1443 = !DILocation(line: 1033, column: 3, scope: !1382)
!1444 = !DILocation(line: 1036, column: 6, scope: !1382)
!1445 = !DILocation(line: 1037, column: 12, scope: !1382)
!1446 = !DILocation(line: 1040, column: 8, scope: !1382)
!1447 = !DILocation(line: 1040, column: 7, scope: !1382)
!1448 = !DILocation(line: 1041, column: 4, scope: !1382)
!1449 = !DILocation(line: 40, column: 10, scope: !648, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 1047, column: 9, scope: !1382)
!1451 = !DILocation(line: 1048, column: 7, scope: !1382)
!1452 = !DILocation(line: 1049, column: 4, scope: !1382)
!1453 = !DILocation(line: 1050, column: 2, scope: !1382)
!1454 = !DILocation(line: 1052, column: 7, scope: !1382)
!1455 = !DILocation(line: 1052, column: 6, scope: !1382)
!1456 = !DILocation(line: 1053, column: 3, scope: !1382)
!1457 = !DILocation(line: 1055, column: 16, scope: !1382)
!1458 = !DILocation(line: 1055, column: 7, scope: !1382)
!1459 = !DILocation(line: 1055, column: 6, scope: !1382)
!1460 = !DILocation(line: 1056, column: 3, scope: !1382)
!1461 = !DILocation(line: 1058, column: 8, scope: !1382)
!1462 = !DILocation(line: 1059, column: 10, scope: !1382)
!1463 = !DILocation(line: 1059, column: 6, scope: !1382)
!1464 = !DILocation(line: 1060, column: 3, scope: !1382)
!1465 = !DILocation(line: 1059, column: 12, scope: !1382)
!1466 = !DILocation(line: 448, column: 8, scope: !425, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 1064, column: 2, scope: !1382)
!1468 = !DILocation(line: 448, column: 11, scope: !425, inlinedAt: !1467)
!1469 = !DILocation(line: 1065, column: 17, scope: !1382)
!1470 = !DILocation(line: 1065, column: 8, scope: !1382)
!1471 = !DILocation(line: 1071, column: 7, scope: !1382)
!1472 = !DILocation(line: 1071, column: 6, scope: !1382)
!1473 = !DILocation(line: 1072, column: 3, scope: !1382)
!1474 = !DILocation(line: 1072, column: 12, scope: !1382)
!1475 = !DILocation(line: 1074, column: 2, scope: !1382)
!1476 = !DILocation(line: 1074, column: 17, scope: !1382)
!1477 = !DILocation(line: 1074, column: 13, scope: !1382)
!1478 = !DILocation(line: 1075, column: 7, scope: !1382)
!1479 = !DILocation(line: 1075, column: 3, scope: !1382)
!1480 = !DILocation(line: 0, scope: !1382)
!1481 = !DILocation(line: 1078, column: 2, scope: !1382)
!1482 = !DILocation(line: 1087, column: 1, scope: !1382)
!1483 = !DILocation(line: 1080, column: 2, scope: !1382)
!1484 = !DILocation(line: 1083, column: 15, scope: !1382)
!1485 = !DILocation(line: 1083, column: 6, scope: !1382)
!1486 = !DILocation(line: 1084, column: 3, scope: !1382)
!1487 = !DILocation(line: 1084, column: 12, scope: !1382)
!1488 = !DILocation(line: 1085, column: 2, scope: !1382)
!1489 = !DILocation(line: 1086, column: 2, scope: !1382)
!1490 = distinct !DISubprogram(name: "register_trigger", scope: !1, file: !1, line: 567, type: !118, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1491 = !DILocation(line: 570, scope: !1490)
!1492 = !DILocation(line: 574, column: 2, scope: !1490)
!1493 = !DILocation(line: 283, column: 9, scope: !522, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 574, column: 2, scope: !1490)
!1495 = !DILocation(line: 576, column: 2, scope: !1490)
!1496 = !DILocation(line: 577, column: 13, scope: !1490)
!1497 = !DILocation(line: 577, column: 22, scope: !1490)
!1498 = !DILocation(line: 577, column: 44, scope: !1490)
!1499 = !DILocation(line: 577, column: 53, scope: !1490)
!1500 = !DILocation(line: 577, column: 35, scope: !1490)
!1501 = !DILocation(line: 577, column: 7, scope: !1490)
!1502 = !DILocation(line: 578, column: 8, scope: !1490)
!1503 = !DILocation(line: 579, column: 4, scope: !1490)
!1504 = !DILocation(line: 581, column: 2, scope: !1490)
!1505 = distinct !{!1505, !1495, !1504}
!1506 = !DILocation(line: 583, column: 12, scope: !1490)
!1507 = !DILocation(line: 583, column: 17, scope: !1490)
!1508 = !DILocation(line: 583, column: 6, scope: !1490)
!1509 = !DILocation(line: 584, column: 9, scope: !1490)
!1510 = !DILocation(line: 585, column: 11, scope: !1490)
!1511 = !DILocation(line: 585, column: 7, scope: !1490)
!1512 = !DILocation(line: 586, column: 4, scope: !1490)
!1513 = !DILocation(line: 587, column: 2, scope: !1490)
!1514 = !DILocation(line: 0, scope: !1490)
!1515 = !DILocation(line: 589, column: 22, scope: !1490)
!1516 = !DILocation(line: 106, column: 34, scope: !1167, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 589, column: 2, scope: !1490)
!1518 = !DILocation(line: 79, column: 7, scope: !1170, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 106, column: 2, scope: !1167, inlinedAt: !1517)
!1520 = !DILocation(line: 79, column: 6, scope: !1170, inlinedAt: !1519)
!1521 = !DILocation(line: 80, column: 3, scope: !1170, inlinedAt: !1519)
!1522 = !DILocation(line: 82, column: 12, scope: !1170, inlinedAt: !1519)
!1523 = !DILocation(line: 83, column: 7, scope: !1170, inlinedAt: !1519)
!1524 = !DILocation(line: 83, column: 12, scope: !1170, inlinedAt: !1519)
!1525 = !DILocation(line: 84, column: 2, scope: !1170, inlinedAt: !1519)
!1526 = !DILocation(line: 85, column: 8, scope: !1170, inlinedAt: !1519)
!1527 = !DILocation(line: 85, column: 13, scope: !1170, inlinedAt: !1519)
!1528 = !DILocation(line: 86, column: 1, scope: !1170, inlinedAt: !1519)
!1529 = !DILocation(line: 590, column: 5, scope: !1490)
!1530 = !DILocation(line: 592, column: 2, scope: !1490)
!1531 = !DILocation(line: 593, column: 6, scope: !1490)
!1532 = !DILocation(line: 593, column: 50, scope: !1490)
!1533 = !DILocation(line: 594, column: 17, scope: !1490)
!1534 = !DILocation(line: 134, column: 7, scope: !399, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 157, column: 2, scope: !492, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 594, column: 3, scope: !1490)
!1537 = !DILocation(line: 134, column: 6, scope: !399, inlinedAt: !1535)
!1538 = !DILocation(line: 135, column: 3, scope: !399, inlinedAt: !1535)
!1539 = !DILocation(line: 137, column: 13, scope: !399, inlinedAt: !1535)
!1540 = !DILocation(line: 137, column: 20, scope: !399, inlinedAt: !1535)
!1541 = !DILocation(line: 137, column: 33, scope: !399, inlinedAt: !1535)
!1542 = !DILocation(line: 114, column: 8, scope: !409, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 137, column: 2, scope: !399, inlinedAt: !1535)
!1544 = !DILocation(line: 114, column: 13, scope: !409, inlinedAt: !1543)
!1545 = !DILocation(line: 115, column: 2, scope: !409, inlinedAt: !1543)
!1546 = !DILocation(line: 138, column: 1, scope: !399, inlinedAt: !1535)
!1547 = !DILocation(line: 158, column: 9, scope: !492, inlinedAt: !1536)
!1548 = !DILocation(line: 158, column: 14, scope: !492, inlinedAt: !1536)
!1549 = !DILocation(line: 595, column: 3, scope: !1490)
!1550 = !DILocation(line: 597, column: 2, scope: !1490)
!1551 = !DILocation(line: 593, column: 52, scope: !1490)
!1552 = !DILocation(line: 599, column: 2, scope: !1490)
!1553 = distinct !DISubprogram(name: "unregister_trigger", scope: !1, file: !1, line: 613, type: !118, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1554 = !DILocation(line: 616, scope: !1553)
!1555 = !DILocation(line: 620, column: 2, scope: !1553)
!1556 = !DILocation(line: 283, column: 9, scope: !522, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 620, column: 2, scope: !1553)
!1558 = !DILocation(line: 622, column: 2, scope: !1553)
!1559 = !DILocation(line: 623, column: 13, scope: !1553)
!1560 = !DILocation(line: 623, column: 22, scope: !1553)
!1561 = !DILocation(line: 623, column: 44, scope: !1553)
!1562 = !DILocation(line: 623, column: 53, scope: !1553)
!1563 = !DILocation(line: 623, column: 35, scope: !1553)
!1564 = !DILocation(line: 623, column: 7, scope: !1553)
!1565 = !DILocation(line: 624, column: 17, scope: !1553)
!1566 = !DILocation(line: 134, column: 7, scope: !399, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 157, column: 2, scope: !492, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 625, column: 4, scope: !1553)
!1569 = !DILocation(line: 134, column: 6, scope: !399, inlinedAt: !1567)
!1570 = !DILocation(line: 135, column: 3, scope: !399, inlinedAt: !1567)
!1571 = !DILocation(line: 137, column: 13, scope: !399, inlinedAt: !1567)
!1572 = !DILocation(line: 137, column: 20, scope: !399, inlinedAt: !1567)
!1573 = !DILocation(line: 137, column: 33, scope: !399, inlinedAt: !1567)
!1574 = !DILocation(line: 114, column: 8, scope: !409, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 137, column: 2, scope: !399, inlinedAt: !1567)
!1576 = !DILocation(line: 114, column: 13, scope: !409, inlinedAt: !1575)
!1577 = !DILocation(line: 115, column: 2, scope: !409, inlinedAt: !1575)
!1578 = !DILocation(line: 138, column: 1, scope: !399, inlinedAt: !1567)
!1579 = !DILocation(line: 158, column: 9, scope: !492, inlinedAt: !1568)
!1580 = !DILocation(line: 158, column: 14, scope: !492, inlinedAt: !1568)
!1581 = !DILocation(line: 626, column: 4, scope: !1553)
!1582 = !DILocation(line: 627, column: 4, scope: !1553)
!1583 = !DILocation(line: 632, column: 22, scope: !1553)
!1584 = !DILocation(line: 632, column: 28, scope: !1553)
!1585 = !DILocation(line: 632, column: 33, scope: !1553)
!1586 = !DILocation(line: 632, column: 6, scope: !1553)
!1587 = distinct !{!1587, !1558, !1588}
!1588 = !DILocation(line: 630, column: 2, scope: !1553)
!1589 = !DILocation(line: 633, column: 3, scope: !1553)
!1590 = !DILocation(line: 633, column: 9, scope: !1553)
!1591 = !DILocation(line: 633, column: 14, scope: !1553)
!1592 = !DILocation(line: 634, column: 1, scope: !1553)
!1593 = distinct !DISubprogram(name: "onoff_get_trigger_ops", scope: !1, file: !1, line: 1448, type: !118, scopeLine: 1449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1594 = !DILocation(line: 1449, scope: !1593)
!1595 = !DILocation(line: 1453, column: 6, scope: !1593)
!1596 = !DILocation(line: 1453, column: 29, scope: !1593)
!1597 = !DILocation(line: 1454, column: 9, scope: !1593)
!1598 = !DILocation(line: 1454, column: 3, scope: !1593)
!1599 = !DILocation(line: 1457, column: 9, scope: !1593)
!1600 = !DILocation(line: 0, scope: !1593)
!1601 = !DILocation(line: 1460, column: 2, scope: !1593)
!1602 = distinct !DISubprogram(name: "traceon_count_trigger", scope: !1, file: !1, line: 1329, type: !118, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1603 = !DILocation(line: 1332, scope: !1602)
!1604 = !DILocation(line: 1333, column: 40, scope: !1602)
!1605 = !DILocation(line: 1335, column: 6, scope: !1602)
!1606 = !DILocation(line: 1336, column: 34, scope: !1602)
!1607 = !DILocation(line: 1336, column: 7, scope: !1602)
!1608 = !DILocation(line: 0, scope: !1602)
!1609 = !DILocation(line: 1337, column: 4, scope: !1602)
!1610 = !DILocation(line: 1339, column: 7, scope: !1602)
!1611 = !DILocation(line: 1340, column: 4, scope: !1602)
!1612 = !DILocation(line: 1343, column: 13, scope: !1602)
!1613 = !DILocation(line: 1343, column: 6, scope: !1602)
!1614 = !DILocation(line: 1344, column: 3, scope: !1602)
!1615 = !DILocation(line: 1347, column: 4, scope: !1602)
!1616 = !DILocation(line: 1347, column: 16, scope: !1602)
!1617 = !DILocation(line: 1347, column: 3, scope: !1602)
!1618 = !DILocation(line: 1349, column: 6, scope: !1602)
!1619 = !DILocation(line: 1350, column: 21, scope: !1602)
!1620 = !DILocation(line: 1350, column: 27, scope: !1602)
!1621 = !DILocation(line: 1350, column: 3, scope: !1602)
!1622 = !DILocation(line: 1352, column: 3, scope: !1602)
!1623 = !DILocation(line: 1353, column: 1, scope: !1602)
!1624 = distinct !DISubprogram(name: "traceon_trigger_print", scope: !1, file: !1, line: 1404, type: !118, scopeLine: 1406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1625 = !DILocation(line: 1406, scope: !1624)
!1626 = !DILocation(line: 1407, column: 57, scope: !1624)
!1627 = !DILocation(line: 1407, column: 43, scope: !1624)
!1628 = !DILocation(line: 1408, column: 14, scope: !1624)
!1629 = !DILocation(line: 1407, column: 9, scope: !1624)
!1630 = !DILocation(line: 1407, column: 2, scope: !1624)
!1631 = distinct !DISubprogram(name: "event_trigger_print", scope: !1, file: !1, line: 413, type: !118, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1632 = !DILocation(line: 415, scope: !1631)
!1633 = !DILocation(line: 418, column: 2, scope: !1631)
!1634 = !DILocation(line: 420, column: 12, scope: !1631)
!1635 = !DILocation(line: 420, column: 6, scope: !1631)
!1636 = !DILocation(line: 421, column: 12, scope: !1631)
!1637 = !DILocation(line: 421, column: 3, scope: !1631)
!1638 = !DILocation(line: 416, column: 15, scope: !1631)
!1639 = !DILocation(line: 423, column: 3, scope: !1631)
!1640 = !DILocation(line: 425, column: 6, scope: !1631)
!1641 = !DILocation(line: 426, column: 14, scope: !1631)
!1642 = !DILocation(line: 426, column: 3, scope: !1631)
!1643 = !DILocation(line: 428, column: 12, scope: !1631)
!1644 = !DILocation(line: 428, column: 3, scope: !1631)
!1645 = !DILocation(line: 430, column: 2, scope: !1631)
!1646 = distinct !DISubprogram(name: "traceon_trigger", scope: !1, file: !1, line: 1308, type: !118, scopeLine: 1311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1647 = !DILocation(line: 1311, scope: !1646)
!1648 = !DILocation(line: 1312, column: 40, scope: !1646)
!1649 = !DILocation(line: 1314, column: 6, scope: !1646)
!1650 = !DILocation(line: 1315, column: 34, scope: !1646)
!1651 = !DILocation(line: 1315, column: 7, scope: !1646)
!1652 = !DILocation(line: 0, scope: !1646)
!1653 = !DILocation(line: 1316, column: 4, scope: !1646)
!1654 = !DILocation(line: 1318, column: 21, scope: !1646)
!1655 = !DILocation(line: 1318, column: 27, scope: !1646)
!1656 = !DILocation(line: 1318, column: 3, scope: !1646)
!1657 = !DILocation(line: 1319, column: 3, scope: !1646)
!1658 = !DILocation(line: 1322, column: 6, scope: !1646)
!1659 = !DILocation(line: 1323, column: 3, scope: !1646)
!1660 = !DILocation(line: 1325, column: 2, scope: !1646)
!1661 = !DILocation(line: 1326, column: 1, scope: !1646)
!1662 = distinct !DISubprogram(name: "traceoff_count_trigger", scope: !1, file: !1, line: 1377, type: !118, scopeLine: 1380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1663 = !DILocation(line: 1380, scope: !1662)
!1664 = !DILocation(line: 1381, column: 40, scope: !1662)
!1665 = !DILocation(line: 1383, column: 6, scope: !1662)
!1666 = !DILocation(line: 1384, column: 35, scope: !1662)
!1667 = !DILocation(line: 1384, column: 8, scope: !1662)
!1668 = !DILocation(line: 1384, column: 7, scope: !1662)
!1669 = !DILocation(line: 0, scope: !1662)
!1670 = !DILocation(line: 1385, column: 4, scope: !1662)
!1671 = !DILocation(line: 1387, column: 8, scope: !1662)
!1672 = !DILocation(line: 1387, column: 7, scope: !1662)
!1673 = !DILocation(line: 1388, column: 4, scope: !1662)
!1674 = !DILocation(line: 1391, column: 13, scope: !1662)
!1675 = !DILocation(line: 1391, column: 6, scope: !1662)
!1676 = !DILocation(line: 1392, column: 3, scope: !1662)
!1677 = !DILocation(line: 1395, column: 4, scope: !1662)
!1678 = !DILocation(line: 1395, column: 16, scope: !1662)
!1679 = !DILocation(line: 1395, column: 3, scope: !1662)
!1680 = !DILocation(line: 1397, column: 6, scope: !1662)
!1681 = !DILocation(line: 1398, column: 22, scope: !1662)
!1682 = !DILocation(line: 1398, column: 28, scope: !1662)
!1683 = !DILocation(line: 1398, column: 3, scope: !1662)
!1684 = !DILocation(line: 1400, column: 3, scope: !1662)
!1685 = !DILocation(line: 1401, column: 1, scope: !1662)
!1686 = distinct !DISubprogram(name: "traceoff_trigger_print", scope: !1, file: !1, line: 1412, type: !118, scopeLine: 1414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1687 = !DILocation(line: 1414, scope: !1686)
!1688 = !DILocation(line: 1415, column: 58, scope: !1686)
!1689 = !DILocation(line: 1415, column: 44, scope: !1686)
!1690 = !DILocation(line: 1416, column: 14, scope: !1686)
!1691 = !DILocation(line: 1415, column: 9, scope: !1686)
!1692 = !DILocation(line: 1415, column: 2, scope: !1686)
!1693 = distinct !DISubprogram(name: "traceoff_trigger", scope: !1, file: !1, line: 1356, type: !118, scopeLine: 1359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1694 = !DILocation(line: 1359, scope: !1693)
!1695 = !DILocation(line: 1360, column: 40, scope: !1693)
!1696 = !DILocation(line: 1362, column: 6, scope: !1693)
!1697 = !DILocation(line: 1363, column: 35, scope: !1693)
!1698 = !DILocation(line: 1363, column: 8, scope: !1693)
!1699 = !DILocation(line: 1363, column: 7, scope: !1693)
!1700 = !DILocation(line: 0, scope: !1693)
!1701 = !DILocation(line: 1364, column: 4, scope: !1693)
!1702 = !DILocation(line: 1366, column: 22, scope: !1693)
!1703 = !DILocation(line: 1366, column: 28, scope: !1693)
!1704 = !DILocation(line: 1366, column: 3, scope: !1693)
!1705 = !DILocation(line: 1367, column: 3, scope: !1693)
!1706 = !DILocation(line: 1370, column: 7, scope: !1693)
!1707 = !DILocation(line: 1370, column: 6, scope: !1693)
!1708 = !DILocation(line: 1371, column: 3, scope: !1693)
!1709 = !DILocation(line: 1373, column: 2, scope: !1693)
!1710 = !DILocation(line: 1374, column: 1, scope: !1693)
!1711 = distinct !DISubprogram(name: "register_snapshot_trigger", scope: !1, file: !1, line: 1513, type: !118, scopeLine: 1516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1712 = !DILocation(line: 1516, scope: !1711)
!1713 = !DILocation(line: 1517, column: 44, scope: !1711)
!1714 = !DILocation(line: 1517, column: 6, scope: !1711)
!1715 = !DILocation(line: 1517, column: 48, scope: !1711)
!1716 = !DILocation(line: 1518, column: 3, scope: !1711)
!1717 = !DILocation(line: 1520, column: 26, scope: !1711)
!1718 = !DILocation(line: 1520, column: 9, scope: !1711)
!1719 = !DILocation(line: 1520, column: 2, scope: !1711)
!1720 = !DILocation(line: 0, scope: !1711)
!1721 = !DILocation(line: 1521, column: 1, scope: !1711)
!1722 = distinct !DISubprogram(name: "snapshot_get_trigger_ops", scope: !1, file: !1, line: 1546, type: !118, scopeLine: 1547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1723 = !DILocation(line: 1547, scope: !1722)
!1724 = !DILocation(line: 1548, column: 9, scope: !1722)
!1725 = !DILocation(line: 1548, column: 2, scope: !1722)
!1726 = distinct !DISubprogram(name: "snapshot_count_trigger", scope: !1, file: !1, line: 1499, type: !118, scopeLine: 1502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1727 = !DILocation(line: 1502, scope: !1726)
!1728 = !DILocation(line: 1503, column: 13, scope: !1726)
!1729 = !DILocation(line: 1503, column: 7, scope: !1726)
!1730 = !DILocation(line: 1503, column: 6, scope: !1726)
!1731 = !DILocation(line: 1504, column: 3, scope: !1726)
!1732 = !DILocation(line: 1506, column: 6, scope: !1726)
!1733 = !DILocation(line: 1506, column: 12, scope: !1726)
!1734 = !DILocation(line: 1506, column: 18, scope: !1726)
!1735 = !DILocation(line: 1507, column: 4, scope: !1726)
!1736 = !DILocation(line: 1507, column: 16, scope: !1726)
!1737 = !DILocation(line: 1507, column: 3, scope: !1726)
!1738 = !DILocation(line: 1490, column: 40, scope: !1739, inlinedAt: !1740)
!1739 = distinct !DISubprogram(name: "snapshot_trigger", scope: !1, file: !1, line: 1486, type: !118, scopeLine: 1489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1740 = distinct !DILocation(line: 1509, column: 2, scope: !1726)
!1741 = !DILocation(line: 1492, column: 6, scope: !1739, inlinedAt: !1740)
!1742 = !DILocation(line: 1493, column: 29, scope: !1739, inlinedAt: !1740)
!1743 = !DILocation(line: 1493, column: 35, scope: !1739, inlinedAt: !1740)
!1744 = !DILocation(line: 1493, column: 3, scope: !1739, inlinedAt: !1740)
!1745 = !DILocation(line: 1495, column: 3, scope: !1739, inlinedAt: !1740)
!1746 = !DILocation(line: 1510, column: 1, scope: !1726)
!1747 = distinct !DISubprogram(name: "snapshot_trigger_print", scope: !1, file: !1, line: 1524, type: !118, scopeLine: 1526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1748 = !DILocation(line: 1526, scope: !1747)
!1749 = !DILocation(line: 1527, column: 58, scope: !1747)
!1750 = !DILocation(line: 1527, column: 44, scope: !1747)
!1751 = !DILocation(line: 1528, column: 14, scope: !1747)
!1752 = !DILocation(line: 1527, column: 9, scope: !1747)
!1753 = !DILocation(line: 1527, column: 2, scope: !1747)
!1754 = !DILocation(line: 1489, scope: !1739)
!1755 = !DILocation(line: 1490, column: 40, scope: !1739)
!1756 = !DILocation(line: 1492, column: 6, scope: !1739)
!1757 = !DILocation(line: 1493, column: 29, scope: !1739)
!1758 = !DILocation(line: 1493, column: 35, scope: !1739)
!1759 = !DILocation(line: 1493, column: 3, scope: !1739)
!1760 = !DILocation(line: 1495, column: 3, scope: !1739)
!1761 = !DILocation(line: 1496, column: 1, scope: !1739)
!1762 = distinct !DISubprogram(name: "stacktrace_get_trigger_ops", scope: !1, file: !1, line: 1642, type: !118, scopeLine: 1643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1763 = !DILocation(line: 1643, scope: !1762)
!1764 = !DILocation(line: 1644, column: 9, scope: !1762)
!1765 = !DILocation(line: 1644, column: 2, scope: !1762)
!1766 = distinct !DISubprogram(name: "stacktrace_count_trigger", scope: !1, file: !1, line: 1606, type: !118, scopeLine: 1609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1767 = !DILocation(line: 1609, scope: !1766)
!1768 = !DILocation(line: 1610, column: 13, scope: !1766)
!1769 = !DILocation(line: 1610, column: 7, scope: !1766)
!1770 = !DILocation(line: 1610, column: 6, scope: !1766)
!1771 = !DILocation(line: 1611, column: 3, scope: !1766)
!1772 = !DILocation(line: 1613, column: 6, scope: !1766)
!1773 = !DILocation(line: 1613, column: 12, scope: !1766)
!1774 = !DILocation(line: 1613, column: 18, scope: !1766)
!1775 = !DILocation(line: 1614, column: 4, scope: !1766)
!1776 = !DILocation(line: 1614, column: 16, scope: !1766)
!1777 = !DILocation(line: 1614, column: 3, scope: !1766)
!1778 = !DILocation(line: 1597, column: 40, scope: !1779, inlinedAt: !1780)
!1779 = distinct !DISubprogram(name: "stacktrace_trigger", scope: !1, file: !1, line: 1593, type: !118, scopeLine: 1596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1780 = distinct !DILocation(line: 1616, column: 2, scope: !1766)
!1781 = !DILocation(line: 1599, column: 6, scope: !1779, inlinedAt: !1780)
!1782 = !DILocation(line: 1600, column: 17, scope: !1779, inlinedAt: !1780)
!1783 = !DILocation(line: 1600, column: 23, scope: !1779, inlinedAt: !1780)
!1784 = !DILocation(line: 189, column: 2, scope: !1785, inlinedAt: !1786)
!1785 = distinct !DISubprogram(name: "tracing_gen_ctx", scope: !872, file: !872, line: 185, type: !118, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1786 = distinct !DILocation(line: 1600, column: 27, scope: !1779, inlinedAt: !1780)
!1787 = !DILocation(line: 159, column: 2, scope: !1788, inlinedAt: !1790)
!1788 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1789, file: !1789, line: 156, type: !118, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1789 = !DIFile(filename: "../arch/arm/include/asm/irqflags.h", directory: "/llk/linux-5.17/build_arm_allyes")
!1790 = distinct !DILocation(line: 189, column: 2, scope: !1785, inlinedAt: !1786)
!1791 = !{i64 853782}
!1792 = !DILocation(line: 181, column: 28, scope: !1793, inlinedAt: !1794)
!1793 = distinct !DISubprogram(name: "tracing_gen_ctx_flags", scope: !872, file: !872, line: 179, type: !118, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1794 = distinct !DILocation(line: 190, column: 9, scope: !1785, inlinedAt: !1786)
!1795 = !DILocation(line: 183, column: 9, scope: !1793, inlinedAt: !1794)
!1796 = !DILocation(line: 1600, column: 3, scope: !1779, inlinedAt: !1780)
!1797 = !DILocation(line: 1602, column: 3, scope: !1779, inlinedAt: !1780)
!1798 = !DILocation(line: 1617, column: 1, scope: !1766)
!1799 = distinct !DISubprogram(name: "stacktrace_trigger_print", scope: !1, file: !1, line: 1620, type: !118, scopeLine: 1622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1800 = !DILocation(line: 1622, scope: !1799)
!1801 = !DILocation(line: 1623, column: 60, scope: !1799)
!1802 = !DILocation(line: 1623, column: 46, scope: !1799)
!1803 = !DILocation(line: 1624, column: 14, scope: !1799)
!1804 = !DILocation(line: 1623, column: 9, scope: !1799)
!1805 = !DILocation(line: 1623, column: 2, scope: !1799)
!1806 = !DILocation(line: 1596, scope: !1779)
!1807 = !DILocation(line: 1597, column: 40, scope: !1779)
!1808 = !DILocation(line: 1599, column: 6, scope: !1779)
!1809 = !DILocation(line: 1600, column: 17, scope: !1779)
!1810 = !DILocation(line: 1600, column: 23, scope: !1779)
!1811 = !DILocation(line: 189, column: 2, scope: !1785, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 1600, column: 27, scope: !1779)
!1813 = !DILocation(line: 159, column: 2, scope: !1788, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 189, column: 2, scope: !1785, inlinedAt: !1812)
!1815 = !DILocation(line: 181, column: 28, scope: !1793, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 190, column: 9, scope: !1785, inlinedAt: !1812)
!1817 = !DILocation(line: 183, column: 9, scope: !1793, inlinedAt: !1816)
!1818 = !DILocation(line: 1600, column: 3, scope: !1779)
!1819 = !DILocation(line: 1602, column: 3, scope: !1779)
!1820 = !DILocation(line: 1603, column: 1, scope: !1779)
!1821 = distinct !DISubprogram(name: "unregister_trigger_enable_disable_cmds", scope: !1, file: !1, line: 2045, type: !118, scopeLine: 2046, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1822 = !DILocation(line: 2046, scope: !1821)
!1823 = !DILocation(line: 2047, column: 2, scope: !1821)
!1824 = !DILocation(line: 2048, column: 2, scope: !1821)
!1825 = !DILocation(line: 2049, column: 1, scope: !1821)
!1826 = distinct !DISubprogram(name: "event_enable_get_trigger_ops", scope: !1, file: !1, line: 2004, type: !118, scopeLine: 2005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1827 = !DILocation(line: 2005, scope: !1826)
!1828 = !DILocation(line: 2010, column: 13, scope: !1826)
!1829 = !DILocation(line: 2010, column: 43, scope: !1826)
!1830 = !DILocation(line: 2010, column: 49, scope: !1826)
!1831 = !DILocation(line: 2011, column: 13, scope: !1826)
!1832 = !DILocation(line: 2011, column: 6, scope: !1826)
!1833 = !DILocation(line: 2011, column: 35, scope: !1826)
!1834 = !DILocation(line: 2015, column: 6, scope: !1826)
!1835 = !DILocation(line: 2016, column: 9, scope: !1826)
!1836 = !DILocation(line: 2016, column: 3, scope: !1826)
!1837 = !DILocation(line: 2019, column: 9, scope: !1826)
!1838 = !DILocation(line: 0, scope: !1826)
!1839 = !DILocation(line: 2022, column: 2, scope: !1826)
!1840 = distinct !DISubprogram(name: "event_enable_count_trigger", scope: !1, file: !1, line: 1691, type: !118, scopeLine: 1694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1841 = !DILocation(line: 1694, scope: !1840)
!1842 = !DILocation(line: 1697, column: 13, scope: !1840)
!1843 = !DILocation(line: 1697, column: 7, scope: !1840)
!1844 = !DILocation(line: 1697, column: 6, scope: !1840)
!1845 = !DILocation(line: 0, scope: !1840)
!1846 = !DILocation(line: 1698, column: 3, scope: !1840)
!1847 = !DILocation(line: 1695, column: 50, scope: !1840)
!1848 = !DILocation(line: 1701, column: 19, scope: !1840)
!1849 = !DILocation(line: 1701, column: 6, scope: !1840)
!1850 = !DILocation(line: 1701, column: 44, scope: !1840)
!1851 = !DILocation(line: 1701, column: 50, scope: !1840)
!1852 = !DILocation(line: 1701, column: 29, scope: !1840)
!1853 = !DILocation(line: 1701, column: 26, scope: !1840)
!1854 = !DILocation(line: 1702, column: 3, scope: !1840)
!1855 = !DILocation(line: 1704, column: 18, scope: !1840)
!1856 = !DILocation(line: 1704, column: 6, scope: !1840)
!1857 = !DILocation(line: 1705, column: 4, scope: !1840)
!1858 = !DILocation(line: 1705, column: 16, scope: !1840)
!1859 = !DILocation(line: 1705, column: 3, scope: !1840)
!1860 = !DILocation(line: 1707, column: 23, scope: !1840)
!1861 = !DILocation(line: 1682, column: 50, scope: !1862, inlinedAt: !1863)
!1862 = distinct !DISubprogram(name: "event_enable_trigger", scope: !1, file: !1, line: 1678, type: !118, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!1863 = distinct !DILocation(line: 1707, column: 2, scope: !1840)
!1864 = !DILocation(line: 1684, column: 19, scope: !1862, inlinedAt: !1863)
!1865 = !DILocation(line: 1684, column: 6, scope: !1862, inlinedAt: !1863)
!1866 = !DILocation(line: 1685, column: 3, scope: !1862, inlinedAt: !1863)
!1867 = !DILocation(line: 1687, column: 3, scope: !1862, inlinedAt: !1863)
!1868 = !DILocation(line: 1708, column: 1, scope: !1840)
!1869 = !DILocation(line: 1681, scope: !1862)
!1870 = !DILocation(line: 1682, column: 50, scope: !1862)
!1871 = !DILocation(line: 1684, column: 19, scope: !1862)
!1872 = !DILocation(line: 1684, column: 6, scope: !1862)
!1873 = !DILocation(line: 1685, column: 3, scope: !1862)
!1874 = !DILocation(line: 1687, column: 3, scope: !1862)
!1875 = !DILocation(line: 1688, column: 1, scope: !1862)
