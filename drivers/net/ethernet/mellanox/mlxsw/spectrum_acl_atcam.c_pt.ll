; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c"
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
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_acl_atcam_region_ops = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate_end = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.rhashtable, %struct.list_head, %struct.mlxsw_sp_acl_ctcam_region, ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_acl_ctcam_region = type { ptr, ptr, ptr }
%struct.mlxsw_sp_acl_tcam_region = type { ptr, ptr, %struct.list_head, i32, i16, [16 x i8], ptr, ptr, [0 x i32] }
%struct.mlxsw_sp_acl_rule_info = type { i32, %struct.mlxsw_afk_element_values, ptr, i8, i32, i16 }
%struct.mlxsw_afk_element_values = type { %struct.mlxsw_afk_element_usage, %struct.anon.205 }
%struct.mlxsw_afk_element_usage = type { [1 x i32] }
%struct.anon.205 = type { [64 x i8], [64 x i8] }
%struct.mlxsw_sp_acl_atcam_entry = type { %struct.rhash_head, %struct.list_head, %struct.mlxsw_sp_acl_atcam_entry_ht_key, [96 x i8], %struct.anon.207, %struct.mlxsw_sp_acl_ctcam_entry, ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.mlxsw_sp_acl_atcam_entry_ht_key = type { [96 x i8], i8 }
%struct.anon.207 = type { i16, i8, i8 }
%struct.mlxsw_sp_acl_ctcam_entry = type { %struct.parman_item }
%struct.parman_item = type { %struct.list_head, i32 }
%struct.mlxsw_sp_acl_atcam_lkey_id = type { %struct.rhash_head, %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key, %struct.refcount_struct, i32 }
%struct.mlxsw_sp_acl_atcam_lkey_id_ht_key = type { [96 x i8], i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.mlxsw_sp_acl_atcam_region_12kb = type { %struct.rhashtable, i32, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@__tpstrtab_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = internal constant [41 x i8] c"mlxsw_sp_acl_atcam_entry_add_ctcam_spill\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = dso_local global %struct.static_call_key { ptr @__traceiter_mlxsw_sp_acl_atcam_entry_add_ctcam_spill }, align 4
@__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr null, ptr @__traceiter_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = internal constant ptr @__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlxsw_sp_acl_tcam_vregion_rehash = internal constant [33 x i8] c"mlxsw_sp_acl_tcam_vregion_rehash\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_rehash = dso_local global %struct.static_call_key { ptr @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash }, align 4
@__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlxsw_sp_acl_tcam_vregion_rehash, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_rehash, ptr null, ptr @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_rehash = internal constant ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlxsw_sp_acl_tcam_vregion_migrate = internal constant [34 x i8] c"mlxsw_sp_acl_tcam_vregion_migrate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_migrate = dso_local global %struct.static_call_key { ptr @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate }, align 4
@__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlxsw_sp_acl_tcam_vregion_migrate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_migrate, ptr null, ptr @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_migrate = internal constant ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlxsw_sp_acl_tcam_vregion_migrate_end = internal constant [38 x i8] c"mlxsw_sp_acl_tcam_vregion_migrate_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_migrate_end = dso_local global %struct.static_call_key { ptr @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate_end }, align 4
@__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlxsw_sp_acl_tcam_vregion_migrate_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr null, ptr @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_migrate_end = internal constant ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = internal constant [49 x i8] c"mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = dso_local global %struct.static_call_key { ptr @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed }, align 4
@__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr null, ptr @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = internal constant ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, section "__tracepoints_ptrs", align 4
@str__mlxsw__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mlxsw\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = internal global %struct.trace_event_class { ptr @str__mlxsw__trace_system_name, ptr @trace_event_raw_event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @perf_trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @trace_event_reg, ptr @trace_event_fields_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, i64 24), ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = internal global { [55 x i8], [41 x i8] } { [55 x i8] c"\22mlxsw_sp %p, aregion %p\22, REC->mlxsw_sp, REC->aregion\00", [41 x i8] zeroinitializer }, align 32
@event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, %union.anon.1 { ptr @__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlxsw_sp_acl_atcam_entry_add_ctcam_spill }, ptr @print_fmt_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = internal global ptr @event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, section "_ftrace_events", align 4
@trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mlxsw_sp_acl_tcam_vregion_rehash = internal global %struct.trace_event_class { ptr @str__mlxsw__trace_system_name, ptr @trace_event_raw_event_mlxsw_sp_acl_tcam_vregion_rehash, ptr @perf_trace_mlxsw_sp_acl_tcam_vregion_rehash, ptr @trace_event_reg, ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash, i64 24), ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlxsw_sp_acl_tcam_vregion_rehash, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlxsw_sp_acl_tcam_vregion_rehash = internal global { [55 x i8], [41 x i8] } { [55 x i8] c"\22mlxsw_sp %p, vregion %p\22, REC->mlxsw_sp, REC->vregion\00", [41 x i8] zeroinitializer }, align 32
@event_mlxsw_sp_acl_tcam_vregion_rehash = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash, %union.anon.1 { ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash }, ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_rehash, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlxsw_sp_acl_tcam_vregion_rehash = internal global ptr @event_mlxsw_sp_acl_tcam_vregion_rehash, section "_ftrace_events", align 4
@trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mlxsw_sp_acl_tcam_vregion_migrate = internal global %struct.trace_event_class { ptr @str__mlxsw__trace_system_name, ptr @trace_event_raw_event_mlxsw_sp_acl_tcam_vregion_migrate, ptr @perf_trace_mlxsw_sp_acl_tcam_vregion_migrate, ptr @trace_event_reg, ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate, i64 24), ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlxsw_sp_acl_tcam_vregion_migrate, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlxsw_sp_acl_tcam_vregion_migrate = internal global { [55 x i8], [41 x i8] } { [55 x i8] c"\22mlxsw_sp %p, vregion %p\22, REC->mlxsw_sp, REC->vregion\00", [41 x i8] zeroinitializer }, align 32
@event_mlxsw_sp_acl_tcam_vregion_migrate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate, %union.anon.1 { ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate }, ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_migrate, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlxsw_sp_acl_tcam_vregion_migrate = internal global ptr @event_mlxsw_sp_acl_tcam_vregion_migrate, section "_ftrace_events", align 4
@trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate_end = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mlxsw_sp_acl_tcam_vregion_migrate_end = internal global %struct.trace_event_class { ptr @str__mlxsw__trace_system_name, ptr @trace_event_raw_event_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @perf_trace_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @trace_event_reg, ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate_end, i64 24), ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate_end = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlxsw_sp_acl_tcam_vregion_migrate_end = internal global { [55 x i8], [41 x i8] } { [55 x i8] c"\22mlxsw_sp %p, vregion %p\22, REC->mlxsw_sp, REC->vregion\00", [41 x i8] zeroinitializer }, align 32
@event_mlxsw_sp_acl_tcam_vregion_migrate_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate_end, %union.anon.1 { ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate_end }, ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlxsw_sp_acl_tcam_vregion_migrate_end = internal global ptr @event_mlxsw_sp_acl_tcam_vregion_migrate_end, section "_ftrace_events", align 4
@trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.0 { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = internal global %struct.trace_event_class { ptr @str__mlxsw__trace_system_name, ptr @trace_event_raw_event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @perf_trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @trace_event_reg, ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, i64 24), ptr getelementptr (i8, ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = internal global { [55 x i8], [41 x i8] } { [55 x i8] c"\22mlxsw_sp %p, vregion %p\22, REC->mlxsw_sp, REC->vregion\00", [41 x i8] zeroinitializer }, align 32
@event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, %union.anon.1 { ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed }, ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = internal global ptr @event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mlxsw_sp_acl_atcam_entry_add_ctcam_spill = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @__bpf_trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_rehash = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash, ptr @__bpf_trace_mlxsw_sp_acl_tcam_vregion_rehash, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_migrate = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate, ptr @__bpf_trace_mlxsw_sp_acl_tcam_vregion_migrate, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_migrate_end = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @__bpf_trace_mlxsw_sp_acl_tcam_vregion_migrate_end, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @__bpf_trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@mlxsw_reg_perar = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12326, i16 8, ptr @.str.14 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_atcam_entries_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 97, i16 12, i16 0, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mlxsw_sp\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aregion\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxsw_sp %p, aregion %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vregion\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxsw_sp %p, vregion %p\0A\00", [39 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 35, ptr null, ptr null }, align 1
@.str.7 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_perar_region_id\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_perar_hw_region\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"perar\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_atcam_region_ops_arr = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mlxsw_sp_acl_atcam_region_generic_ops, ptr @mlxsw_sp_acl_atcam_region_generic_ops, ptr @mlxsw_sp_acl_atcam_region_generic_ops, ptr @mlxsw_sp_acl_atcam_region_12kb_ops], [16 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_atcam_region_generic_ops = internal constant { %struct.mlxsw_sp_acl_atcam_region_ops, [16 x i8] } { %struct.mlxsw_sp_acl_atcam_region_ops { ptr @mlxsw_sp_acl_atcam_region_generic_init, ptr @mlxsw_sp_acl_atcam_region_generic_fini, ptr @mlxsw_sp_acl_atcam_generic_lkey_id_get, ptr @mlxsw_sp_acl_atcam_generic_lkey_id_put }, [16 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_atcam_region_12kb_ops = internal constant { %struct.mlxsw_sp_acl_atcam_region_ops, [16 x i8] } { %struct.mlxsw_sp_acl_atcam_region_ops { ptr @mlxsw_sp_acl_atcam_region_12kb_init, ptr @mlxsw_sp_acl_atcam_region_12kb_fini, ptr @mlxsw_sp_acl_atcam_12kb_lkey_id_get, ptr @mlxsw_sp_acl_atcam_12kb_lkey_id_put }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxsw_sp_acl_atcam_lkey_id_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 97, i16 4, i16 0, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlxsw_reg_ptce3 = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12327, i16 240, ptr @.str.51 }, [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_ptce3_v\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_ptce3_op\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ptce3_priority\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_ptce3_erp_id\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_ptce3_delta_start\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_ptce3_delta_mask\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_ptce3_delta_value\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_ptce3_large_exists\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_ptce3_large_entry_key_id\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_ptce3_action_pointer\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ptce3\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/mlxsw.h\00", [35 x i8] zeroinitializer }, align 32
@trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"str__mlxsw__trace_system_name\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 36, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [60 x i8] c"trace_event_fields_mlxsw_sp_acl_atcam_entry_add_ctcam_spill\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [64 x i8] c"trace_event_type_funcs_mlxsw_sp_acl_atcam_entry_add_ctcam_spill\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [51 x i8] c"print_fmt_mlxsw_sp_acl_atcam_entry_add_ctcam_spill\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [47 x i8] c"event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [52 x i8] c"trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [56 x i8] c"trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [43 x i8] c"print_fmt_mlxsw_sp_acl_tcam_vregion_rehash\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [39 x i8] c"event_mlxsw_sp_acl_tcam_vregion_rehash\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [53 x i8] c"trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [57 x i8] c"trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [44 x i8] c"print_fmt_mlxsw_sp_acl_tcam_vregion_migrate\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [40 x i8] c"event_mlxsw_sp_acl_tcam_vregion_migrate\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 56, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [57 x i8] c"trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate_end\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [61 x i8] c"trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate_end\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [48 x i8] c"print_fmt_mlxsw_sp_acl_tcam_vregion_migrate_end\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [44 x i8] c"event_mlxsw_sp_acl_tcam_vregion_migrate_end\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 76, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [68 x i8] c"trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [72 x i8] c"trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [59 x i8] c"print_fmt_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [55 x i8] c"event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 96, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_perar\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [37 x i8] c"mlxsw_sp_acl_atcam_entries_ht_params\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 60, i32 39 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 361, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 36, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 33, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3050, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3066, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3043, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant [34 x i8] c"mlxsw_sp_acl_atcam_region_ops_arr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 263, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant [38 x i8] c"mlxsw_sp_acl_atcam_region_generic_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 110, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant [35 x i8] c"mlxsw_sp_acl_atcam_region_12kb_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 255, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [37 x i8] c"mlxsw_sp_acl_atcam_lkey_id_ht_params\00", align 1
@___asan_gen_.172 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 54, i32 39 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 695, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 594, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 723, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 755, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_ptce3\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3090, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3108, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3116, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3137, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3144, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3155, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3162, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3195, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3205, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3212, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 3084, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant [32 x i8] c"../include/trace/events/mlxsw.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 16, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 108, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__bpf_trace_tp_map_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_migrate, ptr @__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_rehash, ptr @__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @__event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @__event_mlxsw_sp_acl_tcam_vregion_migrate, ptr @__event_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @__event_mlxsw_sp_acl_tcam_vregion_rehash, ptr @__event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @__tracepoint_ptr_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_migrate, ptr @__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_rehash, ptr @__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @event_class_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate, ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash, ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @event_mlxsw_sp_acl_tcam_vregion_migrate, ptr @event_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @event_mlxsw_sp_acl_tcam_vregion_rehash, ptr @event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @str__mlxsw__trace_system_name, ptr @trace_event_fields_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @trace_event_type_funcs_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @print_fmt_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash, ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash, ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_rehash, ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate, ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate, ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_migrate, ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr @mlxsw_reg_perar, ptr @mlxsw_sp_acl_atcam_entries_ht_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @mlxsw_sp_acl_atcam_region_ops_arr, ptr @mlxsw_sp_acl_atcam_region_generic_ops, ptr @mlxsw_sp_acl_atcam_region_12kb_ops, ptr @mlxsw_sp_acl_atcam_lkey_id_ht_params, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @mlxsw_reg_ptce3, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mlxsw__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlxsw_sp_acl_atcam_entry_add_ctcam_spill to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlxsw_sp_acl_atcam_entry_add_ctcam_spill to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlxsw_sp_acl_atcam_entry_add_ctcam_spill to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_rehash to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlxsw_sp_acl_tcam_vregion_rehash to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_migrate to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlxsw_sp_acl_tcam_vregion_migrate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate_end to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate_end to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_migrate_end to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlxsw_sp_acl_tcam_vregion_migrate_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_perar to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_atcam_entries_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_atcam_region_ops_arr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_atcam_region_generic_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_atcam_region_12kb_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_atcam_lkey_id_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ptce3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(ptr nocapture readnone %__data, ptr noundef %mlxsw_sp, ptr noundef %aregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %mlxsw_sp, ptr noundef %aregion) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash(ptr nocapture readnone %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %mlxsw_sp, ptr noundef %vregion) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate(ptr nocapture readnone %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %mlxsw_sp, ptr noundef %vregion) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr nocapture readnone %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %mlxsw_sp, ptr noundef %vregion) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(ptr nocapture readnone %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %mlxsw_sp, ptr noundef %vregion) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define internal void @trace_event_raw_event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %aregion) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !189

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mlxsw_sp6 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %mlxsw_sp6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mlxsw_sp, ptr %mlxsw_sp6, align 4
  %aregion7 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %aregion7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %aregion, ptr %aregion7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %aregion) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !190
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !178) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !178) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %mlxsw_sp17 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %mlxsw_sp17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mlxsw_sp, ptr %mlxsw_sp17, align 4
  %aregion18 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %aregion18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %aregion, ptr %aregion18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlxsw_sp_acl_tcam_vregion_rehash(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !189

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mlxsw_sp6 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %mlxsw_sp6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mlxsw_sp, ptr %mlxsw_sp6, align 4
  %vregion7 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %vregion7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vregion, ptr %vregion7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlxsw_sp_acl_tcam_vregion_rehash(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !190
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !178) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !178) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %mlxsw_sp17 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %mlxsw_sp17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mlxsw_sp, ptr %mlxsw_sp17, align 4
  %vregion18 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %vregion18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vregion, ptr %vregion18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlxsw_sp_acl_tcam_vregion_migrate(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !189

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mlxsw_sp6 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %mlxsw_sp6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mlxsw_sp, ptr %mlxsw_sp6, align 4
  %vregion7 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %vregion7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vregion, ptr %vregion7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlxsw_sp_acl_tcam_vregion_migrate(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !190
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !178) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !178) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %mlxsw_sp17 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %mlxsw_sp17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mlxsw_sp, ptr %mlxsw_sp17, align 4
  %vregion18 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %vregion18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vregion, ptr %vregion18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !189

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mlxsw_sp6 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %mlxsw_sp6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mlxsw_sp, ptr %mlxsw_sp6, align 4
  %vregion7 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %vregion7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vregion, ptr %vregion7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !190
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !178) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !178) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %mlxsw_sp17 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %mlxsw_sp17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mlxsw_sp, ptr %mlxsw_sp17, align 4
  %vregion18 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %vregion18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vregion, ptr %vregion18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !189

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mlxsw_sp6 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %mlxsw_sp6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mlxsw_sp, ptr %mlxsw_sp6, align 4
  %vregion7 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %vregion7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vregion, ptr %vregion7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !190
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !178) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !178) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %mlxsw_sp17 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %mlxsw_sp17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mlxsw_sp, ptr %mlxsw_sp17, align 4
  %vregion18 = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %vregion18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vregion, ptr %vregion18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %aregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %mlxsw_sp to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %aregion to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlxsw_sp_acl_tcam_vregion_rehash(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %mlxsw_sp to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %vregion to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlxsw_sp_acl_tcam_vregion_migrate(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %mlxsw_sp to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %vregion to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %mlxsw_sp to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %vregion to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(ptr noundef %__data, ptr noundef %mlxsw_sp, ptr noundef %vregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %mlxsw_sp to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %vregion to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_atcam_region_associate(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %region_id) local_unnamed_addr #0 align 64 {
entry:
  %perar_pl = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %perar_pl) #13
  %mul = mul i16 %region_id, 3
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %1, i32 noundef 22) #13
  %conv2 = zext i16 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %conv2)
  %cmp.not = icmp ugt i64 %call, %conv2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %perar_pl to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %perar_pl, align 8
  %conv1.i = zext i16 %region_id to i32
  store i32 %conv1.i, ptr %perar_pl, align 8
  %conv2.i = zext i16 %mul to i32
  %arrayidx.i.i29.i = getelementptr inbounds i32, ptr %perar_pl, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i29.i, align 4
  %and7.i.i31.i = and i32 %4, -65536
  %or.i.i32.i = or i32 %and7.i.i31.i, %conv2.i
  store i32 %or.i.i32.i, ptr %arrayidx.i.i29.i, align 4
  %5 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core, align 4
  %call6 = call i32 @mlxsw_reg_write(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_perar, ptr noundef nonnull %perar_pl) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -105, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %perar_pl) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_atcam_region_init(ptr noundef %mlxsw_sp, ptr noundef %atcam, ptr noundef %aregion, ptr noundef %region, ptr noundef %hints_priv, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %0 = ptrtoint ptr %region1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %region, ptr %region1, align 4
  %atcam2 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 5
  %1 = ptrtoint ptr %atcam2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %atcam, ptr %atcam2, align 4
  %key_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %region, i32 0, i32 6
  %2 = ptrtoint ptr %key_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key_info.i, align 4
  %call.i = tail call i32 @mlxsw_afk_key_info_blocks_count_get(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 3
  br i1 %cmp.i, label %entry.mlxsw_sp_acl_atcam_region_type_init.exit_crit_edge, label %if.else.i

entry.mlxsw_sp_acl_atcam_region_type_init.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_acl_atcam_region_type_init.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %cmp2.i = icmp ult i32 %call.i, 5
  br i1 %cmp2.i, label %if.else.i.mlxsw_sp_acl_atcam_region_type_init.exit_crit_edge, label %if.else4.i

if.else.i.mlxsw_sp_acl_atcam_region_type_init.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_acl_atcam_region_type_init.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call.i)
  %cmp5.i = icmp ult i32 %call.i, 9
  %..i = select i1 %cmp5.i, i32 2, i32 3
  br label %mlxsw_sp_acl_atcam_region_type_init.exit

mlxsw_sp_acl_atcam_region_type_init.exit:         ; preds = %if.else4.i, %if.else.i.mlxsw_sp_acl_atcam_region_type_init.exit_crit_edge, %entry.mlxsw_sp_acl_atcam_region_type_init.exit_crit_edge
  %region_type.0.i = phi i32 [ 0, %entry.mlxsw_sp_acl_atcam_region_type_init.exit_crit_edge ], [ 1, %if.else.i.mlxsw_sp_acl_atcam_region_type_init.exit_crit_edge ], [ %..i, %if.else4.i ]
  %type.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 6
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %region_type.0.i, ptr %type.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @mlxsw_sp_acl_atcam_region_ops_arr, i32 0, i32 %region_type.0.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ops.i, align 4
  %entries_list = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 1
  %8 = ptrtoint ptr %entries_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entries_list, ptr %entries_list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entries_list, ptr %prev.i, align 4
  %call = tail call i32 @rhashtable_init(ptr noundef %aregion, ptr noundef nonnull @mlxsw_sp_acl_atcam_entries_ht_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %mlxsw_sp_acl_atcam_region_type_init.exit.cleanup_crit_edge

mlxsw_sp_acl_atcam_region_type_init.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_acl_atcam_region_type_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_acl_atcam_region_type_init.exit
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call4 = tail call i32 %13(ptr noundef %aregion) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_ops_init_crit_edge

if.end.err_ops_init_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_ops_init

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @mlxsw_sp_acl_erp_region_init(ptr noundef %aregion, ptr noundef %hints_priv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_erp_region_init_crit_edge

if.end7.err_erp_region_init_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_erp_region_init

if.end11:                                         ; preds = %if.end7
  %cregion = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 2
  %call12 = tail call i32 @mlxsw_sp_acl_ctcam_region_init(ptr noundef %mlxsw_sp, ptr noundef %cregion, ptr noundef %region, ptr noundef %ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %err_ctcam_region_init

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_ctcam_region_init:                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mlxsw_sp_acl_erp_region_fini(ptr noundef %aregion) #13
  br label %err_erp_region_init

err_erp_region_init:                              ; preds = %err_ctcam_region_init, %if.end7.err_erp_region_init_crit_edge
  %err.0 = phi i32 [ %call8, %if.end7.err_erp_region_init_crit_edge ], [ %call12, %err_ctcam_region_init ]
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %fini = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fini, align 4
  tail call void %17(ptr noundef %aregion) #13
  br label %err_ops_init

err_ops_init:                                     ; preds = %err_erp_region_init, %if.end.err_ops_init_crit_edge
  %err.1 = phi i32 [ %call4, %if.end.err_ops_init_crit_edge ], [ %err.0, %err_erp_region_init ]
  tail call void @rhashtable_destroy(ptr noundef %aregion) #13
  br label %cleanup

cleanup:                                          ; preds = %err_ops_init, %if.end11.cleanup_crit_edge, %mlxsw_sp_acl_atcam_region_type_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_ops_init ], [ %call, %mlxsw_sp_acl_atcam_region_type_init.exit.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_erp_region_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_ctcam_region_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_erp_region_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_atcam_region_fini(ptr noundef %aregion) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cregion = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 2
  tail call void @mlxsw_sp_acl_ctcam_region_fini(ptr noundef %cregion) #13
  tail call void @mlxsw_sp_acl_erp_region_fini(ptr noundef %aregion) #13
  %ops = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %fini = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  tail call void %3(ptr noundef %aregion) #13
  tail call void @rhashtable_destroy(ptr noundef %aregion) #13
  %entries_list = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 1
  %4 = ptrtoint ptr %entries_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %entries_list, align 4
  %cmp.i.not = icmp eq ptr %5, %entries_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !188

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ctcam_region_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_atcam_chunk_init(ptr noundef %aregion, ptr noundef %achunk, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cregion = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 2
  tail call void @mlxsw_sp_acl_ctcam_chunk_init(ptr noundef %cregion, ptr noundef %achunk, i32 noundef %priority) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ctcam_chunk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_atcam_chunk_fini(ptr noundef %achunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_ctcam_chunk_fini(ptr noundef %achunk) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ctcam_chunk_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_atcam_entry_add(ptr noundef %mlxsw_sp, ptr noundef %aregion, ptr noundef %achunk, ptr noundef %aentry, ptr noundef %rulei) local_unnamed_addr #0 align 64 {
entry:
  %ptce3_pl.i.i = alloca [240 x i8], align 1
  %priority.i.i = alloca i32, align 4
  %mask.i = alloca [96 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region1.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %0 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %region1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %mask.i) #13
  %2 = call ptr @memset(ptr %mask.i, i32 0, i32 96)
  %acl.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %3 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acl.i, align 4
  %call.i = tail call ptr @mlxsw_sp_acl_afk(ptr noundef %4) #13
  %key_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %key_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %key_info.i, align 4
  %values.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 1
  %ht_key.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 2
  call void @mlxsw_afk_encode(ptr noundef %call.i, ptr noundef %6, ptr noundef %values.i, ptr noundef %ht_key.i, ptr noundef nonnull %mask.i) #13
  %call4.i = call ptr @mlxsw_sp_acl_erp_mask_get(ptr noundef %aregion, ptr noundef nonnull %mask.i, i1 noundef zeroext false) #13
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__mlxsw_sp_acl_atcam_entry_add.exit.thread15, label %if.end.i

__mlxsw_sp_acl_atcam_entry_add.exit.thread15:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mask.i) #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %erp_mask7.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 7
  %7 = ptrtoint ptr %erp_mask7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4.i, ptr %erp_mask7.i, align 4
  %call8.i = call zeroext i8 @mlxsw_sp_acl_erp_mask_erp_id(ptr noundef %call4.i) #13
  %erp_id.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %erp_id.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call8.i, ptr %erp_id.i, align 4
  %enc_key.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %enc_key.i, ptr %ht_key.i, i32 96)
  %10 = ptrtoint ptr %erp_mask7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %erp_mask7.i, align 4
  %call15.i = call ptr @mlxsw_sp_acl_erp_delta(ptr noundef %11) #13
  %call16.i = call zeroext i16 @mlxsw_sp_acl_erp_delta_start(ptr noundef %call15.i) #13
  %delta_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 4
  %12 = ptrtoint ptr %delta_info.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %call16.i, ptr %delta_info.i, align 2
  %call17.i = call zeroext i8 @mlxsw_sp_acl_erp_delta_mask(ptr noundef %call15.i) #13
  %mask19.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %mask19.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call17.i, ptr %mask19.i, align 2
  %call23.i = call zeroext i8 @mlxsw_sp_acl_erp_delta_value(ptr noundef %call15.i, ptr noundef %ht_key.i) #13
  %value.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call23.i, ptr %value.i, align 1
  call void @mlxsw_sp_acl_erp_delta_clear(ptr noundef %call15.i, ptr noundef %enc_key.i) #13
  %list.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 1
  %entries_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 1
  %15 = ptrtoint ptr %entries_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entries_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %entries_list.i, ptr noundef %16) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add.exit.i_crit_edge

if.end.i.list_add.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entries_list.i, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %entries_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list.i, ptr %entries_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_add.exit.i_crit_edge
  %obj_hashfn.i.i = getelementptr inbounds %struct.rhashtable, ptr %aregion, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %obj_hashfn.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %obj_hashfn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %rhashtable_lookup_insert_fast.exit.i, label %do.body3.i.i, !prof !188

do.body3.i.i:                                     ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #13, !srcloc !191
  unreachable

rhashtable_lookup_insert_fast.exit.i:             ; preds = %list_add.exit.i
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %aregion, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %24 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %aentry, i32 %idx.neg.i.i.i
  %key_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %aregion, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %key_offset.i.i, align 4
  %conv.i.i = zext i16 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv.i.i
  %call10.i.i = call fastcc ptr @__rhashtable_insert_fast(ptr noundef %aregion, ptr noundef %add.ptr.i.i, ptr noundef %aentry, [7 x i32] [i32 97, i32 786432, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  %cmp.i.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %call10.i.i to i32
  %cmp.i100.i = icmp eq ptr %call10.i.i, null
  %cond.i.i = select i1 %cmp.i100.i, i32 0, i32 -17
  %retval.0.i.i = select i1 %cmp.i.i.i, i32 %27, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end29.i, label %rhashtable_lookup_insert_fast.exit.i.err_rhashtable_insert.i_crit_edge

rhashtable_lookup_insert_fast.exit.i.err_rhashtable_insert.i_crit_edge: ; preds = %rhashtable_lookup_insert_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_rhashtable_insert.i

if.end29.i:                                       ; preds = %rhashtable_lookup_insert_fast.exit.i
  %call30.i = call i32 @mlxsw_sp_acl_erp_bf_insert(ptr noundef %mlxsw_sp, ptr noundef %aregion, ptr noundef %call4.i, ptr noundef %aentry) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.err_bf_insert.i_crit_edge

if.end29.i.err_bf_insert.i_crit_edge:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_bf_insert.i

if.end33.i:                                       ; preds = %if.end29.i
  %28 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %region1.i, align 4
  %30 = ptrtoint ptr %erp_mask7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %erp_mask7.i, align 4
  %call.i.i = call zeroext i8 @mlxsw_sp_acl_erp_mask_erp_id(ptr noundef %31) #13
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %ptce3_pl.i.i) #13
  %32 = call ptr @memset(ptr %ptce3_pl.i.i, i32 255, i32 240)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priority.i.i) #13
  %33 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %priority.i.i, align 4, !annotation !190
  %call2.i.i = call i32 @mlxsw_sp_acl_tcam_priority_get(ptr noundef %mlxsw_sp, ptr noundef %rulei, ptr noundef nonnull %priority.i.i, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i101.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i101.i, label %if.end.i.i, label %if.end33.i.mlxsw_sp_acl_atcam_region_entry_insert.exit.thread.i_crit_edge

if.end33.i.mlxsw_sp_acl_atcam_region_entry_insert.exit.thread.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlxsw_sp_acl_atcam_region_entry_insert.exit.thread.i

if.end.i.i:                                       ; preds = %if.end33.i
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 3
  %34 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i.i, align 4
  %lkey_id_get.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %lkey_id_get.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lkey_id_get.i.i, align 4
  %call3.i.i = call ptr %37(ptr noundef %aregion, ptr noundef %enc_key.i, i8 noundef zeroext %call.i.i) #13
  %cmp.i.i102.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i102.i, label %mlxsw_sp_acl_atcam_region_entry_insert.exit.i, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %lkey_id8.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 6
  %38 = ptrtoint ptr %lkey_id8.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call3.i.i, ptr %lkey_id8.i.i, align 4
  %act_block.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %39 = ptrtoint ptr %act_block.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %act_block.i.i, align 4
  %call9.i.i = call i32 @mlxsw_afa_block_first_kvdl_index(ptr noundef %40) #13
  %41 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %priority.i.i, align 4
  %tcam_region_info.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %29, i32 0, i32 5
  %43 = ptrtoint ptr %delta_info.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %delta_info.i, align 2
  %45 = ptrtoint ptr %mask19.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mask19.i, align 2
  %47 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %value.i, align 1
  %refcnt.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %call3.i.i, i32 0, i32 2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  %49 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i103.i = icmp ne i32 %50, 1
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %call3.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id.i.i, align 4
  call fastcc void @mlxsw_reg_ptce3_pack(ptr noundef nonnull %ptce3_pl.i.i, i1 noundef zeroext true, i32 noundef 0, i32 noundef %42, ptr noundef %tcam_region_info.i.i, ptr noundef %enc_key.i, i8 noundef zeroext %call.i.i, i16 noundef zeroext %44, i8 noundef zeroext %46, i8 noundef zeroext %48, i1 noundef zeroext %cmp.i103.i, i32 noundef %52, i32 noundef %call9.i.i) #13
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %53 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %core.i.i, align 4
  %call18.i.i = call i32 @mlxsw_reg_write(ptr noundef %54, ptr noundef nonnull @mlxsw_reg_ptce3, ptr noundef nonnull %ptce3_pl.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %__mlxsw_sp_acl_atcam_entry_add.exit.thread, label %err_ptce3_write.i.i

__mlxsw_sp_acl_atcam_entry_add.exit.thread:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i.i) #13
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %ptce3_pl.i.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mask.i) #13
  br label %cleanup

err_ptce3_write.i.i:                              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i.i, align 4
  %lkey_id_put.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_ops, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %lkey_id_put.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lkey_id_put.i.i, align 4
  call void %58(ptr noundef %aregion, ptr noundef %call3.i.i) #13
  br label %mlxsw_sp_acl_atcam_region_entry_insert.exit.thread.i

mlxsw_sp_acl_atcam_region_entry_insert.exit.thread.i: ; preds = %err_ptce3_write.i.i, %if.end33.i.mlxsw_sp_acl_atcam_region_entry_insert.exit.thread.i_crit_edge
  %retval.0.i104.ph.i = phi i32 [ %call2.i.i, %if.end33.i.mlxsw_sp_acl_atcam_region_entry_insert.exit.thread.i_crit_edge ], [ %call18.i.i, %err_ptce3_write.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i.i) #13
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %ptce3_pl.i.i) #13
  br label %err_rule_insert.i

mlxsw_sp_acl_atcam_region_entry_insert.exit.i:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %call3.i.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i.i) #13
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %ptce3_pl.i.i) #13
  br label %err_rule_insert.i

