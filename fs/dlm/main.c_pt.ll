; ModuleID = '/llk/IR_all_yes/fs/dlm/main.c_pt.bc'
source_filename = "../fs/dlm/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dlm_new_lockspace\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_new_lockspace\09\09\09\09"
module asm "\09.long\09__crc_dlm_new_lockspace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_new_lockspace:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_new_lockspace\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_new_lockspace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_release_lockspace\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_release_lockspace\09\09\09\09"
module asm "\09.long\09__crc_dlm_release_lockspace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_release_lockspace:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_release_lockspace\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_release_lockspace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_lock\09\09\09\09"
module asm "\09.long\09__crc_dlm_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_lock\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dlm_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_dlm_unlock\09\09\09\09"
module asm "\09.long\09__crc_dlm_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dlm_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22dlm_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_dlm_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.101 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.103, %struct.trace_event, ptr, ptr, %union.anon.104, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.103 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.104 = type { ptr }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.42, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.42 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.43 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.44, i32, i16, i8, i8 }
%union.anon.44 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.trace_event_raw_dlm_lock_start = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_dlm_lock_end = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dlm_bast = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dlm_ast = type { %struct.trace_entry, i32, i32, i8, i32, [0 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.trace_event_raw_dlm_unlock_start = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dlm_unlock_end = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dlm_send = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dlm_recv = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_dlm_lock_start = internal constant [15 x i8] c"dlm_lock_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dlm_lock_start = dso_local global %struct.static_call_key { ptr @__traceiter_dlm_lock_start }, align 4
@__tracepoint_dlm_lock_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dlm_lock_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dlm_lock_start, ptr null, ptr @__traceiter_dlm_lock_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dlm_lock_start = internal constant ptr @__tracepoint_dlm_lock_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_dlm_lock_end = internal constant [13 x i8] c"dlm_lock_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dlm_lock_end = dso_local global %struct.static_call_key { ptr @__traceiter_dlm_lock_end }, align 4
@__tracepoint_dlm_lock_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dlm_lock_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dlm_lock_end, ptr null, ptr @__traceiter_dlm_lock_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dlm_lock_end = internal constant ptr @__tracepoint_dlm_lock_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_dlm_bast = internal constant [9 x i8] c"dlm_bast\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dlm_bast = dso_local global %struct.static_call_key { ptr @__traceiter_dlm_bast }, align 4
@__tracepoint_dlm_bast = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dlm_bast, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dlm_bast, ptr null, ptr @__traceiter_dlm_bast, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dlm_bast = internal constant ptr @__tracepoint_dlm_bast, section "__tracepoints_ptrs", align 4
@__tpstrtab_dlm_ast = internal constant [8 x i8] c"dlm_ast\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dlm_ast = dso_local global %struct.static_call_key { ptr @__traceiter_dlm_ast }, align 4
@__tracepoint_dlm_ast = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dlm_ast, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dlm_ast, ptr null, ptr @__traceiter_dlm_ast, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dlm_ast = internal constant ptr @__tracepoint_dlm_ast, section "__tracepoints_ptrs", align 4
@__tpstrtab_dlm_unlock_start = internal constant [17 x i8] c"dlm_unlock_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dlm_unlock_start = dso_local global %struct.static_call_key { ptr @__traceiter_dlm_unlock_start }, align 4
@__tracepoint_dlm_unlock_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dlm_unlock_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dlm_unlock_start, ptr null, ptr @__traceiter_dlm_unlock_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dlm_unlock_start = internal constant ptr @__tracepoint_dlm_unlock_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_dlm_unlock_end = internal constant [15 x i8] c"dlm_unlock_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dlm_unlock_end = dso_local global %struct.static_call_key { ptr @__traceiter_dlm_unlock_end }, align 4
@__tracepoint_dlm_unlock_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dlm_unlock_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dlm_unlock_end, ptr null, ptr @__traceiter_dlm_unlock_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dlm_unlock_end = internal constant ptr @__tracepoint_dlm_unlock_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_dlm_send = internal constant [9 x i8] c"dlm_send\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dlm_send = dso_local global %struct.static_call_key { ptr @__traceiter_dlm_send }, align 4
@__tracepoint_dlm_send = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dlm_send, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dlm_send, ptr null, ptr @__traceiter_dlm_send, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dlm_send = internal constant ptr @__tracepoint_dlm_send, section "__tracepoints_ptrs", align 4
@__tpstrtab_dlm_recv = internal constant [9 x i8] c"dlm_recv\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dlm_recv = dso_local global %struct.static_call_key { ptr @__traceiter_dlm_recv }, align 4
@__tracepoint_dlm_recv = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dlm_recv, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dlm_recv, ptr null, ptr @__traceiter_dlm_recv, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dlm_recv = internal constant ptr @__tracepoint_dlm_recv, section "__tracepoints_ptrs", align 4
@str__dlm__trace_system_name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dlm\00", [28 x i8] zeroinitializer }, align 32
@trace_event_fields_dlm_lock_start = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_dlm_lock_start = internal global %struct.trace_event_class { ptr @str__dlm__trace_system_name, ptr @trace_event_raw_event_dlm_lock_start, ptr @perf_trace_dlm_lock_start, ptr @trace_event_reg, ptr @trace_event_fields_dlm_lock_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dlm_lock_start, i64 24), ptr getelementptr (i8, ptr @event_class_dlm_lock_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dlm_lock_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dlm_lock_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dlm_lock_start = internal global { [735 x i8], [161 x i8] } { [735 x i8] c"\22ls_id=%u lkb_id=%x mode=%s flags=%s\22, REC->ls_id, REC->lkb_id, __print_symbolic(REC->mode, { (-1), \22IV\22}, { 0, \22NL\22}, { 1, \22CR\22}, { 2, \22CW\22}, { 3, \22PR\22}, { 4, \22PW\22}, { 5, \22EX\22}), __print_flags(REC->flags, \22|\22, { 0x00000001, \22NOQUEUE\22 }, { 0x00000002, \22CANCEL\22 }, { 0x00000004, \22CONVERT\22 }, { 0x00000008, \22VALBLK\22 }, { 0x00000010, \22QUECVT\22 }, { 0x00000020, \22IVVALBLK\22 }, { 0x00000040, \22CONVDEADLK\22 }, { 0x00000080, \22PERSISTENT\22 }, { 0x00000100, \22NODLCKWT\22 }, { 0x00000200, \22NODLCKBLK\22 }, { 0x00000400, \22EXPEDITE\22 }, { 0x00000800, \22NOQUEUEBAST\22 }, { 0x00001000, \22HEADQUE\22 }, { 0x00002000, \22NOORDER\22 }, { 0x00004000, \22ORPHAN\22 }, { 0x00008000, \22ALTPR\22 }, { 0x00010000, \22ALTCW\22 }, { 0x00020000, \22FORCEUNLOCK\22 }, { 0x00040000, \22TIMEOUT\22 })\00", [161 x i8] zeroinitializer }, align 32
@event_dlm_lock_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dlm_lock_start, %union.anon.103 { ptr @__tracepoint_dlm_lock_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dlm_lock_start }, ptr @print_fmt_dlm_lock_start, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dlm_lock_start = internal global ptr @event_dlm_lock_start, section "_ftrace_events", align 4
@trace_event_fields_dlm_lock_end = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_dlm_lock_end = internal global %struct.trace_event_class { ptr @str__dlm__trace_system_name, ptr @trace_event_raw_event_dlm_lock_end, ptr @perf_trace_dlm_lock_end, ptr @trace_event_reg, ptr @trace_event_fields_dlm_lock_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dlm_lock_end, i64 24), ptr getelementptr (i8, ptr @event_class_dlm_lock_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dlm_lock_end = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dlm_lock_end, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dlm_lock_end = internal global { [756 x i8], [172 x i8] } { [756 x i8] c"\22ls_id=%u lkb_id=%x mode=%s flags=%s error=%d\22, REC->ls_id, REC->lkb_id, __print_symbolic(REC->mode, { (-1), \22IV\22}, { 0, \22NL\22}, { 1, \22CR\22}, { 2, \22CW\22}, { 3, \22PR\22}, { 4, \22PW\22}, { 5, \22EX\22}), __print_flags(REC->flags, \22|\22, { 0x00000001, \22NOQUEUE\22 }, { 0x00000002, \22CANCEL\22 }, { 0x00000004, \22CONVERT\22 }, { 0x00000008, \22VALBLK\22 }, { 0x00000010, \22QUECVT\22 }, { 0x00000020, \22IVVALBLK\22 }, { 0x00000040, \22CONVDEADLK\22 }, { 0x00000080, \22PERSISTENT\22 }, { 0x00000100, \22NODLCKWT\22 }, { 0x00000200, \22NODLCKBLK\22 }, { 0x00000400, \22EXPEDITE\22 }, { 0x00000800, \22NOQUEUEBAST\22 }, { 0x00001000, \22HEADQUE\22 }, { 0x00002000, \22NOORDER\22 }, { 0x00004000, \22ORPHAN\22 }, { 0x00008000, \22ALTPR\22 }, { 0x00010000, \22ALTCW\22 }, { 0x00020000, \22FORCEUNLOCK\22 }, { 0x00040000, \22TIMEOUT\22 }), REC->error\00", [172 x i8] zeroinitializer }, align 32
@event_dlm_lock_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dlm_lock_end, %union.anon.103 { ptr @__tracepoint_dlm_lock_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dlm_lock_end }, ptr @print_fmt_dlm_lock_end, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dlm_lock_end = internal global ptr @event_dlm_lock_end, section "_ftrace_events", align 4
@trace_event_fields_dlm_bast = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_dlm_bast = internal global %struct.trace_event_class { ptr @str__dlm__trace_system_name, ptr @trace_event_raw_event_dlm_bast, ptr @perf_trace_dlm_bast, ptr @trace_event_reg, ptr @trace_event_fields_dlm_bast, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dlm_bast, i64 24), ptr getelementptr (i8, ptr @event_class_dlm_bast, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dlm_bast = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dlm_bast, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dlm_bast = internal global { [170 x i8], [54 x i8] } { [170 x i8] c"\22ls_id=%u lkb_id=%x mode=%s\22, REC->ls_id, REC->lkb_id, __print_symbolic(REC->mode, { (-1), \22IV\22}, { 0, \22NL\22}, { 1, \22CR\22}, { 2, \22CW\22}, { 3, \22PR\22}, { 4, \22PW\22}, { 5, \22EX\22})\00", [54 x i8] zeroinitializer }, align 32
@event_dlm_bast = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dlm_bast, %union.anon.103 { ptr @__tracepoint_dlm_bast }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dlm_bast }, ptr @print_fmt_dlm_bast, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dlm_bast = internal global ptr @event_dlm_bast, section "_ftrace_events", align 4
@trace_event_fields_dlm_ast = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.101 { %struct.anon.102 { ptr @.str.38, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_dlm_ast = internal global %struct.trace_event_class { ptr @str__dlm__trace_system_name, ptr @trace_event_raw_event_dlm_ast, ptr @perf_trace_dlm_ast, ptr @trace_event_reg, ptr @trace_event_fields_dlm_ast, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dlm_ast, i64 24), ptr getelementptr (i8, ptr @event_class_dlm_ast, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dlm_ast = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dlm_ast, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dlm_ast = internal global { [189 x i8], [35 x i8] } { [189 x i8] c"\22ls_id=%u lkb_id=%x sb_flags=%s sb_status=%d\22, REC->ls_id, REC->lkb_id, __print_flags(REC->sb_flags, \22|\22, { 0x01, \22DEMOTED\22 }, { 0x02, \22VALNOTVALID\22 }, { 0x04, \22ALTMODE\22 }), REC->sb_status\00", [35 x i8] zeroinitializer }, align 32
@event_dlm_ast = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dlm_ast, %union.anon.103 { ptr @__tracepoint_dlm_ast }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dlm_ast }, ptr @print_fmt_dlm_ast, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dlm_ast = internal global ptr @event_dlm_ast, section "_ftrace_events", align 4
@trace_event_fields_dlm_unlock_start = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_dlm_unlock_start = internal global %struct.trace_event_class { ptr @str__dlm__trace_system_name, ptr @trace_event_raw_event_dlm_unlock_start, ptr @perf_trace_dlm_unlock_start, ptr @trace_event_reg, ptr @trace_event_fields_dlm_unlock_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dlm_unlock_start, i64 24), ptr getelementptr (i8, ptr @event_class_dlm_unlock_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dlm_unlock_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dlm_unlock_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dlm_unlock_start = internal global { [611 x i8], [157 x i8] } { [611 x i8] c"\22ls_id=%u lkb_id=%x flags=%s\22, REC->ls_id, REC->lkb_id, __print_flags(REC->flags, \22|\22, { 0x00000001, \22NOQUEUE\22 }, { 0x00000002, \22CANCEL\22 }, { 0x00000004, \22CONVERT\22 }, { 0x00000008, \22VALBLK\22 }, { 0x00000010, \22QUECVT\22 }, { 0x00000020, \22IVVALBLK\22 }, { 0x00000040, \22CONVDEADLK\22 }, { 0x00000080, \22PERSISTENT\22 }, { 0x00000100, \22NODLCKWT\22 }, { 0x00000200, \22NODLCKBLK\22 }, { 0x00000400, \22EXPEDITE\22 }, { 0x00000800, \22NOQUEUEBAST\22 }, { 0x00001000, \22HEADQUE\22 }, { 0x00002000, \22NOORDER\22 }, { 0x00004000, \22ORPHAN\22 }, { 0x00008000, \22ALTPR\22 }, { 0x00010000, \22ALTCW\22 }, { 0x00020000, \22FORCEUNLOCK\22 }, { 0x00040000, \22TIMEOUT\22 })\00", [157 x i8] zeroinitializer }, align 32
@event_dlm_unlock_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dlm_unlock_start, %union.anon.103 { ptr @__tracepoint_dlm_unlock_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dlm_unlock_start }, ptr @print_fmt_dlm_unlock_start, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dlm_unlock_start = internal global ptr @event_dlm_unlock_start, section "_ftrace_events", align 4
@trace_event_fields_dlm_unlock_end = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.101 { %struct.anon.102 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_dlm_unlock_end = internal global %struct.trace_event_class { ptr @str__dlm__trace_system_name, ptr @trace_event_raw_event_dlm_unlock_end, ptr @perf_trace_dlm_unlock_end, ptr @trace_event_reg, ptr @trace_event_fields_dlm_unlock_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dlm_unlock_end, i64 24), ptr getelementptr (i8, ptr @event_class_dlm_unlock_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dlm_unlock_end = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dlm_unlock_end, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dlm_unlock_end = internal global { [632 x i8], [136 x i8] } { [632 x i8] c"\22ls_id=%u lkb_id=%x flags=%s error=%d\22, REC->ls_id, REC->lkb_id, __print_flags(REC->flags, \22|\22, { 0x00000001, \22NOQUEUE\22 }, { 0x00000002, \22CANCEL\22 }, { 0x00000004, \22CONVERT\22 }, { 0x00000008, \22VALBLK\22 }, { 0x00000010, \22QUECVT\22 }, { 0x00000020, \22IVVALBLK\22 }, { 0x00000040, \22CONVDEADLK\22 }, { 0x00000080, \22PERSISTENT\22 }, { 0x00000100, \22NODLCKWT\22 }, { 0x00000200, \22NODLCKBLK\22 }, { 0x00000400, \22EXPEDITE\22 }, { 0x00000800, \22NOQUEUEBAST\22 }, { 0x00001000, \22HEADQUE\22 }, { 0x00002000, \22NOORDER\22 }, { 0x00004000, \22ORPHAN\22 }, { 0x00008000, \22ALTPR\22 }, { 0x00010000, \22ALTCW\22 }, { 0x00020000, \22FORCEUNLOCK\22 }, { 0x00040000, \22TIMEOUT\22 }), REC->error\00", [136 x i8] zeroinitializer }, align 32
@event_dlm_unlock_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dlm_unlock_end, %union.anon.103 { ptr @__tracepoint_dlm_unlock_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dlm_unlock_end }, ptr @print_fmt_dlm_unlock_end, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dlm_unlock_end = internal global ptr @event_dlm_unlock_end, section "_ftrace_events", align 4
@trace_event_fields_dlm_send = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.46, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.47, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_dlm_send = internal global %struct.trace_event_class { ptr @str__dlm__trace_system_name, ptr @trace_event_raw_event_dlm_send, ptr @perf_trace_dlm_send, ptr @trace_event_reg, ptr @trace_event_fields_dlm_send, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dlm_send, i64 24), ptr getelementptr (i8, ptr @event_class_dlm_send, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dlm_send = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dlm_send, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dlm_send = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\22nodeid=%d ret=%d\22, REC->nodeid, REC->ret\00", [54 x i8] zeroinitializer }, align 32
@event_dlm_send = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dlm_send, %union.anon.103 { ptr @__tracepoint_dlm_send }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dlm_send }, ptr @print_fmt_dlm_send, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dlm_send = internal global ptr @event_dlm_send, section "_ftrace_events", align 4
@trace_event_fields_dlm_recv = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.46, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.101 { %struct.anon.102 { ptr @.str.47, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_dlm_recv = internal global %struct.trace_event_class { ptr @str__dlm__trace_system_name, ptr @trace_event_raw_event_dlm_recv, ptr @perf_trace_dlm_recv, ptr @trace_event_reg, ptr @trace_event_fields_dlm_recv, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dlm_recv, i64 24), ptr getelementptr (i8, ptr @event_class_dlm_recv, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dlm_recv = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dlm_recv, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dlm_recv = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\22nodeid=%d ret=%d\22, REC->nodeid, REC->ret\00", [54 x i8] zeroinitializer }, align 32
@event_dlm_recv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dlm_recv, %union.anon.103 { ptr @__tracepoint_dlm_recv }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dlm_recv }, ptr @print_fmt_dlm_recv, ptr null, %union.anon.104 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dlm_recv = internal global ptr @event_dlm_recv, section "_ftrace_events", align 4
@__bpf_trace_tp_map_dlm_lock_start = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_dlm_lock_start, ptr @__bpf_trace_dlm_lock_start, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dlm_lock_end = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_dlm_lock_end, ptr @__bpf_trace_dlm_lock_end, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dlm_bast = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_dlm_bast, ptr @__bpf_trace_dlm_bast, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dlm_ast = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_dlm_ast, ptr @__bpf_trace_dlm_ast, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dlm_unlock_start = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_dlm_unlock_start, ptr @__bpf_trace_dlm_unlock_start, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dlm_unlock_end = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_dlm_unlock_end, ptr @__bpf_trace_dlm_unlock_end, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dlm_send = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_dlm_send, ptr @__bpf_trace_dlm_send, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dlm_recv = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_dlm_recv, ptr @__bpf_trace_dlm_recv, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__initcall__kmod_dlm__295_86_init_dlm6 = internal global ptr @init_dlm, section ".initcall6.init", align 4
@__exitcall_exit_dlm = internal global ptr @exit_dlm, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [41 x i8] c"dlm.description=Distributed Lock Manager\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [25 x i8] c"dlm.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [20 x i8] c"dlm.file=fs/dlm/dlm\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [16 x i8] c"dlm.license=GPL\00", section ".modinfo", align 1
@__kstrtab_dlm_new_lockspace = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_new_lockspace = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_new_lockspace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_new_lockspace to i32), ptr @__kstrtab_dlm_new_lockspace, ptr @__kstrtabns_dlm_new_lockspace }, section "___ksymtab_gpl+dlm_new_lockspace", align 4
@__kstrtab_dlm_release_lockspace = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_release_lockspace = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_release_lockspace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_release_lockspace to i32), ptr @__kstrtab_dlm_release_lockspace, ptr @__kstrtabns_dlm_release_lockspace }, section "___ksymtab_gpl+dlm_release_lockspace", align 4
@__kstrtab_dlm_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_lock to i32), ptr @__kstrtab_dlm_lock, ptr @__kstrtabns_dlm_lock }, section "___ksymtab_gpl+dlm_lock", align 4
@__kstrtab_dlm_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_dlm_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_dlm_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dlm_unlock to i32), ptr @__kstrtab_dlm_unlock, ptr @__kstrtabns_dlm_unlock }, section "___ksymtab_gpl+dlm_unlock", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u32\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ls_id\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lkb_id\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ls_id=%u lkb_id=%x mode=%s flags=%s\0A\00", [59 x i8] zeroinitializer }, align 32
@trace_raw_output_dlm_lock_start.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 -1, ptr @.str.7 }, %struct.trace_print_flags { i32 0, ptr @.str.8 }, %struct.trace_print_flags { i32 1, ptr @.str.9 }, %struct.trace_print_flags { i32 2, ptr @.str.10 }, %struct.trace_print_flags { i32 3, ptr @.str.11 }, %struct.trace_print_flags { i32 4, ptr @.str.12 }, %struct.trace_print_flags { i32 5, ptr @.str.13 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IV\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NL\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CR\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CW\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PW\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EX\00", [29 x i8] zeroinitializer }, align 32
@trace_raw_output_dlm_lock_start.__flags = internal constant { [20 x %struct.trace_print_flags], [32 x i8] } { [20 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.14 }, %struct.trace_print_flags { i32 2, ptr @.str.15 }, %struct.trace_print_flags { i32 4, ptr @.str.16 }, %struct.trace_print_flags { i32 8, ptr @.str.17 }, %struct.trace_print_flags { i32 16, ptr @.str.18 }, %struct.trace_print_flags { i32 32, ptr @.str.19 }, %struct.trace_print_flags { i32 64, ptr @.str.20 }, %struct.trace_print_flags { i32 128, ptr @.str.21 }, %struct.trace_print_flags { i32 256, ptr @.str.22 }, %struct.trace_print_flags { i32 512, ptr @.str.23 }, %struct.trace_print_flags { i32 1024, ptr @.str.24 }, %struct.trace_print_flags { i32 2048, ptr @.str.25 }, %struct.trace_print_flags { i32 4096, ptr @.str.26 }, %struct.trace_print_flags { i32 8192, ptr @.str.27 }, %struct.trace_print_flags { i32 16384, ptr @.str.28 }, %struct.trace_print_flags { i32 32768, ptr @.str.29 }, %struct.trace_print_flags { i32 65536, ptr @.str.30 }, %struct.trace_print_flags { i32 131072, ptr @.str.31 }, %struct.trace_print_flags { i32 262144, ptr @.str.32 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NOQUEUE\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CANCEL\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CONVERT\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VALBLK\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"QUECVT\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IVVALBLK\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CONVDEADLK\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PERSISTENT\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NODLCKWT\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NODLCKBLK\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EXPEDITE\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NOQUEUEBAST\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HEADQUE\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NOORDER\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ORPHAN\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALTPR\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALTCW\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FORCEUNLOCK\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TIMEOUT\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ls_id=%u lkb_id=%x mode=%s flags=%s error=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@trace_raw_output_dlm_lock_end.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 -1, ptr @.str.7 }, %struct.trace_print_flags { i32 0, ptr @.str.8 }, %struct.trace_print_flags { i32 1, ptr @.str.9 }, %struct.trace_print_flags { i32 2, ptr @.str.10 }, %struct.trace_print_flags { i32 3, ptr @.str.11 }, %struct.trace_print_flags { i32 4, ptr @.str.12 }, %struct.trace_print_flags { i32 5, ptr @.str.13 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@trace_raw_output_dlm_lock_end.__flags = internal constant { [20 x %struct.trace_print_flags], [32 x i8] } { [20 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.14 }, %struct.trace_print_flags { i32 2, ptr @.str.15 }, %struct.trace_print_flags { i32 4, ptr @.str.16 }, %struct.trace_print_flags { i32 8, ptr @.str.17 }, %struct.trace_print_flags { i32 16, ptr @.str.18 }, %struct.trace_print_flags { i32 32, ptr @.str.19 }, %struct.trace_print_flags { i32 64, ptr @.str.20 }, %struct.trace_print_flags { i32 128, ptr @.str.21 }, %struct.trace_print_flags { i32 256, ptr @.str.22 }, %struct.trace_print_flags { i32 512, ptr @.str.23 }, %struct.trace_print_flags { i32 1024, ptr @.str.24 }, %struct.trace_print_flags { i32 2048, ptr @.str.25 }, %struct.trace_print_flags { i32 4096, ptr @.str.26 }, %struct.trace_print_flags { i32 8192, ptr @.str.27 }, %struct.trace_print_flags { i32 16384, ptr @.str.28 }, %struct.trace_print_flags { i32 32768, ptr @.str.29 }, %struct.trace_print_flags { i32 65536, ptr @.str.30 }, %struct.trace_print_flags { i32 131072, ptr @.str.31 }, %struct.trace_print_flags { i32 262144, ptr @.str.32 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ls_id=%u lkb_id=%x mode=%s\0A\00", [36 x i8] zeroinitializer }, align 32
@trace_raw_output_dlm_bast.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 -1, ptr @.str.7 }, %struct.trace_print_flags { i32 0, ptr @.str.8 }, %struct.trace_print_flags { i32 1, ptr @.str.9 }, %struct.trace_print_flags { i32 2, ptr @.str.10 }, %struct.trace_print_flags { i32 3, ptr @.str.11 }, %struct.trace_print_flags { i32 4, ptr @.str.12 }, %struct.trace_print_flags { i32 5, ptr @.str.13 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sb_flags\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sb_status\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ls_id=%u lkb_id=%x sb_flags=%s sb_status=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_raw_output_dlm_ast.__flags = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.41 }, %struct.trace_print_flags { i32 2, ptr @.str.42 }, %struct.trace_print_flags { i32 4, ptr @.str.43 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEMOTED\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VALNOTVALID\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALTMODE\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ls_id=%u lkb_id=%x flags=%s\0A\00", [35 x i8] zeroinitializer }, align 32
@trace_raw_output_dlm_unlock_start.__flags = internal constant { [20 x %struct.trace_print_flags], [32 x i8] } { [20 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.14 }, %struct.trace_print_flags { i32 2, ptr @.str.15 }, %struct.trace_print_flags { i32 4, ptr @.str.16 }, %struct.trace_print_flags { i32 8, ptr @.str.17 }, %struct.trace_print_flags { i32 16, ptr @.str.18 }, %struct.trace_print_flags { i32 32, ptr @.str.19 }, %struct.trace_print_flags { i32 64, ptr @.str.20 }, %struct.trace_print_flags { i32 128, ptr @.str.21 }, %struct.trace_print_flags { i32 256, ptr @.str.22 }, %struct.trace_print_flags { i32 512, ptr @.str.23 }, %struct.trace_print_flags { i32 1024, ptr @.str.24 }, %struct.trace_print_flags { i32 2048, ptr @.str.25 }, %struct.trace_print_flags { i32 4096, ptr @.str.26 }, %struct.trace_print_flags { i32 8192, ptr @.str.27 }, %struct.trace_print_flags { i32 16384, ptr @.str.28 }, %struct.trace_print_flags { i32 32768, ptr @.str.29 }, %struct.trace_print_flags { i32 65536, ptr @.str.30 }, %struct.trace_print_flags { i32 131072, ptr @.str.31 }, %struct.trace_print_flags { i32 262144, ptr @.str.32 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ls_id=%u lkb_id=%x flags=%s error=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@trace_raw_output_dlm_unlock_end.__flags = internal constant { [20 x %struct.trace_print_flags], [32 x i8] } { [20 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.14 }, %struct.trace_print_flags { i32 2, ptr @.str.15 }, %struct.trace_print_flags { i32 4, ptr @.str.16 }, %struct.trace_print_flags { i32 8, ptr @.str.17 }, %struct.trace_print_flags { i32 16, ptr @.str.18 }, %struct.trace_print_flags { i32 32, ptr @.str.19 }, %struct.trace_print_flags { i32 64, ptr @.str.20 }, %struct.trace_print_flags { i32 128, ptr @.str.21 }, %struct.trace_print_flags { i32 256, ptr @.str.22 }, %struct.trace_print_flags { i32 512, ptr @.str.23 }, %struct.trace_print_flags { i32 1024, ptr @.str.24 }, %struct.trace_print_flags { i32 2048, ptr @.str.25 }, %struct.trace_print_flags { i32 4096, ptr @.str.26 }, %struct.trace_print_flags { i32 8192, ptr @.str.27 }, %struct.trace_print_flags { i32 16384, ptr @.str.28 }, %struct.trace_print_flags { i32 32768, ptr @.str.29 }, %struct.trace_print_flags { i32 65536, ptr @.str.30 }, %struct.trace_print_flags { i32 131072, ptr @.str.31 }, %struct.trace_print_flags { i32 262144, ptr @.str.32 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nodeid\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nodeid=%d ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@init_dlm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.51, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DLM installed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_dlm\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/dlm/main.c\00", [18 x i8] zeroinitializer }, align 32
@init_dlm._entry_ptr = internal global ptr @init_dlm._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967261, i64 4294967285]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 4294967261, i64 4294967285]
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"str__dlm__trace_system_name\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 36, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [34 x i8] c"trace_event_fields_dlm_lock_start\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_dlm_lock_start\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"print_fmt_dlm_lock_start\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"event_dlm_lock_start\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [32 x i8] c"trace_event_fields_dlm_lock_end\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_dlm_lock_end\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"print_fmt_dlm_lock_end\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"event_dlm_lock_end\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [28 x i8] c"trace_event_fields_dlm_bast\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_dlm_bast\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"print_fmt_dlm_bast\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"event_dlm_bast\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"trace_event_fields_dlm_ast\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"trace_event_type_funcs_dlm_ast\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"print_fmt_dlm_ast\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"event_dlm_ast\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [36 x i8] c"trace_event_fields_dlm_unlock_start\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_dlm_unlock_start\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"print_fmt_dlm_unlock_start\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"event_dlm_unlock_start\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [34 x i8] c"trace_event_fields_dlm_unlock_end\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_dlm_unlock_end\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [25 x i8] c"print_fmt_dlm_unlock_end\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"event_dlm_unlock_end\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [28 x i8] c"trace_event_fields_dlm_send\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_dlm_send\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"print_fmt_dlm_send\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"event_dlm_send\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [28 x i8] c"trace_event_fields_dlm_recv\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_dlm_recv\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"print_fmt_dlm_recv\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"event_dlm_recv\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 237, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 50, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 78, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 116, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 139, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 166, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 190, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant [30 x i8] c"../include/trace/events/dlm.h\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 217, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private constant [17 x i8] c"../fs/dlm/main.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 55, i32 2 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__bpf_trace_tp_map_dlm_ast, ptr @__bpf_trace_tp_map_dlm_bast, ptr @__bpf_trace_tp_map_dlm_lock_end, ptr @__bpf_trace_tp_map_dlm_lock_start, ptr @__bpf_trace_tp_map_dlm_recv, ptr @__bpf_trace_tp_map_dlm_send, ptr @__bpf_trace_tp_map_dlm_unlock_end, ptr @__bpf_trace_tp_map_dlm_unlock_start, ptr @__event_dlm_ast, ptr @__event_dlm_bast, ptr @__event_dlm_lock_end, ptr @__event_dlm_lock_start, ptr @__event_dlm_recv, ptr @__event_dlm_send, ptr @__event_dlm_unlock_end, ptr @__event_dlm_unlock_start, ptr @__exitcall_exit_dlm, ptr @__initcall__kmod_dlm__295_86_init_dlm6, ptr @__ksymtab_dlm_lock, ptr @__ksymtab_dlm_new_lockspace, ptr @__ksymtab_dlm_release_lockspace, ptr @__ksymtab_dlm_unlock, ptr @__tracepoint_dlm_ast, ptr @__tracepoint_dlm_bast, ptr @__tracepoint_dlm_lock_end, ptr @__tracepoint_dlm_lock_start, ptr @__tracepoint_dlm_recv, ptr @__tracepoint_dlm_send, ptr @__tracepoint_dlm_unlock_end, ptr @__tracepoint_dlm_unlock_start, ptr @__tracepoint_ptr_dlm_ast, ptr @__tracepoint_ptr_dlm_bast, ptr @__tracepoint_ptr_dlm_lock_end, ptr @__tracepoint_ptr_dlm_lock_start, ptr @__tracepoint_ptr_dlm_recv, ptr @__tracepoint_ptr_dlm_send, ptr @__tracepoint_ptr_dlm_unlock_end, ptr @__tracepoint_ptr_dlm_unlock_start, ptr @event_class_dlm_ast, ptr @event_class_dlm_bast, ptr @event_class_dlm_lock_end, ptr @event_class_dlm_lock_start, ptr @event_class_dlm_recv, ptr @event_class_dlm_send, ptr @event_class_dlm_unlock_end, ptr @event_class_dlm_unlock_start, ptr @event_dlm_ast, ptr @event_dlm_bast, ptr @event_dlm_lock_end, ptr @event_dlm_lock_start, ptr @event_dlm_recv, ptr @event_dlm_send, ptr @event_dlm_unlock_end, ptr @event_dlm_unlock_start, ptr @exit_dlm, ptr @init_dlm._entry, ptr @init_dlm._entry_ptr, ptr @str__dlm__trace_system_name, ptr @trace_event_fields_dlm_lock_start, ptr @trace_event_type_funcs_dlm_lock_start, ptr @print_fmt_dlm_lock_start, ptr @trace_event_fields_dlm_lock_end, ptr @trace_event_type_funcs_dlm_lock_end, ptr @print_fmt_dlm_lock_end, ptr @trace_event_fields_dlm_bast, ptr @trace_event_type_funcs_dlm_bast, ptr @print_fmt_dlm_bast, ptr @trace_event_fields_dlm_ast, ptr @trace_event_type_funcs_dlm_ast, ptr @print_fmt_dlm_ast, ptr @trace_event_fields_dlm_unlock_start, ptr @trace_event_type_funcs_dlm_unlock_start, ptr @print_fmt_dlm_unlock_start, ptr @trace_event_fields_dlm_unlock_end, ptr @trace_event_type_funcs_dlm_unlock_end, ptr @print_fmt_dlm_unlock_end, ptr @trace_event_fields_dlm_send, ptr @trace_event_type_funcs_dlm_send, ptr @print_fmt_dlm_send, ptr @trace_event_fields_dlm_recv, ptr @trace_event_type_funcs_dlm_recv, ptr @print_fmt_dlm_recv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @trace_raw_output_dlm_lock_start.symbols, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @trace_raw_output_dlm_lock_start.__flags, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @trace_raw_output_dlm_lock_end.symbols, ptr @trace_raw_output_dlm_lock_end.__flags, ptr @.str.36, ptr @trace_raw_output_dlm_bast.symbols, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @trace_raw_output_dlm_ast.__flags, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @trace_raw_output_dlm_unlock_start.__flags, ptr @.str.45, ptr @trace_raw_output_dlm_unlock_end.__flags, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__dlm__trace_system_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dlm_lock_start to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dlm_lock_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dlm_lock_start to i32), i32 735, i32 896, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dlm_lock_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dlm_lock_end to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dlm_lock_end to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dlm_lock_end to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dlm_lock_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dlm_bast to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dlm_bast to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dlm_bast to i32), i32 170, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dlm_bast to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dlm_ast to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dlm_ast to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dlm_ast to i32), i32 189, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dlm_ast to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dlm_unlock_start to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dlm_unlock_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dlm_unlock_start to i32), i32 611, i32 768, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dlm_unlock_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dlm_unlock_end to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dlm_unlock_end to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dlm_unlock_end to i32), i32 632, i32 768, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dlm_unlock_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dlm_send to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dlm_send to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dlm_send to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dlm_send to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dlm_recv to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dlm_recv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dlm_recv to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dlm_recv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_dlm_lock_start.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_dlm_lock_start.__flags to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_dlm_lock_end.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_dlm_lock_end.__flags to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_dlm_bast.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_dlm_ast.__flags to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_dlm_unlock_start.__flags to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_dlm_unlock_end.__flags to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dlm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dlm_lock_start(ptr nocapture readnone %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dlm_lock_start, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode, i32 noundef %flags) #7
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
define dso_local i32 @__traceiter_dlm_lock_end(ptr nocapture readnone %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode, i32 noundef %flags, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dlm_lock_end, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode, i32 noundef %flags, i32 noundef %error) #7
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
define dso_local i32 @__traceiter_dlm_bast(ptr nocapture readnone %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dlm_bast, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode) #7
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
define dso_local i32 @__traceiter_dlm_ast(ptr nocapture readnone %__data, ptr noundef %ls, ptr noundef %lkb, ptr noundef %lksb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dlm_ast, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %ls, ptr noundef %lkb, ptr noundef %lksb) #7
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
define dso_local i32 @__traceiter_dlm_unlock_start(ptr nocapture readnone %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dlm_unlock_start, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %ls, ptr noundef %lkb, i32 noundef %flags) #7
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
define dso_local i32 @__traceiter_dlm_unlock_end(ptr nocapture readnone %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %flags, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dlm_unlock_end, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %ls, ptr noundef %lkb, i32 noundef %flags, i32 noundef %error) #7
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
define dso_local i32 @__traceiter_dlm_send(ptr nocapture readnone %__data, i32 noundef %nodeid, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dlm_send, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %nodeid, i32 noundef %ret) #7
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
define dso_local i32 @__traceiter_dlm_recv(ptr nocapture readnone %__data, i32 noundef %nodeid, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dlm_recv, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, i32 noundef %nodeid, i32 noundef %ret) #7
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
define internal void @trace_event_raw_event_dlm_lock_start(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %mode, i32 noundef %flags) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !191

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %3 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %6 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lkb_id, align 8
  %lkb_id6 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %lkb_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lkb_id6, align 4
  %mode7 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %mode7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mode, ptr %mode7, align 4
  %flags8 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dlm_lock_start(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %mode, i32 noundef %flags) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !192
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !180) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !180) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %27 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %30 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkb_id, align 8
  %lkb_id17 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %lkb_id17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lkb_id17, align 4
  %mode18 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %mode18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mode, ptr %mode18, align 4
  %flags19 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %flags, ptr %flags19, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
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
define internal void @trace_event_raw_event_dlm_lock_end(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %mode, i32 noundef %flags, i32 noundef %error) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !191

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %3 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %6 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lkb_id, align 8
  %lkb_id6 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %lkb_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lkb_id6, align 4
  %mode7 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %mode7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mode, ptr %mode7, align 4
  %flags8 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags8, align 4
  %11 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %error, label %if.else [
    i32 -11, label %if.end5.if.end13_crit_edge
    i32 -35, label %if.end5.if.end13_crit_edge33
  ]