err_rule_insert.i:                                ; preds = %mlxsw_sp_acl_atcam_region_entry_insert.exit.i, %mlxsw_sp_acl_atcam_region_entry_insert.exit.thread.i
  %retval.0.i104109.i = phi i32 [ %retval.0.i104.ph.i, %mlxsw_sp_acl_atcam_region_entry_insert.exit.thread.i ], [ %59, %mlxsw_sp_acl_atcam_region_entry_insert.exit.i ]
  call void @mlxsw_sp_acl_erp_bf_remove(ptr noundef %mlxsw_sp, ptr noundef %aregion, ptr noundef %call4.i, ptr noundef %aentry) #13
  br label %err_bf_insert.i

err_bf_insert.i:                                  ; preds = %err_rule_insert.i, %if.end29.i.err_bf_insert.i_crit_edge
  %err.0.i = phi i32 [ %call30.i, %if.end29.i.err_bf_insert.i_crit_edge ], [ %retval.0.i104109.i, %err_rule_insert.i ]
  call fastcc void @rhashtable_remove_fast(ptr noundef %aregion, ptr noundef %aentry, [7 x i32] [i32 97, i32 786432, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  br label %err_rhashtable_insert.i

err_rhashtable_insert.i:                          ; preds = %err_bf_insert.i, %rhashtable_lookup_insert_fast.exit.i.err_rhashtable_insert.i_crit_edge
  %err.1.i = phi i32 [ %retval.0.i.i, %rhashtable_lookup_insert_fast.exit.i.err_rhashtable_insert.i_crit_edge ], [ %err.0.i, %err_bf_insert.i ]
  %call.i.i105.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #13
  br i1 %call.i.i105.i, label %if.end.i.i106.i, label %err_rhashtable_insert.i.__mlxsw_sp_acl_atcam_entry_add.exit_crit_edge

err_rhashtable_insert.i.__mlxsw_sp_acl_atcam_entry_add.exit_crit_edge: ; preds = %err_rhashtable_insert.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_acl_atcam_entry_add.exit

if.end.i.i106.i:                                  ; preds = %err_rhashtable_insert.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i, align 4
  %62 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %__mlxsw_sp_acl_atcam_entry_add.exit

__mlxsw_sp_acl_atcam_entry_add.exit:              ; preds = %if.end.i.i106.i, %err_rhashtable_insert.i.__mlxsw_sp_acl_atcam_entry_add.exit_crit_edge
  %66 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @mlxsw_sp_acl_erp_mask_put(ptr noundef %aregion, ptr noundef %call4.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mask.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool.not, label %__mlxsw_sp_acl_atcam_entry_add.exit.cleanup_crit_edge, label %__mlxsw_sp_acl_atcam_entry_add.exit.if.end_crit_edge

__mlxsw_sp_acl_atcam_entry_add.exit.if.end_crit_edge: ; preds = %__mlxsw_sp_acl_atcam_entry_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

__mlxsw_sp_acl_atcam_entry_add.exit.cleanup_crit_edge: ; preds = %__mlxsw_sp_acl_atcam_entry_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %__mlxsw_sp_acl_atcam_entry_add.exit.if.end_crit_edge, %__mlxsw_sp_acl_atcam_entry_add.exit.thread15
  call fastcc void @trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(ptr noundef %mlxsw_sp, ptr noundef %aregion)
  %cregion = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 2
  %centry = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 5
  %call1 = call i32 @mlxsw_sp_acl_ctcam_entry_add(ptr noundef %mlxsw_sp, ptr noundef %cregion, ptr noundef %achunk, ptr noundef %centry, ptr noundef %rulei, i1 noundef zeroext true) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__mlxsw_sp_acl_atcam_entry_add.exit.cleanup_crit_edge, %__mlxsw_sp_acl_atcam_entry_add.exit.thread
  %retval.0 = phi i32 [ 0, %__mlxsw_sp_acl_atcam_entry_add.exit.cleanup_crit_edge ], [ %call1, %if.end ], [ 0, %__mlxsw_sp_acl_atcam_entry_add.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(ptr noundef %mlxsw_sp, ptr noundef %aregion) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !192

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !178) #13
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !188

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !193
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %mlxsw_sp, ptr noundef %aregion) #13
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !194
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !194
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !178) #13
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !178) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !188

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !195
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_mlxsw_sp_acl_atcam_entry_add_ctcam_spill.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 34, ptr noundef nonnull @.str.18) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !196
  %38 = tail call i32 @llvm.read_register.i32(metadata !178) #13
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
declare dso_local i32 @mlxsw_sp_acl_ctcam_entry_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_atcam_entry_del(ptr noundef %mlxsw_sp, ptr noundef %aregion, ptr noundef %achunk, ptr noundef %aentry) local_unnamed_addr #0 align 64 {
entry:
  %ptce3_pl.i.i = alloca [240 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_mask.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 7
  %0 = ptrtoint ptr %erp_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_mask.i, align 4
  %call.i = tail call zeroext i1 @mlxsw_sp_acl_erp_mask_is_ctcam(ptr noundef %1) #13
  br i1 %call.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cregion = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 2
  %centry = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 5
  tail call void @mlxsw_sp_acl_ctcam_entry_del(ptr noundef %mlxsw_sp, ptr noundef %cregion, ptr noundef %achunk, ptr noundef %centry) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %lkey_id1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 6
  %2 = ptrtoint ptr %lkey_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lkey_id1.i.i, align 4
  %region2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %4 = ptrtoint ptr %region2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region2.i.i, align 4
  %6 = ptrtoint ptr %erp_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %erp_mask.i, align 4
  %call.i.i = tail call zeroext i8 @mlxsw_sp_acl_erp_mask_erp_id(ptr noundef %7) #13
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %ptce3_pl.i.i) #13
  %8 = call ptr @memset(ptr %ptce3_pl.i.i, i32 255, i32 240)
  %tcam_region_info.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %5, i32 0, i32 5
  %enc_key.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 3
  %delta_info.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 4
  %9 = ptrtoint ptr %delta_info.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %delta_info.i.i, align 2
  %mask.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mask.i.i, align 2
  %value.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value.i.i, align 1
  %refcnt.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %3, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  %15 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i.i = icmp ne i32 %16, 1
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i.i, align 4
  call fastcc void @mlxsw_reg_ptce3_pack(ptr noundef nonnull %ptce3_pl.i.i, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, ptr noundef %tcam_region_info.i.i, ptr noundef %enc_key.i.i, i8 noundef zeroext %call.i.i, i16 noundef zeroext %10, i8 noundef zeroext %12, i8 noundef zeroext %14, i1 noundef zeroext %cmp.i.i, i32 noundef %18, i32 noundef 0) #13
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %19 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core.i.i, align 4
  %call9.i.i = call i32 @mlxsw_reg_write(ptr noundef %20, ptr noundef nonnull @mlxsw_reg_ptce3, ptr noundef nonnull %ptce3_pl.i.i) #13
  %ops.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 3
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i, align 4
  %lkey_id_put.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %lkey_id_put.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lkey_id_put.i.i, align 4
  call void %24(ptr noundef %aregion, ptr noundef %3) #13
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %ptce3_pl.i.i) #13
  %25 = ptrtoint ptr %erp_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %erp_mask.i, align 4
  call void @mlxsw_sp_acl_erp_bf_remove(ptr noundef %mlxsw_sp, ptr noundef %aregion, ptr noundef %26, ptr noundef %aentry) #13
  call fastcc void @rhashtable_remove_fast(ptr noundef %aregion, ptr noundef %aentry, [7 x i32] [i32 97, i32 786432, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  %list.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.__mlxsw_sp_acl_atcam_entry_del.exit_crit_edge

if.else.__mlxsw_sp_acl_atcam_entry_del.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_acl_atcam_entry_del.exit

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__mlxsw_sp_acl_atcam_entry_del.exit

__mlxsw_sp_acl_atcam_entry_del.exit:              ; preds = %if.end.i.i.i, %if.else.__mlxsw_sp_acl_atcam_entry_del.exit_crit_edge
  %33 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %erp_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %erp_mask.i, align 4
  call void @mlxsw_sp_acl_erp_mask_put(ptr noundef %aregion, ptr noundef %36) #13
  br label %if.end

if.end:                                           ; preds = %__mlxsw_sp_acl_atcam_entry_del.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ctcam_entry_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_atcam_entry_action_replace(ptr noundef %mlxsw_sp, ptr noundef %aregion, ptr noundef %aentry, ptr noundef %rulei) local_unnamed_addr #0 align 64 {
entry:
  %ptce3_pl.i.i = alloca [240 x i8], align 1
  %priority.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_mask.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 7
  %0 = ptrtoint ptr %erp_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_mask.i, align 4
  %call.i = tail call zeroext i1 @mlxsw_sp_acl_erp_mask_is_ctcam(ptr noundef %1) #13
  br i1 %call.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cregion = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 2
  %centry = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 5
  %call1 = tail call i32 @mlxsw_sp_acl_ctcam_entry_action_replace(ptr noundef %mlxsw_sp, ptr noundef %cregion, ptr noundef %centry, ptr noundef %rulei) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %lkey_id1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 6
  %2 = ptrtoint ptr %lkey_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lkey_id1.i.i, align 4
  %4 = ptrtoint ptr %erp_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %erp_mask.i, align 4
  %call.i.i = tail call zeroext i8 @mlxsw_sp_acl_erp_mask_erp_id(ptr noundef %5) #13
  %region2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %6 = ptrtoint ptr %region2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %region2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %ptce3_pl.i.i) #13
  %8 = call ptr @memset(ptr %ptce3_pl.i.i, i32 255, i32 240)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priority.i.i) #13
  %9 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %priority.i.i, align 4, !annotation !190
  %call3.i.i = call i32 @mlxsw_sp_acl_tcam_priority_get(ptr noundef %mlxsw_sp, ptr noundef %rulei, ptr noundef nonnull %priority.i.i, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.__mlxsw_sp_acl_atcam_entry_action_replace.exit_crit_edge

if.else.__mlxsw_sp_acl_atcam_entry_action_replace.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %__mlxsw_sp_acl_atcam_entry_action_replace.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %act_block.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, ptr %rulei, i32 0, i32 2
  %10 = ptrtoint ptr %act_block.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %act_block.i.i, align 4
  %call4.i.i = call i32 @mlxsw_afa_block_first_kvdl_index(ptr noundef %11) #13
  %12 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %priority.i.i, align 4
  %tcam_region_info.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %7, i32 0, i32 5
  %enc_key.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 3
  %delta_info.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 4
  %14 = ptrtoint ptr %delta_info.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %delta_info.i.i, align 2
  %mask.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mask.i.i, align 2
  %value.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, ptr %aentry, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %value.i.i, align 1
  %refcnt.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %3, i32 0, i32 2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.i = icmp ne i32 %21, 1
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i.i, align 4
  call fastcc void @mlxsw_reg_ptce3_pack(ptr noundef nonnull %ptce3_pl.i.i, i1 noundef zeroext true, i32 noundef 1, i32 noundef %13, ptr noundef %tcam_region_info.i.i, ptr noundef %enc_key.i.i, i8 noundef zeroext %call.i.i, i16 noundef zeroext %15, i8 noundef zeroext %17, i8 noundef zeroext %19, i1 noundef zeroext %cmp.i.i, i32 noundef %23, i32 noundef %call4.i.i) #13
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %24 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core.i.i, align 4
  %call11.i.i = call i32 @mlxsw_reg_write(ptr noundef %25, ptr noundef nonnull @mlxsw_reg_ptce3, ptr noundef nonnull %ptce3_pl.i.i) #13
  br label %__mlxsw_sp_acl_atcam_entry_action_replace.exit

__mlxsw_sp_acl_atcam_entry_action_replace.exit:   ; preds = %if.end.i.i, %if.else.__mlxsw_sp_acl_atcam_entry_action_replace.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call11.i.i, %if.end.i.i ], [ %call3.i.i, %if.else.__mlxsw_sp_acl_atcam_entry_action_replace.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priority.i.i) #13
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %ptce3_pl.i.i) #13
  br label %if.end

if.end:                                           ; preds = %__mlxsw_sp_acl_atcam_entry_action_replace.exit, %if.then
  %err.0 = phi i32 [ %call1, %if.then ], [ %retval.0.i.i, %__mlxsw_sp_acl_atcam_entry_action_replace.exit ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_ctcam_entry_action_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_atcam_init(ptr noundef %mlxsw_sp, ptr noundef %atcam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_sp_acl_erps_init(ptr noundef %mlxsw_sp, ptr noundef %atcam) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_erps_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_atcam_fini(ptr noundef %mlxsw_sp, ptr noundef %atcam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_erps_fini(ptr noundef %mlxsw_sp, ptr noundef %atcam) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_erps_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_atcam_rehash_hints_get(ptr noundef %aregion) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlxsw_sp_acl_erp_rehash_hints_get(ptr noundef %aregion) #13
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_erp_rehash_hints_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_atcam_rehash_hints_put(ptr noundef %hints_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_erp_rehash_hints_put(ptr noundef %hints_priv) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_erp_rehash_hints_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlxsw_sp_acl_atcam_entry_add_ctcam_spill(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %mlxsw_sp = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %aregion = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %aregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aregion, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %5) #13
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
define internal i32 @trace_raw_output_mlxsw_sp_acl_tcam_vregion_rehash(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %mlxsw_sp = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %vregion = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vregion, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, ptr noundef %3, ptr noundef %5) #13
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlxsw_sp_acl_tcam_vregion_migrate(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %mlxsw_sp = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %vregion = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vregion, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, ptr noundef %3, ptr noundef %5) #13
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlxsw_sp_acl_tcam_vregion_migrate_end(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %mlxsw_sp = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %vregion = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_migrate_end, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vregion, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, ptr noundef %3, ptr noundef %5) #13
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %mlxsw_sp = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %vregion = getelementptr inbounds %struct.trace_event_raw_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vregion, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, ptr noundef %3, ptr noundef %5) #13
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #13
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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afk_key_info_blocks_count_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_atcam_region_generic_init(ptr nocapture noundef writeonly %aregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcnt, align 8
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_atcam_region_generic_fini(ptr nocapture noundef readonly %aregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mlxsw_sp_acl_atcam_generic_lkey_id_get(ptr nocapture noundef readonly %aregion, ptr nocapture noundef readnone %enc_key, i8 noundef zeroext %erp_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_acl_atcam_generic_lkey_id_put(ptr nocapture noundef %aregion, ptr nocapture noundef %lkey_id) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_acl_atcam_region_12kb_init(ptr nocapture noundef %aregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %region = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %0 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %region, align 4
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp1, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %call = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %5, i32 noundef 30) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call3 = tail call i64 @mlxsw_core_res_get(ptr noundef %7, i32 noundef 30) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 236) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conv = trunc i64 %call3 to i32
  %call7 = tail call ptr @bitmap_zalloc(i32 noundef %conv, i32 noundef 3264) #13
  %used_lkey_id = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %used_lkey_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %used_lkey_id, align 8
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.err_used_lkey_id_alloc_crit_edge, label %if.end11

if.end6.err_used_lkey_id_alloc_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_used_lkey_id_alloc

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @rhashtable_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mlxsw_sp_acl_atcam_lkey_id_ht_params) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %err_rhashtable_init

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %max_lkey_id17 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %max_lkey_id17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %max_lkey_id17, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 8
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

err_rhashtable_init:                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %used_lkey_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %used_lkey_id, align 8
  tail call void @bitmap_free(ptr noundef %13) #13
  br label %err_used_lkey_id_alloc

err_used_lkey_id_alloc:                           ; preds = %err_rhashtable_init, %if.end6.err_used_lkey_id_alloc_crit_edge
  %err.0 = phi i32 [ %call12, %err_rhashtable_init ], [ -12, %if.end6.err_used_lkey_id_alloc_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err_used_lkey_id_alloc, %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_used_lkey_id_alloc ], [ 0, %if.end15 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_atcam_region_12kb_fini(ptr nocapture noundef readonly %aregion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @rhashtable_destroy(ptr noundef %1) #13
  %used_lkey_id = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %used_lkey_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used_lkey_id, align 4
  tail call void @bitmap_free(ptr noundef %3) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_acl_atcam_12kb_lkey_id_get(ptr nocapture noundef readonly %aregion, ptr nocapture noundef readonly %enc_key, i8 noundef zeroext %erp_id) #0 align 64 {
entry:
  %ht_key = alloca %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %region1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %2 = ptrtoint ptr %region1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %region1, align 4
  call void @llvm.lifetime.start.p0(i64 97, ptr nonnull %ht_key) #13
  %4 = getelementptr inbounds i8, ptr %ht_key, i32 96
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %4, align 1
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_sp2, align 4
  %acl = getelementptr inbounds %struct.mlxsw_sp, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acl, align 4
  %call = tail call ptr @mlxsw_sp_acl_afk(ptr noundef %9) #13
  %10 = call ptr @memcpy(ptr %ht_key, ptr %enc_key, i32 96)
  call void @mlxsw_afk_clear(ptr noundef %call, ptr noundef nonnull %ht_key, i32 noundef 0, i32 noundef 5) #13
  %erp_id6 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id_ht_key, ptr %ht_key, i32 0, i32 1
  %11 = ptrtoint ptr %erp_id6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %erp_id, ptr %erp_id6, align 1
  %12 = call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !197
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #13
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %1, align 4
  %call.i.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 594, ptr noundef nonnull @.str.18) #13
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %1, i32 0, i32 3, i32 3
  %key_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %1, i32 0, i32 3, i32 2
  %key_len.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %1, i32 0, i32 3, i32 1
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %do.end60.i.i.i.restart.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %17, %do.end12.i.i.i ], [ %40, %do.end60.i.i.i.restart.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %call14.i.i.i.i.i = call fastcc i32 @jhash(ptr noundef nonnull %ht_key, i32 noundef 97, i32 noundef %19) #13
  %20 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %21, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %call14.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !188

cond.true.i.i.i.i:                                ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #13
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %24 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %24, 1
  %25 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !198
  %26 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 369, ptr noundef nonnull @.str.18) #13
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %28 = ptrtoint ptr %27 to i32
  %and.i.i95.i.i.i = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %29 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %for.body.i.i.i.preheader, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i.i

for.body.i.i.i.preheader:                         ; preds = %rht_ptr_rcu.exit.i.i.i
  %30 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %31 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  %32 = ptrtoint ptr %key_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %key_offset.i.i.i.i, align 4
  %conv.i101.i.i.i = zext i16 %33 to i32
  %34 = ptrtoint ptr %key_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %35 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %he.0108.i.i.i = phi ptr [ %37, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %29, %for.body.i.i.i.preheader ]
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  %add.ptr.i102.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i, i32 %conv.i101.i.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i.i, ptr nonnull %ht_key, i32 %conv3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %__rhashtable_lookup.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %36 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %29, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %37, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %25
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !199
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.19, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_lookup.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 614, ptr noundef nonnull @.str.18) #13
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge, label %do.end60.i.i.i.restart.i.i.i_crit_edge, !prof !188

do.end60.i.i.i.restart.i.i.i_crit_edge:           ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %restart.i.i.i

do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  %spec.select = select i1 %tobool.not.i1.i, ptr null, ptr %add.ptr.i100.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %__rhashtable_lookup.exit.i.i, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge
  %cond.i.i = phi ptr [ %spec.select, %__rhashtable_lookup.exit.i.i ], [ null, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge ]
  %call.i2.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.20) #13
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %41 = call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i.i9.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %tobool.not = icmp eq ptr %cond.i.i, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %rhashtable_lookup_fast.exit
  %refcnt = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %cond.i.i, i32 0, i32 2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !201
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !189

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %46 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %.not.i.i.i = icmp sgt i32 %46, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !188

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #13
  br label %cleanup

if.end:                                           ; preds = %rhashtable_lookup_fast.exit
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 4
  %used_lkey_id.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %used_lkey_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %used_lkey_id.i, align 4
  %max_lkey_id.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %max_lkey_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_lkey_id.i, align 4
  %call.i = call i32 @_find_first_zero_bit_be(ptr noundef %50, i32 noundef %52) #13
  %53 = ptrtoint ptr %max_lkey_id.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_lkey_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %54)
  %cmp.i = icmp ult i32 %call.i, %54
  br i1 %cmp.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %55 = ptrtoint ptr %used_lkey_id.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %used_lkey_id.i, align 4
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %56, i32 %div2.i.i
  %57 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %58, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i24 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 112) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i24, null
  br i1 %tobool.not.i, label %if.then.i.err_lkey_id_alloc.i_crit_edge, label %if.end6.i