if.end5.if.end13_crit_edge33:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end5.if.end13_crit_edge, %if.end5.if.end13_crit_edge33
  %error.sink = phi i32 [ %error, %if.else ], [ 0, %if.end5.if.end13_crit_edge ], [ 0, %if.end5.if.end13_crit_edge33 ]
  %error12 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call3, i32 0, i32 5
  %12 = ptrtoint ptr %error12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %error.sink, ptr %error12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dlm_lock_end(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %mode, i32 noundef %flags, i32 noundef %error) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !192
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !180) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !180) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %27 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %30 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkb_id, align 8
  %lkb_id17 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %lkb_id17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lkb_id17, align 4
  %mode18 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %mode18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mode, ptr %mode18, align 4
  %flags19 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %flags, ptr %flags19, align 4
  %35 = zext i32 %error to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %error, label %if.else [
    i32 -11, label %if.end16.if.end24_crit_edge
    i32 -35, label %if.end16.if.end24_crit_edge55
  ]

if.end16.if.end24_crit_edge55:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end16.if.end24_crit_edge, %if.end16.if.end24_crit_edge55
  %error.sink = phi i32 [ %error, %if.else ], [ 0, %if.end16.if.end24_crit_edge ], [ 0, %if.end16.if.end24_crit_edge55 ]
  %error23 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %call13, i32 0, i32 5
  %36 = ptrtoint ptr %error23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %error.sink, ptr %error23, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dlm_bast(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %mode) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !191

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %3 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_bast, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %6 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lkb_id, align 8
  %lkb_id6 = getelementptr inbounds %struct.trace_event_raw_dlm_bast, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %lkb_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lkb_id6, align 4
  %mode7 = getelementptr inbounds %struct.trace_event_raw_dlm_bast, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %mode7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mode, ptr %mode7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dlm_bast(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %mode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !192
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !180) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !180) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %27 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_bast, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %30 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkb_id, align 8
  %lkb_id17 = getelementptr inbounds %struct.trace_event_raw_dlm_bast, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %lkb_id17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lkb_id17, align 4
  %mode18 = getelementptr inbounds %struct.trace_event_raw_dlm_bast, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %mode18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mode, ptr %mode18, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dlm_ast(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, ptr nocapture noundef readonly %lksb) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !191

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %3 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %6 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lkb_id, align 8
  %lkb_id6 = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %lkb_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lkb_id6, align 4
  %sb_flags = getelementptr inbounds %struct.dlm_lksb, ptr %lksb, i32 0, i32 2
  %9 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_flags, align 4
  %sb_flags7 = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %sb_flags7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %sb_flags7, align 4
  %12 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lksb, align 4
  %sb_status8 = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %sb_status8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sb_status8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dlm_ast(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, ptr nocapture noundef readonly %lksb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !192
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !180) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !180) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %27 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %30 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkb_id, align 8
  %lkb_id17 = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %lkb_id17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lkb_id17, align 4
  %sb_flags = getelementptr inbounds %struct.dlm_lksb, ptr %lksb, i32 0, i32 2
  %33 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sb_flags, align 4
  %sb_flags18 = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %sb_flags18 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %sb_flags18, align 4
  %36 = ptrtoint ptr %lksb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lksb, align 4
  %sb_status19 = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %sb_status19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sb_status19, align 4
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dlm_unlock_start(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %flags) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !191

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %3 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_start, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %6 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lkb_id, align 8
  %lkb_id6 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_start, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %lkb_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lkb_id6, align 4
  %flags7 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_start, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %flags, ptr %flags7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dlm_unlock_start(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %flags) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !192
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !180) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !180) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %27 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_start, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %30 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkb_id, align 8
  %lkb_id17 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_start, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %lkb_id17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lkb_id17, align 4
  %flags18 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_start, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %flags, ptr %flags18, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dlm_unlock_end(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %flags, i32 noundef %error) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !191

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %3 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %6 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lkb_id, align 8
  %lkb_id6 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %lkb_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lkb_id6, align 4
  %flags7 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %flags, ptr %flags7, align 4
  %error8 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %error, ptr %error8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dlm_unlock_end(ptr noundef %__data, ptr nocapture noundef readonly %ls, ptr nocapture noundef readonly %lkb, i32 noundef %flags, i32 noundef %error) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !192
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !180) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !180) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %27 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ls_global_id, align 4
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %ls_id to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %30 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkb_id, align 8
  %lkb_id17 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %lkb_id17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lkb_id17, align 4
  %flags18 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %flags, ptr %flags18, align 4
  %error19 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %error19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %error, ptr %error19, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dlm_send(ptr noundef %__data, i32 noundef %nodeid, i32 noundef %ret) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !191

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nodeid6 = getelementptr inbounds %struct.trace_event_raw_dlm_send, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %nodeid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nodeid, ptr %nodeid6, align 4
  %ret7 = getelementptr inbounds %struct.trace_event_raw_dlm_send, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ret7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ret, ptr %ret7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dlm_send(ptr noundef %__data, i32 noundef %nodeid, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !192
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !180) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !180) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %nodeid17 = getelementptr inbounds %struct.trace_event_raw_dlm_send, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %nodeid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nodeid, ptr %nodeid17, align 4
  %ret18 = getelementptr inbounds %struct.trace_event_raw_dlm_send, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ret18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ret, ptr %ret18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dlm_recv(ptr noundef %__data, i32 noundef %nodeid, i32 noundef %ret) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !190

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !191

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nodeid6 = getelementptr inbounds %struct.trace_event_raw_dlm_recv, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %nodeid6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nodeid, ptr %nodeid6, align 4
  %ret7 = getelementptr inbounds %struct.trace_event_raw_dlm_recv, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ret7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ret, ptr %ret7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dlm_recv(ptr noundef %__data, i32 noundef %nodeid, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !192
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !180) #7
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
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
  %24 = call i32 @llvm.read_register.i32(metadata !180) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %nodeid17 = getelementptr inbounds %struct.trace_event_raw_dlm_recv, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %nodeid17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %nodeid, ptr %nodeid17, align 4
  %ret18 = getelementptr inbounds %struct.trace_event_raw_dlm_recv, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ret18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ret, ptr %ret18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dlm_lock_start(ptr noundef %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ls to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %lkb to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %mode to i64
  %conv12 = zext i32 %flags to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dlm_lock_end(ptr noundef %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode, i32 noundef %flags, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ls to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %lkb to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %mode to i64
  %conv12 = zext i32 %flags to i64
  %conv16 = zext i32 %error to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dlm_bast(ptr noundef %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ls to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %lkb to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %mode to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dlm_ast(ptr noundef %__data, ptr noundef %ls, ptr noundef %lkb, ptr noundef %lksb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ls to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %lkb to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %lksb to i32
  %conv8 = zext i32 %2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dlm_unlock_start(ptr noundef %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ls to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %lkb to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %flags to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dlm_unlock_end(ptr noundef %__data, ptr noundef %ls, ptr noundef %lkb, i32 noundef %flags, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ls to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %lkb to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %flags to i64
  %conv12 = zext i32 %error to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dlm_send(ptr noundef %__data, i32 noundef %nodeid, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %nodeid to i64
  %conv4 = zext i32 %ret to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dlm_recv(ptr noundef %__data, i32 noundef %nodeid, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %nodeid to i64
  %conv4 = zext i32 %ret to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_dlm() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dlm_plock_exit() #7
  tail call void @dlm_netlink_exit() #7
  tail call void @dlm_user_exit() #7
  tail call void @dlm_config_exit() #7
  tail call void @dlm_memory_exit() #7
  tail call void @dlm_lockspace_exit() #7
  tail call void @dlm_lowcomms_exit() #7
  tail call void @dlm_unregister_debugfs() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_plock_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_netlink_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_user_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_config_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_memory_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lockspace_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lowcomms_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_unregister_debugfs() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_dlm() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dlm_memory_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dlm_lockspace_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_mem_crit_edge

if.end.out_mem_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_mem

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @dlm_config_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_lockspace_crit_edge

if.end4.out_lockspace_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_lockspace

if.end8:                                          ; preds = %if.end4
  tail call void @dlm_register_debugfs() #7
  %call9 = tail call i32 @dlm_user_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_debug_crit_edge

if.end8.out_debug_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_debug

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @dlm_netlink_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_user_crit_edge

if.end12.out_user_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_user

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @dlm_plock_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end, label %out_netlink

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #10
  br label %cleanup

out_netlink:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dlm_netlink_exit() #7
  br label %out_user

out_user:                                         ; preds = %out_netlink, %if.end12.out_user_crit_edge
  %error.0 = phi i32 [ %call13, %if.end12.out_user_crit_edge ], [ %call17, %out_netlink ]
  tail call void @dlm_user_exit() #7
  br label %out_debug

out_debug:                                        ; preds = %out_user, %if.end8.out_debug_crit_edge
  %error.1 = phi i32 [ %call9, %if.end8.out_debug_crit_edge ], [ %error.0, %out_user ]
  tail call void @dlm_unregister_debugfs() #7
  tail call void @dlm_config_exit() #7
  br label %out_lockspace

out_lockspace:                                    ; preds = %out_debug, %if.end4.out_lockspace_crit_edge
  %error.2 = phi i32 [ %call5, %if.end4.out_lockspace_crit_edge ], [ %error.1, %out_debug ]
  tail call void @dlm_lockspace_exit() #7
  br label %out_mem

out_mem:                                          ; preds = %out_lockspace, %if.end.out_mem_crit_edge
  %error.3 = phi i32 [ %call1, %if.end.out_mem_crit_edge ], [ %error.2, %out_lockspace ]
  tail call void @dlm_memory_exit() #7
  br label %cleanup

cleanup:                                          ; preds = %out_mem, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %error.3, %out_mem ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_new_lockspace(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_release_lockspace(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_unlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dlm_lock_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ls_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lkb_id, align 4
  %mode = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_dlm_lock_start.symbols) #7
  %flags3 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_start, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3, align 4
  %call4 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.33, i32 noundef %9, ptr noundef nonnull @trace_raw_output_dlm_lock_start.__flags) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, i32 noundef %3, i32 noundef %5, ptr noundef %call1, ptr noundef %call4) #7
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dlm_lock_end(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ls_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lkb_id, align 4
  %mode = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_dlm_lock_end.symbols) #7
  %flags3 = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3, align 4
  %call4 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.33, i32 noundef %9, ptr noundef nonnull @trace_raw_output_dlm_lock_end.__flags) #7
  %error = getelementptr inbounds %struct.trace_event_raw_dlm_lock_end, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.35, i32 noundef %3, i32 noundef %5, ptr noundef %call1, ptr noundef %call4, i32 noundef %11) #7
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dlm_bast(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_bast, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ls_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.trace_event_raw_dlm_bast, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lkb_id, align 4
  %mode = getelementptr inbounds %struct.trace_event_raw_dlm_bast, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_dlm_bast.symbols) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.36, i32 noundef %3, i32 noundef %5, ptr noundef %call1) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dlm_ast(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ls_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lkb_id, align 4
  %sb_flags = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sb_flags, align 4
  %conv = zext i8 %7 to i32
  %call1 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.33, i32 noundef %conv, ptr noundef nonnull @trace_raw_output_dlm_ast.__flags) #7
  %sb_status = getelementptr inbounds %struct.trace_event_raw_dlm_ast, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %sb_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.40, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %9) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dlm_unlock_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_start, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ls_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_start, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lkb_id, align 4
  %flags1 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_start, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 4
  %call2 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.33, i32 noundef %7, ptr noundef nonnull @trace_raw_output_dlm_unlock_start.__flags) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.44, i32 noundef %3, i32 noundef %5, ptr noundef %call2) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dlm_unlock_end(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %ls_id = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ls_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ls_id, align 4
  %lkb_id = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lkb_id, align 4
  %flags1 = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 4
  %call2 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.33, i32 noundef %7, ptr noundef nonnull @trace_raw_output_dlm_unlock_end.__flags) #7
  %error = getelementptr inbounds %struct.trace_event_raw_dlm_unlock_end, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.45, i32 noundef %3, i32 noundef %5, ptr noundef %call2, i32 noundef %9) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dlm_send(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %nodeid = getelementptr inbounds %struct.trace_event_raw_dlm_send, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodeid, align 4
  %ret1 = getelementptr inbounds %struct.trace_event_raw_dlm_send, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret1, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.48, i32 noundef %3, i32 noundef %5) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dlm_recv(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %nodeid = getelementptr inbounds %struct.trace_event_raw_dlm_recv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nodeid, align 4
  %ret1 = getelementptr inbounds %struct.trace_event_raw_dlm_recv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ret1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret1, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.48, i32 noundef %3, i32 noundef %5) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_memory_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lockspace_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_config_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_register_debugfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_user_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_netlink_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_plock_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !68, !70, !72, !74, !75, !77, !79, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !176, !177, !178, !179}