if.then.i.err_lkey_id_alloc.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_lkey_id_alloc.i

if.end6.i:                                        ; preds = %if.then.i
  %id7.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %call7.i.i.i24, i32 0, i32 3
  %60 = ptrtoint ptr %id7.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call.i, ptr %id7.i, align 4
  %ht_key8.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %call7.i.i.i24, i32 0, i32 1
  %61 = call ptr @memcpy(ptr %ht_key8.i, ptr %ht_key, i32 97)
  %refcnt.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %call7.i.i.i24, i32 0, i32 2
  %call.i.i.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  %62 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 1, ptr %refcnt.i, align 8
  %call.i.i26 = call fastcc ptr @__rhashtable_insert_fast(ptr noundef %48, ptr noundef null, ptr noundef nonnull %call7.i.i.i24, [7 x i32] [i32 97, i32 262144, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  %cmp.i.i.i = icmp ugt ptr %call.i.i26, inttoptr (i32 -4096 to ptr)
  %63 = ptrtoint ptr %call.i.i26 to i32
  %cmp.i.i = icmp eq ptr %call.i.i26, null
  %cond.i.i27 = select i1 %cmp.i.i, i32 0, i32 -17
  %retval.0.i.i = select i1 %cmp.i.i.i, i32 %63, i32 %cond.i.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool10.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool10.not.i, label %if.end6.i.cleanup_crit_edge, label %err_rhashtable_insert.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_rhashtable_insert.i:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i24) #13
  %phi.cast.i = inttoptr i32 %retval.0.i.i to ptr
  br label %err_lkey_id_alloc.i

err_lkey_id_alloc.i:                              ; preds = %err_rhashtable_insert.i, %if.then.i.err_lkey_id_alloc.i_crit_edge
  %err.0.i = phi ptr [ %phi.cast.i, %err_rhashtable_insert.i ], [ inttoptr (i32 -12 to ptr), %if.then.i.err_lkey_id_alloc.i_crit_edge ]
  %64 = ptrtoint ptr %used_lkey_id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %used_lkey_id.i, align 4
  %add.ptr.i42.i = getelementptr i32, ptr %65, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %66 = ptrtoint ptr %add.ptr.i42.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i42.i, align 4
  %and.i.i = and i32 %67, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i42.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_lkey_id_alloc.i, %if.end6.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %cond.i.i, %if.else.i.i.i.cleanup_crit_edge ], [ %cond.i.i, %if.end15.sink.split.i.i.i ], [ %err.0.i, %err_lkey_id_alloc.i ], [ %call7.i.i.i24, %if.end6.i.cleanup_crit_edge ], [ inttoptr (i32 -105 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 97, ptr nonnull %ht_key) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_atcam_12kb_lkey_id_put(ptr nocapture noundef readonly %aregion, ptr noundef %lkey_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %lkey_id, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !203
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !188

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !204
  %priv.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 8
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %id1.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_lkey_id, ptr %lkey_id, i32 0, i32 3
  %3 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id1.i, align 4
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %2, ptr noundef %lkey_id, [7 x i32] [i32 97, i32 262144, i32 0, i32 0, i32 0, i32 0, i32 0]) #13
  tail call void @kfree(ptr noundef %lkey_id) #13
  %used_lkey_id.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region_12kb, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %used_lkey_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %used_lkey_id.i, align 4
  %rem.i.i = and i32 %4, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %4, 5
  %add.ptr.i.i = getelementptr i32, ptr %6, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %8, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_afk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afk_clear(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %length, i32 noundef %initval) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %length, -559038737
  %add1 = add i32 %add, %initval
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %length)
  %cmp213 = icmp ugt i32 %length, 12
  br i1 %cmp213, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %k.0218 = phi ptr [ %add.ptr31, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %c.0217 = phi i32 [ %xor28, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %b.0216 = phi i32 [ %add29, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %a.0215 = phi i32 [ %add25, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %length.addr.0214 = phi i32 [ %sub30, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %k.0218 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.0218, align 1
  %add2 = add i32 %1, %a.0215
  %add.ptr = getelementptr i8, ptr %k.0218, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add4 = add i32 %3, %b.0216
  %add.ptr5 = getelementptr i8, ptr %k.0218, i32 8
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5, align 1
  %add7 = add i32 %5, %c.0217
  %sub = sub i32 %add2, %add7
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 4) #13
  %xor = xor i32 %sub, %or.i
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %or.i201 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #13
  %xor12 = xor i32 %sub10, %or.i201
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %or.i202 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 8) #13
  %xor16 = xor i32 %sub14, %or.i202
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %or.i203 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 16) #13
  %xor20 = xor i32 %sub18, %or.i203
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %or.i204 = tail call i32 @llvm.fshl.i32(i32 %xor20, i32 %xor20, i32 19) #13
  %xor24 = xor i32 %sub22, %or.i204
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %or.i205 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 4) #13
  %xor28 = xor i32 %sub26, %or.i205
  %add29 = add i32 %xor24, %add25
  %sub30 = add i32 %length.addr.0214, -12
  %add.ptr31 = getelementptr i8, ptr %k.0218, i32 12
  %cmp = icmp ugt i32 %sub30, 12
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %length.addr.0.lcssa = phi i32 [ %length, %entry.while.end_crit_edge ], [ %sub30, %while.body.while.end_crit_edge ]
  %a.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add25, %while.body.while.end_crit_edge ]
  %b.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add29, %while.body.while.end_crit_edge ]
  %c.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %xor28, %while.body.while.end_crit_edge ]
  %k.0.lcssa = phi ptr [ %key, %entry.while.end_crit_edge ], [ %add.ptr31, %while.body.while.end_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa, label %while.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 11, label %while.end.sw.bb33_crit_edge
    i32 10, label %while.end.sw.bb38_crit_edge
    i32 9, label %while.end.sw.bb43_crit_edge
    i32 8, label %while.end.sw.bb47_crit_edge
    i32 7, label %while.end.sw.bb52_crit_edge
    i32 6, label %while.end.sw.bb57_crit_edge
    i32 5, label %while.end.sw.bb62_crit_edge
    i32 4, label %while.end.sw.bb66_crit_edge
    i32 3, label %while.end.sw.bb71_crit_edge
    i32 2, label %while.end.sw.bb76_crit_edge
    i32 1, label %while.end.sw.bb81_crit_edge
  ]

while.end.sw.bb81_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb81

while.end.sw.bb76_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb76

while.end.sw.bb71_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb71

while.end.sw.bb66_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb66

while.end.sw.bb62_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb62

while.end.sw.bb57_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb57

while.end.sw.bb52_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb52

while.end.sw.bb47_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb47

while.end.sw.bb43_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43

while.end.sw.bb38_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38

while.end.sw.bb33_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr i8, ptr %k.0.lcssa, i32 11
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %c.0.lcssa
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %while.end.sw.bb33_crit_edge
  %c.1 = phi i32 [ %c.0.lcssa, %while.end.sw.bb33_crit_edge ], [ %add32, %sw.bb ]
  %arrayidx34 = getelementptr i8, ptr %k.0.lcssa, i32 10
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %10 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %shl36, %c.1
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb33, %while.end.sw.bb38_crit_edge
  %c.2 = phi i32 [ %c.0.lcssa, %while.end.sw.bb38_crit_edge ], [ %add37, %sw.bb33 ]
  %arrayidx39 = getelementptr i8, ptr %k.0.lcssa, i32 9
  %11 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %shl41, %c.2
  br label %sw.bb43

sw.bb43:                                          ; preds = %sw.bb38, %while.end.sw.bb43_crit_edge
  %c.3 = phi i32 [ %c.0.lcssa, %while.end.sw.bb43_crit_edge ], [ %add42, %sw.bb38 ]
  %arrayidx44 = getelementptr i8, ptr %k.0.lcssa, i32 8
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %14 to i32
  %add46 = add i32 %c.3, %conv45
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb43, %while.end.sw.bb47_crit_edge
  %c.4 = phi i32 [ %c.0.lcssa, %while.end.sw.bb47_crit_edge ], [ %add46, %sw.bb43 ]
  %arrayidx48 = getelementptr i8, ptr %k.0.lcssa, i32 7
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %16 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %b.0.lcssa
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb47, %while.end.sw.bb52_crit_edge
  %b.1 = phi i32 [ %b.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %add51, %sw.bb47 ]
  %c.5 = phi i32 [ %c.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %c.4, %sw.bb47 ]
  %arrayidx53 = getelementptr i8, ptr %k.0.lcssa, i32 6
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %18 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %shl55, %b.1
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb52, %while.end.sw.bb57_crit_edge
  %b.2 = phi i32 [ %b.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %add56, %sw.bb52 ]
  %c.6 = phi i32 [ %c.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %c.5, %sw.bb52 ]
  %arrayidx58 = getelementptr i8, ptr %k.0.lcssa, i32 5
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %20 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %shl60, %b.2
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57, %while.end.sw.bb62_crit_edge
  %b.3 = phi i32 [ %b.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %add61, %sw.bb57 ]
  %c.7 = phi i32 [ %c.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %c.6, %sw.bb57 ]
  %arrayidx63 = getelementptr i8, ptr %k.0.lcssa, i32 4
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %22 to i32
  %add65 = add i32 %b.3, %conv64
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb62, %while.end.sw.bb66_crit_edge
  %b.4 = phi i32 [ %b.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %add65, %sw.bb62 ]
  %c.8 = phi i32 [ %c.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %c.7, %sw.bb62 ]
  %arrayidx67 = getelementptr i8, ptr %k.0.lcssa, i32 3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %a.0.lcssa
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb66, %while.end.sw.bb71_crit_edge
  %a.1 = phi i32 [ %a.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %add70, %sw.bb66 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %b.4, %sw.bb66 ]
  %c.9 = phi i32 [ %c.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %c.8, %sw.bb66 ]
  %arrayidx72 = getelementptr i8, ptr %k.0.lcssa, i32 2
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %26 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %shl74, %a.1
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb71, %while.end.sw.bb76_crit_edge
  %a.2 = phi i32 [ %a.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %add75, %sw.bb71 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %b.5, %sw.bb71 ]
  %c.10 = phi i32 [ %c.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %c.9, %sw.bb71 ]
  %arrayidx77 = getelementptr i8, ptr %k.0.lcssa, i32 1
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %28 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %shl79, %a.2
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb76, %while.end.sw.bb81_crit_edge
  %a.3 = phi i32 [ %a.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %add80, %sw.bb76 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %b.6, %sw.bb76 ]
  %c.11 = phi i32 [ %c.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %c.10, %sw.bb76 ]
  %29 = ptrtoint ptr %k.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa, align 1
  %conv83 = zext i8 %30 to i32
  %add84 = add i32 %a.3, %conv83
  %xor85 = xor i32 %c.11, %b.7
  %or.i206 = tail call i32 @llvm.fshl.i32(i32 %b.7, i32 %b.7, i32 14) #13
  %sub87 = sub i32 %xor85, %or.i206
  %xor88 = xor i32 %add84, %sub87
  %or.i207 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #13
  %sub90 = sub i32 %xor88, %or.i207
  %xor91 = xor i32 %sub90, %b.7
  %or.i208 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #13
  %sub93 = sub i32 %xor91, %or.i208
  %xor94 = xor i32 %sub93, %sub87
  %or.i209 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #13
  %sub96 = sub i32 %xor94, %or.i209
  %xor97 = xor i32 %sub96, %sub90
  %or.i210 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #13
  %sub99 = sub i32 %xor97, %or.i210
  %xor100 = xor i32 %sub99, %sub93
  %or.i211 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #13
  %sub102 = sub i32 %xor100, %or.i211
  %xor103 = xor i32 %sub102, %sub96
  %or.i212 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #13
  %sub105 = sub i32 %xor103, %or.i212
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb81, %while.end.sw.epilog_crit_edge
  %c.12 = phi i32 [ %c.0.lcssa, %while.end.sw.epilog_crit_edge ], [ %sub105, %sw.bb81 ]
  ret i32 %c.12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef %key, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  %arg = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #13
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !197
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b2 = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 715, ptr noundef nonnull @.str.18) #13
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %params.coerce.fca.5.extract.i = extractvalue [7 x i32] %params.coerce, 5
  %10 = inttoptr i32 %params.coerce.fca.5.extract.i to ptr
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i)
  %tobool.not.i4 = icmp eq i32 %params.coerce.fca.5.extract.i, 0
  br i1 %tobool.not.i4, label %if.then.i.i.i, label %cond.true.i, !prof !189