!llvm.named.register.sp = !{!180}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @__tracepoint_dlm_lock_start, !1, !"__tracepoint_dlm_lock_start", i1 false, i1 false}
!1 = !{!"../include/trace/events/dlm.h", i32 50, i32 1}
!2 = !{ptr @__tracepoint_ptr_dlm_lock_start, !1, !"__tracepoint_ptr_dlm_lock_start", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_dlm_lock_start, !1, !"__SCK__tp_func_dlm_lock_start", i1 false, i1 false}
!4 = !{ptr @__tracepoint_dlm_lock_end, !5, !"__tracepoint_dlm_lock_end", i1 false, i1 false}
!5 = !{!"../include/trace/events/dlm.h", i32 78, i32 1}
!6 = !{ptr @__tracepoint_ptr_dlm_lock_end, !5, !"__tracepoint_ptr_dlm_lock_end", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_dlm_lock_end, !5, !"__SCK__tp_func_dlm_lock_end", i1 false, i1 false}
!8 = !{ptr @__tracepoint_dlm_bast, !9, !"__tracepoint_dlm_bast", i1 false, i1 false}
!9 = !{!"../include/trace/events/dlm.h", i32 116, i32 1}
!10 = !{ptr @__tracepoint_ptr_dlm_bast, !9, !"__tracepoint_ptr_dlm_bast", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_dlm_bast, !9, !"__SCK__tp_func_dlm_bast", i1 false, i1 false}
!12 = !{ptr @__tracepoint_dlm_ast, !13, !"__tracepoint_dlm_ast", i1 false, i1 false}
!13 = !{!"../include/trace/events/dlm.h", i32 139, i32 1}
!14 = !{ptr @__tracepoint_ptr_dlm_ast, !13, !"__tracepoint_ptr_dlm_ast", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_dlm_ast, !13, !"__SCK__tp_func_dlm_ast", i1 false, i1 false}
!16 = !{ptr @__tracepoint_dlm_unlock_start, !17, !"__tracepoint_dlm_unlock_start", i1 false, i1 false}
!17 = !{!"../include/trace/events/dlm.h", i32 166, i32 1}
!18 = !{ptr @__tracepoint_ptr_dlm_unlock_start, !17, !"__tracepoint_ptr_dlm_unlock_start", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_dlm_unlock_start, !17, !"__SCK__tp_func_dlm_unlock_start", i1 false, i1 false}
!20 = !{ptr @__tracepoint_dlm_unlock_end, !21, !"__tracepoint_dlm_unlock_end", i1 false, i1 false}
!21 = !{!"../include/trace/events/dlm.h", i32 190, i32 1}
!22 = !{ptr @__tracepoint_ptr_dlm_unlock_end, !21, !"__tracepoint_ptr_dlm_unlock_end", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_dlm_unlock_end, !21, !"__SCK__tp_func_dlm_unlock_end", i1 false, i1 false}
!24 = !{ptr @__tracepoint_dlm_send, !25, !"__tracepoint_dlm_send", i1 false, i1 false}
!25 = !{!"../include/trace/events/dlm.h", i32 217, i32 1}
!26 = !{ptr @__tracepoint_ptr_dlm_send, !25, !"__tracepoint_ptr_dlm_send", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_dlm_send, !25, !"__SCK__tp_func_dlm_send", i1 false, i1 false}
!28 = !{ptr @__tracepoint_dlm_recv, !29, !"__tracepoint_dlm_recv", i1 false, i1 false}
!29 = !{!"../include/trace/events/dlm.h", i32 237, i32 1}
!30 = !{ptr @__tracepoint_ptr_dlm_recv, !29, !"__tracepoint_ptr_dlm_recv", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_dlm_recv, !29, !"__SCK__tp_func_dlm_recv", i1 false, i1 false}
!32 = !{ptr @event_class_dlm_lock_start, !1, !"event_class_dlm_lock_start", i1 false, i1 false}
!33 = !{ptr @event_dlm_lock_start, !1, !"event_dlm_lock_start", i1 false, i1 false}
!34 = !{ptr @__event_dlm_lock_start, !1, !"__event_dlm_lock_start", i1 false, i1 false}
!35 = !{ptr @event_class_dlm_lock_end, !5, !"event_class_dlm_lock_end", i1 false, i1 false}
!36 = !{ptr @event_dlm_lock_end, !5, !"event_dlm_lock_end", i1 false, i1 false}
!37 = !{ptr @__event_dlm_lock_end, !5, !"__event_dlm_lock_end", i1 false, i1 false}
!38 = !{ptr @event_class_dlm_bast, !9, !"event_class_dlm_bast", i1 false, i1 false}
!39 = !{ptr @event_dlm_bast, !9, !"event_dlm_bast", i1 false, i1 false}
!40 = !{ptr @__event_dlm_bast, !9, !"__event_dlm_bast", i1 false, i1 false}
!41 = !{ptr @event_class_dlm_ast, !13, !"event_class_dlm_ast", i1 false, i1 false}
!42 = !{ptr @event_dlm_ast, !13, !"event_dlm_ast", i1 false, i1 false}
!43 = !{ptr @__event_dlm_ast, !13, !"__event_dlm_ast", i1 false, i1 false}
!44 = !{ptr @event_class_dlm_unlock_start, !17, !"event_class_dlm_unlock_start", i1 false, i1 false}
!45 = !{ptr @event_dlm_unlock_start, !17, !"event_dlm_unlock_start", i1 false, i1 false}
!46 = !{ptr @__event_dlm_unlock_start, !17, !"__event_dlm_unlock_start", i1 false, i1 false}
!47 = !{ptr @event_class_dlm_unlock_end, !21, !"event_class_dlm_unlock_end", i1 false, i1 false}
!48 = !{ptr @event_dlm_unlock_end, !21, !"event_dlm_unlock_end", i1 false, i1 false}
!49 = !{ptr @__event_dlm_unlock_end, !21, !"__event_dlm_unlock_end", i1 false, i1 false}
!50 = !{ptr @event_class_dlm_send, !25, !"event_class_dlm_send", i1 false, i1 false}
!51 = !{ptr @event_dlm_send, !25, !"event_dlm_send", i1 false, i1 false}
!52 = !{ptr @__event_dlm_send, !25, !"__event_dlm_send", i1 false, i1 false}
!53 = !{ptr @event_class_dlm_recv, !29, !"event_class_dlm_recv", i1 false, i1 false}
!54 = !{ptr @event_dlm_recv, !29, !"event_dlm_recv", i1 false, i1 false}
!55 = !{ptr @__event_dlm_recv, !29, !"__event_dlm_recv", i1 false, i1 false}
!56 = !{ptr @__bpf_trace_tp_map_dlm_lock_start, !1, !"__bpf_trace_tp_map_dlm_lock_start", i1 false, i1 false}
!57 = !{ptr @__bpf_trace_tp_map_dlm_lock_end, !5, !"__bpf_trace_tp_map_dlm_lock_end", i1 false, i1 false}
!58 = !{ptr @__bpf_trace_tp_map_dlm_bast, !9, !"__bpf_trace_tp_map_dlm_bast", i1 false, i1 false}
!59 = !{ptr @__bpf_trace_tp_map_dlm_ast, !13, !"__bpf_trace_tp_map_dlm_ast", i1 false, i1 false}
!60 = !{ptr @__bpf_trace_tp_map_dlm_unlock_start, !17, !"__bpf_trace_tp_map_dlm_unlock_start", i1 false, i1 false}
!61 = !{ptr @__bpf_trace_tp_map_dlm_unlock_end, !21, !"__bpf_trace_tp_map_dlm_unlock_end", i1 false, i1 false}
!62 = !{ptr @__bpf_trace_tp_map_dlm_send, !25, !"__bpf_trace_tp_map_dlm_send", i1 false, i1 false}
!63 = !{ptr @__bpf_trace_tp_map_dlm_recv, !29, !"__bpf_trace_tp_map_dlm_recv", i1 false, i1 false}
!64 = !{ptr @__initcall__kmod_dlm__295_86_init_dlm6, !65, !"__initcall__kmod_dlm__295_86_init_dlm6", i1 false, i1 false}
!65 = !{!"../fs/dlm/main.c", i32 86, i32 1}
!66 = !{ptr @__exitcall_exit_dlm, !67, !"__exitcall_exit_dlm", i1 false, i1 false}
!67 = !{!"../fs/dlm/main.c", i32 87, i32 1}
!68 = !{ptr @__UNIQUE_ID_description296, !69, !"__UNIQUE_ID_description296", i1 false, i1 false}
!69 = !{!"../fs/dlm/main.c", i32 89, i32 1}
!70 = !{ptr @__UNIQUE_ID_author297, !71, !"__UNIQUE_ID_author297", i1 false, i1 false}
!71 = !{!"../fs/dlm/main.c", i32 90, i32 1}
!72 = !{ptr @__UNIQUE_ID_file298, !73, !"__UNIQUE_ID_file298", i1 false, i1 false}
!73 = !{!"../fs/dlm/main.c", i32 91, i32 1}
!74 = !{ptr @__UNIQUE_ID_license299, !73, !"__UNIQUE_ID_license299", i1 false, i1 false}
!75 = !{ptr @__ksymtab_dlm_new_lockspace, !76, !"__ksymtab_dlm_new_lockspace", i1 false, i1 false}
!76 = !{!"../fs/dlm/main.c", i32 93, i32 1}
!77 = !{ptr @__ksymtab_dlm_release_lockspace, !78, !"__ksymtab_dlm_release_lockspace", i1 false, i1 false}
!78 = !{!"../fs/dlm/main.c", i32 94, i32 1}
!79 = !{ptr @__ksymtab_dlm_lock, !80, !"__ksymtab_dlm_lock", i1 false, i1 false}
!80 = !{!"../fs/dlm/main.c", i32 95, i32 1}
!81 = !{ptr @__ksymtab_dlm_unlock, !82, !"__ksymtab_dlm_unlock", i1 false, i1 false}
!82 = !{!"../fs/dlm/main.c", i32 96, i32 1}
!83 = !{ptr @__tpstrtab_dlm_lock_start, !1, !"__tpstrtab_dlm_lock_start", i1 false, i1 false}
!84 = !{ptr @__tpstrtab_dlm_lock_end, !5, !"__tpstrtab_dlm_lock_end", i1 false, i1 false}
!85 = !{ptr @__tpstrtab_dlm_bast, !9, !"__tpstrtab_dlm_bast", i1 false, i1 false}
!86 = !{ptr @__tpstrtab_dlm_ast, !13, !"__tpstrtab_dlm_ast", i1 false, i1 false}
!87 = !{ptr @__tpstrtab_dlm_unlock_start, !17, !"__tpstrtab_dlm_unlock_start", i1 false, i1 false}
!88 = !{ptr @__tpstrtab_dlm_unlock_end, !21, !"__tpstrtab_dlm_unlock_end", i1 false, i1 false}
!89 = !{ptr @__tpstrtab_dlm_send, !25, !"__tpstrtab_dlm_send", i1 false, i1 false}
!90 = !{ptr @__tpstrtab_dlm_recv, !29, !"__tpstrtab_dlm_recv", i1 false, i1 false}
!91 = !{ptr @str__dlm__trace_system_name, !92, !"str__dlm__trace_system_name", i1 false, i1 false}
!92 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!93 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @trace_event_fields_dlm_lock_start, !1, !"trace_event_fields_dlm_lock_start", i1 false, i1 false}
!100 = !{ptr @trace_event_type_funcs_dlm_lock_start, !1, !"trace_event_type_funcs_dlm_lock_start", i1 false, i1 false}
!101 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @trace_raw_output_dlm_lock_start.symbols, !1, !"symbols", i1 false, i1 false}
!110 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.28, !1, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.30, !1, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.31, !1, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @trace_raw_output_dlm_lock_start.__flags, !1, !"__flags", i1 false, i1 false}
!130 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @print_fmt_dlm_lock_start, !1, !"print_fmt_dlm_lock_start", i1 false, i1 false}
!132 = !{ptr @.str.34, !5, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @trace_event_fields_dlm_lock_end, !5, !"trace_event_fields_dlm_lock_end", i1 false, i1 false}
!134 = !{ptr @trace_event_type_funcs_dlm_lock_end, !5, !"trace_event_type_funcs_dlm_lock_end", i1 false, i1 false}
!135 = !{ptr @.str.35, !5, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @trace_raw_output_dlm_lock_end.symbols, !5, !"symbols", i1 false, i1 false}
!137 = !{ptr @trace_raw_output_dlm_lock_end.__flags, !5, !"__flags", i1 false, i1 false}
!138 = !{ptr @print_fmt_dlm_lock_end, !5, !"print_fmt_dlm_lock_end", i1 false, i1 false}
!139 = !{ptr @trace_event_fields_dlm_bast, !9, !"trace_event_fields_dlm_bast", i1 false, i1 false}
!140 = !{ptr @trace_event_type_funcs_dlm_bast, !9, !"trace_event_type_funcs_dlm_bast", i1 false, i1 false}
!141 = !{ptr @.str.36, !9, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @trace_raw_output_dlm_bast.symbols, !9, !"symbols", i1 false, i1 false}
!143 = !{ptr @print_fmt_dlm_bast, !9, !"print_fmt_dlm_bast", i1 false, i1 false}
!144 = !{ptr @.str.37, !13, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.38, !13, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.39, !13, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @trace_event_fields_dlm_ast, !13, !"trace_event_fields_dlm_ast", i1 false, i1 false}
!148 = !{ptr @trace_event_type_funcs_dlm_ast, !13, !"trace_event_type_funcs_dlm_ast", i1 false, i1 false}
!149 = !{ptr @.str.40, !13, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.41, !13, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.42, !13, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.43, !13, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @trace_raw_output_dlm_ast.__flags, !13, !"__flags", i1 false, i1 false}
!154 = !{ptr @print_fmt_dlm_ast, !13, !"print_fmt_dlm_ast", i1 false, i1 false}
!155 = !{ptr @trace_event_fields_dlm_unlock_start, !17, !"trace_event_fields_dlm_unlock_start", i1 false, i1 false}
!156 = !{ptr @trace_event_type_funcs_dlm_unlock_start, !17, !"trace_event_type_funcs_dlm_unlock_start", i1 false, i1 false}
!157 = !{ptr @.str.44, !17, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @trace_raw_output_dlm_unlock_start.__flags, !17, !"__flags", i1 false, i1 false}
!159 = !{ptr @print_fmt_dlm_unlock_start, !17, !"print_fmt_dlm_unlock_start", i1 false, i1 false}
!160 = !{ptr @trace_event_fields_dlm_unlock_end, !21, !"trace_event_fields_dlm_unlock_end", i1 false, i1 false}
!161 = !{ptr @trace_event_type_funcs_dlm_unlock_end, !21, !"trace_event_type_funcs_dlm_unlock_end", i1 false, i1 false}
!162 = !{ptr @.str.45, !21, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @trace_raw_output_dlm_unlock_end.__flags, !21, !"__flags", i1 false, i1 false}
!164 = !{ptr @print_fmt_dlm_unlock_end, !21, !"print_fmt_dlm_unlock_end", i1 false, i1 false}
!165 = !{ptr @.str.46, !25, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.47, !25, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @trace_event_fields_dlm_send, !25, !"trace_event_fields_dlm_send", i1 false, i1 false}
!168 = !{ptr @trace_event_type_funcs_dlm_send, !25, !"trace_event_type_funcs_dlm_send", i1 false, i1 false}
!169 = !{ptr @.str.48, !25, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @print_fmt_dlm_send, !25, !"print_fmt_dlm_send", i1 false, i1 false}
!171 = !{ptr @trace_event_fields_dlm_recv, !29, !"trace_event_fields_dlm_recv", i1 false, i1 false}
!172 = !{ptr @trace_event_type_funcs_dlm_recv, !29, !"trace_event_type_funcs_dlm_recv", i1 false, i1 false}
!173 = !{ptr @print_fmt_dlm_recv, !29, !"print_fmt_dlm_recv", i1 false, i1 false}
!174 = !{ptr @.str.49, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/dlm/main.c", i32 55, i32 2}
!176 = !{ptr @.str.50, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.51, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @init_dlm._entry, !175, !"_entry", i1 false, i1 false}
!179 = !{ptr @init_dlm._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!180 = !{!"sp"}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{!"auto-init"}