cond.true.i:                                      ; preds = %do.end12
  %params.coerce.fca.0.extract.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i = and i32 %params.coerce.fca.0.extract.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool4.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool4.not.i, label %cond.false.i, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %key_len6.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %key_len6.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_len6.i, align 2
  %conv7.i = zext i16 %14 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv7.i, %cond.false.i ], [ %conv.i, %cond.true.i.cond.end.i_crit_edge ]
  %hash_rnd.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %hash_rnd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_rnd.i, align 8
  %call8.i = tail call i32 %10(ptr noundef %add.ptr.i.i, i32 noundef %cond.i, i32 noundef %16) #13
  br label %rht_head_hashfn.exit

if.then.i.i.i:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hash_rnd.i.i, align 8
  %params.coerce.fca.1.extract.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i = lshr i32 %params.coerce.fca.1.extract.i, 16
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %params.sroa.3.4.extract.shift.i
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hashfn.i.i.i, align 4
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %21 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = tail call i32 %20(ptr noundef %add.ptr.i, i32 noundef %22, i32 noundef %18) #13
  br label %rht_head_hashfn.exit

rht_head_hashfn.exit:                             ; preds = %if.then.i.i.i, %cond.end.i
  %hash.2.i.i.sink.i = phi i32 [ %call8.i, %cond.end.i ], [ %call.i.i.i, %if.then.i.i.i ]
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 128
  %sub.i.i.i = add i32 %24, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %hash.2.i.i.sink.i
  %nest.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 1
  %25 = ptrtoint ptr %nest.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i5 = icmp eq i32 %26, 0
  br i1 %tobool.not.i5, label %cond.false.i8, label %cond.true.i7, !prof !188

cond.true.i7:                                     ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i6 = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %9, i32 noundef %and.i3.i.i) #13
  br label %rht_bucket_insert.exit

cond.false.i8:                                    ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.bucket_table, ptr %9, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket_insert.exit

rht_bucket_insert.exit:                           ; preds = %cond.false.i8, %cond.true.i7
  %cond.i9 = phi ptr [ %call.i6, %cond.true.i7 ], [ %arrayidx.i, %cond.false.i8 ]
  %tobool17.not = icmp eq ptr %cond.i9, null
  br i1 %tobool17.not, label %rht_bucket_insert.exit.out_crit_edge, label %if.end19

rht_bucket_insert.exit.out_crit_edge:             ; preds = %rht_bucket_insert.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end19:                                         ; preds = %rht_bucket_insert.exit
  tail call fastcc void @rht_lock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 5
  %27 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %future_tbl, align 4
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %if.end30, label %if.end19.slow_path_crit_edge, !prof !188

if.end19.slow_path_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path

slow_path:                                        ; preds = %rht_grow_above_100.exit.slow_path_crit_edge, %for.end.slow_path_crit_edge, %if.end19.slow_path_crit_edge
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %call.i11 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i11, label %slow_path.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

slow_path.rcu_read_unlock.exit_crit_edge:         ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %slow_path
  %call1.i12 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.20) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %slow_path.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %29 = call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i.i18 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i20 = add i32 %32, -1
  store volatile i32 %sub.i.i.i20, ptr %preempt_count.i.i.i.i19, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call29 = call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #13
  br label %cleanup210

if.end30:                                         ; preds = %if.end19
  %call.i21 = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i24, label %if.end30.rht_ptr.exit_crit_edge

if.end30.rht_ptr.exit_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit

land.lhs.true.i24:                                ; preds = %if.end30
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i24.rht_ptr.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i24.rht_ptr.exit_crit_edge:         ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i24
  %.b7.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.rht_ptr.exit_crit_edge, label %if.then.i25

land.lhs.true3.i.rht_ptr.exit_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit

if.then.i25:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 377, ptr noundef nonnull @.str.22) #13
  br label %rht_ptr.exit

rht_ptr.exit:                                     ; preds = %if.then.i25, %land.lhs.true3.i.rht_ptr.exit_crit_edge, %land.lhs.true.i24.rht_ptr.exit_crit_edge, %if.end30.rht_ptr.exit_crit_edge
  %33 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cond.i9, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i.i = and i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %36 = ptrtoint ptr %cond.i9 to i32
  %or.i.i = or i32 %36, 1
  %cond.i.i = select i1 %tobool.not.i.i, i32 %or.i.i, i32 %and.i.i
  %and.i84 = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.i.not85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.i.not85, label %for.body.lr.ph, label %rht_ptr.exit.if.end152_crit_edge

rht_ptr.exit.if.end152_crit_edge:                 ; preds = %rht_ptr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

for.body.lr.ph:                                   ; preds = %rht_ptr.exit
  %37 = inttoptr i32 %cond.i.i to ptr
  %tobool35.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract)
  %tobool37.not = icmp eq i32 %params.coerce.fca.6.extract, 0
  br label %for.body

for.body:                                         ; preds = %do.end147.for.body_crit_edge, %for.body.lr.ph
  %head.087 = phi ptr [ %37, %for.body.lr.ph ], [ %51, %do.end147.for.body_crit_edge ]
  %elasticity.086 = phi i32 [ 16, %for.body.lr.ph ], [ %dec, %do.end147.for.body_crit_edge ]
  %dec = add i32 %elasticity.086, -1
  br i1 %tobool35.not, label %for.body.do.body136_crit_edge, label %lor.lhs.false36

for.body.do.body136_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body136

lor.lhs.false36:                                  ; preds = %for.body
  %38 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %head_offset.i.i, align 2
  %conv.i29 = zext i16 %39 to i32
  %idx.neg.i30 = sub nsw i32 0, %conv.i29
  %add.ptr.i31 = getelementptr i8, ptr %head.087, i32 %idx.neg.i30
  br i1 %tobool37.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false36
  %call40 = call i32 %0(ptr noundef nonnull %arg, ptr noundef %add.ptr.i31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body136_crit_edge

cond.true.do.body136_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body136

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false36
  %40 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arg, align 4
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %key_offset.i, align 4
  %conv.i32 = zext i16 %43 to i32
  %add.ptr.i33 = getelementptr i8, ptr %add.ptr.i31, i32 %conv.i32
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %key_len.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %key_len.i, align 2
  %conv3.i = zext i16 %47 to i32
  %bcmp = call i32 @bcmp(ptr %add.ptr.i33, ptr %45, i32 %conv3.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool44.not = icmp eq i32 %bcmp, 0
  br i1 %tobool44.not, label %cond.false.cleanup_crit_edge, label %cond.false.do.body136_crit_edge

cond.false.do.body136_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body136

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %cond.false.cleanup_crit_edge, %cond.true.cleanup_crit_edge
  %48 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head_offset.i.i, align 2
  %conv.i36 = zext i16 %49 to i32
  %idx.neg.i37 = sub nsw i32 0, %conv.i36
  %add.ptr.i38 = getelementptr i8, ptr %head.087, i32 %idx.neg.i37
  br label %out_unlock

do.body136:                                       ; preds = %cond.false.do.body136_crit_edge, %cond.true.do.body136_crit_edge, %for.body.do.body136_crit_edge
  %call137 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %do.body136.do.end147_crit_edge

do.body136.do.end147_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147

land.lhs.true139:                                 ; preds = %do.body136
  %call140 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %land.lhs.true139.do.end147_crit_edge, label %land.lhs.true142

land.lhs.true139.do.end147_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %.b2811 = load i1, ptr @__rhashtable_insert_fast.__warned.23, align 1
  br i1 %.b2811, label %land.lhs.true142.do.end147_crit_edge, label %if.then144

land.lhs.true142.do.end147_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end147

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_insert_fast.__warned.23, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 732, ptr noundef nonnull @.str.22) #13
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %land.lhs.true142.do.end147_crit_edge, %land.lhs.true139.do.end147_crit_edge, %do.body136.do.end147_crit_edge
  %50 = ptrtoint ptr %head.087 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.087, align 4
  %52 = ptrtoint ptr %51 to i32
  %and.i = and i32 %52, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end147.for.body_crit_edge, label %for.end

do.end147.for.body_crit_edge:                     ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %phi.cmp = icmp slt i32 %dec, 1
  br i1 %phi.cmp, label %for.end.slow_path_crit_edge, label %for.end.if.end152_crit_edge

for.end.if.end152_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

for.end.slow_path_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path

if.end152:                                        ; preds = %for.end.if.end152_crit_edge, %rht_ptr.exit.if.end152_crit_edge
  %nelems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #13
  %53 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i, align 4
  %max_elems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %55 = ptrtoint ptr %max_elems.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_elems.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.i.not = icmp ult i32 %54, %56
  br i1 %cmp.i.not, label %if.end162, label %if.end152.out_unlock_crit_edge, !prof !188

if.end152.out_unlock_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end162:                                        ; preds = %if.end152
  %call.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #13
  %57 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %nelems.i, align 4
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %9, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.i42 = icmp ugt i32 %58, %60
  br i1 %cmp.i42, label %rht_grow_above_100.exit, label %if.end162.if.end171_crit_edge

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

rht_grow_above_100.exit:                          ; preds = %if.end162
  %max_size.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i43 = icmp eq i32 %62, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp4.i = icmp ult i32 %60, %62
  %spec.select.i = select i1 %tobool.not.i43, i1 true, i1 %cmp4.i
  br i1 %spec.select.i, label %rht_grow_above_100.exit.slow_path_crit_edge, label %rht_grow_above_100.exit.if.end171_crit_edge, !prof !189

rht_grow_above_100.exit.if.end171_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

rht_grow_above_100.exit.slow_path_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %slow_path

if.end171:                                        ; preds = %rht_grow_above_100.exit.if.end171_crit_edge, %if.end162.if.end171_crit_edge
  %call.i44 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i48, label %if.end171.rht_ptr.exit56_crit_edge

if.end171.rht_ptr.exit56_crit_edge:               ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit56

land.lhs.true.i48:                                ; preds = %if.end171
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %land.lhs.true.i48.rht_ptr.exit56_crit_edge, label %land.lhs.true3.i50

land.lhs.true.i48.rht_ptr.exit56_crit_edge:       ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit56

land.lhs.true3.i50:                               ; preds = %land.lhs.true.i48
  %.b7.i49 = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49, label %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, label %if.then.i51

land.lhs.true3.i50.rht_ptr.exit56_crit_edge:      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit56

if.then.i51:                                      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 377, ptr noundef nonnull @.str.22) #13
  br label %rht_ptr.exit56

rht_ptr.exit56:                                   ; preds = %if.then.i51, %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, %land.lhs.true.i48.rht_ptr.exit56_crit_edge, %if.end171.rht_ptr.exit56_crit_edge
  %63 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cond.i9, align 4
  %65 = ptrtoint ptr %64 to i32
  %and.i.i52 = and i32 %65, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %and.i.i52, 0
  %cond.i.i55 = select i1 %tobool.not.i.i53, i32 %or.i.i, i32 %and.i.i52
  %66 = inttoptr i32 %cond.i.i55 to ptr
  %67 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %obj, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %nelems.i, i32 1, i32 3, i32 1) #13
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i, ptr %nelems.i, i32 1, ptr elementtype(i32) %nelems.i) #13, !srcloc !205
  call fastcc void @rht_assign_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9, ptr noundef %obj)
  %call.i.i.i58 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #13
  %69 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %nelems.i, align 4
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %9, align 128
  %div8.i = lshr i32 %72, 2
  %mul.i = mul nuw i32 %div8.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %mul.i)
  %cmp.i59 = icmp ugt i32 %70, %mul.i
  br i1 %cmp.i59, label %rht_grow_above_75.exit, label %rht_ptr.exit56.out_crit_edge

rht_ptr.exit56.out_crit_edge:                     ; preds = %rht_ptr.exit56
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

rht_grow_above_75.exit:                           ; preds = %rht_ptr.exit56
  %max_size.i60 = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %73 = ptrtoint ptr %max_size.i60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_size.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i61 = icmp eq i32 %74, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp4.i62 = icmp ult i32 %72, %74
  %spec.select.i63 = select i1 %tobool.not.i61, i1 true, i1 %cmp4.i62
  br i1 %spec.select.i63, label %if.then207, label %rht_grow_above_75.exit.out_crit_edge

rht_grow_above_75.exit.out_crit_edge:             ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then207:                                       ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #15
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %75 = load ptr, ptr @system_wq, align 4
  %call.i.i65 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %run_work) #13
  br label %out

out:                                              ; preds = %out_unlock, %if.then207, %rht_grow_above_75.exit.out_crit_edge, %rht_ptr.exit56.out_crit_edge, %rht_bucket_insert.exit.out_crit_edge
  %data.2 = phi ptr [ %data.3, %out_unlock ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.out_crit_edge ], [ null, %if.then207 ], [ null, %rht_grow_above_75.exit.out_crit_edge ], [ null, %rht_ptr.exit56.out_crit_edge ]
  %call.i66 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i66, label %out.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true.i69

out.rcu_read_unlock.exit76_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit76

land.lhs.true.i69:                                ; preds = %out
  %call1.i67 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit76

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit76

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.20) #13
  br label %rcu_read_unlock.exit76

rcu_read_unlock.exit76:                           ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, %out.rcu_read_unlock.exit76_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %76 = call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i.i73 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i75 = add i32 %79, -1
  store volatile i32 %sub.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup210

out_unlock:                                       ; preds = %if.end152.out_unlock_crit_edge, %cleanup
  %data.3 = phi ptr [ %add.ptr.i38, %cleanup ], [ inttoptr (i32 -7 to ptr), %if.end152.out_unlock_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  br label %out

cleanup210:                                       ; preds = %rcu_read_unlock.exit76, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %call29, %rcu_read_unlock.exit ], [ %data.2, %rcu_read_unlock.exit76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #13
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !206
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !207

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !208
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !209
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !188

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !210
  %7 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !211
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !212
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !213
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #13
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !189

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #13, !srcloc !214
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !215
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #13, !srcloc !216
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %3 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !218
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !219
  %2 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !197
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 1076, ptr noundef nonnull @.str.18) #13
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !189

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #13
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #13
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !188

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 377, ptr noundef nonnull @.str.22) #13
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.26, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 1032, ptr noundef nonnull @.str.22) #13
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #13
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.28, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 1004, ptr noundef nonnull @.str.22) #13
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #13
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #13, !srcloc !221
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #13
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !189

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #13
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.24, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__rhashtable_remove_fast.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 1085, ptr noundef nonnull @.str.18) #13
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.20) #13
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !200
  %46 = tail call i32 @llvm.read_register.i32(metadata !178) #13
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afk_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_erp_mask_get(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlxsw_sp_acl_erp_mask_erp_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_erp_delta(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_acl_erp_delta_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlxsw_sp_acl_erp_delta_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlxsw_sp_acl_erp_delta_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_erp_delta_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_erp_bf_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_erp_bf_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_erp_mask_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_tcam_priority_get(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_first_kvdl_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_ptce3_pack(ptr nocapture noundef %payload, i1 noundef zeroext %valid, i32 noundef %op, i32 noundef %priority, ptr nocapture noundef readonly %tcam_region_info, ptr nocapture noundef readonly %key, i8 noundef zeroext %erp_id, i16 noundef zeroext %delta_start, i8 noundef zeroext %delta_mask, i8 noundef zeroext %delta_value, i1 noundef zeroext %large_exists, i32 noundef %lkey_id, i32 noundef %action_pointer) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = call ptr @memset(ptr %payload, i32 0, i32 240)
  %spec.select.i.i = select i1 %valid, i32 -2147483648, i32 0
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, 2140143615
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %spec.select.i.i39 = shl i32 %op, 20
  %and6.i.i44 = and i32 %spec.select.i.i39, 7340032
  %or.i.i48 = or i32 %and6.i.i44, %or.i.i
  store i32 %or.i.i48, ptr %payload, align 4
  %and6.i.i72 = and i32 %priority, 16777215
  %arrayidx.i.i73 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i73 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i73, align 4
  %and7.i.i75 = and i32 %4, -16777216
  %or.i.i76 = or i32 %and6.i.i72, %and7.i.i75
  store i32 %or.i.i76, ptr %arrayidx.i.i73, align 4
  %arrayidx.i.i80 = getelementptr i8, ptr %payload, i32 16
  %5 = call ptr @memcpy(ptr %arrayidx.i.i80, ptr %tcam_region_info, i32 16)
  %arrayidx.i.i85 = getelementptr i8, ptr %payload, i32 32
  %6 = call ptr @memcpy(ptr %arrayidx.i.i85, ptr %key, i32 96)
  %7 = and i8 %erp_id, 15
  %and6.i.i110 = zext i8 %7 to i32
  %arrayidx.i.i111 = getelementptr i32, ptr %payload, i32 32
  %8 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i111, align 4
  %and7.i.i113 = and i32 %9, -16
  %or.i.i114 = or i32 %and7.i.i113, %and6.i.i110
  store i32 %or.i.i114, ptr %arrayidx.i.i111, align 4
  %10 = and i16 %delta_start, 1023
  %and6.i.i138 = zext i16 %10 to i32
  %arrayidx.i.i139 = getelementptr i32, ptr %payload, i32 33
  %11 = ptrtoint ptr %arrayidx.i.i139 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i139, align 4
  %and7.i.i141 = and i32 %12, -1024
  %or.i.i142 = or i32 %and7.i.i141, %and6.i.i138
  store i32 %or.i.i142, ptr %arrayidx.i.i139, align 4
  %conv5 = zext i8 %delta_mask to i32
  %spec.select.i.i161 = shl nuw nsw i32 %conv5, 16
  %arrayidx.i.i167 = getelementptr i32, ptr %payload, i32 34
  %13 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i167, align 4
  %and7.i.i169 = and i32 %14, -16711936
  %or.i.i170 = or i32 %spec.select.i.i161, %and7.i.i169
  %conv6 = zext i8 %delta_value to i32
  %arrayidx.i.i195 = getelementptr i32, ptr %payload, i32 34
  %or.i.i198 = or i32 %or.i.i170, %conv6
  %15 = ptrtoint ptr %arrayidx.i.i195 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i.i198, ptr %arrayidx.i.i195, align 4
  %spec.select.i.i217 = select i1 %large_exists, i32 -2147483648, i32 0
  %arrayidx.i.i223 = getelementptr i32, ptr %payload, i32 38
  %16 = ptrtoint ptr %arrayidx.i.i223 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i223, align 4
  %and7.i.i225 = and i32 %17, 2130706432
  %or.i.i226 = or i32 %spec.select.i.i217, %and7.i.i225
  %and6.i.i250 = and i32 %lkey_id, 16777215
  %arrayidx.i.i251 = getelementptr i32, ptr %payload, i32 38
  %or.i.i254 = or i32 %and6.i.i250, %or.i.i226
  %18 = ptrtoint ptr %arrayidx.i.i251 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i254, ptr %arrayidx.i.i251, align 4
  %and6.i.i278 = and i32 %action_pointer, 16777215
  %arrayidx.i.i279 = getelementptr i32, ptr %payload, i32 40
  %19 = ptrtoint ptr %arrayidx.i.i279 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i279, align 4
  %and7.i.i281 = and i32 %20, -16777216
  %or.i.i282 = or i32 %and6.i.i278, %and7.i.i281
  store i32 %or.i.i282, ptr %arrayidx.i.i279, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_sp_acl_erp_mask_is_ctcam(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !89, !91, !93, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !110, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !173, !174, !175, !177}
!llvm.named.register.sp = !{!178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"__tracepoint_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!1 = !{!"../include/trace/events/mlxsw.h", i32 16, i32 1}
!2 = !{ptr @__tracepoint_ptr_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"__tracepoint_ptr_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"__SCK__tp_func_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!5 = !{!"../include/trace/events/mlxsw.h", i32 36, i32 1}
!6 = !{ptr @__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!9 = !{!"../include/trace/events/mlxsw.h", i32 56, i32 1}
!10 = !{ptr @__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!12 = !{ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"__tracepoint_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!13 = !{!"../include/trace/events/mlxsw.h", i32 76, i32 1}
!14 = !{ptr @__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!16 = !{ptr @__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"__tracepoint_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!17 = !{!"../include/trace/events/mlxsw.h", i32 96, i32 1}
!18 = !{ptr @__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"__tracepoint_ptr_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"__SCK__tp_func_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!20 = !{ptr @event_class_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"event_class_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!21 = !{ptr @event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!22 = !{ptr @__event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"__event_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!23 = !{ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"event_class_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!24 = !{ptr @event_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"event_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!25 = !{ptr @__event_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"__event_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!26 = !{ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"event_class_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!27 = !{ptr @event_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"event_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!28 = !{ptr @__event_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"__event_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!29 = !{ptr @event_class_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"event_class_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!30 = !{ptr @event_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"event_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!31 = !{ptr @__event_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"__event_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!32 = !{ptr @event_class_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"event_class_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!33 = !{ptr @event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!34 = !{ptr @__event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"__event_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!35 = !{ptr @__bpf_trace_tp_map_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"__bpf_trace_tp_map_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!36 = !{ptr @__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!37 = !{ptr @__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!38 = !{ptr @__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!39 = !{ptr @__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"__bpf_trace_tp_map_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c", i32 361, i32 2}
!42 = !{ptr @__tpstrtab_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"__tpstrtab_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!43 = !{ptr @__tpstrtab_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"__tpstrtab_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!44 = !{ptr @__tpstrtab_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"__tpstrtab_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!45 = !{ptr @__tpstrtab_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"__tpstrtab_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!46 = !{ptr @__tpstrtab_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"__tpstrtab_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!47 = !{ptr @str__mlxsw__trace_system_name, !48, !"str__mlxsw__trace_system_name", i1 false, i1 false}
!48 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!49 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @trace_event_fields_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"trace_event_fields_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!53 = !{ptr @trace_event_type_funcs_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"trace_event_type_funcs_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!54 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @print_fmt_mlxsw_sp_acl_atcam_entry_add_ctcam_spill, !1, !"print_fmt_mlxsw_sp_acl_atcam_entry_add_ctcam_spill", i1 false, i1 false}
!56 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!58 = !{ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!59 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_rehash, !5, !"print_fmt_mlxsw_sp_acl_tcam_vregion_rehash", i1 false, i1 false}
!61 = !{ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!62 = !{ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!63 = !{ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_migrate, !9, !"print_fmt_mlxsw_sp_acl_tcam_vregion_migrate", i1 false, i1 false}
!64 = !{ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"trace_event_fields_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!65 = !{ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!66 = !{ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_migrate_end, !13, !"print_fmt_mlxsw_sp_acl_tcam_vregion_migrate_end", i1 false, i1 false}
!67 = !{ptr @trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"trace_event_fields_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!68 = !{ptr @trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"trace_event_type_funcs_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!69 = !{ptr @print_fmt_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed, !17, !"print_fmt_mlxsw_sp_acl_tcam_vregion_rehash_rollback_failed", i1 false, i1 false}
!70 = !{ptr @.str.7, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!72 = !{ptr @.str.8, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.9, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__mlxsw_item_offset._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @__mlxsw_item_offset._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3050, i32 1}
!78 = distinct !{null, !77, !"mlxsw_reg_perar_region_id_item", i1 false, i1 false}
!79 = !{ptr @.str.12, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3066, i32 1}
!81 = distinct !{null, !80, !"mlxsw_reg_perar_hw_region_item", i1 false, i1 false}
!82 = !{ptr @.str.14, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3043, i32 1}
!84 = !{ptr @mlxsw_reg_perar, !83, !"mlxsw_reg_perar", i1 false, i1 false}
!85 = !{ptr @mlxsw_sp_acl_atcam_region_ops_arr, !86, !"mlxsw_sp_acl_atcam_region_ops_arr", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c", i32 263, i32 1}
!87 = !{ptr @mlxsw_sp_acl_atcam_region_generic_ops, !88, !"mlxsw_sp_acl_atcam_region_generic_ops", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c", i32 110, i32 1}
!89 = !{ptr @mlxsw_sp_acl_atcam_region_12kb_ops, !90, !"mlxsw_sp_acl_atcam_region_12kb_ops", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c", i32 255, i32 1}
!91 = !{ptr @mlxsw_sp_acl_atcam_lkey_id_ht_params, !92, !"mlxsw_sp_acl_atcam_lkey_id_ht_params", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c", i32 54, i32 39}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!95 = !{ptr @.str.15, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.16, !94, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!99 = !{ptr @.str.17, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.18, !98, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!107 = !{ptr @.str.20, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!112 = !{ptr @.str.22, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!131 = !{ptr @mlxsw_sp_acl_atcam_entries_ht_params, !132, !"mlxsw_sp_acl_atcam_entries_ht_params", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_atcam.c", i32 60, i32 39}
!133 = !{ptr @.str.29, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3090, i32 1}
!135 = distinct !{null, !134, !"mlxsw_reg_ptce3_v_item", i1 false, i1 false}
!136 = !{ptr @.str.31, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3108, i32 1}
!138 = distinct !{null, !137, !"mlxsw_reg_ptce3_op_item", i1 false, i1 false}
!139 = !{ptr @.str.33, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3116, i32 1}
!141 = distinct !{null, !140, !"mlxsw_reg_ptce3_priority_item", i1 false, i1 false}
!142 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3122, i32 1}
!144 = distinct !{null, !143, !"mlxsw_reg_ptce3_tcam_region_info_item", i1 false, i1 false}
!145 = distinct !{null, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3130, i32 1}
!147 = distinct !{null, !146, !"mlxsw_reg_ptce3_flex2_key_blocks_item", i1 false, i1 false}
!148 = !{ptr @.str.37, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3137, i32 1}
!150 = distinct !{null, !149, !"mlxsw_reg_ptce3_erp_id_item", i1 false, i1 false}
!151 = !{ptr @.str.39, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3144, i32 1}
!153 = distinct !{null, !152, !"mlxsw_reg_ptce3_delta_start_item", i1 false, i1 false}
!154 = !{ptr @.str.41, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3155, i32 1}
!156 = distinct !{null, !155, !"mlxsw_reg_ptce3_delta_mask_item", i1 false, i1 false}
!157 = !{ptr @.str.43, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3162, i32 1}
!159 = distinct !{null, !158, !"mlxsw_reg_ptce3_delta_value_item", i1 false, i1 false}
!160 = !{ptr @.str.45, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3195, i32 1}
!162 = distinct !{null, !161, !"mlxsw_reg_ptce3_large_exists_item", i1 false, i1 false}
!163 = !{ptr @.str.47, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3205, i32 1}
!165 = distinct !{null, !164, !"mlxsw_reg_ptce3_large_entry_key_id_item", i1 false, i1 false}
!166 = !{ptr @.str.49, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3212, i32 1}
!168 = distinct !{null, !167, !"mlxsw_reg_ptce3_action_pointer_item", i1 false, i1 false}
!169 = !{ptr @.str.51, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3084, i32 1}
!171 = !{ptr @mlxsw_reg_ptce3, !170, !"mlxsw_reg_ptce3", i1 false, i1 false}
!172 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!173 = !{ptr @.str.52, !1, !"<string literal>", i1 false, i1 false}
!174 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!175 = distinct !{null, !176, !"__already_done", i1 false, i1 false}
!176 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!177 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!178 = !{!"sp"}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{!"branch_weights", i32 1, i32 2000}
!190 = !{!"auto-init"}
!191 = !{i64 2151446921, i64 2151447412, i64 2151446958, i64 2151447014, i64 2151447048, i64 2151447072, i64 2151447113, i64 2151447134, i64 2151447162, i64 2151447196}
!192 = !{i64 2148709500, i64 2148709505, i64 2148709518, i64 2148709562, i64 2148709596, i64 2148709617}
!193 = !{i64 2152552136}
!194 = !{i64 2152552413}
!195 = !{i64 2149919898}
!196 = !{i64 2149920934}
!197 = !{i64 2149911339}
!198 = !{i64 2151401404}
!199 = !{i64 2151404838}
!200 = !{i64 2149911605}
!201 = !{i64 2148229215, i64 2148229247, i64 2148229276, i64 2148229310, i64 2148229341, i64 2148229364}
!202 = !{i64 2148317216}
!203 = !{i64 2148231680, i64 2148231712, i64 2148231741, i64 2148231775, i64 2148231806, i64 2148231829}
!204 = !{i64 2149861796}
!205 = !{i64 2148227685, i64 2148227711, i64 2148227740, i64 2148227774, i64 2148227805, i64 2148227828}
!206 = !{i64 2151363727}
!207 = !{!"branch_weights", i32 2146410443, i32 1073205}
!208 = !{i64 2148236543, i64 2148236575, i64 2148236604, i64 2148236638, i64 2148236669, i64 2148236692}
!209 = !{i64 2148325624}
!210 = !{i64 2151363887}
!211 = !{i64 2151364164}
!212 = !{i64 2151364006}
!213 = !{i64 2151364369}
!214 = !{i64 2151365432, i64 2151365924, i64 2151365469, i64 2151365525, i64 2151365559, i64 2151365583, i64 2151365624, i64 2151365645, i64 2151365673, i64 2151365707}
!215 = !{i64 2148324511}
!216 = !{i64 2148234930, i64 2148234962, i64 2148234991, i64 2148235025, i64 2148235056, i64 2148235079}
!217 = !{i64 2151366827}
!218 = !{i64 2151394477}
!219 = !{i64 2151396776}
!220 = !{i64 2151468780}
!221 = !{i64 2148230150, i64 2148230176, i64 2148230205, i64 2148230239, i64 2148230270, i64 2148230293}
!222 = !{i8 0, i8 2}
